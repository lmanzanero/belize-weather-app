import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'weather_audio_player.dart';

class DailyBriefingCard extends StatelessWidget {
  const DailyBriefingCard({super.key});

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
            'MOSTLY SUNNY TODAY, THEN CLEAR TO PARTLY CLOUDY TONIGHT. ONLY ISOLATED SHOWERS, IF ANY.',
            style: GoogleFonts.inter(
              color: isDark ? Colors.white.withOpacity(0.9) : Colors.black87,
              fontSize: 15,
              height: 1.5,
              fontWeight: FontWeight.w500,
            ),
          ),
          const WeatherAudioPlayer(
            url: 'https://wimp.nms.gov.bz/forecast/general/audio/2026-02-10_0600_AM_NMS_BZ.mp3',
          ),
        ],
      ),
    );
  }
}
