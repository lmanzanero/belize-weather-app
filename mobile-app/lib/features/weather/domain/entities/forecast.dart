import 'package:freezed_annotation/freezed_annotation.dart';

part 'forecast.freezed.dart';
part 'forecast.g.dart';

@freezed
abstract class ForecastResponse with _$ForecastResponse {
  const factory ForecastResponse({
    required DailyForecastContainer daily,
    required GeneralForecastContainer general,
  }) = _ForecastResponse;

  factory ForecastResponse.fromJson(Map<String, dynamic> json) =>
      _$ForecastResponseFromJson(json);
}

@freezed
abstract class DailyForecastContainer with _$DailyForecastContainer {
  const factory DailyForecastContainer({
    @JsonKey(name: 'forecast_data') required List<DailyForecast> data,
  }) = _DailyForecastContainer;

  factory DailyForecastContainer.fromJson(Map<String, dynamic> json) =>
      _$DailyForecastContainerFromJson(json);
}

@freezed
abstract class DailyForecast with _$DailyForecast {
  const factory DailyForecast({
    required int id,
    @JsonKey(name: 'forecast_date') required String date,
    @JsonKey(name: 'forecast_day') required String day,
    @JsonKey(name: 'forecast_image') required String image,
    @JsonKey(name: 'forecast_image_night') required String imageNight,
    @JsonKey(name: 'forecast_description') required String description,
    @JsonKey(name: 'coast_high') required String coastHigh,
    @JsonKey(name: 'coast_low') required String coastLow,
    @JsonKey(name: 'inland_high') required String inlandHigh,
    @JsonKey(name: 'inland_low') required String inlandLow,
  }) = _DailyForecast;

  factory DailyForecast.fromJson(Map<String, dynamic> json) =>
      _$DailyForecastFromJson(json);
}

@freezed
abstract class GeneralForecastContainer with _$GeneralForecastContainer {
  const factory GeneralForecastContainer({
    @JsonKey(name: 'forecast_data') required List<GeneralForecast> data,
  }) = _GeneralForecastContainer;

  factory GeneralForecastContainer.fromJson(Map<String, dynamic> json) =>
      _$GeneralForecastContainerFromJson(json);
}

@freezed
abstract class GeneralForecast with _$GeneralForecast {
  const factory GeneralForecast({
    required int id,
    @JsonKey(name: 'forecast_display_time') required String displayTime,
    @JsonKey(name: 'general_situation') required String situation,
    @JsonKey(name: 'thr_forecast') required String briefing,
    @JsonKey(name: 'coast_high_f') required String coastHighF,
    @JsonKey(name: 'coast_low_f') required String coastLowF,
    @JsonKey(name: 'inland_high_f') required String inlandHighF,
    @JsonKey(name: 'inland_low_f') required String inlandLowF,
    @JsonKey(name: 'hills_high_f') required String hillsHighF,
    @JsonKey(name: 'hills_low_f') required String hillsLowF,
    required String audio,
    String? advisory,
  }) = _GeneralForecast;

  factory GeneralForecast.fromJson(Map<String, dynamic> json) =>
      _$GeneralForecastFromJson(json);
}
