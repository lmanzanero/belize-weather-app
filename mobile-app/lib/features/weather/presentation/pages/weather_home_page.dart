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

    return Scaffold(
      backgroundColor: const Color(0xFF0F172A),
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
                          color: Colors.white,
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
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (err, stack) => Center(child: Text('Error: $err', style: const TextStyle(color: Colors.white))),
      ),
      bottomNavigationBar: _buildBottomNav(theme),
    );
  }

  Widget _buildBottomNav(ThemeData theme) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFF1E293B).withOpacity(0.95),
        border: Border(top: BorderSide(color: Colors.white.withOpacity(0.1))),
      ),
      child: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.map_outlined), label: 'Map'),
          BottomNavigationBarItem(icon: Icon(Icons.people_outline), label: 'Community'),
          BottomNavigationBarItem(icon: Icon(Icons.notifications_none), label: 'Alerts'),
        ],
      ),
    );
  }
}
