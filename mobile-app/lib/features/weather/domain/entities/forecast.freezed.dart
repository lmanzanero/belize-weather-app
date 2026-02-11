// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forecast.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ForecastResponse {

 DailyForecastContainer get daily; GeneralForecastContainer get general;
/// Create a copy of ForecastResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ForecastResponseCopyWith<ForecastResponse> get copyWith => _$ForecastResponseCopyWithImpl<ForecastResponse>(this as ForecastResponse, _$identity);

  /// Serializes this ForecastResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ForecastResponse&&(identical(other.daily, daily) || other.daily == daily)&&(identical(other.general, general) || other.general == general));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,daily,general);

@override
String toString() {
  return 'ForecastResponse(daily: $daily, general: $general)';
}


}

/// @nodoc
abstract mixin class $ForecastResponseCopyWith<$Res>  {
  factory $ForecastResponseCopyWith(ForecastResponse value, $Res Function(ForecastResponse) _then) = _$ForecastResponseCopyWithImpl;
@useResult
$Res call({
 DailyForecastContainer daily, GeneralForecastContainer general
});


$DailyForecastContainerCopyWith<$Res> get daily;$GeneralForecastContainerCopyWith<$Res> get general;

}
/// @nodoc
class _$ForecastResponseCopyWithImpl<$Res>
    implements $ForecastResponseCopyWith<$Res> {
  _$ForecastResponseCopyWithImpl(this._self, this._then);

  final ForecastResponse _self;
  final $Res Function(ForecastResponse) _then;

/// Create a copy of ForecastResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? daily = null,Object? general = null,}) {
  return _then(_self.copyWith(
daily: null == daily ? _self.daily : daily // ignore: cast_nullable_to_non_nullable
as DailyForecastContainer,general: null == general ? _self.general : general // ignore: cast_nullable_to_non_nullable
as GeneralForecastContainer,
  ));
}
/// Create a copy of ForecastResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DailyForecastContainerCopyWith<$Res> get daily {
  
  return $DailyForecastContainerCopyWith<$Res>(_self.daily, (value) {
    return _then(_self.copyWith(daily: value));
  });
}/// Create a copy of ForecastResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GeneralForecastContainerCopyWith<$Res> get general {
  
  return $GeneralForecastContainerCopyWith<$Res>(_self.general, (value) {
    return _then(_self.copyWith(general: value));
  });
}
}


/// Adds pattern-matching-related methods to [ForecastResponse].
extension ForecastResponsePatterns on ForecastResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ForecastResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ForecastResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ForecastResponse value)  $default,){
final _that = this;
switch (_that) {
case _ForecastResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ForecastResponse value)?  $default,){
final _that = this;
switch (_that) {
case _ForecastResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( DailyForecastContainer daily,  GeneralForecastContainer general)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ForecastResponse() when $default != null:
return $default(_that.daily,_that.general);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( DailyForecastContainer daily,  GeneralForecastContainer general)  $default,) {final _that = this;
switch (_that) {
case _ForecastResponse():
return $default(_that.daily,_that.general);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( DailyForecastContainer daily,  GeneralForecastContainer general)?  $default,) {final _that = this;
switch (_that) {
case _ForecastResponse() when $default != null:
return $default(_that.daily,_that.general);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ForecastResponse implements ForecastResponse {
  const _ForecastResponse({required this.daily, required this.general});
  factory _ForecastResponse.fromJson(Map<String, dynamic> json) => _$ForecastResponseFromJson(json);

@override final  DailyForecastContainer daily;
@override final  GeneralForecastContainer general;

/// Create a copy of ForecastResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ForecastResponseCopyWith<_ForecastResponse> get copyWith => __$ForecastResponseCopyWithImpl<_ForecastResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ForecastResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ForecastResponse&&(identical(other.daily, daily) || other.daily == daily)&&(identical(other.general, general) || other.general == general));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,daily,general);

@override
String toString() {
  return 'ForecastResponse(daily: $daily, general: $general)';
}


}

/// @nodoc
abstract mixin class _$ForecastResponseCopyWith<$Res> implements $ForecastResponseCopyWith<$Res> {
  factory _$ForecastResponseCopyWith(_ForecastResponse value, $Res Function(_ForecastResponse) _then) = __$ForecastResponseCopyWithImpl;
@override @useResult
$Res call({
 DailyForecastContainer daily, GeneralForecastContainer general
});


@override $DailyForecastContainerCopyWith<$Res> get daily;@override $GeneralForecastContainerCopyWith<$Res> get general;

}
/// @nodoc
class __$ForecastResponseCopyWithImpl<$Res>
    implements _$ForecastResponseCopyWith<$Res> {
  __$ForecastResponseCopyWithImpl(this._self, this._then);

  final _ForecastResponse _self;
  final $Res Function(_ForecastResponse) _then;

/// Create a copy of ForecastResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? daily = null,Object? general = null,}) {
  return _then(_ForecastResponse(
daily: null == daily ? _self.daily : daily // ignore: cast_nullable_to_non_nullable
as DailyForecastContainer,general: null == general ? _self.general : general // ignore: cast_nullable_to_non_nullable
as GeneralForecastContainer,
  ));
}

/// Create a copy of ForecastResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DailyForecastContainerCopyWith<$Res> get daily {
  
  return $DailyForecastContainerCopyWith<$Res>(_self.daily, (value) {
    return _then(_self.copyWith(daily: value));
  });
}/// Create a copy of ForecastResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GeneralForecastContainerCopyWith<$Res> get general {
  
  return $GeneralForecastContainerCopyWith<$Res>(_self.general, (value) {
    return _then(_self.copyWith(general: value));
  });
}
}


/// @nodoc
mixin _$DailyForecastContainer {

@JsonKey(name: 'forecast_data') List<DailyForecast> get data;
/// Create a copy of DailyForecastContainer
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DailyForecastContainerCopyWith<DailyForecastContainer> get copyWith => _$DailyForecastContainerCopyWithImpl<DailyForecastContainer>(this as DailyForecastContainer, _$identity);

  /// Serializes this DailyForecastContainer to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DailyForecastContainer&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'DailyForecastContainer(data: $data)';
}


}

/// @nodoc
abstract mixin class $DailyForecastContainerCopyWith<$Res>  {
  factory $DailyForecastContainerCopyWith(DailyForecastContainer value, $Res Function(DailyForecastContainer) _then) = _$DailyForecastContainerCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'forecast_data') List<DailyForecast> data
});




}
/// @nodoc
class _$DailyForecastContainerCopyWithImpl<$Res>
    implements $DailyForecastContainerCopyWith<$Res> {
  _$DailyForecastContainerCopyWithImpl(this._self, this._then);

  final DailyForecastContainer _self;
  final $Res Function(DailyForecastContainer) _then;

/// Create a copy of DailyForecastContainer
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = null,}) {
  return _then(_self.copyWith(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<DailyForecast>,
  ));
}

}


/// Adds pattern-matching-related methods to [DailyForecastContainer].
extension DailyForecastContainerPatterns on DailyForecastContainer {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DailyForecastContainer value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DailyForecastContainer() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DailyForecastContainer value)  $default,){
final _that = this;
switch (_that) {
case _DailyForecastContainer():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DailyForecastContainer value)?  $default,){
final _that = this;
switch (_that) {
case _DailyForecastContainer() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'forecast_data')  List<DailyForecast> data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DailyForecastContainer() when $default != null:
return $default(_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'forecast_data')  List<DailyForecast> data)  $default,) {final _that = this;
switch (_that) {
case _DailyForecastContainer():
return $default(_that.data);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'forecast_data')  List<DailyForecast> data)?  $default,) {final _that = this;
switch (_that) {
case _DailyForecastContainer() when $default != null:
return $default(_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DailyForecastContainer implements DailyForecastContainer {
  const _DailyForecastContainer({@JsonKey(name: 'forecast_data') required final  List<DailyForecast> data}): _data = data;
  factory _DailyForecastContainer.fromJson(Map<String, dynamic> json) => _$DailyForecastContainerFromJson(json);

 final  List<DailyForecast> _data;
@override@JsonKey(name: 'forecast_data') List<DailyForecast> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}


/// Create a copy of DailyForecastContainer
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DailyForecastContainerCopyWith<_DailyForecastContainer> get copyWith => __$DailyForecastContainerCopyWithImpl<_DailyForecastContainer>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DailyForecastContainerToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DailyForecastContainer&&const DeepCollectionEquality().equals(other._data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'DailyForecastContainer(data: $data)';
}


}

/// @nodoc
abstract mixin class _$DailyForecastContainerCopyWith<$Res> implements $DailyForecastContainerCopyWith<$Res> {
  factory _$DailyForecastContainerCopyWith(_DailyForecastContainer value, $Res Function(_DailyForecastContainer) _then) = __$DailyForecastContainerCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'forecast_data') List<DailyForecast> data
});




}
/// @nodoc
class __$DailyForecastContainerCopyWithImpl<$Res>
    implements _$DailyForecastContainerCopyWith<$Res> {
  __$DailyForecastContainerCopyWithImpl(this._self, this._then);

  final _DailyForecastContainer _self;
  final $Res Function(_DailyForecastContainer) _then;

/// Create a copy of DailyForecastContainer
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(_DailyForecastContainer(
data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<DailyForecast>,
  ));
}


}


/// @nodoc
mixin _$DailyForecast {

 int get id;@JsonKey(name: 'forecast_date') String get date;@JsonKey(name: 'forecast_day') String get day;@JsonKey(name: 'forecast_image') String get image;@JsonKey(name: 'forecast_image_night') String get imageNight;@JsonKey(name: 'forecast_description') String get description;@JsonKey(name: 'coast_high') String get coastHigh;@JsonKey(name: 'coast_low') String get coastLow;@JsonKey(name: 'inland_high') String get inlandHigh;@JsonKey(name: 'inland_low') String get inlandLow;
/// Create a copy of DailyForecast
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DailyForecastCopyWith<DailyForecast> get copyWith => _$DailyForecastCopyWithImpl<DailyForecast>(this as DailyForecast, _$identity);

  /// Serializes this DailyForecast to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DailyForecast&&(identical(other.id, id) || other.id == id)&&(identical(other.date, date) || other.date == date)&&(identical(other.day, day) || other.day == day)&&(identical(other.image, image) || other.image == image)&&(identical(other.imageNight, imageNight) || other.imageNight == imageNight)&&(identical(other.description, description) || other.description == description)&&(identical(other.coastHigh, coastHigh) || other.coastHigh == coastHigh)&&(identical(other.coastLow, coastLow) || other.coastLow == coastLow)&&(identical(other.inlandHigh, inlandHigh) || other.inlandHigh == inlandHigh)&&(identical(other.inlandLow, inlandLow) || other.inlandLow == inlandLow));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,date,day,image,imageNight,description,coastHigh,coastLow,inlandHigh,inlandLow);

@override
String toString() {
  return 'DailyForecast(id: $id, date: $date, day: $day, image: $image, imageNight: $imageNight, description: $description, coastHigh: $coastHigh, coastLow: $coastLow, inlandHigh: $inlandHigh, inlandLow: $inlandLow)';
}


}

/// @nodoc
abstract mixin class $DailyForecastCopyWith<$Res>  {
  factory $DailyForecastCopyWith(DailyForecast value, $Res Function(DailyForecast) _then) = _$DailyForecastCopyWithImpl;
@useResult
$Res call({
 int id,@JsonKey(name: 'forecast_date') String date,@JsonKey(name: 'forecast_day') String day,@JsonKey(name: 'forecast_image') String image,@JsonKey(name: 'forecast_image_night') String imageNight,@JsonKey(name: 'forecast_description') String description,@JsonKey(name: 'coast_high') String coastHigh,@JsonKey(name: 'coast_low') String coastLow,@JsonKey(name: 'inland_high') String inlandHigh,@JsonKey(name: 'inland_low') String inlandLow
});




}
/// @nodoc
class _$DailyForecastCopyWithImpl<$Res>
    implements $DailyForecastCopyWith<$Res> {
  _$DailyForecastCopyWithImpl(this._self, this._then);

  final DailyForecast _self;
  final $Res Function(DailyForecast) _then;

/// Create a copy of DailyForecast
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? date = null,Object? day = null,Object? image = null,Object? imageNight = null,Object? description = null,Object? coastHigh = null,Object? coastLow = null,Object? inlandHigh = null,Object? inlandLow = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,day: null == day ? _self.day : day // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,imageNight: null == imageNight ? _self.imageNight : imageNight // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,coastHigh: null == coastHigh ? _self.coastHigh : coastHigh // ignore: cast_nullable_to_non_nullable
as String,coastLow: null == coastLow ? _self.coastLow : coastLow // ignore: cast_nullable_to_non_nullable
as String,inlandHigh: null == inlandHigh ? _self.inlandHigh : inlandHigh // ignore: cast_nullable_to_non_nullable
as String,inlandLow: null == inlandLow ? _self.inlandLow : inlandLow // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [DailyForecast].
extension DailyForecastPatterns on DailyForecast {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DailyForecast value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DailyForecast() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DailyForecast value)  $default,){
final _that = this;
switch (_that) {
case _DailyForecast():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DailyForecast value)?  $default,){
final _that = this;
switch (_that) {
case _DailyForecast() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'forecast_date')  String date, @JsonKey(name: 'forecast_day')  String day, @JsonKey(name: 'forecast_image')  String image, @JsonKey(name: 'forecast_image_night')  String imageNight, @JsonKey(name: 'forecast_description')  String description, @JsonKey(name: 'coast_high')  String coastHigh, @JsonKey(name: 'coast_low')  String coastLow, @JsonKey(name: 'inland_high')  String inlandHigh, @JsonKey(name: 'inland_low')  String inlandLow)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DailyForecast() when $default != null:
return $default(_that.id,_that.date,_that.day,_that.image,_that.imageNight,_that.description,_that.coastHigh,_that.coastLow,_that.inlandHigh,_that.inlandLow);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'forecast_date')  String date, @JsonKey(name: 'forecast_day')  String day, @JsonKey(name: 'forecast_image')  String image, @JsonKey(name: 'forecast_image_night')  String imageNight, @JsonKey(name: 'forecast_description')  String description, @JsonKey(name: 'coast_high')  String coastHigh, @JsonKey(name: 'coast_low')  String coastLow, @JsonKey(name: 'inland_high')  String inlandHigh, @JsonKey(name: 'inland_low')  String inlandLow)  $default,) {final _that = this;
switch (_that) {
case _DailyForecast():
return $default(_that.id,_that.date,_that.day,_that.image,_that.imageNight,_that.description,_that.coastHigh,_that.coastLow,_that.inlandHigh,_that.inlandLow);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id, @JsonKey(name: 'forecast_date')  String date, @JsonKey(name: 'forecast_day')  String day, @JsonKey(name: 'forecast_image')  String image, @JsonKey(name: 'forecast_image_night')  String imageNight, @JsonKey(name: 'forecast_description')  String description, @JsonKey(name: 'coast_high')  String coastHigh, @JsonKey(name: 'coast_low')  String coastLow, @JsonKey(name: 'inland_high')  String inlandHigh, @JsonKey(name: 'inland_low')  String inlandLow)?  $default,) {final _that = this;
switch (_that) {
case _DailyForecast() when $default != null:
return $default(_that.id,_that.date,_that.day,_that.image,_that.imageNight,_that.description,_that.coastHigh,_that.coastLow,_that.inlandHigh,_that.inlandLow);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DailyForecast implements DailyForecast {
  const _DailyForecast({required this.id, @JsonKey(name: 'forecast_date') required this.date, @JsonKey(name: 'forecast_day') required this.day, @JsonKey(name: 'forecast_image') required this.image, @JsonKey(name: 'forecast_image_night') required this.imageNight, @JsonKey(name: 'forecast_description') required this.description, @JsonKey(name: 'coast_high') required this.coastHigh, @JsonKey(name: 'coast_low') required this.coastLow, @JsonKey(name: 'inland_high') required this.inlandHigh, @JsonKey(name: 'inland_low') required this.inlandLow});
  factory _DailyForecast.fromJson(Map<String, dynamic> json) => _$DailyForecastFromJson(json);

@override final  int id;
@override@JsonKey(name: 'forecast_date') final  String date;
@override@JsonKey(name: 'forecast_day') final  String day;
@override@JsonKey(name: 'forecast_image') final  String image;
@override@JsonKey(name: 'forecast_image_night') final  String imageNight;
@override@JsonKey(name: 'forecast_description') final  String description;
@override@JsonKey(name: 'coast_high') final  String coastHigh;
@override@JsonKey(name: 'coast_low') final  String coastLow;
@override@JsonKey(name: 'inland_high') final  String inlandHigh;
@override@JsonKey(name: 'inland_low') final  String inlandLow;

/// Create a copy of DailyForecast
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DailyForecastCopyWith<_DailyForecast> get copyWith => __$DailyForecastCopyWithImpl<_DailyForecast>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DailyForecastToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DailyForecast&&(identical(other.id, id) || other.id == id)&&(identical(other.date, date) || other.date == date)&&(identical(other.day, day) || other.day == day)&&(identical(other.image, image) || other.image == image)&&(identical(other.imageNight, imageNight) || other.imageNight == imageNight)&&(identical(other.description, description) || other.description == description)&&(identical(other.coastHigh, coastHigh) || other.coastHigh == coastHigh)&&(identical(other.coastLow, coastLow) || other.coastLow == coastLow)&&(identical(other.inlandHigh, inlandHigh) || other.inlandHigh == inlandHigh)&&(identical(other.inlandLow, inlandLow) || other.inlandLow == inlandLow));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,date,day,image,imageNight,description,coastHigh,coastLow,inlandHigh,inlandLow);

@override
String toString() {
  return 'DailyForecast(id: $id, date: $date, day: $day, image: $image, imageNight: $imageNight, description: $description, coastHigh: $coastHigh, coastLow: $coastLow, inlandHigh: $inlandHigh, inlandLow: $inlandLow)';
}


}

/// @nodoc
abstract mixin class _$DailyForecastCopyWith<$Res> implements $DailyForecastCopyWith<$Res> {
  factory _$DailyForecastCopyWith(_DailyForecast value, $Res Function(_DailyForecast) _then) = __$DailyForecastCopyWithImpl;
@override @useResult
$Res call({
 int id,@JsonKey(name: 'forecast_date') String date,@JsonKey(name: 'forecast_day') String day,@JsonKey(name: 'forecast_image') String image,@JsonKey(name: 'forecast_image_night') String imageNight,@JsonKey(name: 'forecast_description') String description,@JsonKey(name: 'coast_high') String coastHigh,@JsonKey(name: 'coast_low') String coastLow,@JsonKey(name: 'inland_high') String inlandHigh,@JsonKey(name: 'inland_low') String inlandLow
});




}
/// @nodoc
class __$DailyForecastCopyWithImpl<$Res>
    implements _$DailyForecastCopyWith<$Res> {
  __$DailyForecastCopyWithImpl(this._self, this._then);

  final _DailyForecast _self;
  final $Res Function(_DailyForecast) _then;

/// Create a copy of DailyForecast
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? date = null,Object? day = null,Object? image = null,Object? imageNight = null,Object? description = null,Object? coastHigh = null,Object? coastLow = null,Object? inlandHigh = null,Object? inlandLow = null,}) {
  return _then(_DailyForecast(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,day: null == day ? _self.day : day // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,imageNight: null == imageNight ? _self.imageNight : imageNight // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,coastHigh: null == coastHigh ? _self.coastHigh : coastHigh // ignore: cast_nullable_to_non_nullable
as String,coastLow: null == coastLow ? _self.coastLow : coastLow // ignore: cast_nullable_to_non_nullable
as String,inlandHigh: null == inlandHigh ? _self.inlandHigh : inlandHigh // ignore: cast_nullable_to_non_nullable
as String,inlandLow: null == inlandLow ? _self.inlandLow : inlandLow // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$GeneralForecastContainer {

@JsonKey(name: 'forecast_data') List<GeneralForecast> get data;
/// Create a copy of GeneralForecastContainer
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GeneralForecastContainerCopyWith<GeneralForecastContainer> get copyWith => _$GeneralForecastContainerCopyWithImpl<GeneralForecastContainer>(this as GeneralForecastContainer, _$identity);

  /// Serializes this GeneralForecastContainer to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GeneralForecastContainer&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'GeneralForecastContainer(data: $data)';
}


}

/// @nodoc
abstract mixin class $GeneralForecastContainerCopyWith<$Res>  {
  factory $GeneralForecastContainerCopyWith(GeneralForecastContainer value, $Res Function(GeneralForecastContainer) _then) = _$GeneralForecastContainerCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'forecast_data') List<GeneralForecast> data
});




}
/// @nodoc
class _$GeneralForecastContainerCopyWithImpl<$Res>
    implements $GeneralForecastContainerCopyWith<$Res> {
  _$GeneralForecastContainerCopyWithImpl(this._self, this._then);

  final GeneralForecastContainer _self;
  final $Res Function(GeneralForecastContainer) _then;

/// Create a copy of GeneralForecastContainer
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = null,}) {
  return _then(_self.copyWith(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<GeneralForecast>,
  ));
}

}


/// Adds pattern-matching-related methods to [GeneralForecastContainer].
extension GeneralForecastContainerPatterns on GeneralForecastContainer {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GeneralForecastContainer value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GeneralForecastContainer() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GeneralForecastContainer value)  $default,){
final _that = this;
switch (_that) {
case _GeneralForecastContainer():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GeneralForecastContainer value)?  $default,){
final _that = this;
switch (_that) {
case _GeneralForecastContainer() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'forecast_data')  List<GeneralForecast> data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GeneralForecastContainer() when $default != null:
return $default(_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'forecast_data')  List<GeneralForecast> data)  $default,) {final _that = this;
switch (_that) {
case _GeneralForecastContainer():
return $default(_that.data);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'forecast_data')  List<GeneralForecast> data)?  $default,) {final _that = this;
switch (_that) {
case _GeneralForecastContainer() when $default != null:
return $default(_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GeneralForecastContainer implements GeneralForecastContainer {
  const _GeneralForecastContainer({@JsonKey(name: 'forecast_data') required final  List<GeneralForecast> data}): _data = data;
  factory _GeneralForecastContainer.fromJson(Map<String, dynamic> json) => _$GeneralForecastContainerFromJson(json);

 final  List<GeneralForecast> _data;
@override@JsonKey(name: 'forecast_data') List<GeneralForecast> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}


/// Create a copy of GeneralForecastContainer
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GeneralForecastContainerCopyWith<_GeneralForecastContainer> get copyWith => __$GeneralForecastContainerCopyWithImpl<_GeneralForecastContainer>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GeneralForecastContainerToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GeneralForecastContainer&&const DeepCollectionEquality().equals(other._data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'GeneralForecastContainer(data: $data)';
}


}

/// @nodoc
abstract mixin class _$GeneralForecastContainerCopyWith<$Res> implements $GeneralForecastContainerCopyWith<$Res> {
  factory _$GeneralForecastContainerCopyWith(_GeneralForecastContainer value, $Res Function(_GeneralForecastContainer) _then) = __$GeneralForecastContainerCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'forecast_data') List<GeneralForecast> data
});




}
/// @nodoc
class __$GeneralForecastContainerCopyWithImpl<$Res>
    implements _$GeneralForecastContainerCopyWith<$Res> {
  __$GeneralForecastContainerCopyWithImpl(this._self, this._then);

  final _GeneralForecastContainer _self;
  final $Res Function(_GeneralForecastContainer) _then;

/// Create a copy of GeneralForecastContainer
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(_GeneralForecastContainer(
data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<GeneralForecast>,
  ));
}


}


/// @nodoc
mixin _$GeneralForecast {

 int get id;@JsonKey(name: 'forecast_display_time') String get displayTime;@JsonKey(name: 'general_situation') String get situation;@JsonKey(name: 'thr_forecast') String get briefing;@JsonKey(name: 'coast_high_f') String get coastHighF;@JsonKey(name: 'coast_low_f') String get coastLowF;@JsonKey(name: 'inland_high_f') String get inlandHighF;@JsonKey(name: 'inland_low_f') String get inlandLowF;@JsonKey(name: 'hills_high_f') String get hillsHighF;@JsonKey(name: 'hills_low_f') String get hillsLowF; String get audio; String? get advisory;
/// Create a copy of GeneralForecast
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GeneralForecastCopyWith<GeneralForecast> get copyWith => _$GeneralForecastCopyWithImpl<GeneralForecast>(this as GeneralForecast, _$identity);

  /// Serializes this GeneralForecast to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GeneralForecast&&(identical(other.id, id) || other.id == id)&&(identical(other.displayTime, displayTime) || other.displayTime == displayTime)&&(identical(other.situation, situation) || other.situation == situation)&&(identical(other.briefing, briefing) || other.briefing == briefing)&&(identical(other.coastHighF, coastHighF) || other.coastHighF == coastHighF)&&(identical(other.coastLowF, coastLowF) || other.coastLowF == coastLowF)&&(identical(other.inlandHighF, inlandHighF) || other.inlandHighF == inlandHighF)&&(identical(other.inlandLowF, inlandLowF) || other.inlandLowF == inlandLowF)&&(identical(other.hillsHighF, hillsHighF) || other.hillsHighF == hillsHighF)&&(identical(other.hillsLowF, hillsLowF) || other.hillsLowF == hillsLowF)&&(identical(other.audio, audio) || other.audio == audio)&&(identical(other.advisory, advisory) || other.advisory == advisory));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,displayTime,situation,briefing,coastHighF,coastLowF,inlandHighF,inlandLowF,hillsHighF,hillsLowF,audio,advisory);

@override
String toString() {
  return 'GeneralForecast(id: $id, displayTime: $displayTime, situation: $situation, briefing: $briefing, coastHighF: $coastHighF, coastLowF: $coastLowF, inlandHighF: $inlandHighF, inlandLowF: $inlandLowF, hillsHighF: $hillsHighF, hillsLowF: $hillsLowF, audio: $audio, advisory: $advisory)';
}


}

/// @nodoc
abstract mixin class $GeneralForecastCopyWith<$Res>  {
  factory $GeneralForecastCopyWith(GeneralForecast value, $Res Function(GeneralForecast) _then) = _$GeneralForecastCopyWithImpl;
@useResult
$Res call({
 int id,@JsonKey(name: 'forecast_display_time') String displayTime,@JsonKey(name: 'general_situation') String situation,@JsonKey(name: 'thr_forecast') String briefing,@JsonKey(name: 'coast_high_f') String coastHighF,@JsonKey(name: 'coast_low_f') String coastLowF,@JsonKey(name: 'inland_high_f') String inlandHighF,@JsonKey(name: 'inland_low_f') String inlandLowF,@JsonKey(name: 'hills_high_f') String hillsHighF,@JsonKey(name: 'hills_low_f') String hillsLowF, String audio, String? advisory
});




}
/// @nodoc
class _$GeneralForecastCopyWithImpl<$Res>
    implements $GeneralForecastCopyWith<$Res> {
  _$GeneralForecastCopyWithImpl(this._self, this._then);

  final GeneralForecast _self;
  final $Res Function(GeneralForecast) _then;

/// Create a copy of GeneralForecast
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? displayTime = null,Object? situation = null,Object? briefing = null,Object? coastHighF = null,Object? coastLowF = null,Object? inlandHighF = null,Object? inlandLowF = null,Object? hillsHighF = null,Object? hillsLowF = null,Object? audio = null,Object? advisory = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,displayTime: null == displayTime ? _self.displayTime : displayTime // ignore: cast_nullable_to_non_nullable
as String,situation: null == situation ? _self.situation : situation // ignore: cast_nullable_to_non_nullable
as String,briefing: null == briefing ? _self.briefing : briefing // ignore: cast_nullable_to_non_nullable
as String,coastHighF: null == coastHighF ? _self.coastHighF : coastHighF // ignore: cast_nullable_to_non_nullable
as String,coastLowF: null == coastLowF ? _self.coastLowF : coastLowF // ignore: cast_nullable_to_non_nullable
as String,inlandHighF: null == inlandHighF ? _self.inlandHighF : inlandHighF // ignore: cast_nullable_to_non_nullable
as String,inlandLowF: null == inlandLowF ? _self.inlandLowF : inlandLowF // ignore: cast_nullable_to_non_nullable
as String,hillsHighF: null == hillsHighF ? _self.hillsHighF : hillsHighF // ignore: cast_nullable_to_non_nullable
as String,hillsLowF: null == hillsLowF ? _self.hillsLowF : hillsLowF // ignore: cast_nullable_to_non_nullable
as String,audio: null == audio ? _self.audio : audio // ignore: cast_nullable_to_non_nullable
as String,advisory: freezed == advisory ? _self.advisory : advisory // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [GeneralForecast].
extension GeneralForecastPatterns on GeneralForecast {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GeneralForecast value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GeneralForecast() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GeneralForecast value)  $default,){
final _that = this;
switch (_that) {
case _GeneralForecast():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GeneralForecast value)?  $default,){
final _that = this;
switch (_that) {
case _GeneralForecast() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'forecast_display_time')  String displayTime, @JsonKey(name: 'general_situation')  String situation, @JsonKey(name: 'thr_forecast')  String briefing, @JsonKey(name: 'coast_high_f')  String coastHighF, @JsonKey(name: 'coast_low_f')  String coastLowF, @JsonKey(name: 'inland_high_f')  String inlandHighF, @JsonKey(name: 'inland_low_f')  String inlandLowF, @JsonKey(name: 'hills_high_f')  String hillsHighF, @JsonKey(name: 'hills_low_f')  String hillsLowF,  String audio,  String? advisory)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GeneralForecast() when $default != null:
return $default(_that.id,_that.displayTime,_that.situation,_that.briefing,_that.coastHighF,_that.coastLowF,_that.inlandHighF,_that.inlandLowF,_that.hillsHighF,_that.hillsLowF,_that.audio,_that.advisory);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'forecast_display_time')  String displayTime, @JsonKey(name: 'general_situation')  String situation, @JsonKey(name: 'thr_forecast')  String briefing, @JsonKey(name: 'coast_high_f')  String coastHighF, @JsonKey(name: 'coast_low_f')  String coastLowF, @JsonKey(name: 'inland_high_f')  String inlandHighF, @JsonKey(name: 'inland_low_f')  String inlandLowF, @JsonKey(name: 'hills_high_f')  String hillsHighF, @JsonKey(name: 'hills_low_f')  String hillsLowF,  String audio,  String? advisory)  $default,) {final _that = this;
switch (_that) {
case _GeneralForecast():
return $default(_that.id,_that.displayTime,_that.situation,_that.briefing,_that.coastHighF,_that.coastLowF,_that.inlandHighF,_that.inlandLowF,_that.hillsHighF,_that.hillsLowF,_that.audio,_that.advisory);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id, @JsonKey(name: 'forecast_display_time')  String displayTime, @JsonKey(name: 'general_situation')  String situation, @JsonKey(name: 'thr_forecast')  String briefing, @JsonKey(name: 'coast_high_f')  String coastHighF, @JsonKey(name: 'coast_low_f')  String coastLowF, @JsonKey(name: 'inland_high_f')  String inlandHighF, @JsonKey(name: 'inland_low_f')  String inlandLowF, @JsonKey(name: 'hills_high_f')  String hillsHighF, @JsonKey(name: 'hills_low_f')  String hillsLowF,  String audio,  String? advisory)?  $default,) {final _that = this;
switch (_that) {
case _GeneralForecast() when $default != null:
return $default(_that.id,_that.displayTime,_that.situation,_that.briefing,_that.coastHighF,_that.coastLowF,_that.inlandHighF,_that.inlandLowF,_that.hillsHighF,_that.hillsLowF,_that.audio,_that.advisory);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GeneralForecast implements GeneralForecast {
  const _GeneralForecast({required this.id, @JsonKey(name: 'forecast_display_time') required this.displayTime, @JsonKey(name: 'general_situation') required this.situation, @JsonKey(name: 'thr_forecast') required this.briefing, @JsonKey(name: 'coast_high_f') required this.coastHighF, @JsonKey(name: 'coast_low_f') required this.coastLowF, @JsonKey(name: 'inland_high_f') required this.inlandHighF, @JsonKey(name: 'inland_low_f') required this.inlandLowF, @JsonKey(name: 'hills_high_f') required this.hillsHighF, @JsonKey(name: 'hills_low_f') required this.hillsLowF, required this.audio, this.advisory});
  factory _GeneralForecast.fromJson(Map<String, dynamic> json) => _$GeneralForecastFromJson(json);

@override final  int id;
@override@JsonKey(name: 'forecast_display_time') final  String displayTime;
@override@JsonKey(name: 'general_situation') final  String situation;
@override@JsonKey(name: 'thr_forecast') final  String briefing;
@override@JsonKey(name: 'coast_high_f') final  String coastHighF;
@override@JsonKey(name: 'coast_low_f') final  String coastLowF;
@override@JsonKey(name: 'inland_high_f') final  String inlandHighF;
@override@JsonKey(name: 'inland_low_f') final  String inlandLowF;
@override@JsonKey(name: 'hills_high_f') final  String hillsHighF;
@override@JsonKey(name: 'hills_low_f') final  String hillsLowF;
@override final  String audio;
@override final  String? advisory;

/// Create a copy of GeneralForecast
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GeneralForecastCopyWith<_GeneralForecast> get copyWith => __$GeneralForecastCopyWithImpl<_GeneralForecast>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GeneralForecastToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GeneralForecast&&(identical(other.id, id) || other.id == id)&&(identical(other.displayTime, displayTime) || other.displayTime == displayTime)&&(identical(other.situation, situation) || other.situation == situation)&&(identical(other.briefing, briefing) || other.briefing == briefing)&&(identical(other.coastHighF, coastHighF) || other.coastHighF == coastHighF)&&(identical(other.coastLowF, coastLowF) || other.coastLowF == coastLowF)&&(identical(other.inlandHighF, inlandHighF) || other.inlandHighF == inlandHighF)&&(identical(other.inlandLowF, inlandLowF) || other.inlandLowF == inlandLowF)&&(identical(other.hillsHighF, hillsHighF) || other.hillsHighF == hillsHighF)&&(identical(other.hillsLowF, hillsLowF) || other.hillsLowF == hillsLowF)&&(identical(other.audio, audio) || other.audio == audio)&&(identical(other.advisory, advisory) || other.advisory == advisory));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,displayTime,situation,briefing,coastHighF,coastLowF,inlandHighF,inlandLowF,hillsHighF,hillsLowF,audio,advisory);

@override
String toString() {
  return 'GeneralForecast(id: $id, displayTime: $displayTime, situation: $situation, briefing: $briefing, coastHighF: $coastHighF, coastLowF: $coastLowF, inlandHighF: $inlandHighF, inlandLowF: $inlandLowF, hillsHighF: $hillsHighF, hillsLowF: $hillsLowF, audio: $audio, advisory: $advisory)';
}


}

/// @nodoc
abstract mixin class _$GeneralForecastCopyWith<$Res> implements $GeneralForecastCopyWith<$Res> {
  factory _$GeneralForecastCopyWith(_GeneralForecast value, $Res Function(_GeneralForecast) _then) = __$GeneralForecastCopyWithImpl;
@override @useResult
$Res call({
 int id,@JsonKey(name: 'forecast_display_time') String displayTime,@JsonKey(name: 'general_situation') String situation,@JsonKey(name: 'thr_forecast') String briefing,@JsonKey(name: 'coast_high_f') String coastHighF,@JsonKey(name: 'coast_low_f') String coastLowF,@JsonKey(name: 'inland_high_f') String inlandHighF,@JsonKey(name: 'inland_low_f') String inlandLowF,@JsonKey(name: 'hills_high_f') String hillsHighF,@JsonKey(name: 'hills_low_f') String hillsLowF, String audio, String? advisory
});




}
/// @nodoc
class __$GeneralForecastCopyWithImpl<$Res>
    implements _$GeneralForecastCopyWith<$Res> {
  __$GeneralForecastCopyWithImpl(this._self, this._then);

  final _GeneralForecast _self;
  final $Res Function(_GeneralForecast) _then;

/// Create a copy of GeneralForecast
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? displayTime = null,Object? situation = null,Object? briefing = null,Object? coastHighF = null,Object? coastLowF = null,Object? inlandHighF = null,Object? inlandLowF = null,Object? hillsHighF = null,Object? hillsLowF = null,Object? audio = null,Object? advisory = freezed,}) {
  return _then(_GeneralForecast(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,displayTime: null == displayTime ? _self.displayTime : displayTime // ignore: cast_nullable_to_non_nullable
as String,situation: null == situation ? _self.situation : situation // ignore: cast_nullable_to_non_nullable
as String,briefing: null == briefing ? _self.briefing : briefing // ignore: cast_nullable_to_non_nullable
as String,coastHighF: null == coastHighF ? _self.coastHighF : coastHighF // ignore: cast_nullable_to_non_nullable
as String,coastLowF: null == coastLowF ? _self.coastLowF : coastLowF // ignore: cast_nullable_to_non_nullable
as String,inlandHighF: null == inlandHighF ? _self.inlandHighF : inlandHighF // ignore: cast_nullable_to_non_nullable
as String,inlandLowF: null == inlandLowF ? _self.inlandLowF : inlandLowF // ignore: cast_nullable_to_non_nullable
as String,hillsHighF: null == hillsHighF ? _self.hillsHighF : hillsHighF // ignore: cast_nullable_to_non_nullable
as String,hillsLowF: null == hillsLowF ? _self.hillsLowF : hillsLowF // ignore: cast_nullable_to_non_nullable
as String,audio: null == audio ? _self.audio : audio // ignore: cast_nullable_to_non_nullable
as String,advisory: freezed == advisory ? _self.advisory : advisory // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
