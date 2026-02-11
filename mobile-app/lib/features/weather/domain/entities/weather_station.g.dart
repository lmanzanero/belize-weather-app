// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_station.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WeatherStation _$WeatherStationFromJson(Map<String, dynamic> json) =>
    _WeatherStation(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String? ?? 'Unknown Station',
      region: json['region'] as String? ?? 'Unknown Region',
      temperatureC: (json['temperature_c'] as num?)?.toDouble() ?? 24.0,
      temperatureF: (json['temperature_f'] as num?)?.toDouble() ?? 75.0,
      condition: json['condition'] as String? ?? 'Sunny',
      icon: json['icon'] as String?,
      longitude: (json['longitude'] as num?)?.toDouble(),
      latitude: (json['latitude'] as num?)?.toDouble(),
      isActive: json['is_active'] as bool?,
    );

Map<String, dynamic> _$WeatherStationToJson(_WeatherStation instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'region': instance.region,
      'temperature_c': instance.temperatureC,
      'temperature_f': instance.temperatureF,
      'condition': instance.condition,
      'icon': instance.icon,
      'longitude': instance.longitude,
      'latitude': instance.latitude,
      'is_active': instance.isActive,
    };
