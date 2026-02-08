// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'community_spotter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

CommunitySpotter _$CommunitySpotterFromJson(Map<String, dynamic> json) {
  return _CommunitySpotter.fromJson(json);
}

/// @nodoc
mixin _$CommunitySpotter {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get avatarUrl => throw _privateConstructorUsedError;
  int get photoCount => throw _privateConstructorUsedError;
  String get lastActive => throw _privateConstructorUsedError;
  List<SkyPhoto> get sharedPhotos => throw _privateConstructorUsedError;

  /// Serializes this CommunitySpotter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CommunitySpotter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CommunitySpotterCopyWith<CommunitySpotter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommunitySpotterCopyWith<$Res> {
  factory $CommunitySpotterCopyWith(
    CommunitySpotter value,
    $Res Function(CommunitySpotter) then,
  ) = _$CommunitySpotterCopyWithImpl<$Res, CommunitySpotter>;
  @useResult
  $Res call({
    String id,
    String name,
    String avatarUrl,
    int photoCount,
    String lastActive,
    List<SkyPhoto> sharedPhotos,
  });
}

/// @nodoc
class _$CommunitySpotterCopyWithImpl<$Res, $Val extends CommunitySpotter>
    implements $CommunitySpotterCopyWith<$Res> {
  _$CommunitySpotterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CommunitySpotter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? avatarUrl = null,
    Object? photoCount = null,
    Object? lastActive = null,
    Object? sharedPhotos = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            avatarUrl: null == avatarUrl
                ? _value.avatarUrl
                : avatarUrl // ignore: cast_nullable_to_non_nullable
                      as String,
            photoCount: null == photoCount
                ? _value.photoCount
                : photoCount // ignore: cast_nullable_to_non_nullable
                      as int,
            lastActive: null == lastActive
                ? _value.lastActive
                : lastActive // ignore: cast_nullable_to_non_nullable
                      as String,
            sharedPhotos: null == sharedPhotos
                ? _value.sharedPhotos
                : sharedPhotos // ignore: cast_nullable_to_non_nullable
                      as List<SkyPhoto>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CommunitySpotterImplCopyWith<$Res>
    implements $CommunitySpotterCopyWith<$Res> {
  factory _$$CommunitySpotterImplCopyWith(
    _$CommunitySpotterImpl value,
    $Res Function(_$CommunitySpotterImpl) then,
  ) = __$$CommunitySpotterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String name,
    String avatarUrl,
    int photoCount,
    String lastActive,
    List<SkyPhoto> sharedPhotos,
  });
}

/// @nodoc
class __$$CommunitySpotterImplCopyWithImpl<$Res>
    extends _$CommunitySpotterCopyWithImpl<$Res, _$CommunitySpotterImpl>
    implements _$$CommunitySpotterImplCopyWith<$Res> {
  __$$CommunitySpotterImplCopyWithImpl(
    _$CommunitySpotterImpl _value,
    $Res Function(_$CommunitySpotterImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CommunitySpotter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? avatarUrl = null,
    Object? photoCount = null,
    Object? lastActive = null,
    Object? sharedPhotos = null,
  }) {
    return _then(
      _$CommunitySpotterImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        avatarUrl: null == avatarUrl
            ? _value.avatarUrl
            : avatarUrl // ignore: cast_nullable_to_non_nullable
                  as String,
        photoCount: null == photoCount
            ? _value.photoCount
            : photoCount // ignore: cast_nullable_to_non_nullable
                  as int,
        lastActive: null == lastActive
            ? _value.lastActive
            : lastActive // ignore: cast_nullable_to_non_nullable
                  as String,
        sharedPhotos: null == sharedPhotos
            ? _value._sharedPhotos
            : sharedPhotos // ignore: cast_nullable_to_non_nullable
                  as List<SkyPhoto>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CommunitySpotterImpl implements _CommunitySpotter {
  const _$CommunitySpotterImpl({
    required this.id,
    required this.name,
    required this.avatarUrl,
    required this.photoCount,
    required this.lastActive,
    final List<SkyPhoto> sharedPhotos = const [],
  }) : _sharedPhotos = sharedPhotos;

  factory _$CommunitySpotterImpl.fromJson(Map<String, dynamic> json) =>
      _$$CommunitySpotterImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String avatarUrl;
  @override
  final int photoCount;
  @override
  final String lastActive;
  final List<SkyPhoto> _sharedPhotos;
  @override
  @JsonKey()
  List<SkyPhoto> get sharedPhotos {
    if (_sharedPhotos is EqualUnmodifiableListView) return _sharedPhotos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sharedPhotos);
  }

  @override
  String toString() {
    return 'CommunitySpotter(id: $id, name: $name, avatarUrl: $avatarUrl, photoCount: $photoCount, lastActive: $lastActive, sharedPhotos: $sharedPhotos)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommunitySpotterImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl) &&
            (identical(other.photoCount, photoCount) ||
                other.photoCount == photoCount) &&
            (identical(other.lastActive, lastActive) ||
                other.lastActive == lastActive) &&
            const DeepCollectionEquality().equals(
              other._sharedPhotos,
              _sharedPhotos,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    name,
    avatarUrl,
    photoCount,
    lastActive,
    const DeepCollectionEquality().hash(_sharedPhotos),
  );

  /// Create a copy of CommunitySpotter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CommunitySpotterImplCopyWith<_$CommunitySpotterImpl> get copyWith =>
      __$$CommunitySpotterImplCopyWithImpl<_$CommunitySpotterImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$CommunitySpotterImplToJson(this);
  }
}

abstract class _CommunitySpotter implements CommunitySpotter {
  const factory _CommunitySpotter({
    required final String id,
    required final String name,
    required final String avatarUrl,
    required final int photoCount,
    required final String lastActive,
    final List<SkyPhoto> sharedPhotos,
  }) = _$CommunitySpotterImpl;

  factory _CommunitySpotter.fromJson(Map<String, dynamic> json) =
      _$CommunitySpotterImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get avatarUrl;
  @override
  int get photoCount;
  @override
  String get lastActive;
  @override
  List<SkyPhoto> get sharedPhotos;

  /// Create a copy of CommunitySpotter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CommunitySpotterImplCopyWith<_$CommunitySpotterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SkyPhoto _$SkyPhotoFromJson(Map<String, dynamic> json) {
  return _SkyPhoto.fromJson(json);
}

/// @nodoc
mixin _$SkyPhoto {
  String get id => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  String get caption => throw _privateConstructorUsedError;
  DateTime get timestamp => throw _privateConstructorUsedError;
  String get location => throw _privateConstructorUsedError;

  /// Serializes this SkyPhoto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SkyPhoto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SkyPhotoCopyWith<SkyPhoto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SkyPhotoCopyWith<$Res> {
  factory $SkyPhotoCopyWith(SkyPhoto value, $Res Function(SkyPhoto) then) =
      _$SkyPhotoCopyWithImpl<$Res, SkyPhoto>;
  @useResult
  $Res call({
    String id,
    String imageUrl,
    String caption,
    DateTime timestamp,
    String location,
  });
}

/// @nodoc
class _$SkyPhotoCopyWithImpl<$Res, $Val extends SkyPhoto>
    implements $SkyPhotoCopyWith<$Res> {
  _$SkyPhotoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SkyPhoto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? imageUrl = null,
    Object? caption = null,
    Object? timestamp = null,
    Object? location = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            imageUrl: null == imageUrl
                ? _value.imageUrl
                : imageUrl // ignore: cast_nullable_to_non_nullable
                      as String,
            caption: null == caption
                ? _value.caption
                : caption // ignore: cast_nullable_to_non_nullable
                      as String,
            timestamp: null == timestamp
                ? _value.timestamp
                : timestamp // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            location: null == location
                ? _value.location
                : location // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SkyPhotoImplCopyWith<$Res>
    implements $SkyPhotoCopyWith<$Res> {
  factory _$$SkyPhotoImplCopyWith(
    _$SkyPhotoImpl value,
    $Res Function(_$SkyPhotoImpl) then,
  ) = __$$SkyPhotoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String imageUrl,
    String caption,
    DateTime timestamp,
    String location,
  });
}

/// @nodoc
class __$$SkyPhotoImplCopyWithImpl<$Res>
    extends _$SkyPhotoCopyWithImpl<$Res, _$SkyPhotoImpl>
    implements _$$SkyPhotoImplCopyWith<$Res> {
  __$$SkyPhotoImplCopyWithImpl(
    _$SkyPhotoImpl _value,
    $Res Function(_$SkyPhotoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SkyPhoto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? imageUrl = null,
    Object? caption = null,
    Object? timestamp = null,
    Object? location = null,
  }) {
    return _then(
      _$SkyPhotoImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        imageUrl: null == imageUrl
            ? _value.imageUrl
            : imageUrl // ignore: cast_nullable_to_non_nullable
                  as String,
        caption: null == caption
            ? _value.caption
            : caption // ignore: cast_nullable_to_non_nullable
                  as String,
        timestamp: null == timestamp
            ? _value.timestamp
            : timestamp // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        location: null == location
            ? _value.location
            : location // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SkyPhotoImpl implements _SkyPhoto {
  const _$SkyPhotoImpl({
    required this.id,
    required this.imageUrl,
    required this.caption,
    required this.timestamp,
    required this.location,
  });

  factory _$SkyPhotoImpl.fromJson(Map<String, dynamic> json) =>
      _$$SkyPhotoImplFromJson(json);

  @override
  final String id;
  @override
  final String imageUrl;
  @override
  final String caption;
  @override
  final DateTime timestamp;
  @override
  final String location;

  @override
  String toString() {
    return 'SkyPhoto(id: $id, imageUrl: $imageUrl, caption: $caption, timestamp: $timestamp, location: $location)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SkyPhotoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.caption, caption) || other.caption == caption) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.location, location) ||
                other.location == location));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, imageUrl, caption, timestamp, location);

  /// Create a copy of SkyPhoto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SkyPhotoImplCopyWith<_$SkyPhotoImpl> get copyWith =>
      __$$SkyPhotoImplCopyWithImpl<_$SkyPhotoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SkyPhotoImplToJson(this);
  }
}

abstract class _SkyPhoto implements SkyPhoto {
  const factory _SkyPhoto({
    required final String id,
    required final String imageUrl,
    required final String caption,
    required final DateTime timestamp,
    required final String location,
  }) = _$SkyPhotoImpl;

  factory _SkyPhoto.fromJson(Map<String, dynamic> json) =
      _$SkyPhotoImpl.fromJson;

  @override
  String get id;
  @override
  String get imageUrl;
  @override
  String get caption;
  @override
  DateTime get timestamp;
  @override
  String get location;

  /// Create a copy of SkyPhoto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SkyPhotoImplCopyWith<_$SkyPhotoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
