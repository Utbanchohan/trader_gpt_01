// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stock_price_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StockPrice {

 String get symbol;@JsonKey(name: 'start_date') String get startDate;@JsonKey(name: 'end_date') String get endDate; String get interval;
/// Create a copy of StockPrice
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StockPriceCopyWith<StockPrice> get copyWith => _$StockPriceCopyWithImpl<StockPrice>(this as StockPrice, _$identity);

  /// Serializes this StockPrice to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StockPrice&&(identical(other.symbol, symbol) || other.symbol == symbol)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&(identical(other.interval, interval) || other.interval == interval));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,symbol,startDate,endDate,interval);

@override
String toString() {
  return 'StockPrice(symbol: $symbol, startDate: $startDate, endDate: $endDate, interval: $interval)';
}


}

/// @nodoc
abstract mixin class $StockPriceCopyWith<$Res>  {
  factory $StockPriceCopyWith(StockPrice value, $Res Function(StockPrice) _then) = _$StockPriceCopyWithImpl;
@useResult
$Res call({
 String symbol,@JsonKey(name: 'start_date') String startDate,@JsonKey(name: 'end_date') String endDate, String interval
});




}
/// @nodoc
class _$StockPriceCopyWithImpl<$Res>
    implements $StockPriceCopyWith<$Res> {
  _$StockPriceCopyWithImpl(this._self, this._then);

  final StockPrice _self;
  final $Res Function(StockPrice) _then;

/// Create a copy of StockPrice
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? symbol = null,Object? startDate = null,Object? endDate = null,Object? interval = null,}) {
  return _then(_self.copyWith(
symbol: null == symbol ? _self.symbol : symbol // ignore: cast_nullable_to_non_nullable
as String,startDate: null == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as String,endDate: null == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as String,interval: null == interval ? _self.interval : interval // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [StockPrice].
extension StockPricePatterns on StockPrice {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StockPrice value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StockPrice() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StockPrice value)  $default,){
final _that = this;
switch (_that) {
case _StockPrice():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StockPrice value)?  $default,){
final _that = this;
switch (_that) {
case _StockPrice() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String symbol, @JsonKey(name: 'start_date')  String startDate, @JsonKey(name: 'end_date')  String endDate,  String interval)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StockPrice() when $default != null:
return $default(_that.symbol,_that.startDate,_that.endDate,_that.interval);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String symbol, @JsonKey(name: 'start_date')  String startDate, @JsonKey(name: 'end_date')  String endDate,  String interval)  $default,) {final _that = this;
switch (_that) {
case _StockPrice():
return $default(_that.symbol,_that.startDate,_that.endDate,_that.interval);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String symbol, @JsonKey(name: 'start_date')  String startDate, @JsonKey(name: 'end_date')  String endDate,  String interval)?  $default,) {final _that = this;
switch (_that) {
case _StockPrice() when $default != null:
return $default(_that.symbol,_that.startDate,_that.endDate,_that.interval);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StockPrice implements StockPrice {
  const _StockPrice({required this.symbol, @JsonKey(name: 'start_date') required this.startDate, @JsonKey(name: 'end_date') required this.endDate, required this.interval});
  factory _StockPrice.fromJson(Map<String, dynamic> json) => _$StockPriceFromJson(json);

@override final  String symbol;
@override@JsonKey(name: 'start_date') final  String startDate;
@override@JsonKey(name: 'end_date') final  String endDate;
@override final  String interval;

/// Create a copy of StockPrice
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StockPriceCopyWith<_StockPrice> get copyWith => __$StockPriceCopyWithImpl<_StockPrice>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StockPriceToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StockPrice&&(identical(other.symbol, symbol) || other.symbol == symbol)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&(identical(other.interval, interval) || other.interval == interval));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,symbol,startDate,endDate,interval);

@override
String toString() {
  return 'StockPrice(symbol: $symbol, startDate: $startDate, endDate: $endDate, interval: $interval)';
}


}

/// @nodoc
abstract mixin class _$StockPriceCopyWith<$Res> implements $StockPriceCopyWith<$Res> {
  factory _$StockPriceCopyWith(_StockPrice value, $Res Function(_StockPrice) _then) = __$StockPriceCopyWithImpl;
@override @useResult
$Res call({
 String symbol,@JsonKey(name: 'start_date') String startDate,@JsonKey(name: 'end_date') String endDate, String interval
});




}
/// @nodoc
class __$StockPriceCopyWithImpl<$Res>
    implements _$StockPriceCopyWith<$Res> {
  __$StockPriceCopyWithImpl(this._self, this._then);

  final _StockPrice _self;
  final $Res Function(_StockPrice) _then;

/// Create a copy of StockPrice
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? symbol = null,Object? startDate = null,Object? endDate = null,Object? interval = null,}) {
  return _then(_StockPrice(
symbol: null == symbol ? _self.symbol : symbol // ignore: cast_nullable_to_non_nullable
as String,startDate: null == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as String,endDate: null == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as String,interval: null == interval ? _self.interval : interval // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
