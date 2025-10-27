// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'price_performance_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PricePerformance {

 List<PricePerformanceData> get data; String? get msg; int? get status; dynamic get errors;
/// Create a copy of PricePerformance
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PricePerformanceCopyWith<PricePerformance> get copyWith => _$PricePerformanceCopyWithImpl<PricePerformance>(this as PricePerformance, _$identity);

  /// Serializes this PricePerformance to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PricePerformance&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.msg, msg) || other.msg == msg)&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.errors, errors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data),msg,status,const DeepCollectionEquality().hash(errors));

@override
String toString() {
  return 'PricePerformance(data: $data, msg: $msg, status: $status, errors: $errors)';
}


}

/// @nodoc
abstract mixin class $PricePerformanceCopyWith<$Res>  {
  factory $PricePerformanceCopyWith(PricePerformance value, $Res Function(PricePerformance) _then) = _$PricePerformanceCopyWithImpl;
@useResult
$Res call({
 List<PricePerformanceData> data, String? msg, int? status, dynamic errors
});




}
/// @nodoc
class _$PricePerformanceCopyWithImpl<$Res>
    implements $PricePerformanceCopyWith<$Res> {
  _$PricePerformanceCopyWithImpl(this._self, this._then);

  final PricePerformance _self;
  final $Res Function(PricePerformance) _then;

/// Create a copy of PricePerformance
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = null,Object? msg = freezed,Object? status = freezed,Object? errors = freezed,}) {
  return _then(_self.copyWith(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<PricePerformanceData>,msg: freezed == msg ? _self.msg : msg // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int?,errors: freezed == errors ? _self.errors : errors // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

}


/// Adds pattern-matching-related methods to [PricePerformance].
extension PricePerformancePatterns on PricePerformance {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PricePerformance value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PricePerformance() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PricePerformance value)  $default,){
final _that = this;
switch (_that) {
case _PricePerformance():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PricePerformance value)?  $default,){
final _that = this;
switch (_that) {
case _PricePerformance() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<PricePerformanceData> data,  String? msg,  int? status,  dynamic errors)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PricePerformance() when $default != null:
return $default(_that.data,_that.msg,_that.status,_that.errors);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<PricePerformanceData> data,  String? msg,  int? status,  dynamic errors)  $default,) {final _that = this;
switch (_that) {
case _PricePerformance():
return $default(_that.data,_that.msg,_that.status,_that.errors);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<PricePerformanceData> data,  String? msg,  int? status,  dynamic errors)?  $default,) {final _that = this;
switch (_that) {
case _PricePerformance() when $default != null:
return $default(_that.data,_that.msg,_that.status,_that.errors);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PricePerformance implements PricePerformance {
  const _PricePerformance({required final  List<PricePerformanceData> data, this.msg, this.status, this.errors}): _data = data;
  factory _PricePerformance.fromJson(Map<String, dynamic> json) => _$PricePerformanceFromJson(json);

 final  List<PricePerformanceData> _data;
@override List<PricePerformanceData> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}

@override final  String? msg;
@override final  int? status;
@override final  dynamic errors;

/// Create a copy of PricePerformance
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PricePerformanceCopyWith<_PricePerformance> get copyWith => __$PricePerformanceCopyWithImpl<_PricePerformance>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PricePerformanceToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PricePerformance&&const DeepCollectionEquality().equals(other._data, _data)&&(identical(other.msg, msg) || other.msg == msg)&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.errors, errors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_data),msg,status,const DeepCollectionEquality().hash(errors));

@override
String toString() {
  return 'PricePerformance(data: $data, msg: $msg, status: $status, errors: $errors)';
}


}

/// @nodoc
abstract mixin class _$PricePerformanceCopyWith<$Res> implements $PricePerformanceCopyWith<$Res> {
  factory _$PricePerformanceCopyWith(_PricePerformance value, $Res Function(_PricePerformance) _then) = __$PricePerformanceCopyWithImpl;
@override @useResult
$Res call({
 List<PricePerformanceData> data, String? msg, int? status, dynamic errors
});




}
/// @nodoc
class __$PricePerformanceCopyWithImpl<$Res>
    implements _$PricePerformanceCopyWith<$Res> {
  __$PricePerformanceCopyWithImpl(this._self, this._then);

  final _PricePerformance _self;
  final $Res Function(_PricePerformance) _then;

/// Create a copy of PricePerformance
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,Object? msg = freezed,Object? status = freezed,Object? errors = freezed,}) {
  return _then(_PricePerformance(
data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<PricePerformanceData>,msg: freezed == msg ? _self.msg : msg // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int?,errors: freezed == errors ? _self.errors : errors // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}


}


/// @nodoc
mixin _$PricePerformanceData {

 String? get period; double? get prevClosePrice; String? get performanceLastDate; double? get periodOpen; double? get periodOpenPercentage; double? get periodLow; double? get periodLowPercentage; double? get barPositionPercentage; double? get periodHigh; double? get periodHighPercentage; String? get periodLowDate; String? get periodHighDate; double? get performance; double? get performancePercentage; double? get startClose; double? get endClose; String? get performanceDate; List<double>? get chart;
/// Create a copy of PricePerformanceData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PricePerformanceDataCopyWith<PricePerformanceData> get copyWith => _$PricePerformanceDataCopyWithImpl<PricePerformanceData>(this as PricePerformanceData, _$identity);

  /// Serializes this PricePerformanceData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PricePerformanceData&&(identical(other.period, period) || other.period == period)&&(identical(other.prevClosePrice, prevClosePrice) || other.prevClosePrice == prevClosePrice)&&(identical(other.performanceLastDate, performanceLastDate) || other.performanceLastDate == performanceLastDate)&&(identical(other.periodOpen, periodOpen) || other.periodOpen == periodOpen)&&(identical(other.periodOpenPercentage, periodOpenPercentage) || other.periodOpenPercentage == periodOpenPercentage)&&(identical(other.periodLow, periodLow) || other.periodLow == periodLow)&&(identical(other.periodLowPercentage, periodLowPercentage) || other.periodLowPercentage == periodLowPercentage)&&(identical(other.barPositionPercentage, barPositionPercentage) || other.barPositionPercentage == barPositionPercentage)&&(identical(other.periodHigh, periodHigh) || other.periodHigh == periodHigh)&&(identical(other.periodHighPercentage, periodHighPercentage) || other.periodHighPercentage == periodHighPercentage)&&(identical(other.periodLowDate, periodLowDate) || other.periodLowDate == periodLowDate)&&(identical(other.periodHighDate, periodHighDate) || other.periodHighDate == periodHighDate)&&(identical(other.performance, performance) || other.performance == performance)&&(identical(other.performancePercentage, performancePercentage) || other.performancePercentage == performancePercentage)&&(identical(other.startClose, startClose) || other.startClose == startClose)&&(identical(other.endClose, endClose) || other.endClose == endClose)&&(identical(other.performanceDate, performanceDate) || other.performanceDate == performanceDate)&&const DeepCollectionEquality().equals(other.chart, chart));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,period,prevClosePrice,performanceLastDate,periodOpen,periodOpenPercentage,periodLow,periodLowPercentage,barPositionPercentage,periodHigh,periodHighPercentage,periodLowDate,periodHighDate,performance,performancePercentage,startClose,endClose,performanceDate,const DeepCollectionEquality().hash(chart));

@override
String toString() {
  return 'PricePerformanceData(period: $period, prevClosePrice: $prevClosePrice, performanceLastDate: $performanceLastDate, periodOpen: $periodOpen, periodOpenPercentage: $periodOpenPercentage, periodLow: $periodLow, periodLowPercentage: $periodLowPercentage, barPositionPercentage: $barPositionPercentage, periodHigh: $periodHigh, periodHighPercentage: $periodHighPercentage, periodLowDate: $periodLowDate, periodHighDate: $periodHighDate, performance: $performance, performancePercentage: $performancePercentage, startClose: $startClose, endClose: $endClose, performanceDate: $performanceDate, chart: $chart)';
}


}

/// @nodoc
abstract mixin class $PricePerformanceDataCopyWith<$Res>  {
  factory $PricePerformanceDataCopyWith(PricePerformanceData value, $Res Function(PricePerformanceData) _then) = _$PricePerformanceDataCopyWithImpl;
@useResult
$Res call({
 String? period, double? prevClosePrice, String? performanceLastDate, double? periodOpen, double? periodOpenPercentage, double? periodLow, double? periodLowPercentage, double? barPositionPercentage, double? periodHigh, double? periodHighPercentage, String? periodLowDate, String? periodHighDate, double? performance, double? performancePercentage, double? startClose, double? endClose, String? performanceDate, List<double>? chart
});




}
/// @nodoc
class _$PricePerformanceDataCopyWithImpl<$Res>
    implements $PricePerformanceDataCopyWith<$Res> {
  _$PricePerformanceDataCopyWithImpl(this._self, this._then);

  final PricePerformanceData _self;
  final $Res Function(PricePerformanceData) _then;

/// Create a copy of PricePerformanceData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? period = freezed,Object? prevClosePrice = freezed,Object? performanceLastDate = freezed,Object? periodOpen = freezed,Object? periodOpenPercentage = freezed,Object? periodLow = freezed,Object? periodLowPercentage = freezed,Object? barPositionPercentage = freezed,Object? periodHigh = freezed,Object? periodHighPercentage = freezed,Object? periodLowDate = freezed,Object? periodHighDate = freezed,Object? performance = freezed,Object? performancePercentage = freezed,Object? startClose = freezed,Object? endClose = freezed,Object? performanceDate = freezed,Object? chart = freezed,}) {
  return _then(_self.copyWith(
period: freezed == period ? _self.period : period // ignore: cast_nullable_to_non_nullable
as String?,prevClosePrice: freezed == prevClosePrice ? _self.prevClosePrice : prevClosePrice // ignore: cast_nullable_to_non_nullable
as double?,performanceLastDate: freezed == performanceLastDate ? _self.performanceLastDate : performanceLastDate // ignore: cast_nullable_to_non_nullable
as String?,periodOpen: freezed == periodOpen ? _self.periodOpen : periodOpen // ignore: cast_nullable_to_non_nullable
as double?,periodOpenPercentage: freezed == periodOpenPercentage ? _self.periodOpenPercentage : periodOpenPercentage // ignore: cast_nullable_to_non_nullable
as double?,periodLow: freezed == periodLow ? _self.periodLow : periodLow // ignore: cast_nullable_to_non_nullable
as double?,periodLowPercentage: freezed == periodLowPercentage ? _self.periodLowPercentage : periodLowPercentage // ignore: cast_nullable_to_non_nullable
as double?,barPositionPercentage: freezed == barPositionPercentage ? _self.barPositionPercentage : barPositionPercentage // ignore: cast_nullable_to_non_nullable
as double?,periodHigh: freezed == periodHigh ? _self.periodHigh : periodHigh // ignore: cast_nullable_to_non_nullable
as double?,periodHighPercentage: freezed == periodHighPercentage ? _self.periodHighPercentage : periodHighPercentage // ignore: cast_nullable_to_non_nullable
as double?,periodLowDate: freezed == periodLowDate ? _self.periodLowDate : periodLowDate // ignore: cast_nullable_to_non_nullable
as String?,periodHighDate: freezed == periodHighDate ? _self.periodHighDate : periodHighDate // ignore: cast_nullable_to_non_nullable
as String?,performance: freezed == performance ? _self.performance : performance // ignore: cast_nullable_to_non_nullable
as double?,performancePercentage: freezed == performancePercentage ? _self.performancePercentage : performancePercentage // ignore: cast_nullable_to_non_nullable
as double?,startClose: freezed == startClose ? _self.startClose : startClose // ignore: cast_nullable_to_non_nullable
as double?,endClose: freezed == endClose ? _self.endClose : endClose // ignore: cast_nullable_to_non_nullable
as double?,performanceDate: freezed == performanceDate ? _self.performanceDate : performanceDate // ignore: cast_nullable_to_non_nullable
as String?,chart: freezed == chart ? _self.chart : chart // ignore: cast_nullable_to_non_nullable
as List<double>?,
  ));
}

}


/// Adds pattern-matching-related methods to [PricePerformanceData].
extension PricePerformanceDataPatterns on PricePerformanceData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PricePerformanceData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PricePerformanceData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PricePerformanceData value)  $default,){
final _that = this;
switch (_that) {
case _PricePerformanceData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PricePerformanceData value)?  $default,){
final _that = this;
switch (_that) {
case _PricePerformanceData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? period,  double? prevClosePrice,  String? performanceLastDate,  double? periodOpen,  double? periodOpenPercentage,  double? periodLow,  double? periodLowPercentage,  double? barPositionPercentage,  double? periodHigh,  double? periodHighPercentage,  String? periodLowDate,  String? periodHighDate,  double? performance,  double? performancePercentage,  double? startClose,  double? endClose,  String? performanceDate,  List<double>? chart)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PricePerformanceData() when $default != null:
return $default(_that.period,_that.prevClosePrice,_that.performanceLastDate,_that.periodOpen,_that.periodOpenPercentage,_that.periodLow,_that.periodLowPercentage,_that.barPositionPercentage,_that.periodHigh,_that.periodHighPercentage,_that.periodLowDate,_that.periodHighDate,_that.performance,_that.performancePercentage,_that.startClose,_that.endClose,_that.performanceDate,_that.chart);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? period,  double? prevClosePrice,  String? performanceLastDate,  double? periodOpen,  double? periodOpenPercentage,  double? periodLow,  double? periodLowPercentage,  double? barPositionPercentage,  double? periodHigh,  double? periodHighPercentage,  String? periodLowDate,  String? periodHighDate,  double? performance,  double? performancePercentage,  double? startClose,  double? endClose,  String? performanceDate,  List<double>? chart)  $default,) {final _that = this;
switch (_that) {
case _PricePerformanceData():
return $default(_that.period,_that.prevClosePrice,_that.performanceLastDate,_that.periodOpen,_that.periodOpenPercentage,_that.periodLow,_that.periodLowPercentage,_that.barPositionPercentage,_that.periodHigh,_that.periodHighPercentage,_that.periodLowDate,_that.periodHighDate,_that.performance,_that.performancePercentage,_that.startClose,_that.endClose,_that.performanceDate,_that.chart);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? period,  double? prevClosePrice,  String? performanceLastDate,  double? periodOpen,  double? periodOpenPercentage,  double? periodLow,  double? periodLowPercentage,  double? barPositionPercentage,  double? periodHigh,  double? periodHighPercentage,  String? periodLowDate,  String? periodHighDate,  double? performance,  double? performancePercentage,  double? startClose,  double? endClose,  String? performanceDate,  List<double>? chart)?  $default,) {final _that = this;
switch (_that) {
case _PricePerformanceData() when $default != null:
return $default(_that.period,_that.prevClosePrice,_that.performanceLastDate,_that.periodOpen,_that.periodOpenPercentage,_that.periodLow,_that.periodLowPercentage,_that.barPositionPercentage,_that.periodHigh,_that.periodHighPercentage,_that.periodLowDate,_that.periodHighDate,_that.performance,_that.performancePercentage,_that.startClose,_that.endClose,_that.performanceDate,_that.chart);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PricePerformanceData implements PricePerformanceData {
  const _PricePerformanceData({this.period, this.prevClosePrice, this.performanceLastDate, this.periodOpen, this.periodOpenPercentage, this.periodLow, this.periodLowPercentage, this.barPositionPercentage, this.periodHigh, this.periodHighPercentage, this.periodLowDate, this.periodHighDate, this.performance, this.performancePercentage, this.startClose, this.endClose, this.performanceDate, final  List<double>? chart}): _chart = chart;
  factory _PricePerformanceData.fromJson(Map<String, dynamic> json) => _$PricePerformanceDataFromJson(json);

@override final  String? period;
@override final  double? prevClosePrice;
@override final  String? performanceLastDate;
@override final  double? periodOpen;
@override final  double? periodOpenPercentage;
@override final  double? periodLow;
@override final  double? periodLowPercentage;
@override final  double? barPositionPercentage;
@override final  double? periodHigh;
@override final  double? periodHighPercentage;
@override final  String? periodLowDate;
@override final  String? periodHighDate;
@override final  double? performance;
@override final  double? performancePercentage;
@override final  double? startClose;
@override final  double? endClose;
@override final  String? performanceDate;
 final  List<double>? _chart;
@override List<double>? get chart {
  final value = _chart;
  if (value == null) return null;
  if (_chart is EqualUnmodifiableListView) return _chart;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of PricePerformanceData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PricePerformanceDataCopyWith<_PricePerformanceData> get copyWith => __$PricePerformanceDataCopyWithImpl<_PricePerformanceData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PricePerformanceDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PricePerformanceData&&(identical(other.period, period) || other.period == period)&&(identical(other.prevClosePrice, prevClosePrice) || other.prevClosePrice == prevClosePrice)&&(identical(other.performanceLastDate, performanceLastDate) || other.performanceLastDate == performanceLastDate)&&(identical(other.periodOpen, periodOpen) || other.periodOpen == periodOpen)&&(identical(other.periodOpenPercentage, periodOpenPercentage) || other.periodOpenPercentage == periodOpenPercentage)&&(identical(other.periodLow, periodLow) || other.periodLow == periodLow)&&(identical(other.periodLowPercentage, periodLowPercentage) || other.periodLowPercentage == periodLowPercentage)&&(identical(other.barPositionPercentage, barPositionPercentage) || other.barPositionPercentage == barPositionPercentage)&&(identical(other.periodHigh, periodHigh) || other.periodHigh == periodHigh)&&(identical(other.periodHighPercentage, periodHighPercentage) || other.periodHighPercentage == periodHighPercentage)&&(identical(other.periodLowDate, periodLowDate) || other.periodLowDate == periodLowDate)&&(identical(other.periodHighDate, periodHighDate) || other.periodHighDate == periodHighDate)&&(identical(other.performance, performance) || other.performance == performance)&&(identical(other.performancePercentage, performancePercentage) || other.performancePercentage == performancePercentage)&&(identical(other.startClose, startClose) || other.startClose == startClose)&&(identical(other.endClose, endClose) || other.endClose == endClose)&&(identical(other.performanceDate, performanceDate) || other.performanceDate == performanceDate)&&const DeepCollectionEquality().equals(other._chart, _chart));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,period,prevClosePrice,performanceLastDate,periodOpen,periodOpenPercentage,periodLow,periodLowPercentage,barPositionPercentage,periodHigh,periodHighPercentage,periodLowDate,periodHighDate,performance,performancePercentage,startClose,endClose,performanceDate,const DeepCollectionEquality().hash(_chart));

@override
String toString() {
  return 'PricePerformanceData(period: $period, prevClosePrice: $prevClosePrice, performanceLastDate: $performanceLastDate, periodOpen: $periodOpen, periodOpenPercentage: $periodOpenPercentage, periodLow: $periodLow, periodLowPercentage: $periodLowPercentage, barPositionPercentage: $barPositionPercentage, periodHigh: $periodHigh, periodHighPercentage: $periodHighPercentage, periodLowDate: $periodLowDate, periodHighDate: $periodHighDate, performance: $performance, performancePercentage: $performancePercentage, startClose: $startClose, endClose: $endClose, performanceDate: $performanceDate, chart: $chart)';
}


}

/// @nodoc
abstract mixin class _$PricePerformanceDataCopyWith<$Res> implements $PricePerformanceDataCopyWith<$Res> {
  factory _$PricePerformanceDataCopyWith(_PricePerformanceData value, $Res Function(_PricePerformanceData) _then) = __$PricePerformanceDataCopyWithImpl;
@override @useResult
$Res call({
 String? period, double? prevClosePrice, String? performanceLastDate, double? periodOpen, double? periodOpenPercentage, double? periodLow, double? periodLowPercentage, double? barPositionPercentage, double? periodHigh, double? periodHighPercentage, String? periodLowDate, String? periodHighDate, double? performance, double? performancePercentage, double? startClose, double? endClose, String? performanceDate, List<double>? chart
});




}
/// @nodoc
class __$PricePerformanceDataCopyWithImpl<$Res>
    implements _$PricePerformanceDataCopyWith<$Res> {
  __$PricePerformanceDataCopyWithImpl(this._self, this._then);

  final _PricePerformanceData _self;
  final $Res Function(_PricePerformanceData) _then;

/// Create a copy of PricePerformanceData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? period = freezed,Object? prevClosePrice = freezed,Object? performanceLastDate = freezed,Object? periodOpen = freezed,Object? periodOpenPercentage = freezed,Object? periodLow = freezed,Object? periodLowPercentage = freezed,Object? barPositionPercentage = freezed,Object? periodHigh = freezed,Object? periodHighPercentage = freezed,Object? periodLowDate = freezed,Object? periodHighDate = freezed,Object? performance = freezed,Object? performancePercentage = freezed,Object? startClose = freezed,Object? endClose = freezed,Object? performanceDate = freezed,Object? chart = freezed,}) {
  return _then(_PricePerformanceData(
period: freezed == period ? _self.period : period // ignore: cast_nullable_to_non_nullable
as String?,prevClosePrice: freezed == prevClosePrice ? _self.prevClosePrice : prevClosePrice // ignore: cast_nullable_to_non_nullable
as double?,performanceLastDate: freezed == performanceLastDate ? _self.performanceLastDate : performanceLastDate // ignore: cast_nullable_to_non_nullable
as String?,periodOpen: freezed == periodOpen ? _self.periodOpen : periodOpen // ignore: cast_nullable_to_non_nullable
as double?,periodOpenPercentage: freezed == periodOpenPercentage ? _self.periodOpenPercentage : periodOpenPercentage // ignore: cast_nullable_to_non_nullable
as double?,periodLow: freezed == periodLow ? _self.periodLow : periodLow // ignore: cast_nullable_to_non_nullable
as double?,periodLowPercentage: freezed == periodLowPercentage ? _self.periodLowPercentage : periodLowPercentage // ignore: cast_nullable_to_non_nullable
as double?,barPositionPercentage: freezed == barPositionPercentage ? _self.barPositionPercentage : barPositionPercentage // ignore: cast_nullable_to_non_nullable
as double?,periodHigh: freezed == periodHigh ? _self.periodHigh : periodHigh // ignore: cast_nullable_to_non_nullable
as double?,periodHighPercentage: freezed == periodHighPercentage ? _self.periodHighPercentage : periodHighPercentage // ignore: cast_nullable_to_non_nullable
as double?,periodLowDate: freezed == periodLowDate ? _self.periodLowDate : periodLowDate // ignore: cast_nullable_to_non_nullable
as String?,periodHighDate: freezed == periodHighDate ? _self.periodHighDate : periodHighDate // ignore: cast_nullable_to_non_nullable
as String?,performance: freezed == performance ? _self.performance : performance // ignore: cast_nullable_to_non_nullable
as double?,performancePercentage: freezed == performancePercentage ? _self.performancePercentage : performancePercentage // ignore: cast_nullable_to_non_nullable
as double?,startClose: freezed == startClose ? _self.startClose : startClose // ignore: cast_nullable_to_non_nullable
as double?,endClose: freezed == endClose ? _self.endClose : endClose // ignore: cast_nullable_to_non_nullable
as double?,performanceDate: freezed == performanceDate ? _self.performanceDate : performanceDate // ignore: cast_nullable_to_non_nullable
as String?,chart: freezed == chart ? _self._chart : chart // ignore: cast_nullable_to_non_nullable
as List<double>?,
  ));
}


}

// dart format on
