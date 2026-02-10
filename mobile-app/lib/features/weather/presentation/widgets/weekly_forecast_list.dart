import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class WeeklyForecastList extends StatelessWidget {
  const WeeklyForecastList({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    
    // Mock data for 7 days
    final now = DateTime.now();
    final mockForecast = List.generate(7, (index) {
      final date = now.add(Duration(days: index));
      return {
        'day': index == 0 ? 'TODAY' : DateFormat('EEEE').format(date).toUpperCase(),
        'date': DateFormat('MMM d').format(date),
        'high': 82 + index % 3,
        'low': 70 + index % 2,
        'condition': index % 2 == 0 ? 'Showers' : 'Partly Cloudy',
      };
    });

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'WEEKLY FORECAST',
          style: GoogleFonts.inter(
            color: isDark ? Colors.white70 : Colors.black54,
            fontSize: 14,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.2,
          ),
        ),
        const SizedBox(height: 16),
        SizedBox(
          height: 140,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: mockForecast.length,
            clipBehavior: Clip.none,
            itemBuilder: (context, index) {
              final forecast = mockForecast[index];
              // Calculate width to show roughly 2.2 items on most screens
              final itemWidth = MediaQuery.of(context).size.width * 0.42;
              
              return Container(
                width: itemWidth,
                margin: const EdgeInsets.only(right: 12),
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: isDark ? const Color(0xFF1E293B) : Colors.grey.shade100,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: isDark ? Colors.white.withOpacity(0.05) : Colors.black.withOpacity(0.05),
                  ),
                  gradient: index == 0 && isDark ? LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      const Color(0xFF334155),
                      const Color(0xFF1E293B),
                    ],
                  ) : null,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      forecast['day'] as String,
                      style: GoogleFonts.inter(
                        color: isDark ? Colors.white : Colors.black87,
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      forecast['date'] as String,
                      style: GoogleFonts.inter(
                        color: isDark ? Colors.white60 : Colors.black54,
                        fontSize: 11,
                      ),
                    ),
                    const Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Icon(
                          index % 2 == 0 ? Icons.cloudy_snowing : Icons.wb_cloudy_outlined,
                          color: isDark ? Colors.lightBlueAccent : Colors.blue.shade400,
                          size: 32,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              '${forecast['high']}°F',
                              style: GoogleFonts.inter(
                                color: isDark ? Colors.white : Colors.black87,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              '${forecast['low']}°F',
                              style: GoogleFonts.inter(
                                color: isDark ? Colors.white60 : Colors.black54,
                                fontSize: 13,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
