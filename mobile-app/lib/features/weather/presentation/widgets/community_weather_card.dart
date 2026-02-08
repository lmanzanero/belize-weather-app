import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CommunityWeatherCard extends StatelessWidget {
  const CommunityWeatherCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Community Weather',
          style: GoogleFonts.inter(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w600),
        ),
        const SizedBox(height: 16),
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: const Color(0xFF1E293B),
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: Colors.white.withOpacity(0.05)),
          ),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRAw7BG7RKSu0HgE1INsOgwgJNDQSxnEPVZzA&s',
                  width: 80,
                  height: 60,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(width: 16),
              const Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Ceplan Rehtos',
                          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(width: 4),
                        Icon(Icons.circle, color: Colors.green, size: 8),
                      ],
                    ),
                    SizedBox(height: 4),
                    Text(
                      'Rainbows after the storm! Heavy rain here!',
                      style: TextStyle(color: Colors.white70),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
