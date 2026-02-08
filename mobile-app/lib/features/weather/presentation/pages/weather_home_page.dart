import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import '../providers/weather_provider.dart';
import '../widgets/weather_main_card.dart';
import '../widgets/forecast_list.dart';
import '../widgets/community_weather_card.dart';
import '../widgets/marine_report_card.dart';

class WeatherHomePage extends ConsumerWidget {
  const WeatherHomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final weatherState = ref.watch(weatherStationsProvider);
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    return Scaffold(
      backgroundColor: isDark ? const Color(0xFF0F172A) : Colors.white,
      body: weatherState.when(
        data: (stations) {
          final mainStation = stations.firstWhere((s) => s.city == 'Belize City', orElse: () => stations.first);
          
          return CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: WeatherMainCard(station: mainStation),
              ),
              SliverPadding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
                sliver: SliverToBoxAdapter(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Municipality Forecast',
                        style: GoogleFonts.inter(
                          color: isDark ? Colors.white : Colors.black87,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 16),
                      ForecastList(stations: stations),
                      const SizedBox(height: 32),
                      const CommunityWeatherCard(),
                      const SizedBox(height: 32),
                      const MarineReportCard(),
                      const SizedBox(height: 100), // Bottom spacing
                    ],
                  ),
                ),
              ),
            ],
          );
        },
        loading: () => Center(child: CircularProgressIndicator(color: theme.colorScheme.primary)),
        error: (err, stack) => Center(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Text(
              'Error: $err', 
              style: TextStyle(color: isDark ? Colors.white70 : Colors.black54),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
