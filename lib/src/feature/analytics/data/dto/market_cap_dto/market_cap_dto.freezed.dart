// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'market_cap_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MarketCapRequest {

 String get symbol; String get interval;
/// Create a copy of MarketCapRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MarketCapRequestCopyWith<MarketCapRequest> get copyWith => _$MarketCapRequestCopyWithImpl<MarketCapRequest>(this as MarketCapRequest, _$identity);

  /// Serializes this MarketCapRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MarketCapRequest&&(identical(other.symbol, symbol) || other.symbol == symbol)&&(identical(other.interval, interval) || other.interval == interval));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,symbol,interval);

@override
String toString() {
  return 'MarketCapRequest(symbol: $symbol, interval: $interval)';
}


}

/// @nodoc
abstract mixin class $MarketCapRequestCopyWith<$Res>  {
  factory $MarketCapRequestCopyWith(MarketCapRequest value, $Res Function(MarketCapRequest) _then) = _$MarketCapRequestCopyWithImpl;
@useResult
$Res call({
 String symbol, String interval
});




}
/// @nodoc
class _$MarketCapRequestCopyWithImpl<$Res>
    implements $MarketCapRequestCopyWith<$Res> {
  _$MarketCapRequestCopyWithImpl(this._self, this._then);

  final MarketCapRequest _self;
  final $Res Function(MarketCapRequest) _then;

/// Create a copy of MarketCapRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? symbol = null,Object? interval = null,}) {
  return _then(_self.copyWith(
symbol: null == symbol ? _self.symbol : symbol // ignore: cast_nullable_to_non_nullable
as String,interval: null == interval ? _self.interval : interval // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [MarketCapRequest].
extension MarketCapRequestPatterns on MarketCapRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MarketCapRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MarketCapRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MarketCapRequest value)  $default,){
final _that = this;
switch (_that) {
case _MarketCapRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MarketCapRequest value)?  $default,){
final _that = this;
switch (_that) {
case _MarketCapRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String symbol,  String interval)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MarketCapRequest() when $default != null:
return $default(_that.symbol,_that.interval);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String symbol,  String interval)  $default,) {final _that = this;
switch (_that) {
case _MarketCapRequest():
return $default(_that.symbol,_that.interval);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String symbol,  String interval)?  $default,) {final _that = this;
switch (_that) {
case _MarketCapRequest() when $default != null:
return $default(_that.symbol,_that.interval);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MarketCapRequest implements MarketCapRequest {
  const _MarketCapRequest({required this.symbol, required this.interval});
  factory _MarketCapRequest.fromJson(Map<String, dynamic> json) => _$MarketCapRequestFromJson(json);

@override final  String symbol;
@override final  String interval;

/// Create a copy of MarketCapRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MarketCapRequestCopyWith<_MarketCapRequest> get copyWith => __$MarketCapRequestCopyWithImpl<_MarketCapRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MarketCapRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MarketCapRequest&&(identical(other.symbol, symbol) || other.symbol == symbol)&&(identical(other.interval, interval) || other.interval == interval));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,symbol,interval);

@override
String toString() {
  return 'MarketCapRequest(symbol: $symbol, interval: $interval)';
}


}

/// @nodoc
abstract mixin class _$MarketCapRequestCopyWith<$Res> implements $MarketCapRequestCopyWith<$Res> {
  factory _$MarketCapRequestCopyWith(_MarketCapRequest value, $Res Function(_MarketCapRequest) _then) = __$MarketCapRequestCopyWithImpl;
@override @useResult
$Res call({
 String symbol, String interval
});




}
/// @nodoc
class __$MarketCapRequestCopyWithImpl<$Res>
    implements _$MarketCapRequestCopyWith<$Res> {
  __$MarketCapRequestCopyWithImpl(this._self, this._then);

  final _MarketCapRequest _self;
  final $Res Function(_MarketCapRequest) _then;

/// Create a copy of MarketCapRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? symbol = null,Object? interval = null,}) {
  return _then(_MarketCapRequest(
symbol: null == symbol ? _self.symbol : symbol // ignore: cast_nullable_to_non_nullable
as String,interval: null == interval ? _self.interval : interval // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
