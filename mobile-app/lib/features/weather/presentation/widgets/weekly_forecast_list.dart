import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../domain/entities/forecast.dart';

class WeeklyForecastList extends StatelessWidget {
  final List<DailyForecast> dailyForecasts;

  const WeeklyForecastList({super.key, required this.dailyForecasts});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'GENERAL 4 DAY FORECAST',
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
            itemCount: dailyForecasts.length,
            clipBehavior: Clip.none,
            itemBuilder: (context, index) {
              final forecast = dailyForecasts[index];
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
                  gradient: index == 0 && isDark ? const LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color(0xFF334155),
                      Color(0xFF1E293B),
                    ],
                  ) : null,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      forecast.day.toUpperCase(),
                      style: GoogleFonts.inter(
                        color: isDark ? Colors.white : Colors.black87,
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      forecast.date,
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
                        // Dynamic condition icon
                        Icon(
                          _getIconForCondition(forecast.image),
                          color: isDark ? Colors.lightBlueAccent : Colors.blue.shade400,
                          size: 32,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              forecast.coastHigh.replaceAll('&deg;', ''),
                              style: GoogleFonts.inter(
                                color: isDark ? Colors.white : Colors.black87,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              forecast.coastLow.replaceAll('&deg;', ''),
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

  IconData _getIconForCondition(String imageName) {
    if (imageName.contains('shower')) return Icons.cloudy_snowing;
    if (imageName.contains('cloudy')) return Icons.wb_cloudy_outlined;
    if (imageName.contains('sunny')) return Icons.wb_sunny_outlined;
    return Icons.wb_cloudy;
  }
}
