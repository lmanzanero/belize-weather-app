import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MarineReportCard extends StatelessWidget {
  const MarineReportCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Marine & Reef Report',
          style: GoogleFonts.inter(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w600),
        ),
        const SizedBox(height: 16),
        Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: const Color(0xFF1E293B),
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: Colors.white.withOpacity(0.05)),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildMarineInfo('Visibility', 'Excellent', Icons.visibility),
                  _buildMarineInfo('Sea State', 'Light Chop', Icons.waves),
                  _buildMarineInfo('Sargassum', 'Low Risk', Icons.eco),
                ],
              ),
              const Divider(height: 40, color: Colors.white24),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Sargassum Tracker Premium',
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
                  ),
                  Switch(
                    value: true,
                    onChanged: (val) {},
                    activeColor: Colors.orange,
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildMarineInfo(String title, String value, IconData icon) {
    return Column(
      children: [
        Icon(icon, color: Colors.lightBlueAccent, size: 32),
        const SizedBox(height: 8),
        Text(title, style: const TextStyle(color: Colors.white70, fontSize: 13)),
        Text(value, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15)),
      ],
    );
  }
}
