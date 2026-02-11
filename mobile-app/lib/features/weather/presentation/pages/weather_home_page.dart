import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import '../providers/weather_provider.dart';
import '../widgets/weather_main_card.dart';
import '../widgets/forecast_list.dart';
import '../widgets/community_weather_card.dart';
import '../widgets/marine_report_card.dart';
import '../widgets/daily_briefing_card.dart';
import '../widgets/regional_temperatures_card.dart';
import '../widgets/weekly_forecast_list.dart';

class WeatherHomePage extends ConsumerWidget {
  const WeatherHomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final weatherState = ref.watch(weatherStationsProvider);
    final forecastState = ref.watch(forecastProvider);
    final mainStation = ref.watch(selectedMainStationProvider);
    final liveDataState = ref.watch(mainStationDetailsProvider);
    
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    return Scaffold(
      backgroundColor: isDark ? const Color(0xFF0F172A) : Colors.white,
      body: weatherState.when(
        data: (stations) {
          if (mainStation == null) return const Center(child: CircularProgressIndicator());
          
          return CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: WeatherMainCard(
                  station: mainStation,
                  generalForecast: forecastState.value?.general.data.firstOrNull,
                  liveData: liveDataState.value,
                  // Pass the first item from daily forecast data
                  dailyForecast: forecastState.value?.daily.data.firstOrNull,
                ),
              ),
              SliverPadding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
                sliver: SliverToBoxAdapter(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      forecastState.when(
                        data: (forecast) => Column(
                          children: [
                            WeeklyForecastList(dailyForecasts: forecast.daily.data),
                            const SizedBox(height: 32),
                            DailyBriefingCard(generalForecast: forecast.general.data.first),
                            const SizedBox(height: 24),
                            RegionalTemperaturesCard(generalForecast: forecast.general.data.first),
                          ],
                        ),
                        loading: () => const SizedBox(height: 100, child: Center(child: CircularProgressIndicator())),
                        error: (err, _) => Text('Forecast Error: $err'),
                      ),
                      const SizedBox(height: 32),
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
                      const SizedBox(height: 100),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
        loading: () => Center(child: CircularProgressIndicator(color: theme.colorScheme.primary)),
        error: (err, stack) => Center(child: Text('Error: $err')),
      ),
    );
  }
}
