import 'package:freezed_annotation/freezed_annotation.dart';

part 'station_details.freezed.dart';
part 'station_details.g.dart';

@freezed
class StationDetails with _$StationDetails {
  const factory StationDetails({
    required int id,
    @Default('Unknown') String name,
    @JsonKey(name: 'alias_name') String? aliasName,
    double? longitude,
    double? latitude,
    @Default(0) int elevation,
    String? watershed,
    @JsonKey(name: 'is_active') bool? isActive,
    @JsonKey(name: 'updated_at') String? updatedAt,
  }) = _StationDetails;

  factory StationDetails.fromJson(Map<String, dynamic> json) =>
      _$StationDetailsFromJson(json);
}

@freezed
class WeatherVariable with _$WeatherVariable {
  const factory WeatherVariable({
    @Default('Unknown') String name,
    @Default('') String symbol,
    @Default('') @JsonKey(name: 'unit_name') String unitName,
    @Default('') @JsonKey(name: 'unit_symbol') String unitSymbol,
  }) = _WeatherVariable;

  factory WeatherVariable.fromJson(Map<String, dynamic> json) =>
      _$WeatherVariableFromJson(json);
}

@freezed
class WeatherValue with _$WeatherValue {
  const factory WeatherValue({
    @Default('--') dynamic value,
    required WeatherVariable variable,
  }) = _WeatherValue;

  factory WeatherValue.fromJson(Map<String, dynamic> json) =>
      _$WeatherValueFromJson(json);
}

@freezed
class StationFullData with _$StationFullData {
  const factory StationFullData({
    required StationDetails station,
    @Default('Unknown Station') @JsonKey(name: 'station_name') String stationName,
    @Default(0) @JsonKey(name: 'station_id') int stationId,
    List<WeatherValue>? latest,
    List<WeatherValue>? past24h,
    List<WeatherValue>? currentday,
  }) = _StationFullData;

  factory StationFullData.fromJson(Map<String, dynamic> json) =>
      _$StationFullDataFromJson(json);
}
