import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegionalTemperaturesCard extends StatelessWidget {
  const RegionalTemperaturesCard({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'REGIONAL TEMPERATURES',
          style: GoogleFonts.inter(
            color: isDark ? Colors.white70 : Colors.black54,
            fontSize: 14,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.2,
          ),
        ),
        const SizedBox(height: 16),
        Row(
          children: [
            Expanded(child: _buildTempItem(context, 'COAST', '81°F / 70°F')),
            const SizedBox(width: 12),
            Expanded(child: _buildTempItem(context, 'INLAND', '85°F / 63°F')),
            const SizedBox(width: 12),
            Expanded(child: _buildTempItem(context, 'HILLS', '72°F / 54°F')),
          ],
        ),
      ],
    );
  }

  Widget _buildTempItem(BuildContext context, String region, String temp) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
      decoration: BoxDecoration(
        color: isDark ? const Color(0xFF1E293B) : Colors.grey.shade100,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: isDark ? Colors.white.withOpacity(0.05) : Colors.black.withOpacity(0.05),
        ),
      ),
      child: Column(
        children: [
          Text(
            region,
            style: GoogleFonts.inter(
              color: isDark ? Colors.white60 : Colors.black54,
              fontSize: 11,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            temp,
            style: GoogleFonts.inter(
              color: isDark ? Colors.white : Colors.black87,
              fontSize: 13,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
