import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../domain/entities/weather_station.dart';

class ForecastList extends StatelessWidget {
  final List<WeatherStation> stations;

  const ForecastList({super.key, required this.stations});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: stations.length,
        itemBuilder: (context, index) {
          final station = stations[index];
          return Container(
            width: 160,
            margin: const EdgeInsets.only(right: 12),
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: isDark ? const Color(0xFF1E293B) : Colors.grey.shade100,
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: isDark ? Colors.white.withValues(alpha: 0.05) : Colors.black.withValues(alpha: 0.05)),
            ),
            child: Row(
              children: [
                Icon(
                  Icons.cloudy_snowing, 
                  color: isDark ? Colors.lightBlueAccent : Colors.blue.shade400, 
                  size: 32
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        station.city,
                        style: GoogleFonts.inter(
                          color: isDark ? Colors.white : Colors.black87, 
                          fontSize: 14, 
                          fontWeight: FontWeight.w500
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
          );
        },
      ),
    );
  }
}
