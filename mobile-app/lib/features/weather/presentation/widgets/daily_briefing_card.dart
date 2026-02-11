import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'weather_audio_player.dart';
import '../../domain/entities/forecast.dart';

class DailyBriefingCard extends StatelessWidget {
  final GeneralForecast generalForecast;

  const DailyBriefingCard({super.key, required this.generalForecast});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: isDark ? const Color(0xFF1E293B) : Colors.grey.shade100,
        borderRadius: BorderRadius.circular(24),
        border: Border.all(
          color: isDark ? Colors.white.withOpacity(0.05) : Colors.black.withOpacity(0.05),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'DAILY BRIEFING',
            style: GoogleFonts.inter(
              color: isDark ? Colors.orange : Colors.orange.shade800,
              fontSize: 14,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.2,
            ),
          ),
          const SizedBox(height: 12),
          Text(
            generalForecast.briefing.toUpperCase(),
            style: GoogleFonts.inter(
              color: isDark ? Colors.white.withOpacity(0.9) : Colors.black87,
              fontSize: 15,
              height: 1.5,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 16),
          Text(
            'Situation: ${generalForecast.situation}',
            style: GoogleFonts.inter(
              color: isDark ? Colors.white60 : Colors.black54,
              fontSize: 13,
              fontStyle: FontStyle.italic,
            ),
          ),
          WeatherAudioPlayer(
            url: generalForecast.audio,
          ),
        ],
      ),
    );
  }
}
