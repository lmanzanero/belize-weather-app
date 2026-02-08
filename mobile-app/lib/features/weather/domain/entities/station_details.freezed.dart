// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'station_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

StationDetails _$StationDetailsFromJson(Map<String, dynamic> json) {
  return _StationDetails.fromJson(json);
}

/// @nodoc
mixin _$StationDetails {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'alias_name')
  String? get aliasName => throw _privateConstructorUsedError;
  double? get longitude => throw _privateConstructorUsedError;
  double? get latitude => throw _privateConstructorUsedError;
  int get elevation => throw _privateConstructorUsedError;
  String? get watershed => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_active')
  bool? get isActive => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this StationDetails to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StationDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StationDetailsCopyWith<StationDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StationDetailsCopyWith<$Res> {
  factory $StationDetailsCopyWith(
    StationDetails value,
    $Res Function(StationDetails) then,
  ) = _$StationDetailsCopyWithImpl<$Res, StationDetails>;
  @useResult
  $Res call({
    int id,
    String name,
    @JsonKey(name: 'alias_name') String? aliasName,
    double? longitude,
    double? latitude,
    int elevation,
    String? watershed,
    @JsonKey(name: 'is_active') bool? isActive,
    @JsonKey(name: 'updated_at') String? updatedAt,
  });
}

/// @nodoc
class _$StationDetailsCopyWithImpl<$Res, $Val extends StationDetails>
    implements $StationDetailsCopyWith<$Res> {
  _$StationDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StationDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? aliasName = freezed,
    Object? longitude = freezed,
    Object? latitude = freezed,
    Object? elevation = null,
    Object? watershed = freezed,
    Object? isActive = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            aliasName: freezed == aliasName
                ? _value.aliasName
                : aliasName // ignore: cast_nullable_to_non_nullable
                      as String?,
            longitude: freezed == longitude
                ? _value.longitude
                : longitude // ignore: cast_nullable_to_non_nullable
                      as double?,
            latitude: freezed == latitude
                ? _value.latitude
                : latitude // ignore: cast_nullable_to_non_nullable
                      as double?,
            elevation: null == elevation
                ? _value.elevation
                : elevation // ignore: cast_nullable_to_non_nullable
                      as int,
            watershed: freezed == watershed
                ? _value.watershed
                : watershed // ignore: cast_nullable_to_non_nullable
                      as String?,
            isActive: freezed == isActive
                ? _value.isActive
                : isActive // ignore: cast_nullable_to_non_nullable
                      as bool?,
            updatedAt: freezed == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$StationDetailsImplCopyWith<$Res>
    implements $StationDetailsCopyWith<$Res> {
  factory _$$StationDetailsImplCopyWith(
    _$StationDetailsImpl value,
    $Res Function(_$StationDetailsImpl) then,
  ) = __$$StationDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    String name,
    @JsonKey(name: 'alias_name') String? aliasName,
    double? longitude,
    double? latitude,
    int elevation,
    String? watershed,
    @JsonKey(name: 'is_active') bool? isActive,
    @JsonKey(name: 'updated_at') String? updatedAt,
  });
}

/// @nodoc
class __$$StationDetailsImplCopyWithImpl<$Res>
    extends _$StationDetailsCopyWithImpl<$Res, _$StationDetailsImpl>
    implements _$$StationDetailsImplCopyWith<$Res> {
  __$$StationDetailsImplCopyWithImpl(
    _$StationDetailsImpl _value,
    $Res Function(_$StationDetailsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of StationDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? aliasName = freezed,
    Object? longitude = freezed,
    Object? latitude = freezed,
    Object? elevation = null,
    Object? watershed = freezed,
    Object? isActive = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(
      _$StationDetailsImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        aliasName: freezed == aliasName
            ? _value.aliasName
            : aliasName // ignore: cast_nullable_to_non_nullable
                  as String?,
        longitude: freezed == longitude
            ? _value.longitude
            : longitude // ignore: cast_nullable_to_non_nullable
                  as double?,
        latitude: freezed == latitude
            ? _value.latitude
            : latitude // ignore: cast_nullable_to_non_nullable
                  as double?,
        elevation: null == elevation
            ? _value.elevation
            : elevation // ignore: cast_nullable_to_non_nullable
                  as int,
        watershed: freezed == watershed
            ? _value.watershed
            : watershed // ignore: cast_nullable_to_non_nullable
                  as String?,
        isActive: freezed == isActive
            ? _value.isActive
            : isActive // ignore: cast_nullable_to_non_nullable
                  as bool?,
        updatedAt: freezed == updatedAt
            ? _value.updatedAt
            : updatedAt // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$StationDetailsImpl implements _StationDetails {
  const _$StationDetailsImpl({
    required this.id,
    this.name = 'Unknown',
    @JsonKey(name: 'alias_name') this.aliasName,
    this.longitude,
    this.latitude,
    this.elevation = 0,
    this.watershed,
    @JsonKey(name: 'is_active') this.isActive,
    @JsonKey(name: 'updated_at') this.updatedAt,
  });

  factory _$StationDetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$StationDetailsImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey(name: 'alias_name')
  final String? aliasName;
  @override
  final double? longitude;
  @override
  final double? latitude;
  @override
  @JsonKey()
  final int elevation;
  @override
  final String? watershed;
  @override
  @JsonKey(name: 'is_active')
  final bool? isActive;
  @override
  @JsonKey(name: 'updated_at')
  final String? updatedAt;

  @override
  String toString() {
    return 'StationDetails(id: $id, name: $name, aliasName: $aliasName, longitude: $longitude, latitude: $latitude, elevation: $elevation, watershed: $watershed, isActive: $isActive, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StationDetailsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.aliasName, aliasName) ||
                other.aliasName == aliasName) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.elevation, elevation) ||
                other.elevation == elevation) &&
            (identical(other.watershed, watershed) ||
                other.watershed == watershed) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    name,
    aliasName,
    longitude,
    latitude,
    elevation,
    watershed,
    isActive,
    updatedAt,
  );

  /// Create a copy of StationDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StationDetailsImplCopyWith<_$StationDetailsImpl> get copyWith =>
      __$$StationDetailsImplCopyWithImpl<_$StationDetailsImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$StationDetailsImplToJson(this);
  }
}

abstract class _StationDetails implements StationDetails {
  const factory _StationDetails({
    required final int id,
    final String name,
    @JsonKey(name: 'alias_name') final String? aliasName,
    final double? longitude,
    final double? latitude,
    final int elevation,
    final String? watershed,
    @JsonKey(name: 'is_active') final bool? isActive,
    @JsonKey(name: 'updated_at') final String? updatedAt,
  }) = _$StationDetailsImpl;

  factory _StationDetails.fromJson(Map<String, dynamic> json) =
      _$StationDetailsImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(name: 'alias_name')
  String? get aliasName;
  @override
  double? get longitude;
  @override
  double? get latitude;
  @override
  int get elevation;
  @override
  String? get watershed;
  @override
  @JsonKey(name: 'is_active')
  bool? get isActive;
  @override
  @JsonKey(name: 'updated_at')
  String? get updatedAt;

  /// Create a copy of StationDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StationDetailsImplCopyWith<_$StationDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WeatherVariable _$WeatherVariableFromJson(Map<String, dynamic> json) {
  return _WeatherVariable.fromJson(json);
}

/// @nodoc
mixin _$WeatherVariable {
  String get name => throw _privateConstructorUsedError;
  String get symbol => throw _privateConstructorUsedError;
  @JsonKey(name: 'unit_name')
  String get unitName => throw _privateConstructorUsedError;
  @JsonKey(name: 'unit_symbol')
  String get unitSymbol => throw _privateConstructorUsedError;

  /// Serializes this WeatherVariable to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WeatherVariable
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WeatherVariableCopyWith<WeatherVariable> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherVariableCopyWith<$Res> {
  factory $WeatherVariableCopyWith(
    WeatherVariable value,
    $Res Function(WeatherVariable) then,
  ) = _$WeatherVariableCopyWithImpl<$Res, WeatherVariable>;
  @useResult
  $Res call({
    String name,
    String symbol,
    @JsonKey(name: 'unit_name') String unitName,
    @JsonKey(name: 'unit_symbol') String unitSymbol,
  });
}

/// @nodoc
class _$WeatherVariableCopyWithImpl<$Res, $Val extends WeatherVariable>
    implements $WeatherVariableCopyWith<$Res> {
  _$WeatherVariableCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WeatherVariable
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? symbol = null,
    Object? unitName = null,
    Object? unitSymbol = null,
  }) {
    return _then(
      _value.copyWith(
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            symbol: null == symbol
                ? _value.symbol
                : symbol // ignore: cast_nullable_to_non_nullable
                      as String,
            unitName: null == unitName
                ? _value.unitName
                : unitName // ignore: cast_nullable_to_non_nullable
                      as String,
            unitSymbol: null == unitSymbol
                ? _value.unitSymbol
                : unitSymbol // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$WeatherVariableImplCopyWith<$Res>
    implements $WeatherVariableCopyWith<$Res> {
  factory _$$WeatherVariableImplCopyWith(
    _$WeatherVariableImpl value,
    $Res Function(_$WeatherVariableImpl) then,
  ) = __$$WeatherVariableImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String name,
    String symbol,
    @JsonKey(name: 'unit_name') String unitName,
    @JsonKey(name: 'unit_symbol') String unitSymbol,
  });
}

/// @nodoc
class __$$WeatherVariableImplCopyWithImpl<$Res>
    extends _$WeatherVariableCopyWithImpl<$Res, _$WeatherVariableImpl>
    implements _$$WeatherVariableImplCopyWith<$Res> {
  __$$WeatherVariableImplCopyWithImpl(
    _$WeatherVariableImpl _value,
    $Res Function(_$WeatherVariableImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of WeatherVariable
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? symbol = null,
    Object? unitName = null,
    Object? unitSymbol = null,
  }) {
    return _then(
      _$WeatherVariableImpl(
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        symbol: null == symbol
            ? _value.symbol
            : symbol // ignore: cast_nullable_to_non_nullable
                  as String,
        unitName: null == unitName
            ? _value.unitName
            : unitName // ignore: cast_nullable_to_non_nullable
                  as String,
        unitSymbol: null == unitSymbol
            ? _value.unitSymbol
            : unitSymbol // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$WeatherVariableImpl implements _WeatherVariable {
  const _$WeatherVariableImpl({
    this.name = 'Unknown',
    this.symbol = '',
    @JsonKey(name: 'unit_name') this.unitName = '',
    @JsonKey(name: 'unit_symbol') this.unitSymbol = '',
  });

  factory _$WeatherVariableImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeatherVariableImplFromJson(json);

  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String symbol;
  @override
  @JsonKey(name: 'unit_name')
  final String unitName;
  @override
  @JsonKey(name: 'unit_symbol')
  final String unitSymbol;

  @override
  String toString() {
    return 'WeatherVariable(name: $name, symbol: $symbol, unitName: $unitName, unitSymbol: $unitSymbol)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherVariableImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.symbol, symbol) || other.symbol == symbol) &&
            (identical(other.unitName, unitName) ||
                other.unitName == unitName) &&
            (identical(other.unitSymbol, unitSymbol) ||
                other.unitSymbol == unitSymbol));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, symbol, unitName, unitSymbol);

  /// Create a copy of WeatherVariable
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherVariableImplCopyWith<_$WeatherVariableImpl> get copyWith =>
      __$$WeatherVariableImplCopyWithImpl<_$WeatherVariableImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$WeatherVariableImplToJson(this);
  }
}

abstract class _WeatherVariable implements WeatherVariable {
  const factory _WeatherVariable({
    final String name,
    final String symbol,
    @JsonKey(name: 'unit_name') final String unitName,
    @JsonKey(name: 'unit_symbol') final String unitSymbol,
  }) = _$WeatherVariableImpl;

  factory _WeatherVariable.fromJson(Map<String, dynamic> json) =
      _$WeatherVariableImpl.fromJson;

  @override
  String get name;
  @override
  String get symbol;
  @override
  @JsonKey(name: 'unit_name')
  String get unitName;
  @override
  @JsonKey(name: 'unit_symbol')
  String get unitSymbol;

  /// Create a copy of WeatherVariable
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WeatherVariableImplCopyWith<_$WeatherVariableImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WeatherValue _$WeatherValueFromJson(Map<String, dynamic> json) {
  return _WeatherValue.fromJson(json);
}

/// @nodoc
mixin _$WeatherValue {
  dynamic get value => throw _privateConstructorUsedError;
  WeatherVariable get variable => throw _privateConstructorUsedError;

  /// Serializes this WeatherValue to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WeatherValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WeatherValueCopyWith<WeatherValue> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherValueCopyWith<$Res> {
  factory $WeatherValueCopyWith(
    WeatherValue value,
    $Res Function(WeatherValue) then,
  ) = _$WeatherValueCopyWithImpl<$Res, WeatherValue>;
  @useResult
  $Res call({dynamic value, WeatherVariable variable});

  $WeatherVariableCopyWith<$Res> get variable;
}

/// @nodoc
class _$WeatherValueCopyWithImpl<$Res, $Val extends WeatherValue>
    implements $WeatherValueCopyWith<$Res> {
  _$WeatherValueCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WeatherValue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? value = freezed, Object? variable = null}) {
    return _then(
      _value.copyWith(
            value: freezed == value
                ? _value.value
                : value // ignore: cast_nullable_to_non_nullable
                      as dynamic,
            variable: null == variable
                ? _value.variable
                : variable // ignore: cast_nullable_to_non_nullable
                      as WeatherVariable,
          )
          as $Val,
    );
  }

  /// Create a copy of WeatherValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WeatherVariableCopyWith<$Res> get variable {
    return $WeatherVariableCopyWith<$Res>(_value.variable, (value) {
      return _then(_value.copyWith(variable: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WeatherValueImplCopyWith<$Res>
    implements $WeatherValueCopyWith<$Res> {
  factory _$$WeatherValueImplCopyWith(
    _$WeatherValueImpl value,
    $Res Function(_$WeatherValueImpl) then,
  ) = __$$WeatherValueImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({dynamic value, WeatherVariable variable});

  @override
  $WeatherVariableCopyWith<$Res> get variable;
}

/// @nodoc
class __$$WeatherValueImplCopyWithImpl<$Res>
    extends _$WeatherValueCopyWithImpl<$Res, _$WeatherValueImpl>
    implements _$$WeatherValueImplCopyWith<$Res> {
  __$$WeatherValueImplCopyWithImpl(
    _$WeatherValueImpl _value,
    $Res Function(_$WeatherValueImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of WeatherValue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? value = freezed, Object? variable = null}) {
    return _then(
      _$WeatherValueImpl(
        value: freezed == value
            ? _value.value
            : value // ignore: cast_nullable_to_non_nullable
                  as dynamic,
        variable: null == variable
            ? _value.variable
            : variable // ignore: cast_nullable_to_non_nullable
                  as WeatherVariable,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$WeatherValueImpl implements _WeatherValue {
  const _$WeatherValueImpl({this.value = '--', required this.variable});

  factory _$WeatherValueImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeatherValueImplFromJson(json);

  @override
  @JsonKey()
  final dynamic value;
  @override
  final WeatherVariable variable;

  @override
  String toString() {
    return 'WeatherValue(value: $value, variable: $variable)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherValueImpl &&
            const DeepCollectionEquality().equals(other.value, value) &&
            (identical(other.variable, variable) ||
                other.variable == variable));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(value),
    variable,
  );

  /// Create a copy of WeatherValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherValueImplCopyWith<_$WeatherValueImpl> get copyWith =>
      __$$WeatherValueImplCopyWithImpl<_$WeatherValueImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeatherValueImplToJson(this);
  }
}

abstract class _WeatherValue implements WeatherValue {
  const factory _WeatherValue({
    final dynamic value,
    required final WeatherVariable variable,
  }) = _$WeatherValueImpl;

  factory _WeatherValue.fromJson(Map<String, dynamic> json) =
      _$WeatherValueImpl.fromJson;

  @override
  dynamic get value;
  @override
  WeatherVariable get variable;

  /// Create a copy of WeatherValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WeatherValueImplCopyWith<_$WeatherValueImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

StationFullData _$StationFullDataFromJson(Map<String, dynamic> json) {
  return _StationFullData.fromJson(json);
}

/// @nodoc
mixin _$StationFullData {
  StationDetails get station => throw _privateConstructorUsedError;
  @JsonKey(name: 'station_name')
  String get stationName => throw _privateConstructorUsedError;
  @JsonKey(name: 'station_id')
  int get stationId => throw _privateConstructorUsedError;
  List<WeatherValue>? get latest => throw _privateConstructorUsedError;
  List<WeatherValue>? get past24h => throw _privateConstructorUsedError;
  List<WeatherValue>? get currentday => throw _privateConstructorUsedError;

  /// Serializes this StationFullData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StationFullData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StationFullDataCopyWith<StationFullData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StationFullDataCopyWith<$Res> {
  factory $StationFullDataCopyWith(
    StationFullData value,
    $Res Function(StationFullData) then,
  ) = _$StationFullDataCopyWithImpl<$Res, StationFullData>;
  @useResult
  $Res call({
    StationDetails station,
    @JsonKey(name: 'station_name') String stationName,
    @JsonKey(name: 'station_id') int stationId,
    List<WeatherValue>? latest,
    List<WeatherValue>? past24h,
    List<WeatherValue>? currentday,
  });

  $StationDetailsCopyWith<$Res> get station;
}

/// @nodoc
class _$StationFullDataCopyWithImpl<$Res, $Val extends StationFullData>
    implements $StationFullDataCopyWith<$Res> {
  _$StationFullDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StationFullData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? station = null,
    Object? stationName = null,
    Object? stationId = null,
    Object? latest = freezed,
    Object? past24h = freezed,
    Object? currentday = freezed,
  }) {
    return _then(
      _value.copyWith(
            station: null == station
                ? _value.station
                : station // ignore: cast_nullable_to_non_nullable
                      as StationDetails,
            stationName: null == stationName
                ? _value.stationName
                : stationName // ignore: cast_nullable_to_non_nullable
                      as String,
            stationId: null == stationId
                ? _value.stationId
                : stationId // ignore: cast_nullable_to_non_nullable
                      as int,
            latest: freezed == latest
                ? _value.latest
                : latest // ignore: cast_nullable_to_non_nullable
                      as List<WeatherValue>?,
            past24h: freezed == past24h
                ? _value.past24h
                : past24h // ignore: cast_nullable_to_non_nullable
                      as List<WeatherValue>?,
            currentday: freezed == currentday
                ? _value.currentday
                : currentday // ignore: cast_nullable_to_non_nullable
                      as List<WeatherValue>?,
          )
          as $Val,
    );
  }

  /// Create a copy of StationFullData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StationDetailsCopyWith<$Res> get station {
    return $StationDetailsCopyWith<$Res>(_value.station, (value) {
      return _then(_value.copyWith(station: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StationFullDataImplCopyWith<$Res>
    implements $StationFullDataCopyWith<$Res> {
  factory _$$StationFullDataImplCopyWith(
    _$StationFullDataImpl value,
    $Res Function(_$StationFullDataImpl) then,
  ) = __$$StationFullDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    StationDetails station,
    @JsonKey(name: 'station_name') String stationName,
    @JsonKey(name: 'station_id') int stationId,
    List<WeatherValue>? latest,
    List<WeatherValue>? past24h,
    List<WeatherValue>? currentday,
  });

  @override
  $StationDetailsCopyWith<$Res> get station;
}

/// @nodoc
class __$$StationFullDataImplCopyWithImpl<$Res>
    extends _$StationFullDataCopyWithImpl<$Res, _$StationFullDataImpl>
    implements _$$StationFullDataImplCopyWith<$Res> {
  __$$StationFullDataImplCopyWithImpl(
    _$StationFullDataImpl _value,
    $Res Function(_$StationFullDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of StationFullData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? station = null,
    Object? stationName = null,
    Object? stationId = null,
    Object? latest = freezed,
    Object? past24h = freezed,
    Object? currentday = freezed,
  }) {
    return _then(
      _$StationFullDataImpl(
        station: null == station
            ? _value.station
            : station // ignore: cast_nullable_to_non_nullable
                  as StationDetails,
        stationName: null == stationName
            ? _value.stationName
            : stationName // ignore: cast_nullable_to_non_nullable
                  as String,
        stationId: null == stationId
            ? _value.stationId
            : stationId // ignore: cast_nullable_to_non_nullable
                  as int,
        latest: freezed == latest
            ? _value._latest
            : latest // ignore: cast_nullable_to_non_nullable
                  as List<WeatherValue>?,
        past24h: freezed == past24h
            ? _value._past24h
            : past24h // ignore: cast_nullable_to_non_nullable
                  as List<WeatherValue>?,
        currentday: freezed == currentday
            ? _value._currentday
            : currentday // ignore: cast_nullable_to_non_nullable
                  as List<WeatherValue>?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$StationFullDataImpl implements _StationFullData {
  const _$StationFullDataImpl({
    required this.station,
    @JsonKey(name: 'station_name') this.stationName = 'Unknown Station',
    @JsonKey(name: 'station_id') this.stationId = 0,
    final List<WeatherValue>? latest,
    final List<WeatherValue>? past24h,
    final List<WeatherValue>? currentday,
  }) : _latest = latest,
       _past24h = past24h,
       _currentday = currentday;

  factory _$StationFullDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$StationFullDataImplFromJson(json);

  @override
  final StationDetails station;
  @override
  @JsonKey(name: 'station_name')
  final String stationName;
  @override
  @JsonKey(name: 'station_id')
  final int stationId;
  final List<WeatherValue>? _latest;
  @override
  List<WeatherValue>? get latest {
    final value = _latest;
    if (value == null) return null;
    if (_latest is EqualUnmodifiableListView) return _latest;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<WeatherValue>? _past24h;
  @override
  List<WeatherValue>? get past24h {
    final value = _past24h;
    if (value == null) return null;
    if (_past24h is EqualUnmodifiableListView) return _past24h;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<WeatherValue>? _currentday;
  @override
  List<WeatherValue>? get currentday {
    final value = _currentday;
    if (value == null) return null;
    if (_currentday is EqualUnmodifiableListView) return _currentday;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'StationFullData(station: $station, stationName: $stationName, stationId: $stationId, latest: $latest, past24h: $past24h, currentday: $currentday)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StationFullDataImpl &&
            (identical(other.station, station) || other.station == station) &&
            (identical(other.stationName, stationName) ||
                other.stationName == stationName) &&
            (identical(other.stationId, stationId) ||
                other.stationId == stationId) &&
            const DeepCollectionEquality().equals(other._latest, _latest) &&
            const DeepCollectionEquality().equals(other._past24h, _past24h) &&
            const DeepCollectionEquality().equals(
              other._currentday,
              _currentday,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    station,
    stationName,
    stationId,
    const DeepCollectionEquality().hash(_latest),
    const DeepCollectionEquality().hash(_past24h),
    const DeepCollectionEquality().hash(_currentday),
  );

  /// Create a copy of StationFullData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StationFullDataImplCopyWith<_$StationFullDataImpl> get copyWith =>
      __$$StationFullDataImplCopyWithImpl<_$StationFullDataImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$StationFullDataImplToJson(this);
  }
}

abstract class _StationFullData implements StationFullData {
  const factory _StationFullData({
    required final StationDetails station,
    @JsonKey(name: 'station_name') final String stationName,
    @JsonKey(name: 'station_id') final int stationId,
    final List<WeatherValue>? latest,
    final List<WeatherValue>? past24h,
    final List<WeatherValue>? currentday,
  }) = _$StationFullDataImpl;

  factory _StationFullData.fromJson(Map<String, dynamic> json) =
      _$StationFullDataImpl.fromJson;

  @override
  StationDetails get station;
  @override
  @JsonKey(name: 'station_name')
  String get stationName;
  @override
  @JsonKey(name: 'station_id')
  int get stationId;
  @override
  List<WeatherValue>? get latest;
  @override
  List<WeatherValue>? get past24h;
  @override
  List<WeatherValue>? get currentday;

  /// Create a copy of StationFullData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StationFullDataImplCopyWith<_$StationFullDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
