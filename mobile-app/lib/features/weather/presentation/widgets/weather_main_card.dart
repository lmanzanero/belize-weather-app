import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../domain/entities/weather_station.dart';
import '../../domain/entities/forecast.dart';
import '../../domain/entities/station_details.dart';

class WeatherMainCard extends StatelessWidget {
  final WeatherStation station;
  final GeneralForecast? generalForecast;
  final StationFullData? liveData;
  final DailyForecast? dailyForecast;

  const WeatherMainCard({
    super.key, 
    required this.station,
    this.generalForecast,
    this.liveData,
    this.dailyForecast,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    // Extract live temperatures from readings if available
    String tempF = '${station.temperatureF.round()}°F';
    String tempC = '${station.temperatureC.round()}°C';

    if (liveData?.latest != null) {
      final fReading = liveData!.latest!.firstWhere(
        (r) => r.variable.unitSymbol == '°F', 
        orElse: () => liveData!.latest!.firstWhere((r) => r.variable.name.contains('Temperature'), orElse: () => liveData!.latest!.first),
      );
      tempF = '${fReading.value}°F';
      final cReading = liveData!.latest!.firstWhere((r) => r.variable.unitSymbol == '°C', orElse: () => fReading);
      tempC = '${cReading.value}°C';
    }

    // Determine if it's day or night based on system time
    final hour = DateTime.now().hour;
    final isNight = hour >= 18 || hour < 6;

    // Build the icon URL
    const String iconPrefix = 'https://nms.gov.bz/images/weather_icons/';
    String iconUrl = '${iconPrefix}d_cloudy2.png'; // Default fallback

    if (dailyForecast != null) {
      final imageName = isNight ? dailyForecast!.imageNight : dailyForecast!.image;
      iconUrl = '$iconPrefix$imageName';
    }

    return Container(
      height: 400,
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
                  'BELIZE SKIES',
                  style: GoogleFonts.inter(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            if (generalForecast?.advisory != null && generalForecast!.advisory!.isNotEmpty)
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                decoration: BoxDecoration(
                  color: Colors.yellow.shade700,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  generalForecast!.advisory!,
                  style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.black87),
                ),
              ),
            const SizedBox(height: 16),
            Text(
              generalForecast?.displayTime.split('|').last.trim() ?? '11:17 PM',
              style: GoogleFonts.inter(
                color: !isDark ? const Color(0xFF0F172A) : Colors.white,
                fontSize: 50,
                fontWeight: FontWeight.w300,
              ),
            ),
            Text(
              station.name,
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
                  '$tempF / $tempC',
                  style: GoogleFonts.inter(
                    color: !isDark ? const Color(0xFF0F172A) : Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                const Spacer(),
                Image.network(
                  iconUrl,
                  width: 100,
                  height: 100,
                  fit: BoxFit.contain,
                  errorBuilder: (context, error, stackTrace) => 
                    const Icon(Icons.wb_cloudy, color: Colors.white, size: 20),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
