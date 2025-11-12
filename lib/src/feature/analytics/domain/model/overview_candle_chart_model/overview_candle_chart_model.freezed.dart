// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'overview_candle_chart_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OverviewCandleResponse {

 bool get isSuccess; String get message; int get count; List<OverviewCandleChartModel> get data;
/// Create a copy of OverviewCandleResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OverviewCandleResponseCopyWith<OverviewCandleResponse> get copyWith => _$OverviewCandleResponseCopyWithImpl<OverviewCandleResponse>(this as OverviewCandleResponse, _$identity);

  /// Serializes this OverviewCandleResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OverviewCandleResponse&&(identical(other.isSuccess, isSuccess) || other.isSuccess == isSuccess)&&(identical(other.message, message) || other.message == message)&&(identical(other.count, count) || other.count == count)&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,isSuccess,message,count,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'OverviewCandleResponse(isSuccess: $isSuccess, message: $message, count: $count, data: $data)';
}


}

/// @nodoc
abstract mixin class $OverviewCandleResponseCopyWith<$Res>  {
  factory $OverviewCandleResponseCopyWith(OverviewCandleResponse value, $Res Function(OverviewCandleResponse) _then) = _$OverviewCandleResponseCopyWithImpl;
@useResult
$Res call({
 bool isSuccess, String message, int count, List<OverviewCandleChartModel> data
});




}
/// @nodoc
class _$OverviewCandleResponseCopyWithImpl<$Res>
    implements $OverviewCandleResponseCopyWith<$Res> {
  _$OverviewCandleResponseCopyWithImpl(this._self, this._then);

  final OverviewCandleResponse _self;
  final $Res Function(OverviewCandleResponse) _then;

/// Create a copy of OverviewCandleResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isSuccess = null,Object? message = null,Object? count = null,Object? data = null,}) {
  return _then(_self.copyWith(
isSuccess: null == isSuccess ? _self.isSuccess : isSuccess // ignore: cast_nullable_to_non_nullable
as bool,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<OverviewCandleChartModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [OverviewCandleResponse].
extension OverviewCandleResponsePatterns on OverviewCandleResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OverviewCandleResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OverviewCandleResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OverviewCandleResponse value)  $default,){
final _that = this;
switch (_that) {
case _OverviewCandleResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OverviewCandleResponse value)?  $default,){
final _that = this;
switch (_that) {
case _OverviewCandleResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isSuccess,  String message,  int count,  List<OverviewCandleChartModel> data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OverviewCandleResponse() when $default != null:
return $default(_that.isSuccess,_that.message,_that.count,_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isSuccess,  String message,  int count,  List<OverviewCandleChartModel> data)  $default,) {final _that = this;
switch (_that) {
case _OverviewCandleResponse():
return $default(_that.isSuccess,_that.message,_that.count,_that.data);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isSuccess,  String message,  int count,  List<OverviewCandleChartModel> data)?  $default,) {final _that = this;
switch (_that) {
case _OverviewCandleResponse() when $default != null:
return $default(_that.isSuccess,_that.message,_that.count,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OverviewCandleResponse implements OverviewCandleResponse {
  const _OverviewCandleResponse({required this.isSuccess, required this.message, required this.count, required final  List<OverviewCandleChartModel> data}): _data = data;
  factory _OverviewCandleResponse.fromJson(Map<String, dynamic> json) => _$OverviewCandleResponseFromJson(json);

@override final  bool isSuccess;
@override final  String message;
@override final  int count;
 final  List<OverviewCandleChartModel> _data;
@override List<OverviewCandleChartModel> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}


/// Create a copy of OverviewCandleResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OverviewCandleResponseCopyWith<_OverviewCandleResponse> get copyWith => __$OverviewCandleResponseCopyWithImpl<_OverviewCandleResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OverviewCandleResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OverviewCandleResponse&&(identical(other.isSuccess, isSuccess) || other.isSuccess == isSuccess)&&(identical(other.message, message) || other.message == message)&&(identical(other.count, count) || other.count == count)&&const DeepCollectionEquality().equals(other._data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,isSuccess,message,count,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'OverviewCandleResponse(isSuccess: $isSuccess, message: $message, count: $count, data: $data)';
}


}

/// @nodoc
abstract mixin class _$OverviewCandleResponseCopyWith<$Res> implements $OverviewCandleResponseCopyWith<$Res> {
  factory _$OverviewCandleResponseCopyWith(_OverviewCandleResponse value, $Res Function(_OverviewCandleResponse) _then) = __$OverviewCandleResponseCopyWithImpl;
@override @useResult
$Res call({
 bool isSuccess, String message, int count, List<OverviewCandleChartModel> data
});




}
/// @nodoc
class __$OverviewCandleResponseCopyWithImpl<$Res>
    implements _$OverviewCandleResponseCopyWith<$Res> {
  __$OverviewCandleResponseCopyWithImpl(this._self, this._then);

  final _OverviewCandleResponse _self;
  final $Res Function(_OverviewCandleResponse) _then;

/// Create a copy of OverviewCandleResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isSuccess = null,Object? message = null,Object? count = null,Object? data = null,}) {
  return _then(_OverviewCandleResponse(
isSuccess: null == isSuccess ? _self.isSuccess : isSuccess // ignore: cast_nullable_to_non_nullable
as bool,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<OverviewCandleChartModel>,
  ));
}


}


/// @nodoc
mixin _$OverviewCandleChartModel {

 String get symbol; double get open; double get high; double get low; double get close; int get volume; DateTime get timestamp;
/// Create a copy of OverviewCandleChartModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OverviewCandleChartModelCopyWith<OverviewCandleChartModel> get copyWith => _$OverviewCandleChartModelCopyWithImpl<OverviewCandleChartModel>(this as OverviewCandleChartModel, _$identity);

  /// Serializes this OverviewCandleChartModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OverviewCandleChartModel&&(identical(other.symbol, symbol) || other.symbol == symbol)&&(identical(other.open, open) || other.open == open)&&(identical(other.high, high) || other.high == high)&&(identical(other.low, low) || other.low == low)&&(identical(other.close, close) || other.close == close)&&(identical(other.volume, volume) || other.volume == volume)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,symbol,open,high,low,close,volume,timestamp);

@override
String toString() {
  return 'OverviewCandleChartModel(symbol: $symbol, open: $open, high: $high, low: $low, close: $close, volume: $volume, timestamp: $timestamp)';
}


}

/// @nodoc
abstract mixin class $OverviewCandleChartModelCopyWith<$Res>  {
  factory $OverviewCandleChartModelCopyWith(OverviewCandleChartModel value, $Res Function(OverviewCandleChartModel) _then) = _$OverviewCandleChartModelCopyWithImpl;
@useResult
$Res call({
 String symbol, double open, double high, double low, double close, int volume, DateTime timestamp
});




}
/// @nodoc
class _$OverviewCandleChartModelCopyWithImpl<$Res>
    implements $OverviewCandleChartModelCopyWith<$Res> {
  _$OverviewCandleChartModelCopyWithImpl(this._self, this._then);

  final OverviewCandleChartModel _self;
  final $Res Function(OverviewCandleChartModel) _then;

/// Create a copy of OverviewCandleChartModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? symbol = null,Object? open = null,Object? high = null,Object? low = null,Object? close = null,Object? volume = null,Object? timestamp = null,}) {
  return _then(_self.copyWith(
symbol: null == symbol ? _self.symbol : symbol // ignore: cast_nullable_to_non_nullable
as String,open: null == open ? _self.open : open // ignore: cast_nullable_to_non_nullable
as double,high: null == high ? _self.high : high // ignore: cast_nullable_to_non_nullable
as double,low: null == low ? _self.low : low // ignore: cast_nullable_to_non_nullable
as double,close: null == close ? _self.close : close // ignore: cast_nullable_to_non_nullable
as double,volume: null == volume ? _self.volume : volume // ignore: cast_nullable_to_non_nullable
as int,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [OverviewCandleChartModel].
extension OverviewCandleChartModelPatterns on OverviewCandleChartModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OverviewCandleChartModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OverviewCandleChartModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OverviewCandleChartModel value)  $default,){
final _that = this;
switch (_that) {
case _OverviewCandleChartModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OverviewCandleChartModel value)?  $default,){
final _that = this;
switch (_that) {
case _OverviewCandleChartModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String symbol,  double open,  double high,  double low,  double close,  int volume,  DateTime timestamp)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OverviewCandleChartModel() when $default != null:
return $default(_that.symbol,_that.open,_that.high,_that.low,_that.close,_that.volume,_that.timestamp);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String symbol,  double open,  double high,  double low,  double close,  int volume,  DateTime timestamp)  $default,) {final _that = this;
switch (_that) {
case _OverviewCandleChartModel():
return $default(_that.symbol,_that.open,_that.high,_that.low,_that.close,_that.volume,_that.timestamp);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String symbol,  double open,  double high,  double low,  double close,  int volume,  DateTime timestamp)?  $default,) {final _that = this;
switch (_that) {
case _OverviewCandleChartModel() when $default != null:
return $default(_that.symbol,_that.open,_that.high,_that.low,_that.close,_that.volume,_that.timestamp);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OverviewCandleChartModel implements OverviewCandleChartModel {
  const _OverviewCandleChartModel({required this.symbol, required this.open, required this.high, required this.low, required this.close, required this.volume, required this.timestamp});
  factory _OverviewCandleChartModel.fromJson(Map<String, dynamic> json) => _$OverviewCandleChartModelFromJson(json);

@override final  String symbol;
@override final  double open;
@override final  double high;
@override final  double low;
@override final  double close;
@override final  int volume;
@override final  DateTime timestamp;

/// Create a copy of OverviewCandleChartModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OverviewCandleChartModelCopyWith<_OverviewCandleChartModel> get copyWith => __$OverviewCandleChartModelCopyWithImpl<_OverviewCandleChartModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OverviewCandleChartModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OverviewCandleChartModel&&(identical(other.symbol, symbol) || other.symbol == symbol)&&(identical(other.open, open) || other.open == open)&&(identical(other.high, high) || other.high == high)&&(identical(other.low, low) || other.low == low)&&(identical(other.close, close) || other.close == close)&&(identical(other.volume, volume) || other.volume == volume)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,symbol,open,high,low,close,volume,timestamp);

@override
String toString() {
  return 'OverviewCandleChartModel(symbol: $symbol, open: $open, high: $high, low: $low, close: $close, volume: $volume, timestamp: $timestamp)';
}


}

/// @nodoc
abstract mixin class _$OverviewCandleChartModelCopyWith<$Res> implements $OverviewCandleChartModelCopyWith<$Res> {
  factory _$OverviewCandleChartModelCopyWith(_OverviewCandleChartModel value, $Res Function(_OverviewCandleChartModel) _then) = __$OverviewCandleChartModelCopyWithImpl;
@override @useResult
$Res call({
 String symbol, double open, double high, double low, double close, int volume, DateTime timestamp
});




}
/// @nodoc
class __$OverviewCandleChartModelCopyWithImpl<$Res>
    implements _$OverviewCandleChartModelCopyWith<$Res> {
  __$OverviewCandleChartModelCopyWithImpl(this._self, this._then);

  final _OverviewCandleChartModel _self;
  final $Res Function(_OverviewCandleChartModel) _then;

/// Create a copy of OverviewCandleChartModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? symbol = null,Object? open = null,Object? high = null,Object? low = null,Object? close = null,Object? volume = null,Object? timestamp = null,}) {
  return _then(_OverviewCandleChartModel(
symbol: null == symbol ? _self.symbol : symbol // ignore: cast_nullable_to_non_nullable
as String,open: null == open ? _self.open : open // ignore: cast_nullable_to_non_nullable
as double,high: null == high ? _self.high : high // ignore: cast_nullable_to_non_nullable
as double,low: null == low ? _self.low : low // ignore: cast_nullable_to_non_nullable
as double,close: null == close ? _self.close : close // ignore: cast_nullable_to_non_nullable
as double,volume: null == volume ? _self.volume : volume // ignore: cast_nullable_to_non_nullable
as int,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
