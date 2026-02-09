// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'community_spotter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CommunitySpotter {

 String get id; String get name; String get avatarUrl; int get photoCount; String get lastActive; List<SkyPhoto> get sharedPhotos;
/// Create a copy of CommunitySpotter
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CommunitySpotterCopyWith<CommunitySpotter> get copyWith => _$CommunitySpotterCopyWithImpl<CommunitySpotter>(this as CommunitySpotter, _$identity);

  /// Serializes this CommunitySpotter to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CommunitySpotter&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl)&&(identical(other.photoCount, photoCount) || other.photoCount == photoCount)&&(identical(other.lastActive, lastActive) || other.lastActive == lastActive)&&const DeepCollectionEquality().equals(other.sharedPhotos, sharedPhotos));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,avatarUrl,photoCount,lastActive,const DeepCollectionEquality().hash(sharedPhotos));

@override
String toString() {
  return 'CommunitySpotter(id: $id, name: $name, avatarUrl: $avatarUrl, photoCount: $photoCount, lastActive: $lastActive, sharedPhotos: $sharedPhotos)';
}


}

/// @nodoc
abstract mixin class $CommunitySpotterCopyWith<$Res>  {
  factory $CommunitySpotterCopyWith(CommunitySpotter value, $Res Function(CommunitySpotter) _then) = _$CommunitySpotterCopyWithImpl;
@useResult
$Res call({
 String id, String name, String avatarUrl, int photoCount, String lastActive, List<SkyPhoto> sharedPhotos
});




}
/// @nodoc
class _$CommunitySpotterCopyWithImpl<$Res>
    implements $CommunitySpotterCopyWith<$Res> {
  _$CommunitySpotterCopyWithImpl(this._self, this._then);

  final CommunitySpotter _self;
  final $Res Function(CommunitySpotter) _then;

/// Create a copy of CommunitySpotter
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? avatarUrl = null,Object? photoCount = null,Object? lastActive = null,Object? sharedPhotos = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,avatarUrl: null == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String,photoCount: null == photoCount ? _self.photoCount : photoCount // ignore: cast_nullable_to_non_nullable
as int,lastActive: null == lastActive ? _self.lastActive : lastActive // ignore: cast_nullable_to_non_nullable
as String,sharedPhotos: null == sharedPhotos ? _self.sharedPhotos : sharedPhotos // ignore: cast_nullable_to_non_nullable
as List<SkyPhoto>,
  ));
}

}


/// Adds pattern-matching-related methods to [CommunitySpotter].
extension CommunitySpotterPatterns on CommunitySpotter {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CommunitySpotter value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CommunitySpotter() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CommunitySpotter value)  $default,){
final _that = this;
switch (_that) {
case _CommunitySpotter():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CommunitySpotter value)?  $default,){
final _that = this;
switch (_that) {
case _CommunitySpotter() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String avatarUrl,  int photoCount,  String lastActive,  List<SkyPhoto> sharedPhotos)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CommunitySpotter() when $default != null:
return $default(_that.id,_that.name,_that.avatarUrl,_that.photoCount,_that.lastActive,_that.sharedPhotos);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String avatarUrl,  int photoCount,  String lastActive,  List<SkyPhoto> sharedPhotos)  $default,) {final _that = this;
switch (_that) {
case _CommunitySpotter():
return $default(_that.id,_that.name,_that.avatarUrl,_that.photoCount,_that.lastActive,_that.sharedPhotos);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String avatarUrl,  int photoCount,  String lastActive,  List<SkyPhoto> sharedPhotos)?  $default,) {final _that = this;
switch (_that) {
case _CommunitySpotter() when $default != null:
return $default(_that.id,_that.name,_that.avatarUrl,_that.photoCount,_that.lastActive,_that.sharedPhotos);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CommunitySpotter implements CommunitySpotter {
  const _CommunitySpotter({required this.id, required this.name, required this.avatarUrl, required this.photoCount, required this.lastActive, final  List<SkyPhoto> sharedPhotos = const []}): _sharedPhotos = sharedPhotos;
  factory _CommunitySpotter.fromJson(Map<String, dynamic> json) => _$CommunitySpotterFromJson(json);

@override final  String id;
@override final  String name;
@override final  String avatarUrl;
@override final  int photoCount;
@override final  String lastActive;
 final  List<SkyPhoto> _sharedPhotos;
@override@JsonKey() List<SkyPhoto> get sharedPhotos {
  if (_sharedPhotos is EqualUnmodifiableListView) return _sharedPhotos;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_sharedPhotos);
}


/// Create a copy of CommunitySpotter
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CommunitySpotterCopyWith<_CommunitySpotter> get copyWith => __$CommunitySpotterCopyWithImpl<_CommunitySpotter>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CommunitySpotterToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CommunitySpotter&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl)&&(identical(other.photoCount, photoCount) || other.photoCount == photoCount)&&(identical(other.lastActive, lastActive) || other.lastActive == lastActive)&&const DeepCollectionEquality().equals(other._sharedPhotos, _sharedPhotos));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,avatarUrl,photoCount,lastActive,const DeepCollectionEquality().hash(_sharedPhotos));

@override
String toString() {
  return 'CommunitySpotter(id: $id, name: $name, avatarUrl: $avatarUrl, photoCount: $photoCount, lastActive: $lastActive, sharedPhotos: $sharedPhotos)';
}


}

/// @nodoc
abstract mixin class _$CommunitySpotterCopyWith<$Res> implements $CommunitySpotterCopyWith<$Res> {
  factory _$CommunitySpotterCopyWith(_CommunitySpotter value, $Res Function(_CommunitySpotter) _then) = __$CommunitySpotterCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String avatarUrl, int photoCount, String lastActive, List<SkyPhoto> sharedPhotos
});




}
/// @nodoc
class __$CommunitySpotterCopyWithImpl<$Res>
    implements _$CommunitySpotterCopyWith<$Res> {
  __$CommunitySpotterCopyWithImpl(this._self, this._then);

  final _CommunitySpotter _self;
  final $Res Function(_CommunitySpotter) _then;

/// Create a copy of CommunitySpotter
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? avatarUrl = null,Object? photoCount = null,Object? lastActive = null,Object? sharedPhotos = null,}) {
  return _then(_CommunitySpotter(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,avatarUrl: null == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String,photoCount: null == photoCount ? _self.photoCount : photoCount // ignore: cast_nullable_to_non_nullable
as int,lastActive: null == lastActive ? _self.lastActive : lastActive // ignore: cast_nullable_to_non_nullable
as String,sharedPhotos: null == sharedPhotos ? _self._sharedPhotos : sharedPhotos // ignore: cast_nullable_to_non_nullable
as List<SkyPhoto>,
  ));
}


}


/// @nodoc
mixin _$SkyPhoto {

 String get id; String get imageUrl; String get caption; DateTime get timestamp; String get location;
/// Create a copy of SkyPhoto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SkyPhotoCopyWith<SkyPhoto> get copyWith => _$SkyPhotoCopyWithImpl<SkyPhoto>(this as SkyPhoto, _$identity);

  /// Serializes this SkyPhoto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SkyPhoto&&(identical(other.id, id) || other.id == id)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.caption, caption) || other.caption == caption)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.location, location) || other.location == location));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,imageUrl,caption,timestamp,location);

@override
String toString() {
  return 'SkyPhoto(id: $id, imageUrl: $imageUrl, caption: $caption, timestamp: $timestamp, location: $location)';
}


}

/// @nodoc
abstract mixin class $SkyPhotoCopyWith<$Res>  {
  factory $SkyPhotoCopyWith(SkyPhoto value, $Res Function(SkyPhoto) _then) = _$SkyPhotoCopyWithImpl;
@useResult
$Res call({
 String id, String imageUrl, String caption, DateTime timestamp, String location
});




}
/// @nodoc
class _$SkyPhotoCopyWithImpl<$Res>
    implements $SkyPhotoCopyWith<$Res> {
  _$SkyPhotoCopyWithImpl(this._self, this._then);

  final SkyPhoto _self;
  final $Res Function(SkyPhoto) _then;

/// Create a copy of SkyPhoto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? imageUrl = null,Object? caption = null,Object? timestamp = null,Object? location = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,caption: null == caption ? _self.caption : caption // ignore: cast_nullable_to_non_nullable
as String,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as DateTime,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [SkyPhoto].
extension SkyPhotoPatterns on SkyPhoto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SkyPhoto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SkyPhoto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SkyPhoto value)  $default,){
final _that = this;
switch (_that) {
case _SkyPhoto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SkyPhoto value)?  $default,){
final _that = this;
switch (_that) {
case _SkyPhoto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String imageUrl,  String caption,  DateTime timestamp,  String location)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SkyPhoto() when $default != null:
return $default(_that.id,_that.imageUrl,_that.caption,_that.timestamp,_that.location);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String imageUrl,  String caption,  DateTime timestamp,  String location)  $default,) {final _that = this;
switch (_that) {
case _SkyPhoto():
return $default(_that.id,_that.imageUrl,_that.caption,_that.timestamp,_that.location);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String imageUrl,  String caption,  DateTime timestamp,  String location)?  $default,) {final _that = this;
switch (_that) {
case _SkyPhoto() when $default != null:
return $default(_that.id,_that.imageUrl,_that.caption,_that.timestamp,_that.location);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SkyPhoto implements SkyPhoto {
  const _SkyPhoto({required this.id, required this.imageUrl, required this.caption, required this.timestamp, required this.location});
  factory _SkyPhoto.fromJson(Map<String, dynamic> json) => _$SkyPhotoFromJson(json);

@override final  String id;
@override final  String imageUrl;
@override final  String caption;
@override final  DateTime timestamp;
@override final  String location;

/// Create a copy of SkyPhoto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SkyPhotoCopyWith<_SkyPhoto> get copyWith => __$SkyPhotoCopyWithImpl<_SkyPhoto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SkyPhotoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SkyPhoto&&(identical(other.id, id) || other.id == id)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.caption, caption) || other.caption == caption)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.location, location) || other.location == location));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,imageUrl,caption,timestamp,location);

@override
String toString() {
  return 'SkyPhoto(id: $id, imageUrl: $imageUrl, caption: $caption, timestamp: $timestamp, location: $location)';
}


}

/// @nodoc
abstract mixin class _$SkyPhotoCopyWith<$Res> implements $SkyPhotoCopyWith<$Res> {
  factory _$SkyPhotoCopyWith(_SkyPhoto value, $Res Function(_SkyPhoto) _then) = __$SkyPhotoCopyWithImpl;
@override @useResult
$Res call({
 String id, String imageUrl, String caption, DateTime timestamp, String location
});




}
/// @nodoc
class __$SkyPhotoCopyWithImpl<$Res>
    implements _$SkyPhotoCopyWith<$Res> {
  __$SkyPhotoCopyWithImpl(this._self, this._then);

  final _SkyPhoto _self;
  final $Res Function(_SkyPhoto) _then;

/// Create a copy of SkyPhoto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? imageUrl = null,Object? caption = null,Object? timestamp = null,Object? location = null,}) {
  return _then(_SkyPhoto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,caption: null == caption ? _self.caption : caption // ignore: cast_nullable_to_non_nullable
as String,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as DateTime,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
