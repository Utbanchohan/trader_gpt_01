// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'highlight_dto_crypto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$HighlightRequest {

 String get symbol; int get limit; String get sort;
/// Create a copy of HighlightRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HighlightRequestCopyWith<HighlightRequest> get copyWith => _$HighlightRequestCopyWithImpl<HighlightRequest>(this as HighlightRequest, _$identity);

  /// Serializes this HighlightRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HighlightRequest&&(identical(other.symbol, symbol) || other.symbol == symbol)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.sort, sort) || other.sort == sort));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,symbol,limit,sort);

@override
String toString() {
  return 'HighlightRequest(symbol: $symbol, limit: $limit, sort: $sort)';
}


}

/// @nodoc
abstract mixin class $HighlightRequestCopyWith<$Res>  {
  factory $HighlightRequestCopyWith(HighlightRequest value, $Res Function(HighlightRequest) _then) = _$HighlightRequestCopyWithImpl;
@useResult
$Res call({
 String symbol, int limit, String sort
});




}
/// @nodoc
class _$HighlightRequestCopyWithImpl<$Res>
    implements $HighlightRequestCopyWith<$Res> {
  _$HighlightRequestCopyWithImpl(this._self, this._then);

  final HighlightRequest _self;
  final $Res Function(HighlightRequest) _then;

/// Create a copy of HighlightRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? symbol = null,Object? limit = null,Object? sort = null,}) {
  return _then(_self.copyWith(
symbol: null == symbol ? _self.symbol : symbol // ignore: cast_nullable_to_non_nullable
as String,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,sort: null == sort ? _self.sort : sort // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [HighlightRequest].
extension HighlightRequestPatterns on HighlightRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HighlightRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HighlightRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HighlightRequest value)  $default,){
final _that = this;
switch (_that) {
case _HighlightRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HighlightRequest value)?  $default,){
final _that = this;
switch (_that) {
case _HighlightRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String symbol,  int limit,  String sort)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HighlightRequest() when $default != null:
return $default(_that.symbol,_that.limit,_that.sort);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String symbol,  int limit,  String sort)  $default,) {final _that = this;
switch (_that) {
case _HighlightRequest():
return $default(_that.symbol,_that.limit,_that.sort);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String symbol,  int limit,  String sort)?  $default,) {final _that = this;
switch (_that) {
case _HighlightRequest() when $default != null:
return $default(_that.symbol,_that.limit,_that.sort);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _HighlightRequest implements HighlightRequest {
  const _HighlightRequest({required this.symbol, required this.limit, required this.sort});
  factory _HighlightRequest.fromJson(Map<String, dynamic> json) => _$HighlightRequestFromJson(json);

@override final  String symbol;
@override final  int limit;
@override final  String sort;

/// Create a copy of HighlightRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HighlightRequestCopyWith<_HighlightRequest> get copyWith => __$HighlightRequestCopyWithImpl<_HighlightRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HighlightRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HighlightRequest&&(identical(other.symbol, symbol) || other.symbol == symbol)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.sort, sort) || other.sort == sort));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,symbol,limit,sort);

@override
String toString() {
  return 'HighlightRequest(symbol: $symbol, limit: $limit, sort: $sort)';
}


}

/// @nodoc
abstract mixin class _$HighlightRequestCopyWith<$Res> implements $HighlightRequestCopyWith<$Res> {
  factory _$HighlightRequestCopyWith(_HighlightRequest value, $Res Function(_HighlightRequest) _then) = __$HighlightRequestCopyWithImpl;
@override @useResult
$Res call({
 String symbol, int limit, String sort
});




}
/// @nodoc
class __$HighlightRequestCopyWithImpl<$Res>
    implements _$HighlightRequestCopyWith<$Res> {
  __$HighlightRequestCopyWithImpl(this._self, this._then);

  final _HighlightRequest _self;
  final $Res Function(_HighlightRequest) _then;

/// Create a copy of HighlightRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? symbol = null,Object? limit = null,Object? sort = null,}) {
  return _then(_HighlightRequest(
symbol: null == symbol ? _self.symbol : symbol // ignore: cast_nullable_to_non_nullable
as String,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,sort: null == sort ? _self.sort : sort // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
