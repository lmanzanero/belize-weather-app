import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../data/repositories/weather_repository_impl.dart';
import '../../domain/entities/weather_station.dart';
import '../../domain/entities/station_details.dart';
import '../../domain/entities/forecast.dart';
import '../../domain/repositories/weather_repository.dart';

final weatherRepositoryProvider = Provider<WeatherRepository>((ref) {
  return WeatherRepositoryImpl(Dio());
});

final weatherStationsProvider = FutureProvider<List<WeatherStation>>((ref) async {
  final repository = ref.watch(weatherRepositoryProvider);
  return repository.getWeatherStations();
});

final stationDetailsProvider = FutureProvider.family<StationFullData, int>((ref, id) async {
  final repository = ref.watch(weatherRepositoryProvider);
  return repository.getStationDetails(id);
});

final forecastProvider = FutureProvider<ForecastResponse>((ref) async {
  final repository = ref.watch(weatherRepositoryProvider);
  return repository.getForecast();
});

// Provider to track the user's selected default station ID
final defaultStationIdProvider = StateProvider<int?>((ref) => null);

// Derived provider to get the actual WeatherStation object for the default station
final selectedMainStationProvider = Provider<WeatherStation?>((ref) {
  final stations = ref.watch(weatherStationsProvider).value ?? [];
  final selectedId = ref.watch(defaultStationIdProvider);
  
  if (stations.isEmpty) return null;
  
  if (selectedId == null) {
    return stations.firstWhere(
      (s) => s.name == 'Baldy Beacon', 
      orElse: () => stations.first,
    );
  }
  
  return stations.firstWhere((s) => s.id == selectedId, orElse: () => stations.first);
});

// Provider that automatically fetches the full details for the selected main station
final mainStationDetailsProvider = FutureProvider<StationFullData?>((ref) async {
  final mainStation = ref.watch(selectedMainStationProvider);
  if (mainStation == null) return null;
  
  final repository = ref.watch(weatherRepositoryProvider);
  return repository.getStationDetails(mainStation.id);
});
