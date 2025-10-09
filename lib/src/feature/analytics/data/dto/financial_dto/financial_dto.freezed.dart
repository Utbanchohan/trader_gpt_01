// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'financial_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PriceRequestDto {

@JsonKey(name: 'is_yearly') bool get isYearly; String get symbol;
/// Create a copy of PriceRequestDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PriceRequestDtoCopyWith<PriceRequestDto> get copyWith => _$PriceRequestDtoCopyWithImpl<PriceRequestDto>(this as PriceRequestDto, _$identity);

  /// Serializes this PriceRequestDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PriceRequestDto&&(identical(other.isYearly, isYearly) || other.isYearly == isYearly)&&(identical(other.symbol, symbol) || other.symbol == symbol));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,isYearly,symbol);

@override
String toString() {
  return 'PriceRequestDto(isYearly: $isYearly, symbol: $symbol)';
}


}

/// @nodoc
abstract mixin class $PriceRequestDtoCopyWith<$Res>  {
  factory $PriceRequestDtoCopyWith(PriceRequestDto value, $Res Function(PriceRequestDto) _then) = _$PriceRequestDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'is_yearly') bool isYearly, String symbol
});




}
/// @nodoc
class _$PriceRequestDtoCopyWithImpl<$Res>
    implements $PriceRequestDtoCopyWith<$Res> {
  _$PriceRequestDtoCopyWithImpl(this._self, this._then);

  final PriceRequestDto _self;
  final $Res Function(PriceRequestDto) _then;

/// Create a copy of PriceRequestDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isYearly = null,Object? symbol = null,}) {
  return _then(_self.copyWith(
isYearly: null == isYearly ? _self.isYearly : isYearly // ignore: cast_nullable_to_non_nullable
as bool,symbol: null == symbol ? _self.symbol : symbol // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [PriceRequestDto].
extension PriceRequestDtoPatterns on PriceRequestDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PriceRequestDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PriceRequestDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PriceRequestDto value)  $default,){
final _that = this;
switch (_that) {
case _PriceRequestDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PriceRequestDto value)?  $default,){
final _that = this;
switch (_that) {
case _PriceRequestDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'is_yearly')  bool isYearly,  String symbol)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PriceRequestDto() when $default != null:
return $default(_that.isYearly,_that.symbol);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'is_yearly')  bool isYearly,  String symbol)  $default,) {final _that = this;
switch (_that) {
case _PriceRequestDto():
return $default(_that.isYearly,_that.symbol);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'is_yearly')  bool isYearly,  String symbol)?  $default,) {final _that = this;
switch (_that) {
case _PriceRequestDto() when $default != null:
return $default(_that.isYearly,_that.symbol);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PriceRequestDto implements PriceRequestDto {
  const _PriceRequestDto({@JsonKey(name: 'is_yearly') required this.isYearly, required this.symbol});
  factory _PriceRequestDto.fromJson(Map<String, dynamic> json) => _$PriceRequestDtoFromJson(json);

@override@JsonKey(name: 'is_yearly') final  bool isYearly;
@override final  String symbol;

/// Create a copy of PriceRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PriceRequestDtoCopyWith<_PriceRequestDto> get copyWith => __$PriceRequestDtoCopyWithImpl<_PriceRequestDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PriceRequestDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PriceRequestDto&&(identical(other.isYearly, isYearly) || other.isYearly == isYearly)&&(identical(other.symbol, symbol) || other.symbol == symbol));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,isYearly,symbol);

@override
String toString() {
  return 'PriceRequestDto(isYearly: $isYearly, symbol: $symbol)';
}


}

/// @nodoc
abstract mixin class _$PriceRequestDtoCopyWith<$Res> implements $PriceRequestDtoCopyWith<$Res> {
  factory _$PriceRequestDtoCopyWith(_PriceRequestDto value, $Res Function(_PriceRequestDto) _then) = __$PriceRequestDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'is_yearly') bool isYearly, String symbol
});




}
/// @nodoc
class __$PriceRequestDtoCopyWithImpl<$Res>
    implements _$PriceRequestDtoCopyWith<$Res> {
  __$PriceRequestDtoCopyWithImpl(this._self, this._then);

  final _PriceRequestDto _self;
  final $Res Function(_PriceRequestDto) _then;

/// Create a copy of PriceRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isYearly = null,Object? symbol = null,}) {
  return _then(_PriceRequestDto(
isYearly: null == isYearly ? _self.isYearly : isYearly // ignore: cast_nullable_to_non_nullable
as bool,symbol: null == symbol ? _self.symbol : symbol // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
