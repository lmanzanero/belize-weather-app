import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../domain/entities/weather_station.dart';

class WeatherMainCard extends StatelessWidget {
  final WeatherStation station;

  const WeatherMainCard({super.key, required this.station});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450,
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: NetworkImage('https://images.unsplash.com/photo-1504280390367-361c6d9f38f4?q=80&w=2070&auto=format&fit=crop'),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.black.withOpacity(0.3),
              const Color(0xFF0F172A),
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
                const Icon(Icons.close, color: Colors.white),
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
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const Spacer(),
            Text(
              '11:17 PM',
              style: GoogleFonts.inter(
                color: Colors.white,
                fontSize: 48,
                fontWeight: FontWeight.w300,
              ),
            ),
            Text(
              station.city,
              style: GoogleFonts.inter(
                color: Colors.white,
                fontSize: 28,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                Text(
                  '${station.temperatureF.round()}°F / ${station.temperatureC.round()}°C',
                  style: GoogleFonts.inter(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const Spacer(),
                const Icon(Icons.cloudy_snowing, color: Colors.white, size: 64),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
