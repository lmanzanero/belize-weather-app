// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'station_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StationDetailsImpl _$$StationDetailsImplFromJson(Map<String, dynamic> json) =>
    _$StationDetailsImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String? ?? 'Unknown',
      aliasName: json['alias_name'] as String?,
      longitude: (json['longitude'] as num?)?.toDouble(),
      latitude: (json['latitude'] as num?)?.toDouble(),
      elevation: (json['elevation'] as num?)?.toInt() ?? 0,
      watershed: json['watershed'] as String?,
      isActive: json['is_active'] as bool?,
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$$StationDetailsImplToJson(
  _$StationDetailsImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'alias_name': instance.aliasName,
  'longitude': instance.longitude,
  'latitude': instance.latitude,
  'elevation': instance.elevation,
  'watershed': instance.watershed,
  'is_active': instance.isActive,
  'updated_at': instance.updatedAt,
};

_$WeatherVariableImpl _$$WeatherVariableImplFromJson(
  Map<String, dynamic> json,
) => _$WeatherVariableImpl(
  name: json['name'] as String? ?? 'Unknown',
  symbol: json['symbol'] as String? ?? '',
  unitName: json['unit_name'] as String? ?? '',
  unitSymbol: json['unit_symbol'] as String? ?? '',
);

Map<String, dynamic> _$$WeatherVariableImplToJson(
  _$WeatherVariableImpl instance,
) => <String, dynamic>{
  'name': instance.name,
  'symbol': instance.symbol,
  'unit_name': instance.unitName,
  'unit_symbol': instance.unitSymbol,
};

_$WeatherValueImpl _$$WeatherValueImplFromJson(Map<String, dynamic> json) =>
    _$WeatherValueImpl(
      value: json['value'] ?? '--',
      variable: WeatherVariable.fromJson(
        json['variable'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$$WeatherValueImplToJson(_$WeatherValueImpl instance) =>
    <String, dynamic>{'value': instance.value, 'variable': instance.variable};

_$StationFullDataImpl _$$StationFullDataImplFromJson(
  Map<String, dynamic> json,
) => _$StationFullDataImpl(
  station: StationDetails.fromJson(json['station'] as Map<String, dynamic>),
  stationName: json['station_name'] as String? ?? 'Unknown Station',
  stationId: (json['station_id'] as num?)?.toInt() ?? 0,
  latest: (json['latest'] as List<dynamic>?)
      ?.map((e) => WeatherValue.fromJson(e as Map<String, dynamic>))
      .toList(),
  past24h: (json['past24h'] as List<dynamic>?)
      ?.map((e) => WeatherValue.fromJson(e as Map<String, dynamic>))
      .toList(),
  currentday: (json['currentday'] as List<dynamic>?)
      ?.map((e) => WeatherValue.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$$StationFullDataImplToJson(
  _$StationFullDataImpl instance,
) => <String, dynamic>{
  'station': instance.station,
  'station_name': instance.stationName,
  'station_id': instance.stationId,
  'latest': instance.latest,
  'past24h': instance.past24h,
  'currentday': instance.currentday,
};
