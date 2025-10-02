// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'overview_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SymbolDto {

 String get symbol;
/// Create a copy of SymbolDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SymbolDtoCopyWith<SymbolDto> get copyWith => _$SymbolDtoCopyWithImpl<SymbolDto>(this as SymbolDto, _$identity);

  /// Serializes this SymbolDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SymbolDto&&(identical(other.symbol, symbol) || other.symbol == symbol));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,symbol);

@override
String toString() {
  return 'SymbolDto(symbol: $symbol)';
}


}

/// @nodoc
abstract mixin class $SymbolDtoCopyWith<$Res>  {
  factory $SymbolDtoCopyWith(SymbolDto value, $Res Function(SymbolDto) _then) = _$SymbolDtoCopyWithImpl;
@useResult
$Res call({
 String symbol
});




}
/// @nodoc
class _$SymbolDtoCopyWithImpl<$Res>
    implements $SymbolDtoCopyWith<$Res> {
  _$SymbolDtoCopyWithImpl(this._self, this._then);

  final SymbolDto _self;
  final $Res Function(SymbolDto) _then;

/// Create a copy of SymbolDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? symbol = null,}) {
  return _then(_self.copyWith(
symbol: null == symbol ? _self.symbol : symbol // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [SymbolDto].
extension SymbolDtoPatterns on SymbolDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SymbolDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SymbolDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SymbolDto value)  $default,){
final _that = this;
switch (_that) {
case _SymbolDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SymbolDto value)?  $default,){
final _that = this;
switch (_that) {
case _SymbolDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String symbol)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SymbolDto() when $default != null:
return $default(_that.symbol);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String symbol)  $default,) {final _that = this;
switch (_that) {
case _SymbolDto():
return $default(_that.symbol);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String symbol)?  $default,) {final _that = this;
switch (_that) {
case _SymbolDto() when $default != null:
return $default(_that.symbol);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SymbolDto implements SymbolDto {
  const _SymbolDto({required this.symbol});
  factory _SymbolDto.fromJson(Map<String, dynamic> json) => _$SymbolDtoFromJson(json);

@override final  String symbol;

/// Create a copy of SymbolDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SymbolDtoCopyWith<_SymbolDto> get copyWith => __$SymbolDtoCopyWithImpl<_SymbolDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SymbolDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SymbolDto&&(identical(other.symbol, symbol) || other.symbol == symbol));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,symbol);

@override
String toString() {
  return 'SymbolDto(symbol: $symbol)';
}


}

/// @nodoc
abstract mixin class _$SymbolDtoCopyWith<$Res> implements $SymbolDtoCopyWith<$Res> {
  factory _$SymbolDtoCopyWith(_SymbolDto value, $Res Function(_SymbolDto) _then) = __$SymbolDtoCopyWithImpl;
@override @useResult
$Res call({
 String symbol
});




}
/// @nodoc
class __$SymbolDtoCopyWithImpl<$Res>
    implements _$SymbolDtoCopyWith<$Res> {
  __$SymbolDtoCopyWithImpl(this._self, this._then);

  final _SymbolDto _self;
  final $Res Function(_SymbolDto) _then;

/// Create a copy of SymbolDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? symbol = null,}) {
  return _then(_SymbolDto(
symbol: null == symbol ? _self.symbol : symbol // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
