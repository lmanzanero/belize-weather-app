import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_station.freezed.dart';
part 'weather_station.g.dart';

@freezed
class WeatherStation with _$WeatherStation {
  const factory WeatherStation({
    required int id,
    @Default('Unknown Station') @JsonKey(name: 'name') String city,
    @Default('Unknown Region') @JsonKey(name: 'region') String region,
    @Default(24.0) @JsonKey(name: 'temperature_c') double temperatureC,
    @Default(75.0) @JsonKey(name: 'temperature_f') double temperatureF,
    @Default('Sunny') String condition,
    String? icon,
    double? longitude,
    double? latitude,
    @JsonKey(name: 'is_active') bool? isActive,
  }) = _WeatherStation;

  factory WeatherStation.fromJson(Map<String, dynamic> json) =>
      _$WeatherStationFromJson(json);
}
