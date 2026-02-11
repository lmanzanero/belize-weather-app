import 'package:dio/dio.dart';
import '../../domain/entities/weather_station.dart';
import '../../domain/entities/station_details.dart';
import '../../domain/entities/forecast.dart';
import '../../domain/repositories/weather_repository.dart';

class WeatherRepositoryImpl implements WeatherRepository {
  final Dio _dio;

  // Use 10.0.2.2 to access your computer's localhost from an Android Emulator.
  static const String _baseUrl = 'http://10.0.2.2:3000';

  WeatherRepositoryImpl(this._dio);

  @override
  Future<List<WeatherStation>> getWeatherStations() async {
    try {
      final response = await _dio.get('$_baseUrl/api/v1/weather-stations');
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
      final response = await _dio.get('$_baseUrl/api/v1/weather-stations/$id');
      if (response.statusCode == 200) {
        return StationFullData.fromJson(response.data);
      } else {
        throw Exception('Failed to load station details');
      }
    } catch (e) {
      throw Exception('Error fetching station details: $e');
    }
  }

  @override
  Future<ForecastResponse> getForecast() async {
    try {
      final response = await _dio.get('$_baseUrl/api/v1/forecast');
      if (response.statusCode == 200) {
        return ForecastResponse.fromJson(response.data);
      } else {
        throw Exception('Failed to load forecast data');
      }
    } catch (e) {
      throw Exception('Error fetching forecast data: $e');
    }
  }
}
