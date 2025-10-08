// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'earning_report_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EarningReportsModel {

 int get status; String get msg; List<EarningReportData> get data; dynamic get errors;
/// Create a copy of EarningReportsModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EarningReportsModelCopyWith<EarningReportsModel> get copyWith => _$EarningReportsModelCopyWithImpl<EarningReportsModel>(this as EarningReportsModel, _$identity);

  /// Serializes this EarningReportsModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EarningReportsModel&&(identical(other.status, status) || other.status == status)&&(identical(other.msg, msg) || other.msg == msg)&&const DeepCollectionEquality().equals(other.data, data)&&const DeepCollectionEquality().equals(other.errors, errors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,msg,const DeepCollectionEquality().hash(data),const DeepCollectionEquality().hash(errors));

@override
String toString() {
  return 'EarningReportsModel(status: $status, msg: $msg, data: $data, errors: $errors)';
}


}

/// @nodoc
abstract mixin class $EarningReportsModelCopyWith<$Res>  {
  factory $EarningReportsModelCopyWith(EarningReportsModel value, $Res Function(EarningReportsModel) _then) = _$EarningReportsModelCopyWithImpl;
@useResult
$Res call({
 int status, String msg, List<EarningReportData> data, dynamic errors
});




}
/// @nodoc
class _$EarningReportsModelCopyWithImpl<$Res>
    implements $EarningReportsModelCopyWith<$Res> {
  _$EarningReportsModelCopyWithImpl(this._self, this._then);

  final EarningReportsModel _self;
  final $Res Function(EarningReportsModel) _then;

/// Create a copy of EarningReportsModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? msg = null,Object? data = null,Object? errors = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int,msg: null == msg ? _self.msg : msg // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<EarningReportData>,errors: freezed == errors ? _self.errors : errors // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

}


/// Adds pattern-matching-related methods to [EarningReportsModel].
extension EarningReportsModelPatterns on EarningReportsModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EarningReportsModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EarningReportsModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EarningReportsModel value)  $default,){
final _that = this;
switch (_that) {
case _EarningReportsModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EarningReportsModel value)?  $default,){
final _that = this;
switch (_that) {
case _EarningReportsModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int status,  String msg,  List<EarningReportData> data,  dynamic errors)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EarningReportsModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int status,  String msg,  List<EarningReportData> data,  dynamic errors)  $default,) {final _that = this;
switch (_that) {
case _EarningReportsModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int status,  String msg,  List<EarningReportData> data,  dynamic errors)?  $default,) {final _that = this;
switch (_that) {
case _EarningReportsModel() when $default != null:
return $default(_that.status,_that.msg,_that.data,_that.errors);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EarningReportsModel implements EarningReportsModel {
  const _EarningReportsModel({required this.status, required this.msg, required final  List<EarningReportData> data, this.errors}): _data = data;
  factory _EarningReportsModel.fromJson(Map<String, dynamic> json) => _$EarningReportsModelFromJson(json);

@override final  int status;
@override final  String msg;
 final  List<EarningReportData> _data;
@override List<EarningReportData> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}

@override final  dynamic errors;

/// Create a copy of EarningReportsModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EarningReportsModelCopyWith<_EarningReportsModel> get copyWith => __$EarningReportsModelCopyWithImpl<_EarningReportsModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EarningReportsModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EarningReportsModel&&(identical(other.status, status) || other.status == status)&&(identical(other.msg, msg) || other.msg == msg)&&const DeepCollectionEquality().equals(other._data, _data)&&const DeepCollectionEquality().equals(other.errors, errors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,msg,const DeepCollectionEquality().hash(_data),const DeepCollectionEquality().hash(errors));

@override
String toString() {
  return 'EarningReportsModel(status: $status, msg: $msg, data: $data, errors: $errors)';
}


}

/// @nodoc
abstract mixin class _$EarningReportsModelCopyWith<$Res> implements $EarningReportsModelCopyWith<$Res> {
  factory _$EarningReportsModelCopyWith(_EarningReportsModel value, $Res Function(_EarningReportsModel) _then) = __$EarningReportsModelCopyWithImpl;
@override @useResult
$Res call({
 int status, String msg, List<EarningReportData> data, dynamic errors
});




}
/// @nodoc
class __$EarningReportsModelCopyWithImpl<$Res>
    implements _$EarningReportsModelCopyWith<$Res> {
  __$EarningReportsModelCopyWithImpl(this._self, this._then);

  final _EarningReportsModel _self;
  final $Res Function(_EarningReportsModel) _then;

/// Create a copy of EarningReportsModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? msg = null,Object? data = null,Object? errors = freezed,}) {
  return _then(_EarningReportsModel(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int,msg: null == msg ? _self.msg : msg // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<EarningReportData>,errors: freezed == errors ? _self.errors : errors // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}


}


/// @nodoc
mixin _$EarningReportData {

 String get period; double get growth; double get actual;@JsonKey(name: 'estimate_eps') double get estimateEps; double get surprise;@JsonKey(name: 'estimate_revenue') String get estimateRevenue;@JsonKey(name: 'stock_type') int get stockType;
/// Create a copy of EarningReportData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EarningReportDataCopyWith<EarningReportData> get copyWith => _$EarningReportDataCopyWithImpl<EarningReportData>(this as EarningReportData, _$identity);

  /// Serializes this EarningReportData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EarningReportData&&(identical(other.period, period) || other.period == period)&&(identical(other.growth, growth) || other.growth == growth)&&(identical(other.actual, actual) || other.actual == actual)&&(identical(other.estimateEps, estimateEps) || other.estimateEps == estimateEps)&&(identical(other.surprise, surprise) || other.surprise == surprise)&&(identical(other.estimateRevenue, estimateRevenue) || other.estimateRevenue == estimateRevenue)&&(identical(other.stockType, stockType) || other.stockType == stockType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,period,growth,actual,estimateEps,surprise,estimateRevenue,stockType);

@override
String toString() {
  return 'EarningReportData(period: $period, growth: $growth, actual: $actual, estimateEps: $estimateEps, surprise: $surprise, estimateRevenue: $estimateRevenue, stockType: $stockType)';
}


}

/// @nodoc
abstract mixin class $EarningReportDataCopyWith<$Res>  {
  factory $EarningReportDataCopyWith(EarningReportData value, $Res Function(EarningReportData) _then) = _$EarningReportDataCopyWithImpl;
@useResult
$Res call({
 String period, double growth, double actual,@JsonKey(name: 'estimate_eps') double estimateEps, double surprise,@JsonKey(name: 'estimate_revenue') String estimateRevenue,@JsonKey(name: 'stock_type') int stockType
});




}
/// @nodoc
class _$EarningReportDataCopyWithImpl<$Res>
    implements $EarningReportDataCopyWith<$Res> {
  _$EarningReportDataCopyWithImpl(this._self, this._then);

  final EarningReportData _self;
  final $Res Function(EarningReportData) _then;

/// Create a copy of EarningReportData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? period = null,Object? growth = null,Object? actual = null,Object? estimateEps = null,Object? surprise = null,Object? estimateRevenue = null,Object? stockType = null,}) {
  return _then(_self.copyWith(
period: null == period ? _self.period : period // ignore: cast_nullable_to_non_nullable
as String,growth: null == growth ? _self.growth : growth // ignore: cast_nullable_to_non_nullable
as double,actual: null == actual ? _self.actual : actual // ignore: cast_nullable_to_non_nullable
as double,estimateEps: null == estimateEps ? _self.estimateEps : estimateEps // ignore: cast_nullable_to_non_nullable
as double,surprise: null == surprise ? _self.surprise : surprise // ignore: cast_nullable_to_non_nullable
as double,estimateRevenue: null == estimateRevenue ? _self.estimateRevenue : estimateRevenue // ignore: cast_nullable_to_non_nullable
as String,stockType: null == stockType ? _self.stockType : stockType // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [EarningReportData].
extension EarningReportDataPatterns on EarningReportData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EarningReportData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EarningReportData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EarningReportData value)  $default,){
final _that = this;
switch (_that) {
case _EarningReportData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EarningReportData value)?  $default,){
final _that = this;
switch (_that) {
case _EarningReportData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String period,  double growth,  double actual, @JsonKey(name: 'estimate_eps')  double estimateEps,  double surprise, @JsonKey(name: 'estimate_revenue')  String estimateRevenue, @JsonKey(name: 'stock_type')  int stockType)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EarningReportData() when $default != null:
return $default(_that.period,_that.growth,_that.actual,_that.estimateEps,_that.surprise,_that.estimateRevenue,_that.stockType);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String period,  double growth,  double actual, @JsonKey(name: 'estimate_eps')  double estimateEps,  double surprise, @JsonKey(name: 'estimate_revenue')  String estimateRevenue, @JsonKey(name: 'stock_type')  int stockType)  $default,) {final _that = this;
switch (_that) {
case _EarningReportData():
return $default(_that.period,_that.growth,_that.actual,_that.estimateEps,_that.surprise,_that.estimateRevenue,_that.stockType);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String period,  double growth,  double actual, @JsonKey(name: 'estimate_eps')  double estimateEps,  double surprise, @JsonKey(name: 'estimate_revenue')  String estimateRevenue, @JsonKey(name: 'stock_type')  int stockType)?  $default,) {final _that = this;
switch (_that) {
case _EarningReportData() when $default != null:
return $default(_that.period,_that.growth,_that.actual,_that.estimateEps,_that.surprise,_that.estimateRevenue,_that.stockType);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EarningReportData implements EarningReportData {
  const _EarningReportData({required this.period, required this.growth, required this.actual, @JsonKey(name: 'estimate_eps') required this.estimateEps, required this.surprise, @JsonKey(name: 'estimate_revenue') required this.estimateRevenue, @JsonKey(name: 'stock_type') required this.stockType});
  factory _EarningReportData.fromJson(Map<String, dynamic> json) => _$EarningReportDataFromJson(json);

@override final  String period;
@override final  double growth;
@override final  double actual;
@override@JsonKey(name: 'estimate_eps') final  double estimateEps;
@override final  double surprise;
@override@JsonKey(name: 'estimate_revenue') final  String estimateRevenue;
@override@JsonKey(name: 'stock_type') final  int stockType;

/// Create a copy of EarningReportData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EarningReportDataCopyWith<_EarningReportData> get copyWith => __$EarningReportDataCopyWithImpl<_EarningReportData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EarningReportDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EarningReportData&&(identical(other.period, period) || other.period == period)&&(identical(other.growth, growth) || other.growth == growth)&&(identical(other.actual, actual) || other.actual == actual)&&(identical(other.estimateEps, estimateEps) || other.estimateEps == estimateEps)&&(identical(other.surprise, surprise) || other.surprise == surprise)&&(identical(other.estimateRevenue, estimateRevenue) || other.estimateRevenue == estimateRevenue)&&(identical(other.stockType, stockType) || other.stockType == stockType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,period,growth,actual,estimateEps,surprise,estimateRevenue,stockType);

@override
String toString() {
  return 'EarningReportData(period: $period, growth: $growth, actual: $actual, estimateEps: $estimateEps, surprise: $surprise, estimateRevenue: $estimateRevenue, stockType: $stockType)';
}


}

/// @nodoc
abstract mixin class _$EarningReportDataCopyWith<$Res> implements $EarningReportDataCopyWith<$Res> {
  factory _$EarningReportDataCopyWith(_EarningReportData value, $Res Function(_EarningReportData) _then) = __$EarningReportDataCopyWithImpl;
@override @useResult
$Res call({
 String period, double growth, double actual,@JsonKey(name: 'estimate_eps') double estimateEps, double surprise,@JsonKey(name: 'estimate_revenue') String estimateRevenue,@JsonKey(name: 'stock_type') int stockType
});




}
/// @nodoc
class __$EarningReportDataCopyWithImpl<$Res>
    implements _$EarningReportDataCopyWith<$Res> {
  __$EarningReportDataCopyWithImpl(this._self, this._then);

  final _EarningReportData _self;
  final $Res Function(_EarningReportData) _then;

/// Create a copy of EarningReportData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? period = null,Object? growth = null,Object? actual = null,Object? estimateEps = null,Object? surprise = null,Object? estimateRevenue = null,Object? stockType = null,}) {
  return _then(_EarningReportData(
period: null == period ? _self.period : period // ignore: cast_nullable_to_non_nullable
as String,growth: null == growth ? _self.growth : growth // ignore: cast_nullable_to_non_nullable
as double,actual: null == actual ? _self.actual : actual // ignore: cast_nullable_to_non_nullable
as double,estimateEps: null == estimateEps ? _self.estimateEps : estimateEps // ignore: cast_nullable_to_non_nullable
as double,surprise: null == surprise ? _self.surprise : surprise // ignore: cast_nullable_to_non_nullable
as double,estimateRevenue: null == estimateRevenue ? _self.estimateRevenue : estimateRevenue // ignore: cast_nullable_to_non_nullable
as String,stockType: null == stockType ? _self.stockType : stockType // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
