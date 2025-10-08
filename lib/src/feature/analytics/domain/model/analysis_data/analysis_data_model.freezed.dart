// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'analysis_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AnalysisDataModel {

 AnalysisData? get data; String? get msg; int? get status; dynamic get errors;
/// Create a copy of AnalysisDataModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AnalysisDataModelCopyWith<AnalysisDataModel> get copyWith => _$AnalysisDataModelCopyWithImpl<AnalysisDataModel>(this as AnalysisDataModel, _$identity);

  /// Serializes this AnalysisDataModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AnalysisDataModel&&(identical(other.data, data) || other.data == data)&&(identical(other.msg, msg) || other.msg == msg)&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.errors, errors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data,msg,status,const DeepCollectionEquality().hash(errors));

@override
String toString() {
  return 'AnalysisDataModel(data: $data, msg: $msg, status: $status, errors: $errors)';
}


}

/// @nodoc
abstract mixin class $AnalysisDataModelCopyWith<$Res>  {
  factory $AnalysisDataModelCopyWith(AnalysisDataModel value, $Res Function(AnalysisDataModel) _then) = _$AnalysisDataModelCopyWithImpl;
@useResult
$Res call({
 AnalysisData? data, String? msg, int? status, dynamic errors
});


$AnalysisDataCopyWith<$Res>? get data;

}
/// @nodoc
class _$AnalysisDataModelCopyWithImpl<$Res>
    implements $AnalysisDataModelCopyWith<$Res> {
  _$AnalysisDataModelCopyWithImpl(this._self, this._then);

  final AnalysisDataModel _self;
  final $Res Function(AnalysisDataModel) _then;

/// Create a copy of AnalysisDataModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = freezed,Object? msg = freezed,Object? status = freezed,Object? errors = freezed,}) {
  return _then(_self.copyWith(
data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as AnalysisData?,msg: freezed == msg ? _self.msg : msg // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int?,errors: freezed == errors ? _self.errors : errors // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}
/// Create a copy of AnalysisDataModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AnalysisDataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $AnalysisDataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [AnalysisDataModel].
extension AnalysisDataModelPatterns on AnalysisDataModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AnalysisDataModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AnalysisDataModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AnalysisDataModel value)  $default,){
final _that = this;
switch (_that) {
case _AnalysisDataModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AnalysisDataModel value)?  $default,){
final _that = this;
switch (_that) {
case _AnalysisDataModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( AnalysisData? data,  String? msg,  int? status,  dynamic errors)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AnalysisDataModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( AnalysisData? data,  String? msg,  int? status,  dynamic errors)  $default,) {final _that = this;
switch (_that) {
case _AnalysisDataModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( AnalysisData? data,  String? msg,  int? status,  dynamic errors)?  $default,) {final _that = this;
switch (_that) {
case _AnalysisDataModel() when $default != null:
return $default(_that.data,_that.msg,_that.status,_that.errors);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AnalysisDataModel implements AnalysisDataModel {
  const _AnalysisDataModel({required this.data, this.msg, this.status, this.errors});
  factory _AnalysisDataModel.fromJson(Map<String, dynamic> json) => _$AnalysisDataModelFromJson(json);

@override final  AnalysisData? data;
@override final  String? msg;
@override final  int? status;
@override final  dynamic errors;

/// Create a copy of AnalysisDataModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AnalysisDataModelCopyWith<_AnalysisDataModel> get copyWith => __$AnalysisDataModelCopyWithImpl<_AnalysisDataModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AnalysisDataModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AnalysisDataModel&&(identical(other.data, data) || other.data == data)&&(identical(other.msg, msg) || other.msg == msg)&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.errors, errors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data,msg,status,const DeepCollectionEquality().hash(errors));

@override
String toString() {
  return 'AnalysisDataModel(data: $data, msg: $msg, status: $status, errors: $errors)';
}


}

/// @nodoc
abstract mixin class _$AnalysisDataModelCopyWith<$Res> implements $AnalysisDataModelCopyWith<$Res> {
  factory _$AnalysisDataModelCopyWith(_AnalysisDataModel value, $Res Function(_AnalysisDataModel) _then) = __$AnalysisDataModelCopyWithImpl;
@override @useResult
$Res call({
 AnalysisData? data, String? msg, int? status, dynamic errors
});


@override $AnalysisDataCopyWith<$Res>? get data;

}
/// @nodoc
class __$AnalysisDataModelCopyWithImpl<$Res>
    implements _$AnalysisDataModelCopyWith<$Res> {
  __$AnalysisDataModelCopyWithImpl(this._self, this._then);

  final _AnalysisDataModel _self;
  final $Res Function(_AnalysisDataModel) _then;

/// Create a copy of AnalysisDataModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = freezed,Object? msg = freezed,Object? status = freezed,Object? errors = freezed,}) {
  return _then(_AnalysisDataModel(
data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as AnalysisData?,msg: freezed == msg ? _self.msg : msg // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int?,errors: freezed == errors ? _self.errors : errors // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

/// Create a copy of AnalysisDataModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AnalysisDataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $AnalysisDataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$AnalysisData {

 List<ChartData>? get chart; List<ChartVolume>? get chartVol; Map<String, EodData>? get eodData;
/// Create a copy of AnalysisData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AnalysisDataCopyWith<AnalysisData> get copyWith => _$AnalysisDataCopyWithImpl<AnalysisData>(this as AnalysisData, _$identity);

  /// Serializes this AnalysisData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AnalysisData&&const DeepCollectionEquality().equals(other.chart, chart)&&const DeepCollectionEquality().equals(other.chartVol, chartVol)&&const DeepCollectionEquality().equals(other.eodData, eodData));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(chart),const DeepCollectionEquality().hash(chartVol),const DeepCollectionEquality().hash(eodData));

@override
String toString() {
  return 'AnalysisData(chart: $chart, chartVol: $chartVol, eodData: $eodData)';
}


}

/// @nodoc
abstract mixin class $AnalysisDataCopyWith<$Res>  {
  factory $AnalysisDataCopyWith(AnalysisData value, $Res Function(AnalysisData) _then) = _$AnalysisDataCopyWithImpl;
@useResult
$Res call({
 List<ChartData>? chart, List<ChartVolume>? chartVol, Map<String, EodData>? eodData
});




}
/// @nodoc
class _$AnalysisDataCopyWithImpl<$Res>
    implements $AnalysisDataCopyWith<$Res> {
  _$AnalysisDataCopyWithImpl(this._self, this._then);

  final AnalysisData _self;
  final $Res Function(AnalysisData) _then;

/// Create a copy of AnalysisData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? chart = freezed,Object? chartVol = freezed,Object? eodData = freezed,}) {
  return _then(_self.copyWith(
chart: freezed == chart ? _self.chart : chart // ignore: cast_nullable_to_non_nullable
as List<ChartData>?,chartVol: freezed == chartVol ? _self.chartVol : chartVol // ignore: cast_nullable_to_non_nullable
as List<ChartVolume>?,eodData: freezed == eodData ? _self.eodData : eodData // ignore: cast_nullable_to_non_nullable
as Map<String, EodData>?,
  ));
}

}


/// Adds pattern-matching-related methods to [AnalysisData].
extension AnalysisDataPatterns on AnalysisData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AnalysisData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AnalysisData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AnalysisData value)  $default,){
final _that = this;
switch (_that) {
case _AnalysisData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AnalysisData value)?  $default,){
final _that = this;
switch (_that) {
case _AnalysisData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<ChartData>? chart,  List<ChartVolume>? chartVol,  Map<String, EodData>? eodData)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AnalysisData() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<ChartData>? chart,  List<ChartVolume>? chartVol,  Map<String, EodData>? eodData)  $default,) {final _that = this;
switch (_that) {
case _AnalysisData():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<ChartData>? chart,  List<ChartVolume>? chartVol,  Map<String, EodData>? eodData)?  $default,) {final _that = this;
switch (_that) {
case _AnalysisData() when $default != null:
return $default(_that.chart,_that.chartVol,_that.eodData);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AnalysisData implements AnalysisData {
  const _AnalysisData({required final  List<ChartData>? chart, required final  List<ChartVolume>? chartVol, required final  Map<String, EodData>? eodData}): _chart = chart,_chartVol = chartVol,_eodData = eodData;
  factory _AnalysisData.fromJson(Map<String, dynamic> json) => _$AnalysisDataFromJson(json);

 final  List<ChartData>? _chart;
@override List<ChartData>? get chart {
  final value = _chart;
  if (value == null) return null;
  if (_chart is EqualUnmodifiableListView) return _chart;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<ChartVolume>? _chartVol;
@override List<ChartVolume>? get chartVol {
  final value = _chartVol;
  if (value == null) return null;
  if (_chartVol is EqualUnmodifiableListView) return _chartVol;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  Map<String, EodData>? _eodData;
@override Map<String, EodData>? get eodData {
  final value = _eodData;
  if (value == null) return null;
  if (_eodData is EqualUnmodifiableMapView) return _eodData;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of AnalysisData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AnalysisDataCopyWith<_AnalysisData> get copyWith => __$AnalysisDataCopyWithImpl<_AnalysisData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AnalysisDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AnalysisData&&const DeepCollectionEquality().equals(other._chart, _chart)&&const DeepCollectionEquality().equals(other._chartVol, _chartVol)&&const DeepCollectionEquality().equals(other._eodData, _eodData));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_chart),const DeepCollectionEquality().hash(_chartVol),const DeepCollectionEquality().hash(_eodData));

@override
String toString() {
  return 'AnalysisData(chart: $chart, chartVol: $chartVol, eodData: $eodData)';
}


}

/// @nodoc
abstract mixin class _$AnalysisDataCopyWith<$Res> implements $AnalysisDataCopyWith<$Res> {
  factory _$AnalysisDataCopyWith(_AnalysisData value, $Res Function(_AnalysisData) _then) = __$AnalysisDataCopyWithImpl;
@override @useResult
$Res call({
 List<ChartData>? chart, List<ChartVolume>? chartVol, Map<String, EodData>? eodData
});




}
/// @nodoc
class __$AnalysisDataCopyWithImpl<$Res>
    implements _$AnalysisDataCopyWith<$Res> {
  __$AnalysisDataCopyWithImpl(this._self, this._then);

  final _AnalysisData _self;
  final $Res Function(_AnalysisData) _then;

/// Create a copy of AnalysisData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? chart = freezed,Object? chartVol = freezed,Object? eodData = freezed,}) {
  return _then(_AnalysisData(
chart: freezed == chart ? _self._chart : chart // ignore: cast_nullable_to_non_nullable
as List<ChartData>?,chartVol: freezed == chartVol ? _self._chartVol : chartVol // ignore: cast_nullable_to_non_nullable
as List<ChartVolume>?,eodData: freezed == eodData ? _self._eodData : eodData // ignore: cast_nullable_to_non_nullable
as Map<String, EodData>?,
  ));
}


}


/// @nodoc
mixin _$ChartData {

 String? get x; List<double>? get y;
/// Create a copy of ChartData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChartDataCopyWith<ChartData> get copyWith => _$ChartDataCopyWithImpl<ChartData>(this as ChartData, _$identity);

  /// Serializes this ChartData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChartData&&(identical(other.x, x) || other.x == x)&&const DeepCollectionEquality().equals(other.y, y));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,x,const DeepCollectionEquality().hash(y));

@override
String toString() {
  return 'ChartData(x: $x, y: $y)';
}


}

/// @nodoc
abstract mixin class $ChartDataCopyWith<$Res>  {
  factory $ChartDataCopyWith(ChartData value, $Res Function(ChartData) _then) = _$ChartDataCopyWithImpl;
@useResult
$Res call({
 String? x, List<double>? y
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
@pragma('vm:prefer-inline') @override $Res call({Object? x = freezed,Object? y = freezed,}) {
  return _then(_self.copyWith(
x: freezed == x ? _self.x : x // ignore: cast_nullable_to_non_nullable
as String?,y: freezed == y ? _self.y : y // ignore: cast_nullable_to_non_nullable
as List<double>?,
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? x,  List<double>? y)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChartData() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? x,  List<double>? y)  $default,) {final _that = this;
switch (_that) {
case _ChartData():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? x,  List<double>? y)?  $default,) {final _that = this;
switch (_that) {
case _ChartData() when $default != null:
return $default(_that.x,_that.y);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ChartData implements ChartData {
  const _ChartData({required this.x, required final  List<double>? y}): _y = y;
  factory _ChartData.fromJson(Map<String, dynamic> json) => _$ChartDataFromJson(json);

@override final  String? x;
 final  List<double>? _y;
@override List<double>? get y {
  final value = _y;
  if (value == null) return null;
  if (_y is EqualUnmodifiableListView) return _y;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChartData&&(identical(other.x, x) || other.x == x)&&const DeepCollectionEquality().equals(other._y, _y));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,x,const DeepCollectionEquality().hash(_y));

@override
String toString() {
  return 'ChartData(x: $x, y: $y)';
}


}

/// @nodoc
abstract mixin class _$ChartDataCopyWith<$Res> implements $ChartDataCopyWith<$Res> {
  factory _$ChartDataCopyWith(_ChartData value, $Res Function(_ChartData) _then) = __$ChartDataCopyWithImpl;
@override @useResult
$Res call({
 String? x, List<double>? y
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
@override @pragma('vm:prefer-inline') $Res call({Object? x = freezed,Object? y = freezed,}) {
  return _then(_ChartData(
x: freezed == x ? _self.x : x // ignore: cast_nullable_to_non_nullable
as String?,y: freezed == y ? _self._y : y // ignore: cast_nullable_to_non_nullable
as List<double>?,
  ));
}


}


/// @nodoc
mixin _$ChartVolume {

 String? get x; int? get y;@JsonKey(name: 'fillColor') String? get fillColor;
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
 String? x, int? y,@JsonKey(name: 'fillColor') String? fillColor
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
@pragma('vm:prefer-inline') @override $Res call({Object? x = freezed,Object? y = freezed,Object? fillColor = freezed,}) {
  return _then(_self.copyWith(
x: freezed == x ? _self.x : x // ignore: cast_nullable_to_non_nullable
as String?,y: freezed == y ? _self.y : y // ignore: cast_nullable_to_non_nullable
as int?,fillColor: freezed == fillColor ? _self.fillColor : fillColor // ignore: cast_nullable_to_non_nullable
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? x,  int? y, @JsonKey(name: 'fillColor')  String? fillColor)?  $default,{required TResult orElse(),}) {final _that = this;
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? x,  int? y, @JsonKey(name: 'fillColor')  String? fillColor)  $default,) {final _that = this;
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? x,  int? y, @JsonKey(name: 'fillColor')  String? fillColor)?  $default,) {final _that = this;
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
  const _ChartVolume({required this.x, required this.y, @JsonKey(name: 'fillColor') this.fillColor});
  factory _ChartVolume.fromJson(Map<String, dynamic> json) => _$ChartVolumeFromJson(json);

@override final  String? x;
@override final  int? y;
@override@JsonKey(name: 'fillColor') final  String? fillColor;

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
 String? x, int? y,@JsonKey(name: 'fillColor') String? fillColor
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
@override @pragma('vm:prefer-inline') $Res call({Object? x = freezed,Object? y = freezed,Object? fillColor = freezed,}) {
  return _then(_ChartVolume(
x: freezed == x ? _self.x : x // ignore: cast_nullable_to_non_nullable
as String?,y: freezed == y ? _self.y : y // ignore: cast_nullable_to_non_nullable
as int?,fillColor: freezed == fillColor ? _self.fillColor : fillColor // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$EodData {

 double? get open; double? get high; double? get low; double? get close;@JsonKey(name: 'avolume') int? get volume;@JsonKey(name: 'totaltrades') String? get totalTrades; double? get change; double? get changepercent; double? get vwap;
/// Create a copy of EodData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EodDataCopyWith<EodData> get copyWith => _$EodDataCopyWithImpl<EodData>(this as EodData, _$identity);

  /// Serializes this EodData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EodData&&(identical(other.open, open) || other.open == open)&&(identical(other.high, high) || other.high == high)&&(identical(other.low, low) || other.low == low)&&(identical(other.close, close) || other.close == close)&&(identical(other.volume, volume) || other.volume == volume)&&(identical(other.totalTrades, totalTrades) || other.totalTrades == totalTrades)&&(identical(other.change, change) || other.change == change)&&(identical(other.changepercent, changepercent) || other.changepercent == changepercent)&&(identical(other.vwap, vwap) || other.vwap == vwap));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,open,high,low,close,volume,totalTrades,change,changepercent,vwap);

@override
String toString() {
  return 'EodData(open: $open, high: $high, low: $low, close: $close, volume: $volume, totalTrades: $totalTrades, change: $change, changepercent: $changepercent, vwap: $vwap)';
}


}

/// @nodoc
abstract mixin class $EodDataCopyWith<$Res>  {
  factory $EodDataCopyWith(EodData value, $Res Function(EodData) _then) = _$EodDataCopyWithImpl;
@useResult
$Res call({
 double? open, double? high, double? low, double? close,@JsonKey(name: 'avolume') int? volume,@JsonKey(name: 'totaltrades') String? totalTrades, double? change, double? changepercent, double? vwap
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
@pragma('vm:prefer-inline') @override $Res call({Object? open = freezed,Object? high = freezed,Object? low = freezed,Object? close = freezed,Object? volume = freezed,Object? totalTrades = freezed,Object? change = freezed,Object? changepercent = freezed,Object? vwap = freezed,}) {
  return _then(_self.copyWith(
open: freezed == open ? _self.open : open // ignore: cast_nullable_to_non_nullable
as double?,high: freezed == high ? _self.high : high // ignore: cast_nullable_to_non_nullable
as double?,low: freezed == low ? _self.low : low // ignore: cast_nullable_to_non_nullable
as double?,close: freezed == close ? _self.close : close // ignore: cast_nullable_to_non_nullable
as double?,volume: freezed == volume ? _self.volume : volume // ignore: cast_nullable_to_non_nullable
as int?,totalTrades: freezed == totalTrades ? _self.totalTrades : totalTrades // ignore: cast_nullable_to_non_nullable
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double? open,  double? high,  double? low,  double? close, @JsonKey(name: 'avolume')  int? volume, @JsonKey(name: 'totaltrades')  String? totalTrades,  double? change,  double? changepercent,  double? vwap)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EodData() when $default != null:
return $default(_that.open,_that.high,_that.low,_that.close,_that.volume,_that.totalTrades,_that.change,_that.changepercent,_that.vwap);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double? open,  double? high,  double? low,  double? close, @JsonKey(name: 'avolume')  int? volume, @JsonKey(name: 'totaltrades')  String? totalTrades,  double? change,  double? changepercent,  double? vwap)  $default,) {final _that = this;
switch (_that) {
case _EodData():
return $default(_that.open,_that.high,_that.low,_that.close,_that.volume,_that.totalTrades,_that.change,_that.changepercent,_that.vwap);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double? open,  double? high,  double? low,  double? close, @JsonKey(name: 'avolume')  int? volume, @JsonKey(name: 'totaltrades')  String? totalTrades,  double? change,  double? changepercent,  double? vwap)?  $default,) {final _that = this;
switch (_that) {
case _EodData() when $default != null:
return $default(_that.open,_that.high,_that.low,_that.close,_that.volume,_that.totalTrades,_that.change,_that.changepercent,_that.vwap);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EodData implements EodData {
  const _EodData({this.open, this.high, this.low, this.close, @JsonKey(name: 'avolume') this.volume, @JsonKey(name: 'totaltrades') this.totalTrades, this.change, this.changepercent, this.vwap});
  factory _EodData.fromJson(Map<String, dynamic> json) => _$EodDataFromJson(json);

@override final  double? open;
@override final  double? high;
@override final  double? low;
@override final  double? close;
@override@JsonKey(name: 'avolume') final  int? volume;
@override@JsonKey(name: 'totaltrades') final  String? totalTrades;
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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EodData&&(identical(other.open, open) || other.open == open)&&(identical(other.high, high) || other.high == high)&&(identical(other.low, low) || other.low == low)&&(identical(other.close, close) || other.close == close)&&(identical(other.volume, volume) || other.volume == volume)&&(identical(other.totalTrades, totalTrades) || other.totalTrades == totalTrades)&&(identical(other.change, change) || other.change == change)&&(identical(other.changepercent, changepercent) || other.changepercent == changepercent)&&(identical(other.vwap, vwap) || other.vwap == vwap));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,open,high,low,close,volume,totalTrades,change,changepercent,vwap);

@override
String toString() {
  return 'EodData(open: $open, high: $high, low: $low, close: $close, volume: $volume, totalTrades: $totalTrades, change: $change, changepercent: $changepercent, vwap: $vwap)';
}


}

/// @nodoc
abstract mixin class _$EodDataCopyWith<$Res> implements $EodDataCopyWith<$Res> {
  factory _$EodDataCopyWith(_EodData value, $Res Function(_EodData) _then) = __$EodDataCopyWithImpl;
@override @useResult
$Res call({
 double? open, double? high, double? low, double? close,@JsonKey(name: 'avolume') int? volume,@JsonKey(name: 'totaltrades') String? totalTrades, double? change, double? changepercent, double? vwap
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
@override @pragma('vm:prefer-inline') $Res call({Object? open = freezed,Object? high = freezed,Object? low = freezed,Object? close = freezed,Object? volume = freezed,Object? totalTrades = freezed,Object? change = freezed,Object? changepercent = freezed,Object? vwap = freezed,}) {
  return _then(_EodData(
open: freezed == open ? _self.open : open // ignore: cast_nullable_to_non_nullable
as double?,high: freezed == high ? _self.high : high // ignore: cast_nullable_to_non_nullable
as double?,low: freezed == low ? _self.low : low // ignore: cast_nullable_to_non_nullable
as double?,close: freezed == close ? _self.close : close // ignore: cast_nullable_to_non_nullable
as double?,volume: freezed == volume ? _self.volume : volume // ignore: cast_nullable_to_non_nullable
as int?,totalTrades: freezed == totalTrades ? _self.totalTrades : totalTrades // ignore: cast_nullable_to_non_nullable
as String?,change: freezed == change ? _self.change : change // ignore: cast_nullable_to_non_nullable
as double?,changepercent: freezed == changepercent ? _self.changepercent : changepercent // ignore: cast_nullable_to_non_nullable
as double?,vwap: freezed == vwap ? _self.vwap : vwap // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}

// dart format on
