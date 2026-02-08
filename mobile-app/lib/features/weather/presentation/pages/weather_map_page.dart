import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:latlong2/latlong.dart'; // Standard import
import '../providers/weather_provider.dart';
import '../widgets/station_details_modal.dart';

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

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final stationsAsync = ref.watch(weatherStationsProvider);

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
              stationsAsync.when(
                data: (stations) => MarkerLayer(
                  markers: stations
                      .where((s) => s.latitude != null && s.longitude != null)
                      .map(
                        (station) => Marker(
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
                                    border: Border.all(color: Colors.orange.withValues(alpha: 0.5)),
                                  ),
                                  child: Text(
                                    station.city,
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
                        ),
                      )
                      .toList(),
                ),
                loading: () => const MarkerLayer(markers: []),
                error: (_, __) => const MarkerLayer(markers: []),
              ),
            ],
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Card(
                  color: const Color(0xFF1E293B).withValues(alpha: 0.9),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                    child: Row(
                      children: [
                        Icon(Icons.map, color: Colors.orange),
                        SizedBox(width: 12),
                        Text(
                          'Weather Stations Network',
                          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          if (stationsAsync.isLoading)
            const Center(
              child: CircularProgressIndicator(color: Colors.orange),
            ),
        ],
      ),
    );
  }
}
