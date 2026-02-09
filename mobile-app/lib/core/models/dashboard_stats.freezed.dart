// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dashboard_stats.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DashboardStats {

 int get totalUsers; int get activeUsers; int get totalRevenue; double get growthRate; List<ChartData> get userGrowthData; List<ChartData> get revenueData; List<ActivityItem> get recentActivities;
/// Create a copy of DashboardStats
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DashboardStatsCopyWith<DashboardStats> get copyWith => _$DashboardStatsCopyWithImpl<DashboardStats>(this as DashboardStats, _$identity);

  /// Serializes this DashboardStats to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DashboardStats&&(identical(other.totalUsers, totalUsers) || other.totalUsers == totalUsers)&&(identical(other.activeUsers, activeUsers) || other.activeUsers == activeUsers)&&(identical(other.totalRevenue, totalRevenue) || other.totalRevenue == totalRevenue)&&(identical(other.growthRate, growthRate) || other.growthRate == growthRate)&&const DeepCollectionEquality().equals(other.userGrowthData, userGrowthData)&&const DeepCollectionEquality().equals(other.revenueData, revenueData)&&const DeepCollectionEquality().equals(other.recentActivities, recentActivities));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totalUsers,activeUsers,totalRevenue,growthRate,const DeepCollectionEquality().hash(userGrowthData),const DeepCollectionEquality().hash(revenueData),const DeepCollectionEquality().hash(recentActivities));

@override
String toString() {
  return 'DashboardStats(totalUsers: $totalUsers, activeUsers: $activeUsers, totalRevenue: $totalRevenue, growthRate: $growthRate, userGrowthData: $userGrowthData, revenueData: $revenueData, recentActivities: $recentActivities)';
}


}

/// @nodoc
abstract mixin class $DashboardStatsCopyWith<$Res>  {
  factory $DashboardStatsCopyWith(DashboardStats value, $Res Function(DashboardStats) _then) = _$DashboardStatsCopyWithImpl;
@useResult
$Res call({
 int totalUsers, int activeUsers, int totalRevenue, double growthRate, List<ChartData> userGrowthData, List<ChartData> revenueData, List<ActivityItem> recentActivities
});




}
/// @nodoc
class _$DashboardStatsCopyWithImpl<$Res>
    implements $DashboardStatsCopyWith<$Res> {
  _$DashboardStatsCopyWithImpl(this._self, this._then);

  final DashboardStats _self;
  final $Res Function(DashboardStats) _then;

/// Create a copy of DashboardStats
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? totalUsers = null,Object? activeUsers = null,Object? totalRevenue = null,Object? growthRate = null,Object? userGrowthData = null,Object? revenueData = null,Object? recentActivities = null,}) {
  return _then(_self.copyWith(
totalUsers: null == totalUsers ? _self.totalUsers : totalUsers // ignore: cast_nullable_to_non_nullable
as int,activeUsers: null == activeUsers ? _self.activeUsers : activeUsers // ignore: cast_nullable_to_non_nullable
as int,totalRevenue: null == totalRevenue ? _self.totalRevenue : totalRevenue // ignore: cast_nullable_to_non_nullable
as int,growthRate: null == growthRate ? _self.growthRate : growthRate // ignore: cast_nullable_to_non_nullable
as double,userGrowthData: null == userGrowthData ? _self.userGrowthData : userGrowthData // ignore: cast_nullable_to_non_nullable
as List<ChartData>,revenueData: null == revenueData ? _self.revenueData : revenueData // ignore: cast_nullable_to_non_nullable
as List<ChartData>,recentActivities: null == recentActivities ? _self.recentActivities : recentActivities // ignore: cast_nullable_to_non_nullable
as List<ActivityItem>,
  ));
}

}


/// Adds pattern-matching-related methods to [DashboardStats].
extension DashboardStatsPatterns on DashboardStats {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DashboardStats value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DashboardStats() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DashboardStats value)  $default,){
final _that = this;
switch (_that) {
case _DashboardStats():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DashboardStats value)?  $default,){
final _that = this;
switch (_that) {
case _DashboardStats() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int totalUsers,  int activeUsers,  int totalRevenue,  double growthRate,  List<ChartData> userGrowthData,  List<ChartData> revenueData,  List<ActivityItem> recentActivities)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DashboardStats() when $default != null:
return $default(_that.totalUsers,_that.activeUsers,_that.totalRevenue,_that.growthRate,_that.userGrowthData,_that.revenueData,_that.recentActivities);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int totalUsers,  int activeUsers,  int totalRevenue,  double growthRate,  List<ChartData> userGrowthData,  List<ChartData> revenueData,  List<ActivityItem> recentActivities)  $default,) {final _that = this;
switch (_that) {
case _DashboardStats():
return $default(_that.totalUsers,_that.activeUsers,_that.totalRevenue,_that.growthRate,_that.userGrowthData,_that.revenueData,_that.recentActivities);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int totalUsers,  int activeUsers,  int totalRevenue,  double growthRate,  List<ChartData> userGrowthData,  List<ChartData> revenueData,  List<ActivityItem> recentActivities)?  $default,) {final _that = this;
switch (_that) {
case _DashboardStats() when $default != null:
return $default(_that.totalUsers,_that.activeUsers,_that.totalRevenue,_that.growthRate,_that.userGrowthData,_that.revenueData,_that.recentActivities);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DashboardStats implements DashboardStats {
  const _DashboardStats({required this.totalUsers, required this.activeUsers, required this.totalRevenue, required this.growthRate, required final  List<ChartData> userGrowthData, required final  List<ChartData> revenueData, required final  List<ActivityItem> recentActivities}): _userGrowthData = userGrowthData,_revenueData = revenueData,_recentActivities = recentActivities;
  factory _DashboardStats.fromJson(Map<String, dynamic> json) => _$DashboardStatsFromJson(json);

@override final  int totalUsers;
@override final  int activeUsers;
@override final  int totalRevenue;
@override final  double growthRate;
 final  List<ChartData> _userGrowthData;
@override List<ChartData> get userGrowthData {
  if (_userGrowthData is EqualUnmodifiableListView) return _userGrowthData;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_userGrowthData);
}

 final  List<ChartData> _revenueData;
@override List<ChartData> get revenueData {
  if (_revenueData is EqualUnmodifiableListView) return _revenueData;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_revenueData);
}

 final  List<ActivityItem> _recentActivities;
@override List<ActivityItem> get recentActivities {
  if (_recentActivities is EqualUnmodifiableListView) return _recentActivities;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_recentActivities);
}


/// Create a copy of DashboardStats
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DashboardStatsCopyWith<_DashboardStats> get copyWith => __$DashboardStatsCopyWithImpl<_DashboardStats>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DashboardStatsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DashboardStats&&(identical(other.totalUsers, totalUsers) || other.totalUsers == totalUsers)&&(identical(other.activeUsers, activeUsers) || other.activeUsers == activeUsers)&&(identical(other.totalRevenue, totalRevenue) || other.totalRevenue == totalRevenue)&&(identical(other.growthRate, growthRate) || other.growthRate == growthRate)&&const DeepCollectionEquality().equals(other._userGrowthData, _userGrowthData)&&const DeepCollectionEquality().equals(other._revenueData, _revenueData)&&const DeepCollectionEquality().equals(other._recentActivities, _recentActivities));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totalUsers,activeUsers,totalRevenue,growthRate,const DeepCollectionEquality().hash(_userGrowthData),const DeepCollectionEquality().hash(_revenueData),const DeepCollectionEquality().hash(_recentActivities));

@override
String toString() {
  return 'DashboardStats(totalUsers: $totalUsers, activeUsers: $activeUsers, totalRevenue: $totalRevenue, growthRate: $growthRate, userGrowthData: $userGrowthData, revenueData: $revenueData, recentActivities: $recentActivities)';
}


}

/// @nodoc
abstract mixin class _$DashboardStatsCopyWith<$Res> implements $DashboardStatsCopyWith<$Res> {
  factory _$DashboardStatsCopyWith(_DashboardStats value, $Res Function(_DashboardStats) _then) = __$DashboardStatsCopyWithImpl;
@override @useResult
$Res call({
 int totalUsers, int activeUsers, int totalRevenue, double growthRate, List<ChartData> userGrowthData, List<ChartData> revenueData, List<ActivityItem> recentActivities
});




}
/// @nodoc
class __$DashboardStatsCopyWithImpl<$Res>
    implements _$DashboardStatsCopyWith<$Res> {
  __$DashboardStatsCopyWithImpl(this._self, this._then);

  final _DashboardStats _self;
  final $Res Function(_DashboardStats) _then;

/// Create a copy of DashboardStats
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? totalUsers = null,Object? activeUsers = null,Object? totalRevenue = null,Object? growthRate = null,Object? userGrowthData = null,Object? revenueData = null,Object? recentActivities = null,}) {
  return _then(_DashboardStats(
totalUsers: null == totalUsers ? _self.totalUsers : totalUsers // ignore: cast_nullable_to_non_nullable
as int,activeUsers: null == activeUsers ? _self.activeUsers : activeUsers // ignore: cast_nullable_to_non_nullable
as int,totalRevenue: null == totalRevenue ? _self.totalRevenue : totalRevenue // ignore: cast_nullable_to_non_nullable
as int,growthRate: null == growthRate ? _self.growthRate : growthRate // ignore: cast_nullable_to_non_nullable
as double,userGrowthData: null == userGrowthData ? _self._userGrowthData : userGrowthData // ignore: cast_nullable_to_non_nullable
as List<ChartData>,revenueData: null == revenueData ? _self._revenueData : revenueData // ignore: cast_nullable_to_non_nullable
as List<ChartData>,recentActivities: null == recentActivities ? _self._recentActivities : recentActivities // ignore: cast_nullable_to_non_nullable
as List<ActivityItem>,
  ));
}


}


/// @nodoc
mixin _$ChartData {

 String get label; double get value; String? get color;
/// Create a copy of ChartData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChartDataCopyWith<ChartData> get copyWith => _$ChartDataCopyWithImpl<ChartData>(this as ChartData, _$identity);

  /// Serializes this ChartData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChartData&&(identical(other.label, label) || other.label == label)&&(identical(other.value, value) || other.value == value)&&(identical(other.color, color) || other.color == color));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,label,value,color);

@override
String toString() {
  return 'ChartData(label: $label, value: $value, color: $color)';
}


}

/// @nodoc
abstract mixin class $ChartDataCopyWith<$Res>  {
  factory $ChartDataCopyWith(ChartData value, $Res Function(ChartData) _then) = _$ChartDataCopyWithImpl;
@useResult
$Res call({
 String label, double value, String? color
});




}
/// @nodoc
class _$ChartDataCopyWithImpl<$Res>
    implements $ChartDataCopyWith<$Res> {
  _$ChartDataCopyWithImpl(this._self, this._then);

  final ChartData _self;
  final $Res Function(ChartData) _then;

/// Create a copy of ChartData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? label = null,Object? value = null,Object? color = freezed,}) {
  return _then(_self.copyWith(
label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as double,color: freezed == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ChartData].
extension ChartDataPatterns on ChartData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChartData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChartData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChartData value)  $default,){
final _that = this;
switch (_that) {
case _ChartData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChartData value)?  $default,){
final _that = this;
switch (_that) {
case _ChartData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String label,  double value,  String? color)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChartData() when $default != null:
return $default(_that.label,_that.value,_that.color);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String label,  double value,  String? color)  $default,) {final _that = this;
switch (_that) {
case _ChartData():
return $default(_that.label,_that.value,_that.color);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String label,  double value,  String? color)?  $default,) {final _that = this;
switch (_that) {
case _ChartData() when $default != null:
return $default(_that.label,_that.value,_that.color);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ChartData implements ChartData {
  const _ChartData({required this.label, required this.value, this.color});
  factory _ChartData.fromJson(Map<String, dynamic> json) => _$ChartDataFromJson(json);

@override final  String label;
@override final  double value;
@override final  String? color;

/// Create a copy of ChartData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChartDataCopyWith<_ChartData> get copyWith => __$ChartDataCopyWithImpl<_ChartData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChartDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChartData&&(identical(other.label, label) || other.label == label)&&(identical(other.value, value) || other.value == value)&&(identical(other.color, color) || other.color == color));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,label,value,color);

@override
String toString() {
  return 'ChartData(label: $label, value: $value, color: $color)';
}


}

/// @nodoc
abstract mixin class _$ChartDataCopyWith<$Res> implements $ChartDataCopyWith<$Res> {
  factory _$ChartDataCopyWith(_ChartData value, $Res Function(_ChartData) _then) = __$ChartDataCopyWithImpl;
@override @useResult
$Res call({
 String label, double value, String? color
});




}
/// @nodoc
class __$ChartDataCopyWithImpl<$Res>
    implements _$ChartDataCopyWith<$Res> {
  __$ChartDataCopyWithImpl(this._self, this._then);

  final _ChartData _self;
  final $Res Function(_ChartData) _then;

/// Create a copy of ChartData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? label = null,Object? value = null,Object? color = freezed,}) {
  return _then(_ChartData(
label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as double,color: freezed == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$ActivityItem {

 String get id; String get description; String get userId; String get userName; DateTime get timestamp; String get type;
/// Create a copy of ActivityItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ActivityItemCopyWith<ActivityItem> get copyWith => _$ActivityItemCopyWithImpl<ActivityItem>(this as ActivityItem, _$identity);

  /// Serializes this ActivityItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ActivityItem&&(identical(other.id, id) || other.id == id)&&(identical(other.description, description) || other.description == description)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.userName, userName) || other.userName == userName)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,description,userId,userName,timestamp,type);

@override
String toString() {
  return 'ActivityItem(id: $id, description: $description, userId: $userId, userName: $userName, timestamp: $timestamp, type: $type)';
}


}

/// @nodoc
abstract mixin class $ActivityItemCopyWith<$Res>  {
  factory $ActivityItemCopyWith(ActivityItem value, $Res Function(ActivityItem) _then) = _$ActivityItemCopyWithImpl;
@useResult
$Res call({
 String id, String description, String userId, String userName, DateTime timestamp, String type
});




}
/// @nodoc
class _$ActivityItemCopyWithImpl<$Res>
    implements $ActivityItemCopyWith<$Res> {
  _$ActivityItemCopyWithImpl(this._self, this._then);

  final ActivityItem _self;
  final $Res Function(ActivityItem) _then;

/// Create a copy of ActivityItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? description = null,Object? userId = null,Object? userName = null,Object? timestamp = null,Object? type = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,userName: null == userName ? _self.userName : userName // ignore: cast_nullable_to_non_nullable
as String,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as DateTime,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ActivityItem].
extension ActivityItemPatterns on ActivityItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ActivityItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ActivityItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ActivityItem value)  $default,){
final _that = this;
switch (_that) {
case _ActivityItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ActivityItem value)?  $default,){
final _that = this;
switch (_that) {
case _ActivityItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String description,  String userId,  String userName,  DateTime timestamp,  String type)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ActivityItem() when $default != null:
return $default(_that.id,_that.description,_that.userId,_that.userName,_that.timestamp,_that.type);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String description,  String userId,  String userName,  DateTime timestamp,  String type)  $default,) {final _that = this;
switch (_that) {
case _ActivityItem():
return $default(_that.id,_that.description,_that.userId,_that.userName,_that.timestamp,_that.type);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String description,  String userId,  String userName,  DateTime timestamp,  String type)?  $default,) {final _that = this;
switch (_that) {
case _ActivityItem() when $default != null:
return $default(_that.id,_that.description,_that.userId,_that.userName,_that.timestamp,_that.type);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ActivityItem implements ActivityItem {
  const _ActivityItem({required this.id, required this.description, required this.userId, required this.userName, required this.timestamp, required this.type});
  factory _ActivityItem.fromJson(Map<String, dynamic> json) => _$ActivityItemFromJson(json);

@override final  String id;
@override final  String description;
@override final  String userId;
@override final  String userName;
@override final  DateTime timestamp;
@override final  String type;

/// Create a copy of ActivityItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ActivityItemCopyWith<_ActivityItem> get copyWith => __$ActivityItemCopyWithImpl<_ActivityItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ActivityItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ActivityItem&&(identical(other.id, id) || other.id == id)&&(identical(other.description, description) || other.description == description)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.userName, userName) || other.userName == userName)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,description,userId,userName,timestamp,type);

@override
String toString() {
  return 'ActivityItem(id: $id, description: $description, userId: $userId, userName: $userName, timestamp: $timestamp, type: $type)';
}


}

/// @nodoc
abstract mixin class _$ActivityItemCopyWith<$Res> implements $ActivityItemCopyWith<$Res> {
  factory _$ActivityItemCopyWith(_ActivityItem value, $Res Function(_ActivityItem) _then) = __$ActivityItemCopyWithImpl;
@override @useResult
$Res call({
 String id, String description, String userId, String userName, DateTime timestamp, String type
});




}
/// @nodoc
class __$ActivityItemCopyWithImpl<$Res>
    implements _$ActivityItemCopyWith<$Res> {
  __$ActivityItemCopyWithImpl(this._self, this._then);

  final _ActivityItem _self;
  final $Res Function(_ActivityItem) _then;

/// Create a copy of ActivityItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? description = null,Object? userId = null,Object? userName = null,Object? timestamp = null,Object? type = null,}) {
  return _then(_ActivityItem(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,userName: null == userName ? _self.userName : userName // ignore: cast_nullable_to_non_nullable
as String,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as DateTime,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
