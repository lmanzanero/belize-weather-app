import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../data/repositories/weather_repository_impl.dart';
import '../../domain/entities/weather_station.dart';
import '../../domain/entities/station_details.dart';
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
