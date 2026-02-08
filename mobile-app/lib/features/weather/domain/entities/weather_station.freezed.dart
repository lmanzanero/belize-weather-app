// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_station.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

WeatherStation _$WeatherStationFromJson(Map<String, dynamic> json) {
  return _WeatherStation.fromJson(json);
}

/// @nodoc
mixin _$WeatherStation {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get city => throw _privateConstructorUsedError;
  @JsonKey(name: 'region')
  String get region => throw _privateConstructorUsedError;
  @JsonKey(name: 'temperature_c')
  double get temperatureC => throw _privateConstructorUsedError;
  @JsonKey(name: 'temperature_f')
  double get temperatureF => throw _privateConstructorUsedError;
  String get condition => throw _privateConstructorUsedError;
  String? get icon => throw _privateConstructorUsedError;
  double? get longitude => throw _privateConstructorUsedError;
  double? get latitude => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_active')
  bool? get isActive => throw _privateConstructorUsedError;

  /// Serializes this WeatherStation to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WeatherStation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WeatherStationCopyWith<WeatherStation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherStationCopyWith<$Res> {
  factory $WeatherStationCopyWith(
    WeatherStation value,
    $Res Function(WeatherStation) then,
  ) = _$WeatherStationCopyWithImpl<$Res, WeatherStation>;
  @useResult
  $Res call({
    int id,
    @JsonKey(name: 'name') String city,
    @JsonKey(name: 'region') String region,
    @JsonKey(name: 'temperature_c') double temperatureC,
    @JsonKey(name: 'temperature_f') double temperatureF,
    String condition,
    String? icon,
    double? longitude,
    double? latitude,
    @JsonKey(name: 'is_active') bool? isActive,
  });
}

/// @nodoc
class _$WeatherStationCopyWithImpl<$Res, $Val extends WeatherStation>
    implements $WeatherStationCopyWith<$Res> {
  _$WeatherStationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WeatherStation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? city = null,
    Object? region = null,
    Object? temperatureC = null,
    Object? temperatureF = null,
    Object? condition = null,
    Object? icon = freezed,
    Object? longitude = freezed,
    Object? latitude = freezed,
    Object? isActive = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            city: null == city
                ? _value.city
                : city // ignore: cast_nullable_to_non_nullable
                      as String,
            region: null == region
                ? _value.region
                : region // ignore: cast_nullable_to_non_nullable
                      as String,
            temperatureC: null == temperatureC
                ? _value.temperatureC
                : temperatureC // ignore: cast_nullable_to_non_nullable
                      as double,
            temperatureF: null == temperatureF
                ? _value.temperatureF
                : temperatureF // ignore: cast_nullable_to_non_nullable
                      as double,
            condition: null == condition
                ? _value.condition
                : condition // ignore: cast_nullable_to_non_nullable
                      as String,
            icon: freezed == icon
                ? _value.icon
                : icon // ignore: cast_nullable_to_non_nullable
                      as String?,
            longitude: freezed == longitude
                ? _value.longitude
                : longitude // ignore: cast_nullable_to_non_nullable
                      as double?,
            latitude: freezed == latitude
                ? _value.latitude
                : latitude // ignore: cast_nullable_to_non_nullable
                      as double?,
            isActive: freezed == isActive
                ? _value.isActive
                : isActive // ignore: cast_nullable_to_non_nullable
                      as bool?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$WeatherStationImplCopyWith<$Res>
    implements $WeatherStationCopyWith<$Res> {
  factory _$$WeatherStationImplCopyWith(
    _$WeatherStationImpl value,
    $Res Function(_$WeatherStationImpl) then,
  ) = __$$WeatherStationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    @JsonKey(name: 'name') String city,
    @JsonKey(name: 'region') String region,
    @JsonKey(name: 'temperature_c') double temperatureC,
    @JsonKey(name: 'temperature_f') double temperatureF,
    String condition,
    String? icon,
    double? longitude,
    double? latitude,
    @JsonKey(name: 'is_active') bool? isActive,
  });
}

/// @nodoc
class __$$WeatherStationImplCopyWithImpl<$Res>
    extends _$WeatherStationCopyWithImpl<$Res, _$WeatherStationImpl>
    implements _$$WeatherStationImplCopyWith<$Res> {
  __$$WeatherStationImplCopyWithImpl(
    _$WeatherStationImpl _value,
    $Res Function(_$WeatherStationImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of WeatherStation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? city = null,
    Object? region = null,
    Object? temperatureC = null,
    Object? temperatureF = null,
    Object? condition = null,
    Object? icon = freezed,
    Object? longitude = freezed,
    Object? latitude = freezed,
    Object? isActive = freezed,
  }) {
    return _then(
      _$WeatherStationImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        city: null == city
            ? _value.city
            : city // ignore: cast_nullable_to_non_nullable
                  as String,
        region: null == region
            ? _value.region
            : region // ignore: cast_nullable_to_non_nullable
                  as String,
        temperatureC: null == temperatureC
            ? _value.temperatureC
            : temperatureC // ignore: cast_nullable_to_non_nullable
                  as double,
        temperatureF: null == temperatureF
            ? _value.temperatureF
            : temperatureF // ignore: cast_nullable_to_non_nullable
                  as double,
        condition: null == condition
            ? _value.condition
            : condition // ignore: cast_nullable_to_non_nullable
                  as String,
        icon: freezed == icon
            ? _value.icon
            : icon // ignore: cast_nullable_to_non_nullable
                  as String?,
        longitude: freezed == longitude
            ? _value.longitude
            : longitude // ignore: cast_nullable_to_non_nullable
                  as double?,
        latitude: freezed == latitude
            ? _value.latitude
            : latitude // ignore: cast_nullable_to_non_nullable
                  as double?,
        isActive: freezed == isActive
            ? _value.isActive
            : isActive // ignore: cast_nullable_to_non_nullable
                  as bool?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$WeatherStationImpl implements _WeatherStation {
  const _$WeatherStationImpl({
    required this.id,
    @JsonKey(name: 'name') this.city = 'Unknown Station',
    @JsonKey(name: 'region') this.region = 'Unknown Region',
    @JsonKey(name: 'temperature_c') this.temperatureC = 24.0,
    @JsonKey(name: 'temperature_f') this.temperatureF = 75.0,
    this.condition = 'Sunny',
    this.icon,
    this.longitude,
    this.latitude,
    @JsonKey(name: 'is_active') this.isActive,
  });

  factory _$WeatherStationImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeatherStationImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'name')
  final String city;
  @override
  @JsonKey(name: 'region')
  final String region;
  @override
  @JsonKey(name: 'temperature_c')
  final double temperatureC;
  @override
  @JsonKey(name: 'temperature_f')
  final double temperatureF;
  @override
  @JsonKey()
  final String condition;
  @override
  final String? icon;
  @override
  final double? longitude;
  @override
  final double? latitude;
  @override
  @JsonKey(name: 'is_active')
  final bool? isActive;

  @override
  String toString() {
    return 'WeatherStation(id: $id, city: $city, region: $region, temperatureC: $temperatureC, temperatureF: $temperatureF, condition: $condition, icon: $icon, longitude: $longitude, latitude: $latitude, isActive: $isActive)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherStationImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.region, region) || other.region == region) &&
            (identical(other.temperatureC, temperatureC) ||
                other.temperatureC == temperatureC) &&
            (identical(other.temperatureF, temperatureF) ||
                other.temperatureF == temperatureF) &&
            (identical(other.condition, condition) ||
                other.condition == condition) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    city,
    region,
    temperatureC,
    temperatureF,
    condition,
    icon,
    longitude,
    latitude,
    isActive,
  );

  /// Create a copy of WeatherStation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherStationImplCopyWith<_$WeatherStationImpl> get copyWith =>
      __$$WeatherStationImplCopyWithImpl<_$WeatherStationImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$WeatherStationImplToJson(this);
  }
}

abstract class _WeatherStation implements WeatherStation {
  const factory _WeatherStation({
    required final int id,
    @JsonKey(name: 'name') final String city,
    @JsonKey(name: 'region') final String region,
    @JsonKey(name: 'temperature_c') final double temperatureC,
    @JsonKey(name: 'temperature_f') final double temperatureF,
    final String condition,
    final String? icon,
    final double? longitude,
    final double? latitude,
    @JsonKey(name: 'is_active') final bool? isActive,
  }) = _$WeatherStationImpl;

  factory _WeatherStation.fromJson(Map<String, dynamic> json) =
      _$WeatherStationImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'name')
  String get city;
  @override
  @JsonKey(name: 'region')
  String get region;
  @override
  @JsonKey(name: 'temperature_c')
  double get temperatureC;
  @override
  @JsonKey(name: 'temperature_f')
  double get temperatureF;
  @override
  String get condition;
  @override
  String? get icon;
  @override
  double? get longitude;
  @override
  double? get latitude;
  @override
  @JsonKey(name: 'is_active')
  bool? get isActive;

  /// Create a copy of WeatherStation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WeatherStationImplCopyWith<_$WeatherStationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
