// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_station.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WeatherStation {

 int get id;@JsonKey(name: 'name') String get city;@JsonKey(name: 'region') String get region;@JsonKey(name: 'temperature_c') double get temperatureC;@JsonKey(name: 'temperature_f') double get temperatureF; String get condition; String? get icon; double? get longitude; double? get latitude;@JsonKey(name: 'is_active') bool? get isActive;
/// Create a copy of WeatherStation
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WeatherStationCopyWith<WeatherStation> get copyWith => _$WeatherStationCopyWithImpl<WeatherStation>(this as WeatherStation, _$identity);

  /// Serializes this WeatherStation to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WeatherStation&&(identical(other.id, id) || other.id == id)&&(identical(other.city, city) || other.city == city)&&(identical(other.region, region) || other.region == region)&&(identical(other.temperatureC, temperatureC) || other.temperatureC == temperatureC)&&(identical(other.temperatureF, temperatureF) || other.temperatureF == temperatureF)&&(identical(other.condition, condition) || other.condition == condition)&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.isActive, isActive) || other.isActive == isActive));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,city,region,temperatureC,temperatureF,condition,icon,longitude,latitude,isActive);

@override
String toString() {
  return 'WeatherStation(id: $id, city: $city, region: $region, temperatureC: $temperatureC, temperatureF: $temperatureF, condition: $condition, icon: $icon, longitude: $longitude, latitude: $latitude, isActive: $isActive)';
}


}

/// @nodoc
abstract mixin class $WeatherStationCopyWith<$Res>  {
  factory $WeatherStationCopyWith(WeatherStation value, $Res Function(WeatherStation) _then) = _$WeatherStationCopyWithImpl;
@useResult
$Res call({
 int id,@JsonKey(name: 'name') String city,@JsonKey(name: 'region') String region,@JsonKey(name: 'temperature_c') double temperatureC,@JsonKey(name: 'temperature_f') double temperatureF, String condition, String? icon, double? longitude, double? latitude,@JsonKey(name: 'is_active') bool? isActive
});




}
/// @nodoc
class _$WeatherStationCopyWithImpl<$Res>
    implements $WeatherStationCopyWith<$Res> {
  _$WeatherStationCopyWithImpl(this._self, this._then);

  final WeatherStation _self;
  final $Res Function(WeatherStation) _then;

/// Create a copy of WeatherStation
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? city = null,Object? region = null,Object? temperatureC = null,Object? temperatureF = null,Object? condition = null,Object? icon = freezed,Object? longitude = freezed,Object? latitude = freezed,Object? isActive = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String,region: null == region ? _self.region : region // ignore: cast_nullable_to_non_nullable
as String,temperatureC: null == temperatureC ? _self.temperatureC : temperatureC // ignore: cast_nullable_to_non_nullable
as double,temperatureF: null == temperatureF ? _self.temperatureF : temperatureF // ignore: cast_nullable_to_non_nullable
as double,condition: null == condition ? _self.condition : condition // ignore: cast_nullable_to_non_nullable
as String,icon: freezed == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String?,longitude: freezed == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double?,latitude: freezed == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double?,isActive: freezed == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [WeatherStation].
extension WeatherStationPatterns on WeatherStation {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WeatherStation value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WeatherStation() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WeatherStation value)  $default,){
final _that = this;
switch (_that) {
case _WeatherStation():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WeatherStation value)?  $default,){
final _that = this;
switch (_that) {
case _WeatherStation() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'name')  String city, @JsonKey(name: 'region')  String region, @JsonKey(name: 'temperature_c')  double temperatureC, @JsonKey(name: 'temperature_f')  double temperatureF,  String condition,  String? icon,  double? longitude,  double? latitude, @JsonKey(name: 'is_active')  bool? isActive)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WeatherStation() when $default != null:
return $default(_that.id,_that.city,_that.region,_that.temperatureC,_that.temperatureF,_that.condition,_that.icon,_that.longitude,_that.latitude,_that.isActive);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'name')  String city, @JsonKey(name: 'region')  String region, @JsonKey(name: 'temperature_c')  double temperatureC, @JsonKey(name: 'temperature_f')  double temperatureF,  String condition,  String? icon,  double? longitude,  double? latitude, @JsonKey(name: 'is_active')  bool? isActive)  $default,) {final _that = this;
switch (_that) {
case _WeatherStation():
return $default(_that.id,_that.city,_that.region,_that.temperatureC,_that.temperatureF,_that.condition,_that.icon,_that.longitude,_that.latitude,_that.isActive);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id, @JsonKey(name: 'name')  String city, @JsonKey(name: 'region')  String region, @JsonKey(name: 'temperature_c')  double temperatureC, @JsonKey(name: 'temperature_f')  double temperatureF,  String condition,  String? icon,  double? longitude,  double? latitude, @JsonKey(name: 'is_active')  bool? isActive)?  $default,) {final _that = this;
switch (_that) {
case _WeatherStation() when $default != null:
return $default(_that.id,_that.city,_that.region,_that.temperatureC,_that.temperatureF,_that.condition,_that.icon,_that.longitude,_that.latitude,_that.isActive);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WeatherStation implements WeatherStation {
  const _WeatherStation({required this.id, @JsonKey(name: 'name') this.city = 'Unknown Station', @JsonKey(name: 'region') this.region = 'Unknown Region', @JsonKey(name: 'temperature_c') this.temperatureC = 24.0, @JsonKey(name: 'temperature_f') this.temperatureF = 75.0, this.condition = 'Sunny', this.icon, this.longitude, this.latitude, @JsonKey(name: 'is_active') this.isActive});
  factory _WeatherStation.fromJson(Map<String, dynamic> json) => _$WeatherStationFromJson(json);

@override final  int id;
@override@JsonKey(name: 'name') final  String city;
@override@JsonKey(name: 'region') final  String region;
@override@JsonKey(name: 'temperature_c') final  double temperatureC;
@override@JsonKey(name: 'temperature_f') final  double temperatureF;
@override@JsonKey() final  String condition;
@override final  String? icon;
@override final  double? longitude;
@override final  double? latitude;
@override@JsonKey(name: 'is_active') final  bool? isActive;

/// Create a copy of WeatherStation
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WeatherStationCopyWith<_WeatherStation> get copyWith => __$WeatherStationCopyWithImpl<_WeatherStation>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WeatherStationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WeatherStation&&(identical(other.id, id) || other.id == id)&&(identical(other.city, city) || other.city == city)&&(identical(other.region, region) || other.region == region)&&(identical(other.temperatureC, temperatureC) || other.temperatureC == temperatureC)&&(identical(other.temperatureF, temperatureF) || other.temperatureF == temperatureF)&&(identical(other.condition, condition) || other.condition == condition)&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.isActive, isActive) || other.isActive == isActive));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,city,region,temperatureC,temperatureF,condition,icon,longitude,latitude,isActive);

@override
String toString() {
  return 'WeatherStation(id: $id, city: $city, region: $region, temperatureC: $temperatureC, temperatureF: $temperatureF, condition: $condition, icon: $icon, longitude: $longitude, latitude: $latitude, isActive: $isActive)';
}


}

/// @nodoc
abstract mixin class _$WeatherStationCopyWith<$Res> implements $WeatherStationCopyWith<$Res> {
  factory _$WeatherStationCopyWith(_WeatherStation value, $Res Function(_WeatherStation) _then) = __$WeatherStationCopyWithImpl;
@override @useResult
$Res call({
 int id,@JsonKey(name: 'name') String city,@JsonKey(name: 'region') String region,@JsonKey(name: 'temperature_c') double temperatureC,@JsonKey(name: 'temperature_f') double temperatureF, String condition, String? icon, double? longitude, double? latitude,@JsonKey(name: 'is_active') bool? isActive
});




}
/// @nodoc
class __$WeatherStationCopyWithImpl<$Res>
    implements _$WeatherStationCopyWith<$Res> {
  __$WeatherStationCopyWithImpl(this._self, this._then);

  final _WeatherStation _self;
  final $Res Function(_WeatherStation) _then;

/// Create a copy of WeatherStation
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? city = null,Object? region = null,Object? temperatureC = null,Object? temperatureF = null,Object? condition = null,Object? icon = freezed,Object? longitude = freezed,Object? latitude = freezed,Object? isActive = freezed,}) {
  return _then(_WeatherStation(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String,region: null == region ? _self.region : region // ignore: cast_nullable_to_non_nullable
as String,temperatureC: null == temperatureC ? _self.temperatureC : temperatureC // ignore: cast_nullable_to_non_nullable
as double,temperatureF: null == temperatureF ? _self.temperatureF : temperatureF // ignore: cast_nullable_to_non_nullable
as double,condition: null == condition ? _self.condition : condition // ignore: cast_nullable_to_non_nullable
as String,icon: freezed == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String?,longitude: freezed == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double?,latitude: freezed == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double?,isActive: freezed == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
