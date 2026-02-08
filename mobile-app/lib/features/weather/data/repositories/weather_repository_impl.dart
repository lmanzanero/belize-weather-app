import 'package:dio/dio.dart';
import '../../domain/entities/weather_station.dart';
import '../../domain/entities/station_details.dart';
import '../../domain/repositories/weather_repository.dart';

class WeatherRepositoryImpl implements WeatherRepository {
  final Dio _dio;

  WeatherRepositoryImpl(this._dio);

  @override
  Future<List<WeatherStation>> getWeatherStations() async {
    try {
      final response = await _dio.get('https://belize-weather-app.vercel.app/api/v1/weather-stations');
      if (response.statusCode == 200) {
        final List<dynamic> data = response.data;
        return data.map((json) => WeatherStation.fromJson(json)).toList();
      } else {
        throw Exception('Failed to load weather stations');
      }
    } catch (e) {
      throw Exception('Error fetching weather data: $e');
    }
  }

  @override
  Future<StationFullData> getStationDetails(int id) async {
    try {
      final response = await _dio.get('https://belize-weather-app.vercel.app/api/v1/weather-stations/$id');
      if (response.statusCode == 200) {
        return StationFullData.fromJson(response.data);
      } else {
        throw Exception('Failed to load station details');
      }
    } catch (e) {
      throw Exception('Error fetching station details: $e');
    }
  }
}
