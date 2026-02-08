import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../domain/entities/weather_station.dart';

class WeatherMainCard extends StatelessWidget {
  final WeatherStation station;

  const WeatherMainCard({super.key, required this.station});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    return Container(
      height: 450,
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: NetworkImage('https://belize.com/wp-content/uploads/2022/10/rio-frio-caves-mountain-pine-ridge.webp'),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.black.withOpacity(isDark ? 0.3 : 0.1),
              isDark ? const Color(0xFF0F172A) : Colors.white,
            ],
          ),
        ),
        padding: const EdgeInsets.fromLTRB(20, 60, 20, 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'BELIZE WEATHER',
                  style: GoogleFonts.inter(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              decoration: BoxDecoration(
                color: Colors.yellow.shade700,
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Text(
                'Tropical Depression Warning: Stay Informed.',
                style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black87),
              ),
            ),
            const Spacer(),
            Text(
              '11:17 PM',
              style: GoogleFonts.inter(
                color: !isDark ? const Color(0xFF0F172A) : Colors.white,
                fontSize: 50,
                fontWeight: FontWeight.w300,
              ),
            ),
            Text(
              station.city,
              style: GoogleFonts.inter(
                color: !isDark ? const Color(0xFF0F172A) : Colors.white,
                fontSize: 28,
                fontWeight: FontWeight.w800,
              ),
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                Text(
                  '${station.temperatureF.round()}°F / ${station.temperatureC.round()}°C',
                  style: GoogleFonts.inter(
                    color:  !isDark ? const Color(0xFF0F172A) : Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                const Spacer(),
                const Icon(Icons.cloudy_snowing, color: Colors.white, size: 90),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
