// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stock_price_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StockPriceModel {

 StockPriceData get data; String? get msg; int? get status; dynamic get errors;
/// Create a copy of StockPriceModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StockPriceModelCopyWith<StockPriceModel> get copyWith => _$StockPriceModelCopyWithImpl<StockPriceModel>(this as StockPriceModel, _$identity);

  /// Serializes this StockPriceModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StockPriceModel&&(identical(other.data, data) || other.data == data)&&(identical(other.msg, msg) || other.msg == msg)&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.errors, errors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data,msg,status,const DeepCollectionEquality().hash(errors));

@override
String toString() {
  return 'StockPriceModel(data: $data, msg: $msg, status: $status, errors: $errors)';
}


}

/// @nodoc
abstract mixin class $StockPriceModelCopyWith<$Res>  {
  factory $StockPriceModelCopyWith(StockPriceModel value, $Res Function(StockPriceModel) _then) = _$StockPriceModelCopyWithImpl;
@useResult
$Res call({
 StockPriceData data, String? msg, int? status, dynamic errors
});


$StockPriceDataCopyWith<$Res> get data;

}
/// @nodoc
class _$StockPriceModelCopyWithImpl<$Res>
    implements $StockPriceModelCopyWith<$Res> {
  _$StockPriceModelCopyWithImpl(this._self, this._then);

  final StockPriceModel _self;
  final $Res Function(StockPriceModel) _then;

/// Create a copy of StockPriceModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = null,Object? msg = freezed,Object? status = freezed,Object? errors = freezed,}) {
  return _then(_self.copyWith(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as StockPriceData,msg: freezed == msg ? _self.msg : msg // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int?,errors: freezed == errors ? _self.errors : errors // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}
/// Create a copy of StockPriceModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StockPriceDataCopyWith<$Res> get data {
  
  return $StockPriceDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [StockPriceModel].
extension StockPriceModelPatterns on StockPriceModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StockPriceModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StockPriceModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StockPriceModel value)  $default,){
final _that = this;
switch (_that) {
case _StockPriceModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StockPriceModel value)?  $default,){
final _that = this;
switch (_that) {
case _StockPriceModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( StockPriceData data,  String? msg,  int? status,  dynamic errors)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StockPriceModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( StockPriceData data,  String? msg,  int? status,  dynamic errors)  $default,) {final _that = this;
switch (_that) {
case _StockPriceModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( StockPriceData data,  String? msg,  int? status,  dynamic errors)?  $default,) {final _that = this;
switch (_that) {
case _StockPriceModel() when $default != null:
return $default(_that.data,_that.msg,_that.status,_that.errors);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StockPriceModel implements StockPriceModel {
  const _StockPriceModel({required this.data, this.msg, this.status, this.errors});
  factory _StockPriceModel.fromJson(Map<String, dynamic> json) => _$StockPriceModelFromJson(json);

@override final  StockPriceData data;
@override final  String? msg;
@override final  int? status;
@override final  dynamic errors;

/// Create a copy of StockPriceModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StockPriceModelCopyWith<_StockPriceModel> get copyWith => __$StockPriceModelCopyWithImpl<_StockPriceModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StockPriceModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StockPriceModel&&(identical(other.data, data) || other.data == data)&&(identical(other.msg, msg) || other.msg == msg)&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.errors, errors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data,msg,status,const DeepCollectionEquality().hash(errors));

@override
String toString() {
  return 'StockPriceModel(data: $data, msg: $msg, status: $status, errors: $errors)';
}


}

/// @nodoc
abstract mixin class _$StockPriceModelCopyWith<$Res> implements $StockPriceModelCopyWith<$Res> {
  factory _$StockPriceModelCopyWith(_StockPriceModel value, $Res Function(_StockPriceModel) _then) = __$StockPriceModelCopyWithImpl;
@override @useResult
$Res call({
 StockPriceData data, String? msg, int? status, dynamic errors
});


@override $StockPriceDataCopyWith<$Res> get data;

}
/// @nodoc
class __$StockPriceModelCopyWithImpl<$Res>
    implements _$StockPriceModelCopyWith<$Res> {
  __$StockPriceModelCopyWithImpl(this._self, this._then);

  final _StockPriceModel _self;
  final $Res Function(_StockPriceModel) _then;

/// Create a copy of StockPriceModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,Object? msg = freezed,Object? status = freezed,Object? errors = freezed,}) {
  return _then(_StockPriceModel(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as StockPriceData,msg: freezed == msg ? _self.msg : msg // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int?,errors: freezed == errors ? _self.errors : errors // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

/// Create a copy of StockPriceModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StockPriceDataCopyWith<$Res> get data {
  
  return $StockPriceDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$StockPriceData {

 List<ChartCandle> get chart;@JsonKey(name: 'chart_vol') List<ChartVolume> get chartVol;@JsonKey(name: 'eod_data') Map<String, EodData> get eodData;
/// Create a copy of StockPriceData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StockPriceDataCopyWith<StockPriceData> get copyWith => _$StockPriceDataCopyWithImpl<StockPriceData>(this as StockPriceData, _$identity);

  /// Serializes this StockPriceData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StockPriceData&&const DeepCollectionEquality().equals(other.chart, chart)&&const DeepCollectionEquality().equals(other.chartVol, chartVol)&&const DeepCollectionEquality().equals(other.eodData, eodData));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(chart),const DeepCollectionEquality().hash(chartVol),const DeepCollectionEquality().hash(eodData));

@override
String toString() {
  return 'StockPriceData(chart: $chart, chartVol: $chartVol, eodData: $eodData)';
}


}

/// @nodoc
abstract mixin class $StockPriceDataCopyWith<$Res>  {
  factory $StockPriceDataCopyWith(StockPriceData value, $Res Function(StockPriceData) _then) = _$StockPriceDataCopyWithImpl;
@useResult
$Res call({
 List<ChartCandle> chart,@JsonKey(name: 'chart_vol') List<ChartVolume> chartVol,@JsonKey(name: 'eod_data') Map<String, EodData> eodData
});




}
/// @nodoc
class _$StockPriceDataCopyWithImpl<$Res>
    implements $StockPriceDataCopyWith<$Res> {
  _$StockPriceDataCopyWithImpl(this._self, this._then);

  final StockPriceData _self;
  final $Res Function(StockPriceData) _then;

/// Create a copy of StockPriceData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? chart = null,Object? chartVol = null,Object? eodData = null,}) {
  return _then(_self.copyWith(
chart: null == chart ? _self.chart : chart // ignore: cast_nullable_to_non_nullable
as List<ChartCandle>,chartVol: null == chartVol ? _self.chartVol : chartVol // ignore: cast_nullable_to_non_nullable
as List<ChartVolume>,eodData: null == eodData ? _self.eodData : eodData // ignore: cast_nullable_to_non_nullable
as Map<String, EodData>,
  ));
}

}


/// Adds pattern-matching-related methods to [StockPriceData].
extension StockPriceDataPatterns on StockPriceData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StockPriceData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StockPriceData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StockPriceData value)  $default,){
final _that = this;
switch (_that) {
case _StockPriceData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StockPriceData value)?  $default,){
final _that = this;
switch (_that) {
case _StockPriceData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<ChartCandle> chart, @JsonKey(name: 'chart_vol')  List<ChartVolume> chartVol, @JsonKey(name: 'eod_data')  Map<String, EodData> eodData)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StockPriceData() when $default != null:
return $default(_that.chart,_that.chartVol,_that.eodData);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<ChartCandle> chart, @JsonKey(name: 'chart_vol')  List<ChartVolume> chartVol, @JsonKey(name: 'eod_data')  Map<String, EodData> eodData)  $default,) {final _that = this;
switch (_that) {
case _StockPriceData():
return $default(_that.chart,_that.chartVol,_that.eodData);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<ChartCandle> chart, @JsonKey(name: 'chart_vol')  List<ChartVolume> chartVol, @JsonKey(name: 'eod_data')  Map<String, EodData> eodData)?  $default,) {final _that = this;
switch (_that) {
case _StockPriceData() when $default != null:
return $default(_that.chart,_that.chartVol,_that.eodData);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StockPriceData implements StockPriceData {
  const _StockPriceData({required final  List<ChartCandle> chart, @JsonKey(name: 'chart_vol') required final  List<ChartVolume> chartVol, @JsonKey(name: 'eod_data') required final  Map<String, EodData> eodData}): _chart = chart,_chartVol = chartVol,_eodData = eodData;
  factory _StockPriceData.fromJson(Map<String, dynamic> json) => _$StockPriceDataFromJson(json);

 final  List<ChartCandle> _chart;
@override List<ChartCandle> get chart {
  if (_chart is EqualUnmodifiableListView) return _chart;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_chart);
}

 final  List<ChartVolume> _chartVol;
@override@JsonKey(name: 'chart_vol') List<ChartVolume> get chartVol {
  if (_chartVol is EqualUnmodifiableListView) return _chartVol;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_chartVol);
}

 final  Map<String, EodData> _eodData;
@override@JsonKey(name: 'eod_data') Map<String, EodData> get eodData {
  if (_eodData is EqualUnmodifiableMapView) return _eodData;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_eodData);
}


/// Create a copy of StockPriceData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StockPriceDataCopyWith<_StockPriceData> get copyWith => __$StockPriceDataCopyWithImpl<_StockPriceData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StockPriceDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StockPriceData&&const DeepCollectionEquality().equals(other._chart, _chart)&&const DeepCollectionEquality().equals(other._chartVol, _chartVol)&&const DeepCollectionEquality().equals(other._eodData, _eodData));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_chart),const DeepCollectionEquality().hash(_chartVol),const DeepCollectionEquality().hash(_eodData));

@override
String toString() {
  return 'StockPriceData(chart: $chart, chartVol: $chartVol, eodData: $eodData)';
}


}

/// @nodoc
abstract mixin class _$StockPriceDataCopyWith<$Res> implements $StockPriceDataCopyWith<$Res> {
  factory _$StockPriceDataCopyWith(_StockPriceData value, $Res Function(_StockPriceData) _then) = __$StockPriceDataCopyWithImpl;
@override @useResult
$Res call({
 List<ChartCandle> chart,@JsonKey(name: 'chart_vol') List<ChartVolume> chartVol,@JsonKey(name: 'eod_data') Map<String, EodData> eodData
});




}
/// @nodoc
class __$StockPriceDataCopyWithImpl<$Res>
    implements _$StockPriceDataCopyWith<$Res> {
  __$StockPriceDataCopyWithImpl(this._self, this._then);

  final _StockPriceData _self;
  final $Res Function(_StockPriceData) _then;

/// Create a copy of StockPriceData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? chart = null,Object? chartVol = null,Object? eodData = null,}) {
  return _then(_StockPriceData(
chart: null == chart ? _self._chart : chart // ignore: cast_nullable_to_non_nullable
as List<ChartCandle>,chartVol: null == chartVol ? _self._chartVol : chartVol // ignore: cast_nullable_to_non_nullable
as List<ChartVolume>,eodData: null == eodData ? _self._eodData : eodData // ignore: cast_nullable_to_non_nullable
as Map<String, EodData>,
  ));
}


}


/// @nodoc
mixin _$ChartCandle {

 String get x; List<double> get y;
/// Create a copy of ChartCandle
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChartCandleCopyWith<ChartCandle> get copyWith => _$ChartCandleCopyWithImpl<ChartCandle>(this as ChartCandle, _$identity);

  /// Serializes this ChartCandle to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChartCandle&&(identical(other.x, x) || other.x == x)&&const DeepCollectionEquality().equals(other.y, y));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,x,const DeepCollectionEquality().hash(y));

@override
String toString() {
  return 'ChartCandle(x: $x, y: $y)';
}


}

/// @nodoc
abstract mixin class $ChartCandleCopyWith<$Res>  {
  factory $ChartCandleCopyWith(ChartCandle value, $Res Function(ChartCandle) _then) = _$ChartCandleCopyWithImpl;
@useResult
$Res call({
 String x, List<double> y
});




}
/// @nodoc
class _$ChartCandleCopyWithImpl<$Res>
    implements $ChartCandleCopyWith<$Res> {
  _$ChartCandleCopyWithImpl(this._self, this._then);

  final ChartCandle _self;
  final $Res Function(ChartCandle) _then;

/// Create a copy of ChartCandle
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? x = null,Object? y = null,}) {
  return _then(_self.copyWith(
x: null == x ? _self.x : x // ignore: cast_nullable_to_non_nullable
as String,y: null == y ? _self.y : y // ignore: cast_nullable_to_non_nullable
as List<double>,
  ));
}

}


/// Adds pattern-matching-related methods to [ChartCandle].
extension ChartCandlePatterns on ChartCandle {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChartCandle value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChartCandle() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChartCandle value)  $default,){
final _that = this;
switch (_that) {
case _ChartCandle():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChartCandle value)?  $default,){
final _that = this;
switch (_that) {
case _ChartCandle() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String x,  List<double> y)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChartCandle() when $default != null:
return $default(_that.x,_that.y);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String x,  List<double> y)  $default,) {final _that = this;
switch (_that) {
case _ChartCandle():
return $default(_that.x,_that.y);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String x,  List<double> y)?  $default,) {final _that = this;
switch (_that) {
case _ChartCandle() when $default != null:
return $default(_that.x,_that.y);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ChartCandle implements ChartCandle {
  const _ChartCandle({required this.x, required final  List<double> y}): _y = y;
  factory _ChartCandle.fromJson(Map<String, dynamic> json) => _$ChartCandleFromJson(json);

@override final  String x;
 final  List<double> _y;
@override List<double> get y {
  if (_y is EqualUnmodifiableListView) return _y;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_y);
}


/// Create a copy of ChartCandle
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChartCandleCopyWith<_ChartCandle> get copyWith => __$ChartCandleCopyWithImpl<_ChartCandle>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChartCandleToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChartCandle&&(identical(other.x, x) || other.x == x)&&const DeepCollectionEquality().equals(other._y, _y));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,x,const DeepCollectionEquality().hash(_y));

@override
String toString() {
  return 'ChartCandle(x: $x, y: $y)';
}


}

/// @nodoc
abstract mixin class _$ChartCandleCopyWith<$Res> implements $ChartCandleCopyWith<$Res> {
  factory _$ChartCandleCopyWith(_ChartCandle value, $Res Function(_ChartCandle) _then) = __$ChartCandleCopyWithImpl;
@override @useResult
$Res call({
 String x, List<double> y
});




}
/// @nodoc
class __$ChartCandleCopyWithImpl<$Res>
    implements _$ChartCandleCopyWith<$Res> {
  __$ChartCandleCopyWithImpl(this._self, this._then);

  final _ChartCandle _self;
  final $Res Function(_ChartCandle) _then;

/// Create a copy of ChartCandle
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? x = null,Object? y = null,}) {
  return _then(_ChartCandle(
x: null == x ? _self.x : x // ignore: cast_nullable_to_non_nullable
as String,y: null == y ? _self._y : y // ignore: cast_nullable_to_non_nullable
as List<double>,
  ));
}


}


/// @nodoc
mixin _$ChartVolume {

 String get x; int get y; String? get fillColor;
/// Create a copy of ChartVolume
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChartVolumeCopyWith<ChartVolume> get copyWith => _$ChartVolumeCopyWithImpl<ChartVolume>(this as ChartVolume, _$identity);

  /// Serializes this ChartVolume to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChartVolume&&(identical(other.x, x) || other.x == x)&&(identical(other.y, y) || other.y == y)&&(identical(other.fillColor, fillColor) || other.fillColor == fillColor));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,x,y,fillColor);

@override
String toString() {
  return 'ChartVolume(x: $x, y: $y, fillColor: $fillColor)';
}


}

/// @nodoc
abstract mixin class $ChartVolumeCopyWith<$Res>  {
  factory $ChartVolumeCopyWith(ChartVolume value, $Res Function(ChartVolume) _then) = _$ChartVolumeCopyWithImpl;
@useResult
$Res call({
 String x, int y, String? fillColor
});




}
/// @nodoc
class _$ChartVolumeCopyWithImpl<$Res>
    implements $ChartVolumeCopyWith<$Res> {
  _$ChartVolumeCopyWithImpl(this._self, this._then);

  final ChartVolume _self;
  final $Res Function(ChartVolume) _then;

/// Create a copy of ChartVolume
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? x = null,Object? y = null,Object? fillColor = freezed,}) {
  return _then(_self.copyWith(
x: null == x ? _self.x : x // ignore: cast_nullable_to_non_nullable
as String,y: null == y ? _self.y : y // ignore: cast_nullable_to_non_nullable
as int,fillColor: freezed == fillColor ? _self.fillColor : fillColor // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ChartVolume].
extension ChartVolumePatterns on ChartVolume {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChartVolume value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChartVolume() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChartVolume value)  $default,){
final _that = this;
switch (_that) {
case _ChartVolume():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChartVolume value)?  $default,){
final _that = this;
switch (_that) {
case _ChartVolume() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String x,  int y,  String? fillColor)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChartVolume() when $default != null:
return $default(_that.x,_that.y,_that.fillColor);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String x,  int y,  String? fillColor)  $default,) {final _that = this;
switch (_that) {
case _ChartVolume():
return $default(_that.x,_that.y,_that.fillColor);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String x,  int y,  String? fillColor)?  $default,) {final _that = this;
switch (_that) {
case _ChartVolume() when $default != null:
return $default(_that.x,_that.y,_that.fillColor);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ChartVolume implements ChartVolume {
  const _ChartVolume({required this.x, required this.y, this.fillColor});
  factory _ChartVolume.fromJson(Map<String, dynamic> json) => _$ChartVolumeFromJson(json);

@override final  String x;
@override final  int y;
@override final  String? fillColor;

/// Create a copy of ChartVolume
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChartVolumeCopyWith<_ChartVolume> get copyWith => __$ChartVolumeCopyWithImpl<_ChartVolume>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChartVolumeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChartVolume&&(identical(other.x, x) || other.x == x)&&(identical(other.y, y) || other.y == y)&&(identical(other.fillColor, fillColor) || other.fillColor == fillColor));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,x,y,fillColor);

@override
String toString() {
  return 'ChartVolume(x: $x, y: $y, fillColor: $fillColor)';
}


}

/// @nodoc
abstract mixin class _$ChartVolumeCopyWith<$Res> implements $ChartVolumeCopyWith<$Res> {
  factory _$ChartVolumeCopyWith(_ChartVolume value, $Res Function(_ChartVolume) _then) = __$ChartVolumeCopyWithImpl;
@override @useResult
$Res call({
 String x, int y, String? fillColor
});




}
/// @nodoc
class __$ChartVolumeCopyWithImpl<$Res>
    implements _$ChartVolumeCopyWith<$Res> {
  __$ChartVolumeCopyWithImpl(this._self, this._then);

  final _ChartVolume _self;
  final $Res Function(_ChartVolume) _then;

/// Create a copy of ChartVolume
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? x = null,Object? y = null,Object? fillColor = freezed,}) {
  return _then(_ChartVolume(
x: null == x ? _self.x : x // ignore: cast_nullable_to_non_nullable
as String,y: null == y ? _self.y : y // ignore: cast_nullable_to_non_nullable
as int,fillColor: freezed == fillColor ? _self.fillColor : fillColor // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$EodData {

 double? get open; double? get high; double? get low; double? get close; double? get avolume; String? get totaltrades; double? get change; double? get changepercent; double? get vwap;
/// Create a copy of EodData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EodDataCopyWith<EodData> get copyWith => _$EodDataCopyWithImpl<EodData>(this as EodData, _$identity);

  /// Serializes this EodData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EodData&&(identical(other.open, open) || other.open == open)&&(identical(other.high, high) || other.high == high)&&(identical(other.low, low) || other.low == low)&&(identical(other.close, close) || other.close == close)&&(identical(other.avolume, avolume) || other.avolume == avolume)&&(identical(other.totaltrades, totaltrades) || other.totaltrades == totaltrades)&&(identical(other.change, change) || other.change == change)&&(identical(other.changepercent, changepercent) || other.changepercent == changepercent)&&(identical(other.vwap, vwap) || other.vwap == vwap));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,open,high,low,close,avolume,totaltrades,change,changepercent,vwap);

@override
String toString() {
  return 'EodData(open: $open, high: $high, low: $low, close: $close, avolume: $avolume, totaltrades: $totaltrades, change: $change, changepercent: $changepercent, vwap: $vwap)';
}


}

/// @nodoc
abstract mixin class $EodDataCopyWith<$Res>  {
  factory $EodDataCopyWith(EodData value, $Res Function(EodData) _then) = _$EodDataCopyWithImpl;
@useResult
$Res call({
 double? open, double? high, double? low, double? close, double? avolume, String? totaltrades, double? change, double? changepercent, double? vwap
});




}
/// @nodoc
class _$EodDataCopyWithImpl<$Res>
    implements $EodDataCopyWith<$Res> {
  _$EodDataCopyWithImpl(this._self, this._then);

  final EodData _self;
  final $Res Function(EodData) _then;

/// Create a copy of EodData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? open = freezed,Object? high = freezed,Object? low = freezed,Object? close = freezed,Object? avolume = freezed,Object? totaltrades = freezed,Object? change = freezed,Object? changepercent = freezed,Object? vwap = freezed,}) {
  return _then(_self.copyWith(
open: freezed == open ? _self.open : open // ignore: cast_nullable_to_non_nullable
as double?,high: freezed == high ? _self.high : high // ignore: cast_nullable_to_non_nullable
as double?,low: freezed == low ? _self.low : low // ignore: cast_nullable_to_non_nullable
as double?,close: freezed == close ? _self.close : close // ignore: cast_nullable_to_non_nullable
as double?,avolume: freezed == avolume ? _self.avolume : avolume // ignore: cast_nullable_to_non_nullable
as double?,totaltrades: freezed == totaltrades ? _self.totaltrades : totaltrades // ignore: cast_nullable_to_non_nullable
as String?,change: freezed == change ? _self.change : change // ignore: cast_nullable_to_non_nullable
as double?,changepercent: freezed == changepercent ? _self.changepercent : changepercent // ignore: cast_nullable_to_non_nullable
as double?,vwap: freezed == vwap ? _self.vwap : vwap // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

}


/// Adds pattern-matching-related methods to [EodData].
extension EodDataPatterns on EodData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EodData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EodData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EodData value)  $default,){
final _that = this;
switch (_that) {
case _EodData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EodData value)?  $default,){
final _that = this;
switch (_that) {
case _EodData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double? open,  double? high,  double? low,  double? close,  double? avolume,  String? totaltrades,  double? change,  double? changepercent,  double? vwap)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EodData() when $default != null:
return $default(_that.open,_that.high,_that.low,_that.close,_that.avolume,_that.totaltrades,_that.change,_that.changepercent,_that.vwap);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double? open,  double? high,  double? low,  double? close,  double? avolume,  String? totaltrades,  double? change,  double? changepercent,  double? vwap)  $default,) {final _that = this;
switch (_that) {
case _EodData():
return $default(_that.open,_that.high,_that.low,_that.close,_that.avolume,_that.totaltrades,_that.change,_that.changepercent,_that.vwap);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double? open,  double? high,  double? low,  double? close,  double? avolume,  String? totaltrades,  double? change,  double? changepercent,  double? vwap)?  $default,) {final _that = this;
switch (_that) {
case _EodData() when $default != null:
return $default(_that.open,_that.high,_that.low,_that.close,_that.avolume,_that.totaltrades,_that.change,_that.changepercent,_that.vwap);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EodData implements EodData {
  const _EodData({this.open, this.high, this.low, this.close, this.avolume, this.totaltrades, this.change, this.changepercent, this.vwap});
  factory _EodData.fromJson(Map<String, dynamic> json) => _$EodDataFromJson(json);

@override final  double? open;
@override final  double? high;
@override final  double? low;
@override final  double? close;
@override final  double? avolume;
@override final  String? totaltrades;
@override final  double? change;
@override final  double? changepercent;
@override final  double? vwap;

/// Create a copy of EodData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EodDataCopyWith<_EodData> get copyWith => __$EodDataCopyWithImpl<_EodData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EodDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EodData&&(identical(other.open, open) || other.open == open)&&(identical(other.high, high) || other.high == high)&&(identical(other.low, low) || other.low == low)&&(identical(other.close, close) || other.close == close)&&(identical(other.avolume, avolume) || other.avolume == avolume)&&(identical(other.totaltrades, totaltrades) || other.totaltrades == totaltrades)&&(identical(other.change, change) || other.change == change)&&(identical(other.changepercent, changepercent) || other.changepercent == changepercent)&&(identical(other.vwap, vwap) || other.vwap == vwap));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,open,high,low,close,avolume,totaltrades,change,changepercent,vwap);

@override
String toString() {
  return 'EodData(open: $open, high: $high, low: $low, close: $close, avolume: $avolume, totaltrades: $totaltrades, change: $change, changepercent: $changepercent, vwap: $vwap)';
}


}

/// @nodoc
abstract mixin class _$EodDataCopyWith<$Res> implements $EodDataCopyWith<$Res> {
  factory _$EodDataCopyWith(_EodData value, $Res Function(_EodData) _then) = __$EodDataCopyWithImpl;
@override @useResult
$Res call({
 double? open, double? high, double? low, double? close, double? avolume, String? totaltrades, double? change, double? changepercent, double? vwap
});




}
/// @nodoc
class __$EodDataCopyWithImpl<$Res>
    implements _$EodDataCopyWith<$Res> {
  __$EodDataCopyWithImpl(this._self, this._then);

  final _EodData _self;
  final $Res Function(_EodData) _then;

/// Create a copy of EodData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? open = freezed,Object? high = freezed,Object? low = freezed,Object? close = freezed,Object? avolume = freezed,Object? totaltrades = freezed,Object? change = freezed,Object? changepercent = freezed,Object? vwap = freezed,}) {
  return _then(_EodData(
open: freezed == open ? _self.open : open // ignore: cast_nullable_to_non_nullable
as double?,high: freezed == high ? _self.high : high // ignore: cast_nullable_to_non_nullable
as double?,low: freezed == low ? _self.low : low // ignore: cast_nullable_to_non_nullable
as double?,close: freezed == close ? _self.close : close // ignore: cast_nullable_to_non_nullable
as double?,avolume: freezed == avolume ? _self.avolume : avolume // ignore: cast_nullable_to_non_nullable
as double?,totaltrades: freezed == totaltrades ? _self.totaltrades : totaltrades // ignore: cast_nullable_to_non_nullable
as String?,change: freezed == change ? _self.change : change // ignore: cast_nullable_to_non_nullable
as double?,changepercent: freezed == changepercent ? _self.changepercent : changepercent // ignore: cast_nullable_to_non_nullable
as double?,vwap: freezed == vwap ? _self.vwap : vwap // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}

// dart format on
