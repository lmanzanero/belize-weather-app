// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'station_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StationDetails {

 int get id; String get name;@JsonKey(name: 'alias_name') String? get aliasName; double? get longitude; double? get latitude; int get elevation; String? get watershed;@JsonKey(name: 'is_active') bool? get isActive;@JsonKey(name: 'updated_at') String? get updatedAt;
/// Create a copy of StationDetails
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StationDetailsCopyWith<StationDetails> get copyWith => _$StationDetailsCopyWithImpl<StationDetails>(this as StationDetails, _$identity);

  /// Serializes this StationDetails to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StationDetails&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.aliasName, aliasName) || other.aliasName == aliasName)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.elevation, elevation) || other.elevation == elevation)&&(identical(other.watershed, watershed) || other.watershed == watershed)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,aliasName,longitude,latitude,elevation,watershed,isActive,updatedAt);

@override
String toString() {
  return 'StationDetails(id: $id, name: $name, aliasName: $aliasName, longitude: $longitude, latitude: $latitude, elevation: $elevation, watershed: $watershed, isActive: $isActive, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $StationDetailsCopyWith<$Res>  {
  factory $StationDetailsCopyWith(StationDetails value, $Res Function(StationDetails) _then) = _$StationDetailsCopyWithImpl;
@useResult
$Res call({
 int id, String name,@JsonKey(name: 'alias_name') String? aliasName, double? longitude, double? latitude, int elevation, String? watershed,@JsonKey(name: 'is_active') bool? isActive,@JsonKey(name: 'updated_at') String? updatedAt
});




}
/// @nodoc
class _$StationDetailsCopyWithImpl<$Res>
    implements $StationDetailsCopyWith<$Res> {
  _$StationDetailsCopyWithImpl(this._self, this._then);

  final StationDetails _self;
  final $Res Function(StationDetails) _then;

/// Create a copy of StationDetails
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? aliasName = freezed,Object? longitude = freezed,Object? latitude = freezed,Object? elevation = null,Object? watershed = freezed,Object? isActive = freezed,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,aliasName: freezed == aliasName ? _self.aliasName : aliasName // ignore: cast_nullable_to_non_nullable
as String?,longitude: freezed == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double?,latitude: freezed == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double?,elevation: null == elevation ? _self.elevation : elevation // ignore: cast_nullable_to_non_nullable
as int,watershed: freezed == watershed ? _self.watershed : watershed // ignore: cast_nullable_to_non_nullable
as String?,isActive: freezed == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [StationDetails].
extension StationDetailsPatterns on StationDetails {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StationDetails value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StationDetails() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StationDetails value)  $default,){
final _that = this;
switch (_that) {
case _StationDetails():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StationDetails value)?  $default,){
final _that = this;
switch (_that) {
case _StationDetails() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name, @JsonKey(name: 'alias_name')  String? aliasName,  double? longitude,  double? latitude,  int elevation,  String? watershed, @JsonKey(name: 'is_active')  bool? isActive, @JsonKey(name: 'updated_at')  String? updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StationDetails() when $default != null:
return $default(_that.id,_that.name,_that.aliasName,_that.longitude,_that.latitude,_that.elevation,_that.watershed,_that.isActive,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name, @JsonKey(name: 'alias_name')  String? aliasName,  double? longitude,  double? latitude,  int elevation,  String? watershed, @JsonKey(name: 'is_active')  bool? isActive, @JsonKey(name: 'updated_at')  String? updatedAt)  $default,) {final _that = this;
switch (_that) {
case _StationDetails():
return $default(_that.id,_that.name,_that.aliasName,_that.longitude,_that.latitude,_that.elevation,_that.watershed,_that.isActive,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name, @JsonKey(name: 'alias_name')  String? aliasName,  double? longitude,  double? latitude,  int elevation,  String? watershed, @JsonKey(name: 'is_active')  bool? isActive, @JsonKey(name: 'updated_at')  String? updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _StationDetails() when $default != null:
return $default(_that.id,_that.name,_that.aliasName,_that.longitude,_that.latitude,_that.elevation,_that.watershed,_that.isActive,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StationDetails implements StationDetails {
  const _StationDetails({required this.id, this.name = 'Unknown', @JsonKey(name: 'alias_name') this.aliasName, this.longitude, this.latitude, this.elevation = 0, this.watershed, @JsonKey(name: 'is_active') this.isActive, @JsonKey(name: 'updated_at') this.updatedAt});
  factory _StationDetails.fromJson(Map<String, dynamic> json) => _$StationDetailsFromJson(json);

@override final  int id;
@override@JsonKey() final  String name;
@override@JsonKey(name: 'alias_name') final  String? aliasName;
@override final  double? longitude;
@override final  double? latitude;
@override@JsonKey() final  int elevation;
@override final  String? watershed;
@override@JsonKey(name: 'is_active') final  bool? isActive;
@override@JsonKey(name: 'updated_at') final  String? updatedAt;

/// Create a copy of StationDetails
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StationDetailsCopyWith<_StationDetails> get copyWith => __$StationDetailsCopyWithImpl<_StationDetails>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StationDetailsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StationDetails&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.aliasName, aliasName) || other.aliasName == aliasName)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.elevation, elevation) || other.elevation == elevation)&&(identical(other.watershed, watershed) || other.watershed == watershed)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,aliasName,longitude,latitude,elevation,watershed,isActive,updatedAt);

@override
String toString() {
  return 'StationDetails(id: $id, name: $name, aliasName: $aliasName, longitude: $longitude, latitude: $latitude, elevation: $elevation, watershed: $watershed, isActive: $isActive, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$StationDetailsCopyWith<$Res> implements $StationDetailsCopyWith<$Res> {
  factory _$StationDetailsCopyWith(_StationDetails value, $Res Function(_StationDetails) _then) = __$StationDetailsCopyWithImpl;
@override @useResult
$Res call({
 int id, String name,@JsonKey(name: 'alias_name') String? aliasName, double? longitude, double? latitude, int elevation, String? watershed,@JsonKey(name: 'is_active') bool? isActive,@JsonKey(name: 'updated_at') String? updatedAt
});




}
/// @nodoc
class __$StationDetailsCopyWithImpl<$Res>
    implements _$StationDetailsCopyWith<$Res> {
  __$StationDetailsCopyWithImpl(this._self, this._then);

  final _StationDetails _self;
  final $Res Function(_StationDetails) _then;

/// Create a copy of StationDetails
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? aliasName = freezed,Object? longitude = freezed,Object? latitude = freezed,Object? elevation = null,Object? watershed = freezed,Object? isActive = freezed,Object? updatedAt = freezed,}) {
  return _then(_StationDetails(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,aliasName: freezed == aliasName ? _self.aliasName : aliasName // ignore: cast_nullable_to_non_nullable
as String?,longitude: freezed == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double?,latitude: freezed == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double?,elevation: null == elevation ? _self.elevation : elevation // ignore: cast_nullable_to_non_nullable
as int,watershed: freezed == watershed ? _self.watershed : watershed // ignore: cast_nullable_to_non_nullable
as String?,isActive: freezed == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$WeatherVariable {

 String get name; String get symbol;@JsonKey(name: 'unit_name') String get unitName;@JsonKey(name: 'unit_symbol') String get unitSymbol;
/// Create a copy of WeatherVariable
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WeatherVariableCopyWith<WeatherVariable> get copyWith => _$WeatherVariableCopyWithImpl<WeatherVariable>(this as WeatherVariable, _$identity);

  /// Serializes this WeatherVariable to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WeatherVariable&&(identical(other.name, name) || other.name == name)&&(identical(other.symbol, symbol) || other.symbol == symbol)&&(identical(other.unitName, unitName) || other.unitName == unitName)&&(identical(other.unitSymbol, unitSymbol) || other.unitSymbol == unitSymbol));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,symbol,unitName,unitSymbol);

@override
String toString() {
  return 'WeatherVariable(name: $name, symbol: $symbol, unitName: $unitName, unitSymbol: $unitSymbol)';
}


}

/// @nodoc
abstract mixin class $WeatherVariableCopyWith<$Res>  {
  factory $WeatherVariableCopyWith(WeatherVariable value, $Res Function(WeatherVariable) _then) = _$WeatherVariableCopyWithImpl;
@useResult
$Res call({
 String name, String symbol,@JsonKey(name: 'unit_name') String unitName,@JsonKey(name: 'unit_symbol') String unitSymbol
});




}
/// @nodoc
class _$WeatherVariableCopyWithImpl<$Res>
    implements $WeatherVariableCopyWith<$Res> {
  _$WeatherVariableCopyWithImpl(this._self, this._then);

  final WeatherVariable _self;
  final $Res Function(WeatherVariable) _then;

/// Create a copy of WeatherVariable
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? symbol = null,Object? unitName = null,Object? unitSymbol = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,symbol: null == symbol ? _self.symbol : symbol // ignore: cast_nullable_to_non_nullable
as String,unitName: null == unitName ? _self.unitName : unitName // ignore: cast_nullable_to_non_nullable
as String,unitSymbol: null == unitSymbol ? _self.unitSymbol : unitSymbol // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [WeatherVariable].
extension WeatherVariablePatterns on WeatherVariable {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WeatherVariable value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WeatherVariable() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WeatherVariable value)  $default,){
final _that = this;
switch (_that) {
case _WeatherVariable():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WeatherVariable value)?  $default,){
final _that = this;
switch (_that) {
case _WeatherVariable() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String symbol, @JsonKey(name: 'unit_name')  String unitName, @JsonKey(name: 'unit_symbol')  String unitSymbol)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WeatherVariable() when $default != null:
return $default(_that.name,_that.symbol,_that.unitName,_that.unitSymbol);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String symbol, @JsonKey(name: 'unit_name')  String unitName, @JsonKey(name: 'unit_symbol')  String unitSymbol)  $default,) {final _that = this;
switch (_that) {
case _WeatherVariable():
return $default(_that.name,_that.symbol,_that.unitName,_that.unitSymbol);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String symbol, @JsonKey(name: 'unit_name')  String unitName, @JsonKey(name: 'unit_symbol')  String unitSymbol)?  $default,) {final _that = this;
switch (_that) {
case _WeatherVariable() when $default != null:
return $default(_that.name,_that.symbol,_that.unitName,_that.unitSymbol);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WeatherVariable implements WeatherVariable {
  const _WeatherVariable({this.name = 'Unknown', this.symbol = '', @JsonKey(name: 'unit_name') this.unitName = '', @JsonKey(name: 'unit_symbol') this.unitSymbol = ''});
  factory _WeatherVariable.fromJson(Map<String, dynamic> json) => _$WeatherVariableFromJson(json);

@override@JsonKey() final  String name;
@override@JsonKey() final  String symbol;
@override@JsonKey(name: 'unit_name') final  String unitName;
@override@JsonKey(name: 'unit_symbol') final  String unitSymbol;

/// Create a copy of WeatherVariable
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WeatherVariableCopyWith<_WeatherVariable> get copyWith => __$WeatherVariableCopyWithImpl<_WeatherVariable>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WeatherVariableToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WeatherVariable&&(identical(other.name, name) || other.name == name)&&(identical(other.symbol, symbol) || other.symbol == symbol)&&(identical(other.unitName, unitName) || other.unitName == unitName)&&(identical(other.unitSymbol, unitSymbol) || other.unitSymbol == unitSymbol));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,symbol,unitName,unitSymbol);

@override
String toString() {
  return 'WeatherVariable(name: $name, symbol: $symbol, unitName: $unitName, unitSymbol: $unitSymbol)';
}


}

/// @nodoc
abstract mixin class _$WeatherVariableCopyWith<$Res> implements $WeatherVariableCopyWith<$Res> {
  factory _$WeatherVariableCopyWith(_WeatherVariable value, $Res Function(_WeatherVariable) _then) = __$WeatherVariableCopyWithImpl;
@override @useResult
$Res call({
 String name, String symbol,@JsonKey(name: 'unit_name') String unitName,@JsonKey(name: 'unit_symbol') String unitSymbol
});




}
/// @nodoc
class __$WeatherVariableCopyWithImpl<$Res>
    implements _$WeatherVariableCopyWith<$Res> {
  __$WeatherVariableCopyWithImpl(this._self, this._then);

  final _WeatherVariable _self;
  final $Res Function(_WeatherVariable) _then;

/// Create a copy of WeatherVariable
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? symbol = null,Object? unitName = null,Object? unitSymbol = null,}) {
  return _then(_WeatherVariable(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,symbol: null == symbol ? _self.symbol : symbol // ignore: cast_nullable_to_non_nullable
as String,unitName: null == unitName ? _self.unitName : unitName // ignore: cast_nullable_to_non_nullable
as String,unitSymbol: null == unitSymbol ? _self.unitSymbol : unitSymbol // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$WeatherValue {

 dynamic get value; WeatherVariable get variable;
/// Create a copy of WeatherValue
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WeatherValueCopyWith<WeatherValue> get copyWith => _$WeatherValueCopyWithImpl<WeatherValue>(this as WeatherValue, _$identity);

  /// Serializes this WeatherValue to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WeatherValue&&const DeepCollectionEquality().equals(other.value, value)&&(identical(other.variable, variable) || other.variable == variable));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(value),variable);

@override
String toString() {
  return 'WeatherValue(value: $value, variable: $variable)';
}


}

/// @nodoc
abstract mixin class $WeatherValueCopyWith<$Res>  {
  factory $WeatherValueCopyWith(WeatherValue value, $Res Function(WeatherValue) _then) = _$WeatherValueCopyWithImpl;
@useResult
$Res call({
 dynamic value, WeatherVariable variable
});


$WeatherVariableCopyWith<$Res> get variable;

}
/// @nodoc
class _$WeatherValueCopyWithImpl<$Res>
    implements $WeatherValueCopyWith<$Res> {
  _$WeatherValueCopyWithImpl(this._self, this._then);

  final WeatherValue _self;
  final $Res Function(WeatherValue) _then;

/// Create a copy of WeatherValue
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? value = freezed,Object? variable = null,}) {
  return _then(_self.copyWith(
value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as dynamic,variable: null == variable ? _self.variable : variable // ignore: cast_nullable_to_non_nullable
as WeatherVariable,
  ));
}
/// Create a copy of WeatherValue
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WeatherVariableCopyWith<$Res> get variable {
  
  return $WeatherVariableCopyWith<$Res>(_self.variable, (value) {
    return _then(_self.copyWith(variable: value));
  });
}
}


/// Adds pattern-matching-related methods to [WeatherValue].
extension WeatherValuePatterns on WeatherValue {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WeatherValue value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WeatherValue() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WeatherValue value)  $default,){
final _that = this;
switch (_that) {
case _WeatherValue():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WeatherValue value)?  $default,){
final _that = this;
switch (_that) {
case _WeatherValue() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( dynamic value,  WeatherVariable variable)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WeatherValue() when $default != null:
return $default(_that.value,_that.variable);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( dynamic value,  WeatherVariable variable)  $default,) {final _that = this;
switch (_that) {
case _WeatherValue():
return $default(_that.value,_that.variable);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( dynamic value,  WeatherVariable variable)?  $default,) {final _that = this;
switch (_that) {
case _WeatherValue() when $default != null:
return $default(_that.value,_that.variable);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WeatherValue implements WeatherValue {
  const _WeatherValue({this.value = '--', required this.variable});
  factory _WeatherValue.fromJson(Map<String, dynamic> json) => _$WeatherValueFromJson(json);

@override@JsonKey() final  dynamic value;
@override final  WeatherVariable variable;

/// Create a copy of WeatherValue
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WeatherValueCopyWith<_WeatherValue> get copyWith => __$WeatherValueCopyWithImpl<_WeatherValue>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WeatherValueToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WeatherValue&&const DeepCollectionEquality().equals(other.value, value)&&(identical(other.variable, variable) || other.variable == variable));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(value),variable);

@override
String toString() {
  return 'WeatherValue(value: $value, variable: $variable)';
}


}

/// @nodoc
abstract mixin class _$WeatherValueCopyWith<$Res> implements $WeatherValueCopyWith<$Res> {
  factory _$WeatherValueCopyWith(_WeatherValue value, $Res Function(_WeatherValue) _then) = __$WeatherValueCopyWithImpl;
@override @useResult
$Res call({
 dynamic value, WeatherVariable variable
});


@override $WeatherVariableCopyWith<$Res> get variable;

}
/// @nodoc
class __$WeatherValueCopyWithImpl<$Res>
    implements _$WeatherValueCopyWith<$Res> {
  __$WeatherValueCopyWithImpl(this._self, this._then);

  final _WeatherValue _self;
  final $Res Function(_WeatherValue) _then;

/// Create a copy of WeatherValue
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? value = freezed,Object? variable = null,}) {
  return _then(_WeatherValue(
value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as dynamic,variable: null == variable ? _self.variable : variable // ignore: cast_nullable_to_non_nullable
as WeatherVariable,
  ));
}

/// Create a copy of WeatherValue
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WeatherVariableCopyWith<$Res> get variable {
  
  return $WeatherVariableCopyWith<$Res>(_self.variable, (value) {
    return _then(_self.copyWith(variable: value));
  });
}
}


/// @nodoc
mixin _$StationFullData {

 StationDetails get station;@JsonKey(name: 'station_name') String get stationName;@JsonKey(name: 'station_id') int get stationId; List<WeatherValue>? get latest; List<WeatherValue>? get past24h; List<WeatherValue>? get currentday;
/// Create a copy of StationFullData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StationFullDataCopyWith<StationFullData> get copyWith => _$StationFullDataCopyWithImpl<StationFullData>(this as StationFullData, _$identity);

  /// Serializes this StationFullData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StationFullData&&(identical(other.station, station) || other.station == station)&&(identical(other.stationName, stationName) || other.stationName == stationName)&&(identical(other.stationId, stationId) || other.stationId == stationId)&&const DeepCollectionEquality().equals(other.latest, latest)&&const DeepCollectionEquality().equals(other.past24h, past24h)&&const DeepCollectionEquality().equals(other.currentday, currentday));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,station,stationName,stationId,const DeepCollectionEquality().hash(latest),const DeepCollectionEquality().hash(past24h),const DeepCollectionEquality().hash(currentday));

@override
String toString() {
  return 'StationFullData(station: $station, stationName: $stationName, stationId: $stationId, latest: $latest, past24h: $past24h, currentday: $currentday)';
}


}

/// @nodoc
abstract mixin class $StationFullDataCopyWith<$Res>  {
  factory $StationFullDataCopyWith(StationFullData value, $Res Function(StationFullData) _then) = _$StationFullDataCopyWithImpl;
@useResult
$Res call({
 StationDetails station,@JsonKey(name: 'station_name') String stationName,@JsonKey(name: 'station_id') int stationId, List<WeatherValue>? latest, List<WeatherValue>? past24h, List<WeatherValue>? currentday
});


$StationDetailsCopyWith<$Res> get station;

}
/// @nodoc
class _$StationFullDataCopyWithImpl<$Res>
    implements $StationFullDataCopyWith<$Res> {
  _$StationFullDataCopyWithImpl(this._self, this._then);

  final StationFullData _self;
  final $Res Function(StationFullData) _then;

/// Create a copy of StationFullData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? station = null,Object? stationName = null,Object? stationId = null,Object? latest = freezed,Object? past24h = freezed,Object? currentday = freezed,}) {
  return _then(_self.copyWith(
station: null == station ? _self.station : station // ignore: cast_nullable_to_non_nullable
as StationDetails,stationName: null == stationName ? _self.stationName : stationName // ignore: cast_nullable_to_non_nullable
as String,stationId: null == stationId ? _self.stationId : stationId // ignore: cast_nullable_to_non_nullable
as int,latest: freezed == latest ? _self.latest : latest // ignore: cast_nullable_to_non_nullable
as List<WeatherValue>?,past24h: freezed == past24h ? _self.past24h : past24h // ignore: cast_nullable_to_non_nullable
as List<WeatherValue>?,currentday: freezed == currentday ? _self.currentday : currentday // ignore: cast_nullable_to_non_nullable
as List<WeatherValue>?,
  ));
}
/// Create a copy of StationFullData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StationDetailsCopyWith<$Res> get station {
  
  return $StationDetailsCopyWith<$Res>(_self.station, (value) {
    return _then(_self.copyWith(station: value));
  });
}
}


/// Adds pattern-matching-related methods to [StationFullData].
extension StationFullDataPatterns on StationFullData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StationFullData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StationFullData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StationFullData value)  $default,){
final _that = this;
switch (_that) {
case _StationFullData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StationFullData value)?  $default,){
final _that = this;
switch (_that) {
case _StationFullData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( StationDetails station, @JsonKey(name: 'station_name')  String stationName, @JsonKey(name: 'station_id')  int stationId,  List<WeatherValue>? latest,  List<WeatherValue>? past24h,  List<WeatherValue>? currentday)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StationFullData() when $default != null:
return $default(_that.station,_that.stationName,_that.stationId,_that.latest,_that.past24h,_that.currentday);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( StationDetails station, @JsonKey(name: 'station_name')  String stationName, @JsonKey(name: 'station_id')  int stationId,  List<WeatherValue>? latest,  List<WeatherValue>? past24h,  List<WeatherValue>? currentday)  $default,) {final _that = this;
switch (_that) {
case _StationFullData():
return $default(_that.station,_that.stationName,_that.stationId,_that.latest,_that.past24h,_that.currentday);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( StationDetails station, @JsonKey(name: 'station_name')  String stationName, @JsonKey(name: 'station_id')  int stationId,  List<WeatherValue>? latest,  List<WeatherValue>? past24h,  List<WeatherValue>? currentday)?  $default,) {final _that = this;
switch (_that) {
case _StationFullData() when $default != null:
return $default(_that.station,_that.stationName,_that.stationId,_that.latest,_that.past24h,_that.currentday);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StationFullData implements StationFullData {
  const _StationFullData({required this.station, @JsonKey(name: 'station_name') this.stationName = 'Unknown Station', @JsonKey(name: 'station_id') this.stationId = 0, final  List<WeatherValue>? latest, final  List<WeatherValue>? past24h, final  List<WeatherValue>? currentday}): _latest = latest,_past24h = past24h,_currentday = currentday;
  factory _StationFullData.fromJson(Map<String, dynamic> json) => _$StationFullDataFromJson(json);

@override final  StationDetails station;
@override@JsonKey(name: 'station_name') final  String stationName;
@override@JsonKey(name: 'station_id') final  int stationId;
 final  List<WeatherValue>? _latest;
@override List<WeatherValue>? get latest {
  final value = _latest;
  if (value == null) return null;
  if (_latest is EqualUnmodifiableListView) return _latest;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<WeatherValue>? _past24h;
@override List<WeatherValue>? get past24h {
  final value = _past24h;
  if (value == null) return null;
  if (_past24h is EqualUnmodifiableListView) return _past24h;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<WeatherValue>? _currentday;
@override List<WeatherValue>? get currentday {
  final value = _currentday;
  if (value == null) return null;
  if (_currentday is EqualUnmodifiableListView) return _currentday;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of StationFullData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StationFullDataCopyWith<_StationFullData> get copyWith => __$StationFullDataCopyWithImpl<_StationFullData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StationFullDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StationFullData&&(identical(other.station, station) || other.station == station)&&(identical(other.stationName, stationName) || other.stationName == stationName)&&(identical(other.stationId, stationId) || other.stationId == stationId)&&const DeepCollectionEquality().equals(other._latest, _latest)&&const DeepCollectionEquality().equals(other._past24h, _past24h)&&const DeepCollectionEquality().equals(other._currentday, _currentday));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,station,stationName,stationId,const DeepCollectionEquality().hash(_latest),const DeepCollectionEquality().hash(_past24h),const DeepCollectionEquality().hash(_currentday));

@override
String toString() {
  return 'StationFullData(station: $station, stationName: $stationName, stationId: $stationId, latest: $latest, past24h: $past24h, currentday: $currentday)';
}


}

/// @nodoc
abstract mixin class _$StationFullDataCopyWith<$Res> implements $StationFullDataCopyWith<$Res> {
  factory _$StationFullDataCopyWith(_StationFullData value, $Res Function(_StationFullData) _then) = __$StationFullDataCopyWithImpl;
@override @useResult
$Res call({
 StationDetails station,@JsonKey(name: 'station_name') String stationName,@JsonKey(name: 'station_id') int stationId, List<WeatherValue>? latest, List<WeatherValue>? past24h, List<WeatherValue>? currentday
});


@override $StationDetailsCopyWith<$Res> get station;

}
/// @nodoc
class __$StationFullDataCopyWithImpl<$Res>
    implements _$StationFullDataCopyWith<$Res> {
  __$StationFullDataCopyWithImpl(this._self, this._then);

  final _StationFullData _self;
  final $Res Function(_StationFullData) _then;

/// Create a copy of StationFullData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? station = null,Object? stationName = null,Object? stationId = null,Object? latest = freezed,Object? past24h = freezed,Object? currentday = freezed,}) {
  return _then(_StationFullData(
station: null == station ? _self.station : station // ignore: cast_nullable_to_non_nullable
as StationDetails,stationName: null == stationName ? _self.stationName : stationName // ignore: cast_nullable_to_non_nullable
as String,stationId: null == stationId ? _self.stationId : stationId // ignore: cast_nullable_to_non_nullable
as int,latest: freezed == latest ? _self._latest : latest // ignore: cast_nullable_to_non_nullable
as List<WeatherValue>?,past24h: freezed == past24h ? _self._past24h : past24h // ignore: cast_nullable_to_non_nullable
as List<WeatherValue>?,currentday: freezed == currentday ? _self._currentday : currentday // ignore: cast_nullable_to_non_nullable
as List<WeatherValue>?,
  ));
}

/// Create a copy of StationFullData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StationDetailsCopyWith<$Res> get station {
  
  return $StationDetailsCopyWith<$Res>(_self.station, (value) {
    return _then(_self.copyWith(station: value));
  });
}
}

// dart format on
