// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'earnings_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EarningsModel {

 int get status; String get msg; EarningsData? get data; dynamic get errors;
/// Create a copy of EarningsModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EarningsModelCopyWith<EarningsModel> get copyWith => _$EarningsModelCopyWithImpl<EarningsModel>(this as EarningsModel, _$identity);

  /// Serializes this EarningsModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EarningsModel&&(identical(other.status, status) || other.status == status)&&(identical(other.msg, msg) || other.msg == msg)&&(identical(other.data, data) || other.data == data)&&const DeepCollectionEquality().equals(other.errors, errors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,msg,data,const DeepCollectionEquality().hash(errors));

@override
String toString() {
  return 'EarningsModel(status: $status, msg: $msg, data: $data, errors: $errors)';
}


}

/// @nodoc
abstract mixin class $EarningsModelCopyWith<$Res>  {
  factory $EarningsModelCopyWith(EarningsModel value, $Res Function(EarningsModel) _then) = _$EarningsModelCopyWithImpl;
@useResult
$Res call({
 int status, String msg, EarningsData? data, dynamic errors
});


$EarningsDataCopyWith<$Res>? get data;

}
/// @nodoc
class _$EarningsModelCopyWithImpl<$Res>
    implements $EarningsModelCopyWith<$Res> {
  _$EarningsModelCopyWithImpl(this._self, this._then);

  final EarningsModel _self;
  final $Res Function(EarningsModel) _then;

/// Create a copy of EarningsModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? msg = null,Object? data = freezed,Object? errors = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int,msg: null == msg ? _self.msg : msg // ignore: cast_nullable_to_non_nullable
as String,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as EarningsData?,errors: freezed == errors ? _self.errors : errors // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}
/// Create a copy of EarningsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EarningsDataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $EarningsDataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [EarningsModel].
extension EarningsModelPatterns on EarningsModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EarningsModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EarningsModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EarningsModel value)  $default,){
final _that = this;
switch (_that) {
case _EarningsModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EarningsModel value)?  $default,){
final _that = this;
switch (_that) {
case _EarningsModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int status,  String msg,  EarningsData? data,  dynamic errors)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EarningsModel() when $default != null:
return $default(_that.status,_that.msg,_that.data,_that.errors);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int status,  String msg,  EarningsData? data,  dynamic errors)  $default,) {final _that = this;
switch (_that) {
case _EarningsModel():
return $default(_that.status,_that.msg,_that.data,_that.errors);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int status,  String msg,  EarningsData? data,  dynamic errors)?  $default,) {final _that = this;
switch (_that) {
case _EarningsModel() when $default != null:
return $default(_that.status,_that.msg,_that.data,_that.errors);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EarningsModel implements EarningsModel {
  const _EarningsModel({required this.status, required this.msg, this.data, this.errors});
  factory _EarningsModel.fromJson(Map<String, dynamic> json) => _$EarningsModelFromJson(json);

@override final  int status;
@override final  String msg;
@override final  EarningsData? data;
@override final  dynamic errors;

/// Create a copy of EarningsModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EarningsModelCopyWith<_EarningsModel> get copyWith => __$EarningsModelCopyWithImpl<_EarningsModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EarningsModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EarningsModel&&(identical(other.status, status) || other.status == status)&&(identical(other.msg, msg) || other.msg == msg)&&(identical(other.data, data) || other.data == data)&&const DeepCollectionEquality().equals(other.errors, errors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,msg,data,const DeepCollectionEquality().hash(errors));

@override
String toString() {
  return 'EarningsModel(status: $status, msg: $msg, data: $data, errors: $errors)';
}


}

/// @nodoc
abstract mixin class _$EarningsModelCopyWith<$Res> implements $EarningsModelCopyWith<$Res> {
  factory _$EarningsModelCopyWith(_EarningsModel value, $Res Function(_EarningsModel) _then) = __$EarningsModelCopyWithImpl;
@override @useResult
$Res call({
 int status, String msg, EarningsData? data, dynamic errors
});


@override $EarningsDataCopyWith<$Res>? get data;

}
/// @nodoc
class __$EarningsModelCopyWithImpl<$Res>
    implements _$EarningsModelCopyWith<$Res> {
  __$EarningsModelCopyWithImpl(this._self, this._then);

  final _EarningsModel _self;
  final $Res Function(_EarningsModel) _then;

/// Create a copy of EarningsModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? msg = null,Object? data = freezed,Object? errors = freezed,}) {
  return _then(_EarningsModel(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int,msg: null == msg ? _self.msg : msg // ignore: cast_nullable_to_non_nullable
as String,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as EarningsData?,errors: freezed == errors ? _self.errors : errors // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

/// Create a copy of EarningsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EarningsDataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $EarningsDataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$EarningsData {

@JsonKey(name: 'REPORTED_EPS') ReportedEps? get reportedEps;@JsonKey(name: 'REPORTED_REVENUE') ReportedRevenue? get reportedRevenue;
/// Create a copy of EarningsData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EarningsDataCopyWith<EarningsData> get copyWith => _$EarningsDataCopyWithImpl<EarningsData>(this as EarningsData, _$identity);

  /// Serializes this EarningsData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EarningsData&&(identical(other.reportedEps, reportedEps) || other.reportedEps == reportedEps)&&(identical(other.reportedRevenue, reportedRevenue) || other.reportedRevenue == reportedRevenue));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,reportedEps,reportedRevenue);

@override
String toString() {
  return 'EarningsData(reportedEps: $reportedEps, reportedRevenue: $reportedRevenue)';
}


}

/// @nodoc
abstract mixin class $EarningsDataCopyWith<$Res>  {
  factory $EarningsDataCopyWith(EarningsData value, $Res Function(EarningsData) _then) = _$EarningsDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'REPORTED_EPS') ReportedEps? reportedEps,@JsonKey(name: 'REPORTED_REVENUE') ReportedRevenue? reportedRevenue
});


$ReportedEpsCopyWith<$Res>? get reportedEps;$ReportedRevenueCopyWith<$Res>? get reportedRevenue;

}
/// @nodoc
class _$EarningsDataCopyWithImpl<$Res>
    implements $EarningsDataCopyWith<$Res> {
  _$EarningsDataCopyWithImpl(this._self, this._then);

  final EarningsData _self;
  final $Res Function(EarningsData) _then;

/// Create a copy of EarningsData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? reportedEps = freezed,Object? reportedRevenue = freezed,}) {
  return _then(_self.copyWith(
reportedEps: freezed == reportedEps ? _self.reportedEps : reportedEps // ignore: cast_nullable_to_non_nullable
as ReportedEps?,reportedRevenue: freezed == reportedRevenue ? _self.reportedRevenue : reportedRevenue // ignore: cast_nullable_to_non_nullable
as ReportedRevenue?,
  ));
}
/// Create a copy of EarningsData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReportedEpsCopyWith<$Res>? get reportedEps {
    if (_self.reportedEps == null) {
    return null;
  }

  return $ReportedEpsCopyWith<$Res>(_self.reportedEps!, (value) {
    return _then(_self.copyWith(reportedEps: value));
  });
}/// Create a copy of EarningsData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReportedRevenueCopyWith<$Res>? get reportedRevenue {
    if (_self.reportedRevenue == null) {
    return null;
  }

  return $ReportedRevenueCopyWith<$Res>(_self.reportedRevenue!, (value) {
    return _then(_self.copyWith(reportedRevenue: value));
  });
}
}


/// Adds pattern-matching-related methods to [EarningsData].
extension EarningsDataPatterns on EarningsData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EarningsData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EarningsData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EarningsData value)  $default,){
final _that = this;
switch (_that) {
case _EarningsData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EarningsData value)?  $default,){
final _that = this;
switch (_that) {
case _EarningsData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'REPORTED_EPS')  ReportedEps? reportedEps, @JsonKey(name: 'REPORTED_REVENUE')  ReportedRevenue? reportedRevenue)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EarningsData() when $default != null:
return $default(_that.reportedEps,_that.reportedRevenue);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'REPORTED_EPS')  ReportedEps? reportedEps, @JsonKey(name: 'REPORTED_REVENUE')  ReportedRevenue? reportedRevenue)  $default,) {final _that = this;
switch (_that) {
case _EarningsData():
return $default(_that.reportedEps,_that.reportedRevenue);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'REPORTED_EPS')  ReportedEps? reportedEps, @JsonKey(name: 'REPORTED_REVENUE')  ReportedRevenue? reportedRevenue)?  $default,) {final _that = this;
switch (_that) {
case _EarningsData() when $default != null:
return $default(_that.reportedEps,_that.reportedRevenue);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EarningsData implements EarningsData {
  const _EarningsData({@JsonKey(name: 'REPORTED_EPS') this.reportedEps, @JsonKey(name: 'REPORTED_REVENUE') this.reportedRevenue});
  factory _EarningsData.fromJson(Map<String, dynamic> json) => _$EarningsDataFromJson(json);

@override@JsonKey(name: 'REPORTED_EPS') final  ReportedEps? reportedEps;
@override@JsonKey(name: 'REPORTED_REVENUE') final  ReportedRevenue? reportedRevenue;

/// Create a copy of EarningsData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EarningsDataCopyWith<_EarningsData> get copyWith => __$EarningsDataCopyWithImpl<_EarningsData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EarningsDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EarningsData&&(identical(other.reportedEps, reportedEps) || other.reportedEps == reportedEps)&&(identical(other.reportedRevenue, reportedRevenue) || other.reportedRevenue == reportedRevenue));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,reportedEps,reportedRevenue);

@override
String toString() {
  return 'EarningsData(reportedEps: $reportedEps, reportedRevenue: $reportedRevenue)';
}


}

/// @nodoc
abstract mixin class _$EarningsDataCopyWith<$Res> implements $EarningsDataCopyWith<$Res> {
  factory _$EarningsDataCopyWith(_EarningsData value, $Res Function(_EarningsData) _then) = __$EarningsDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'REPORTED_EPS') ReportedEps? reportedEps,@JsonKey(name: 'REPORTED_REVENUE') ReportedRevenue? reportedRevenue
});


@override $ReportedEpsCopyWith<$Res>? get reportedEps;@override $ReportedRevenueCopyWith<$Res>? get reportedRevenue;

}
/// @nodoc
class __$EarningsDataCopyWithImpl<$Res>
    implements _$EarningsDataCopyWith<$Res> {
  __$EarningsDataCopyWithImpl(this._self, this._then);

  final _EarningsData _self;
  final $Res Function(_EarningsData) _then;

/// Create a copy of EarningsData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? reportedEps = freezed,Object? reportedRevenue = freezed,}) {
  return _then(_EarningsData(
reportedEps: freezed == reportedEps ? _self.reportedEps : reportedEps // ignore: cast_nullable_to_non_nullable
as ReportedEps?,reportedRevenue: freezed == reportedRevenue ? _self.reportedRevenue : reportedRevenue // ignore: cast_nullable_to_non_nullable
as ReportedRevenue?,
  ));
}

/// Create a copy of EarningsData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReportedEpsCopyWith<$Res>? get reportedEps {
    if (_self.reportedEps == null) {
    return null;
  }

  return $ReportedEpsCopyWith<$Res>(_self.reportedEps!, (value) {
    return _then(_self.copyWith(reportedEps: value));
  });
}/// Create a copy of EarningsData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReportedRevenueCopyWith<$Res>? get reportedRevenue {
    if (_self.reportedRevenue == null) {
    return null;
  }

  return $ReportedRevenueCopyWith<$Res>(_self.reportedRevenue!, (value) {
    return _then(_self.copyWith(reportedRevenue: value));
  });
}
}


/// @nodoc
mixin _$ReportedEps {

@JsonKey(name: 'REPORTED_EPS') double? get reportedEps;@JsonKey(name: 'Consensus_EPS_Forecast') double? get consensusEpsForecast;@JsonKey(name: 'EPS_Surprise') double? get epsSurprise;@JsonKey(name: 'Last_Earnings_Announcement') String? get lastEarningsAnnouncement;
/// Create a copy of ReportedEps
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReportedEpsCopyWith<ReportedEps> get copyWith => _$ReportedEpsCopyWithImpl<ReportedEps>(this as ReportedEps, _$identity);

  /// Serializes this ReportedEps to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReportedEps&&(identical(other.reportedEps, reportedEps) || other.reportedEps == reportedEps)&&(identical(other.consensusEpsForecast, consensusEpsForecast) || other.consensusEpsForecast == consensusEpsForecast)&&(identical(other.epsSurprise, epsSurprise) || other.epsSurprise == epsSurprise)&&(identical(other.lastEarningsAnnouncement, lastEarningsAnnouncement) || other.lastEarningsAnnouncement == lastEarningsAnnouncement));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,reportedEps,consensusEpsForecast,epsSurprise,lastEarningsAnnouncement);

@override
String toString() {
  return 'ReportedEps(reportedEps: $reportedEps, consensusEpsForecast: $consensusEpsForecast, epsSurprise: $epsSurprise, lastEarningsAnnouncement: $lastEarningsAnnouncement)';
}


}

/// @nodoc
abstract mixin class $ReportedEpsCopyWith<$Res>  {
  factory $ReportedEpsCopyWith(ReportedEps value, $Res Function(ReportedEps) _then) = _$ReportedEpsCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'REPORTED_EPS') double? reportedEps,@JsonKey(name: 'Consensus_EPS_Forecast') double? consensusEpsForecast,@JsonKey(name: 'EPS_Surprise') double? epsSurprise,@JsonKey(name: 'Last_Earnings_Announcement') String? lastEarningsAnnouncement
});




}
/// @nodoc
class _$ReportedEpsCopyWithImpl<$Res>
    implements $ReportedEpsCopyWith<$Res> {
  _$ReportedEpsCopyWithImpl(this._self, this._then);

  final ReportedEps _self;
  final $Res Function(ReportedEps) _then;

/// Create a copy of ReportedEps
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? reportedEps = freezed,Object? consensusEpsForecast = freezed,Object? epsSurprise = freezed,Object? lastEarningsAnnouncement = freezed,}) {
  return _then(_self.copyWith(
reportedEps: freezed == reportedEps ? _self.reportedEps : reportedEps // ignore: cast_nullable_to_non_nullable
as double?,consensusEpsForecast: freezed == consensusEpsForecast ? _self.consensusEpsForecast : consensusEpsForecast // ignore: cast_nullable_to_non_nullable
as double?,epsSurprise: freezed == epsSurprise ? _self.epsSurprise : epsSurprise // ignore: cast_nullable_to_non_nullable
as double?,lastEarningsAnnouncement: freezed == lastEarningsAnnouncement ? _self.lastEarningsAnnouncement : lastEarningsAnnouncement // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ReportedEps].
extension ReportedEpsPatterns on ReportedEps {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReportedEps value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReportedEps() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReportedEps value)  $default,){
final _that = this;
switch (_that) {
case _ReportedEps():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReportedEps value)?  $default,){
final _that = this;
switch (_that) {
case _ReportedEps() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'REPORTED_EPS')  double? reportedEps, @JsonKey(name: 'Consensus_EPS_Forecast')  double? consensusEpsForecast, @JsonKey(name: 'EPS_Surprise')  double? epsSurprise, @JsonKey(name: 'Last_Earnings_Announcement')  String? lastEarningsAnnouncement)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReportedEps() when $default != null:
return $default(_that.reportedEps,_that.consensusEpsForecast,_that.epsSurprise,_that.lastEarningsAnnouncement);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'REPORTED_EPS')  double? reportedEps, @JsonKey(name: 'Consensus_EPS_Forecast')  double? consensusEpsForecast, @JsonKey(name: 'EPS_Surprise')  double? epsSurprise, @JsonKey(name: 'Last_Earnings_Announcement')  String? lastEarningsAnnouncement)  $default,) {final _that = this;
switch (_that) {
case _ReportedEps():
return $default(_that.reportedEps,_that.consensusEpsForecast,_that.epsSurprise,_that.lastEarningsAnnouncement);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'REPORTED_EPS')  double? reportedEps, @JsonKey(name: 'Consensus_EPS_Forecast')  double? consensusEpsForecast, @JsonKey(name: 'EPS_Surprise')  double? epsSurprise, @JsonKey(name: 'Last_Earnings_Announcement')  String? lastEarningsAnnouncement)?  $default,) {final _that = this;
switch (_that) {
case _ReportedEps() when $default != null:
return $default(_that.reportedEps,_that.consensusEpsForecast,_that.epsSurprise,_that.lastEarningsAnnouncement);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReportedEps implements ReportedEps {
  const _ReportedEps({@JsonKey(name: 'REPORTED_EPS') this.reportedEps, @JsonKey(name: 'Consensus_EPS_Forecast') this.consensusEpsForecast, @JsonKey(name: 'EPS_Surprise') this.epsSurprise, @JsonKey(name: 'Last_Earnings_Announcement') this.lastEarningsAnnouncement});
  factory _ReportedEps.fromJson(Map<String, dynamic> json) => _$ReportedEpsFromJson(json);

@override@JsonKey(name: 'REPORTED_EPS') final  double? reportedEps;
@override@JsonKey(name: 'Consensus_EPS_Forecast') final  double? consensusEpsForecast;
@override@JsonKey(name: 'EPS_Surprise') final  double? epsSurprise;
@override@JsonKey(name: 'Last_Earnings_Announcement') final  String? lastEarningsAnnouncement;

/// Create a copy of ReportedEps
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReportedEpsCopyWith<_ReportedEps> get copyWith => __$ReportedEpsCopyWithImpl<_ReportedEps>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReportedEpsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReportedEps&&(identical(other.reportedEps, reportedEps) || other.reportedEps == reportedEps)&&(identical(other.consensusEpsForecast, consensusEpsForecast) || other.consensusEpsForecast == consensusEpsForecast)&&(identical(other.epsSurprise, epsSurprise) || other.epsSurprise == epsSurprise)&&(identical(other.lastEarningsAnnouncement, lastEarningsAnnouncement) || other.lastEarningsAnnouncement == lastEarningsAnnouncement));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,reportedEps,consensusEpsForecast,epsSurprise,lastEarningsAnnouncement);

@override
String toString() {
  return 'ReportedEps(reportedEps: $reportedEps, consensusEpsForecast: $consensusEpsForecast, epsSurprise: $epsSurprise, lastEarningsAnnouncement: $lastEarningsAnnouncement)';
}


}

/// @nodoc
abstract mixin class _$ReportedEpsCopyWith<$Res> implements $ReportedEpsCopyWith<$Res> {
  factory _$ReportedEpsCopyWith(_ReportedEps value, $Res Function(_ReportedEps) _then) = __$ReportedEpsCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'REPORTED_EPS') double? reportedEps,@JsonKey(name: 'Consensus_EPS_Forecast') double? consensusEpsForecast,@JsonKey(name: 'EPS_Surprise') double? epsSurprise,@JsonKey(name: 'Last_Earnings_Announcement') String? lastEarningsAnnouncement
});




}
/// @nodoc
class __$ReportedEpsCopyWithImpl<$Res>
    implements _$ReportedEpsCopyWith<$Res> {
  __$ReportedEpsCopyWithImpl(this._self, this._then);

  final _ReportedEps _self;
  final $Res Function(_ReportedEps) _then;

/// Create a copy of ReportedEps
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? reportedEps = freezed,Object? consensusEpsForecast = freezed,Object? epsSurprise = freezed,Object? lastEarningsAnnouncement = freezed,}) {
  return _then(_ReportedEps(
reportedEps: freezed == reportedEps ? _self.reportedEps : reportedEps // ignore: cast_nullable_to_non_nullable
as double?,consensusEpsForecast: freezed == consensusEpsForecast ? _self.consensusEpsForecast : consensusEpsForecast // ignore: cast_nullable_to_non_nullable
as double?,epsSurprise: freezed == epsSurprise ? _self.epsSurprise : epsSurprise // ignore: cast_nullable_to_non_nullable
as double?,lastEarningsAnnouncement: freezed == lastEarningsAnnouncement ? _self.lastEarningsAnnouncement : lastEarningsAnnouncement // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$ReportedRevenue {

@JsonKey(name: 'Total_Revenue') double? get totalRevenue;
/// Create a copy of ReportedRevenue
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReportedRevenueCopyWith<ReportedRevenue> get copyWith => _$ReportedRevenueCopyWithImpl<ReportedRevenue>(this as ReportedRevenue, _$identity);

  /// Serializes this ReportedRevenue to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReportedRevenue&&(identical(other.totalRevenue, totalRevenue) || other.totalRevenue == totalRevenue));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totalRevenue);

@override
String toString() {
  return 'ReportedRevenue(totalRevenue: $totalRevenue)';
}


}

/// @nodoc
abstract mixin class $ReportedRevenueCopyWith<$Res>  {
  factory $ReportedRevenueCopyWith(ReportedRevenue value, $Res Function(ReportedRevenue) _then) = _$ReportedRevenueCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'Total_Revenue') double? totalRevenue
});




}
/// @nodoc
class _$ReportedRevenueCopyWithImpl<$Res>
    implements $ReportedRevenueCopyWith<$Res> {
  _$ReportedRevenueCopyWithImpl(this._self, this._then);

  final ReportedRevenue _self;
  final $Res Function(ReportedRevenue) _then;

/// Create a copy of ReportedRevenue
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? totalRevenue = freezed,}) {
  return _then(_self.copyWith(
totalRevenue: freezed == totalRevenue ? _self.totalRevenue : totalRevenue // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

}


/// Adds pattern-matching-related methods to [ReportedRevenue].
extension ReportedRevenuePatterns on ReportedRevenue {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReportedRevenue value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReportedRevenue() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReportedRevenue value)  $default,){
final _that = this;
switch (_that) {
case _ReportedRevenue():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReportedRevenue value)?  $default,){
final _that = this;
switch (_that) {
case _ReportedRevenue() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'Total_Revenue')  double? totalRevenue)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReportedRevenue() when $default != null:
return $default(_that.totalRevenue);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'Total_Revenue')  double? totalRevenue)  $default,) {final _that = this;
switch (_that) {
case _ReportedRevenue():
return $default(_that.totalRevenue);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'Total_Revenue')  double? totalRevenue)?  $default,) {final _that = this;
switch (_that) {
case _ReportedRevenue() when $default != null:
return $default(_that.totalRevenue);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReportedRevenue implements ReportedRevenue {
  const _ReportedRevenue({@JsonKey(name: 'Total_Revenue') this.totalRevenue});
  factory _ReportedRevenue.fromJson(Map<String, dynamic> json) => _$ReportedRevenueFromJson(json);

@override@JsonKey(name: 'Total_Revenue') final  double? totalRevenue;

/// Create a copy of ReportedRevenue
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReportedRevenueCopyWith<_ReportedRevenue> get copyWith => __$ReportedRevenueCopyWithImpl<_ReportedRevenue>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReportedRevenueToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReportedRevenue&&(identical(other.totalRevenue, totalRevenue) || other.totalRevenue == totalRevenue));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totalRevenue);

@override
String toString() {
  return 'ReportedRevenue(totalRevenue: $totalRevenue)';
}


}

/// @nodoc
abstract mixin class _$ReportedRevenueCopyWith<$Res> implements $ReportedRevenueCopyWith<$Res> {
  factory _$ReportedRevenueCopyWith(_ReportedRevenue value, $Res Function(_ReportedRevenue) _then) = __$ReportedRevenueCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'Total_Revenue') double? totalRevenue
});




}
/// @nodoc
class __$ReportedRevenueCopyWithImpl<$Res>
    implements _$ReportedRevenueCopyWith<$Res> {
  __$ReportedRevenueCopyWithImpl(this._self, this._then);

  final _ReportedRevenue _self;
  final $Res Function(_ReportedRevenue) _then;

/// Create a copy of ReportedRevenue
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? totalRevenue = freezed,}) {
  return _then(_ReportedRevenue(
totalRevenue: freezed == totalRevenue ? _self.totalRevenue : totalRevenue // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}

// dart format on
