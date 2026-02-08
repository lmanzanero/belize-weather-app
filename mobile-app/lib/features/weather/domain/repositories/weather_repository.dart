import '../entities/weather_station.dart';
import '../entities/station_details.dart';

abstract class WeatherRepository {
  Future<List<WeatherStation>> getWeatherStations();
  Future<StationFullData> getStationDetails(int id);
}
