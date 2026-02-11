import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:latlong2/latlong.dart';
import '../providers/weather_provider.dart';
import '../providers/community_provider.dart';
import '../widgets/station_details_modal.dart';
import '../widgets/sky_post_modal.dart';
import '../../domain/entities/community_spotter.dart';
import '../../domain/entities/weather_station.dart';

class WeatherMapPage extends ConsumerWidget {
  const WeatherMapPage({super.key});

  void _showStationDetails(BuildContext context, int id) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => StationDetailsModal(stationId: id),
    );
  }

  void _showSkyPost(BuildContext context, SkyPhoto photo) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => SkyPostModal(photo: photo),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final activeFilter = ref.watch(mapCategoryFilterProvider);
    final stationsAsync = ref.watch(weatherStationsProvider);
    final discoveryAsync = ref.watch(discoveryPhotosProvider(activeFilter));

    return Scaffold(
      backgroundColor: const Color(0xFF0F172A),
      body: Stack(
        children: [
          FlutterMap(
            options: const MapOptions(
              initialCenter: LatLng(17.1899, -88.4976),
              initialZoom: 8.0,
            ),
            children: [
              TileLayer(
                urlTemplate: 'https://{s}.basemaps.cartocdn.com/dark_all/{z}/{x}/{y}{r}.png',
                subdomains: const ['a', 'b', 'c', 'd'],
                userAgentPackageName: 'com.momentous.flutter_starter',
              ),
              
              // Layer for Weather Stations
              if (activeFilter == 'stations')
                stationsAsync.when(
                  data: (stations) => MarkerLayer(
                    markers: stations
                        .where((s) => s.latitude != null && s.longitude != null)
                        .map((s) => _buildStationMarker(context, s))
                        .toList(),
                  ),
                  loading: () => const MarkerLayer(markers: []),
                  error: (_, __) => const MarkerLayer(markers: []),
                ),

              // Layer for Community Photos
              if (activeFilter != 'stations')
                discoveryAsync.when(
                  data: (photos) => MarkerLayer(
                    markers: photos
                        .where((p) => p.latitude != null && p.longitude != null)
                        .map((p) => _buildPhotoMarker(context, p))
                        .toList(),
                  ),
                  loading: () => const MarkerLayer(markers: []),
                  error: (_, __) => const MarkerLayer(markers: []),
                ),
            ],
          ),

          // Header Card & Filters
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Card(
                      elevation: 8,
                      shadowColor: Colors.black45,
                      color: const Color(0xFF1E293B).withOpacity(0.95),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                        child: Row(
                          children: [
                            Icon(
                              activeFilter == 'stations' ? Icons.map : Icons.auto_awesome, 
                              color: Colors.orange
                            ),
                            const SizedBox(width: 12),
                            Expanded(
                              child: Text(
                                activeFilter == 'stations' 
                                    ? 'Weather Stations Network' 
                                    : 'Discovery: ${activeFilter.toUpperCase()}',
                                style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 12),
                    
                    // Filter Buttons Row
                    SizedBox(
                      height: 44,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        padding: const EdgeInsets.symmetric(vertical: 2),
                        children: const [
                          _FilterButton(label: 'Stations', value: 'stations', icon: Icons.sensors),
                          _FilterButton(label: 'Skies', value: 'sky', icon: Icons.wb_cloudy),
                          _FilterButton(label: 'Rainbows', value: 'rainbow', icon: Icons.looks),
                          _FilterButton(label: 'Storms', value: 'storm', icon: Icons.thunderstorm),
                          _FilterButton(label: 'Sunsets', value: 'sunset', icon: Icons.wb_twilight),
                          _FilterButton(label: 'Clouds', value: 'cloud', icon: Icons.cloud),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          if (stationsAsync.isLoading || discoveryAsync.isLoading)
            const Center(
              child: CircularProgressIndicator(color: Colors.orange),
            ),
        ],
      ),
    );
  }

  Marker _buildStationMarker(BuildContext context, WeatherStation station) {
    return Marker(
      point: LatLng(station.latitude!, station.longitude!),
      width: 80,
      height: 80,
      child: GestureDetector(
        onTap: () => _showStationDetails(context, station.id),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                color: Colors.black87,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.orange.withOpacity(0.5)),
              ),
              child: Text(
                station.name,
                style: const TextStyle(color: Colors.white, fontSize: 10),
                overflow: TextOverflow.ellipsis,
              ),
            ),
            const Icon(
              Icons.location_on,
              color: Colors.orange,
              size: 30,
            ),
          ],
        ),
      ),
    );
  }

  Marker _buildPhotoMarker(BuildContext context, SkyPhoto photo) {
    return Marker(
      point: LatLng(photo.latitude!, photo.longitude!),
      width: 65,
      height: 65,
      child: GestureDetector(
        onTap: () => _showSkyPost(context, photo),
        child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Colors.white, width: 2.5),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.4),
                blurRadius: 10,
                offset: const Offset(0, 4)
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(32),
            child: Image.network(
              photo.imageUrl,
              fit: BoxFit.cover,
              loadingBuilder: (context, child, loadingProgress) {
                if (loadingProgress == null) return child;
                return Container(color: const Color(0xFF1E293B));
              },
            ),
          ),
        ),
      ),
    );
  }
}

class _FilterButton extends ConsumerWidget {
  final String label;
  final String value;
  final IconData icon;

  const _FilterButton({
    required this.label,
    required this.value,
    required this.icon,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final activeFilter = ref.watch(mapCategoryFilterProvider);
    final isSelected = activeFilter == value;

    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: ElevatedButton.icon(
        onPressed: () => ref.read(mapCategoryFilterProvider.notifier).state = value,
        icon: Icon(icon, size: 18),
        label: Text(label),
        style: ElevatedButton.styleFrom(
          backgroundColor: isSelected ? Colors.orange : const Color(0xFF1E293B).withOpacity(0.9),
          foregroundColor: Colors.white,
          elevation: isSelected ? 6 : 0,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          padding: const EdgeInsets.symmetric(horizontal: 16),
        ),
      ),
    );
  }
}
