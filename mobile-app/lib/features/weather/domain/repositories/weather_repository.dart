import '../entities/weather_station.dart';
import '../entities/station_details.dart';
import '../entities/forecast.dart';

abstract class WeatherRepository {
  Future<List<WeatherStation>> getWeatherStations();
  Future<StationFullData> getStationDetails(int id);
  Future<ForecastResponse> getForecast();
}
