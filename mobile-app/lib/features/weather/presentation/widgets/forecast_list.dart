import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../domain/entities/weather_station.dart';
import '../providers/weather_provider.dart';
import 'station_details_modal.dart';

class ForecastList extends ConsumerWidget {
  final List<WeatherStation> stations;

  const ForecastList({super.key, required this.stations});

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
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;
    final defaultStation = ref.watch(selectedMainStationProvider);

    // Sort stations so the default one is first
    final sortedStations = List<WeatherStation>.from(stations);
    if (defaultStation != null) {
      sortedStations.sort((a, b) {
        if (a.id == defaultStation.id) return -1;
        if (b.id == defaultStation.id) return 1;
        return 0;
      });
    }

    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: sortedStations.length,
        itemBuilder: (context, index) {
          final station = sortedStations[index];
          final isSelected = defaultStation?.id == station.id;

          return GestureDetector(
            onTap: () => _showStationDetails(context, station.id),
            child: Container(
              width: 160,
              margin: const EdgeInsets.only(right: 12),
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: isDark ? const Color(0xFF1E293B) : Colors.grey.shade100,
                borderRadius: BorderRadius.circular(16),
                border: Border.all(
                  color: isSelected 
                      ? Colors.orange 
                      : (isDark ? Colors.white.withValues(alpha: 0.05) : Colors.black.withValues(alpha: 0.05)),
                  width: isSelected ? 2 : 1,
                ),
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.cloudy_snowing, 
                    color: isSelected 
                        ? Colors.orange 
                        : (isDark ? Colors.lightBlueAccent : Colors.blue.shade400), 
                    size: 32
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          station.name,
                          style: GoogleFonts.inter(
                            color: isDark ? Colors.white : Colors.black87, 
                            fontSize: 14, 
                            fontWeight: isSelected ? FontWeight.bold : FontWeight.w500
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          '${station.temperatureF.round()}°F',
                          style: GoogleFonts.inter(
                            color: isDark ? Colors.white70 : Colors.black54, 
                            fontSize: 13
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
