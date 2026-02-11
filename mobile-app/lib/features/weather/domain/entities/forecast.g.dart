// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecast.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ForecastResponse _$ForecastResponseFromJson(Map<String, dynamic> json) =>
    _ForecastResponse(
      daily: DailyForecastContainer.fromJson(
        json['daily'] as Map<String, dynamic>,
      ),
      general: GeneralForecastContainer.fromJson(
        json['general'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$ForecastResponseToJson(_ForecastResponse instance) =>
    <String, dynamic>{'daily': instance.daily, 'general': instance.general};

_DailyForecastContainer _$DailyForecastContainerFromJson(
  Map<String, dynamic> json,
) => _DailyForecastContainer(
  data: (json['forecast_data'] as List<dynamic>)
      .map((e) => DailyForecast.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$DailyForecastContainerToJson(
  _DailyForecastContainer instance,
) => <String, dynamic>{'forecast_data': instance.data};

_DailyForecast _$DailyForecastFromJson(Map<String, dynamic> json) =>
    _DailyForecast(
      id: (json['id'] as num).toInt(),
      date: json['forecast_date'] as String,
      day: json['forecast_day'] as String,
      image: json['forecast_image'] as String,
      imageNight: json['forecast_image_night'] as String,
      description: json['forecast_description'] as String,
      coastHigh: json['coast_high'] as String,
      coastLow: json['coast_low'] as String,
      inlandHigh: json['inland_high'] as String,
      inlandLow: json['inland_low'] as String,
    );

Map<String, dynamic> _$DailyForecastToJson(_DailyForecast instance) =>
    <String, dynamic>{
      'id': instance.id,
      'forecast_date': instance.date,
      'forecast_day': instance.day,
      'forecast_image': instance.image,
      'forecast_image_night': instance.imageNight,
      'forecast_description': instance.description,
      'coast_high': instance.coastHigh,
      'coast_low': instance.coastLow,
      'inland_high': instance.inlandHigh,
      'inland_low': instance.inlandLow,
    };

_GeneralForecastContainer _$GeneralForecastContainerFromJson(
  Map<String, dynamic> json,
) => _GeneralForecastContainer(
  data: (json['forecast_data'] as List<dynamic>)
      .map((e) => GeneralForecast.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$GeneralForecastContainerToJson(
  _GeneralForecastContainer instance,
) => <String, dynamic>{'forecast_data': instance.data};

_GeneralForecast _$GeneralForecastFromJson(Map<String, dynamic> json) =>
    _GeneralForecast(
      id: (json['id'] as num).toInt(),
      displayTime: json['forecast_display_time'] as String,
      situation: json['general_situation'] as String,
      briefing: json['thr_forecast'] as String,
      coastHighF: json['coast_high_f'] as String,
      coastLowF: json['coast_low_f'] as String,
      inlandHighF: json['inland_high_f'] as String,
      inlandLowF: json['inland_low_f'] as String,
      hillsHighF: json['hills_high_f'] as String,
      hillsLowF: json['hills_low_f'] as String,
      audio: json['audio'] as String,
      advisory: json['advisory'] as String?,
    );

Map<String, dynamic> _$GeneralForecastToJson(_GeneralForecast instance) =>
    <String, dynamic>{
      'id': instance.id,
      'forecast_display_time': instance.displayTime,
      'general_situation': instance.situation,
      'thr_forecast': instance.briefing,
      'coast_high_f': instance.coastHighF,
      'coast_low_f': instance.coastLowF,
      'inland_high_f': instance.inlandHighF,
      'inland_low_f': instance.inlandLowF,
      'hills_high_f': instance.hillsHighF,
      'hills_low_f': instance.hillsLowF,
      'audio': instance.audio,
      'advisory': instance.advisory,
    };
