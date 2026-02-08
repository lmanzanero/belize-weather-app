import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../domain/entities/weather_station.dart';

class ForecastList extends StatelessWidget {
  final List<WeatherStation> stations;

  const ForecastList({super.key, required this.stations});

  @override
  Widget build(BuildContext context) {
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
              color: const Color(0xFF1E293B),
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: Colors.white.withOpacity(0.05)),
            ),
            child: Row(
              children: [
                const Icon(Icons.cloudy_snowing, color: Colors.lightBlueAccent, size: 32),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        station.city,
                        style: GoogleFonts.inter(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w500),
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        '${station.temperatureF.round()}°F',
                        style: GoogleFonts.inter(color: Colors.white.withOpacity(0.7), fontSize: 13),
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
