// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'price_comparison_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PriceComparisonDto {

@JsonKey(name: 'days_back') int get daysBack;@JsonKey(name: 'symbol_1') String get symbol1;@JsonKey(name: 'symbol_2') String get symbol2;
/// Create a copy of PriceComparisonDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PriceComparisonDtoCopyWith<PriceComparisonDto> get copyWith => _$PriceComparisonDtoCopyWithImpl<PriceComparisonDto>(this as PriceComparisonDto, _$identity);

  /// Serializes this PriceComparisonDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PriceComparisonDto&&(identical(other.daysBack, daysBack) || other.daysBack == daysBack)&&(identical(other.symbol1, symbol1) || other.symbol1 == symbol1)&&(identical(other.symbol2, symbol2) || other.symbol2 == symbol2));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,daysBack,symbol1,symbol2);

@override
String toString() {
  return 'PriceComparisonDto(daysBack: $daysBack, symbol1: $symbol1, symbol2: $symbol2)';
}


}

/// @nodoc
abstract mixin class $PriceComparisonDtoCopyWith<$Res>  {
  factory $PriceComparisonDtoCopyWith(PriceComparisonDto value, $Res Function(PriceComparisonDto) _then) = _$PriceComparisonDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'days_back') int daysBack,@JsonKey(name: 'symbol_1') String symbol1,@JsonKey(name: 'symbol_2') String symbol2
});




}
/// @nodoc
class _$PriceComparisonDtoCopyWithImpl<$Res>
    implements $PriceComparisonDtoCopyWith<$Res> {
  _$PriceComparisonDtoCopyWithImpl(this._self, this._then);

  final PriceComparisonDto _self;
  final $Res Function(PriceComparisonDto) _then;

/// Create a copy of PriceComparisonDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? daysBack = null,Object? symbol1 = null,Object? symbol2 = null,}) {
  return _then(_self.copyWith(
daysBack: null == daysBack ? _self.daysBack : daysBack // ignore: cast_nullable_to_non_nullable
as int,symbol1: null == symbol1 ? _self.symbol1 : symbol1 // ignore: cast_nullable_to_non_nullable
as String,symbol2: null == symbol2 ? _self.symbol2 : symbol2 // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [PriceComparisonDto].
extension PriceComparisonDtoPatterns on PriceComparisonDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PriceComparisonDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PriceComparisonDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PriceComparisonDto value)  $default,){
final _that = this;
switch (_that) {
case _PriceComparisonDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PriceComparisonDto value)?  $default,){
final _that = this;
switch (_that) {
case _PriceComparisonDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'days_back')  int daysBack, @JsonKey(name: 'symbol_1')  String symbol1, @JsonKey(name: 'symbol_2')  String symbol2)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PriceComparisonDto() when $default != null:
return $default(_that.daysBack,_that.symbol1,_that.symbol2);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'days_back')  int daysBack, @JsonKey(name: 'symbol_1')  String symbol1, @JsonKey(name: 'symbol_2')  String symbol2)  $default,) {final _that = this;
switch (_that) {
case _PriceComparisonDto():
return $default(_that.daysBack,_that.symbol1,_that.symbol2);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'days_back')  int daysBack, @JsonKey(name: 'symbol_1')  String symbol1, @JsonKey(name: 'symbol_2')  String symbol2)?  $default,) {final _that = this;
switch (_that) {
case _PriceComparisonDto() when $default != null:
return $default(_that.daysBack,_that.symbol1,_that.symbol2);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PriceComparisonDto implements PriceComparisonDto {
  const _PriceComparisonDto({@JsonKey(name: 'days_back') required this.daysBack, @JsonKey(name: 'symbol_1') required this.symbol1, @JsonKey(name: 'symbol_2') required this.symbol2});
  factory _PriceComparisonDto.fromJson(Map<String, dynamic> json) => _$PriceComparisonDtoFromJson(json);

@override@JsonKey(name: 'days_back') final  int daysBack;
@override@JsonKey(name: 'symbol_1') final  String symbol1;
@override@JsonKey(name: 'symbol_2') final  String symbol2;

/// Create a copy of PriceComparisonDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PriceComparisonDtoCopyWith<_PriceComparisonDto> get copyWith => __$PriceComparisonDtoCopyWithImpl<_PriceComparisonDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PriceComparisonDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PriceComparisonDto&&(identical(other.daysBack, daysBack) || other.daysBack == daysBack)&&(identical(other.symbol1, symbol1) || other.symbol1 == symbol1)&&(identical(other.symbol2, symbol2) || other.symbol2 == symbol2));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,daysBack,symbol1,symbol2);

@override
String toString() {
  return 'PriceComparisonDto(daysBack: $daysBack, symbol1: $symbol1, symbol2: $symbol2)';
}


}

/// @nodoc
abstract mixin class _$PriceComparisonDtoCopyWith<$Res> implements $PriceComparisonDtoCopyWith<$Res> {
  factory _$PriceComparisonDtoCopyWith(_PriceComparisonDto value, $Res Function(_PriceComparisonDto) _then) = __$PriceComparisonDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'days_back') int daysBack,@JsonKey(name: 'symbol_1') String symbol1,@JsonKey(name: 'symbol_2') String symbol2
});




}
/// @nodoc
class __$PriceComparisonDtoCopyWithImpl<$Res>
    implements _$PriceComparisonDtoCopyWith<$Res> {
  __$PriceComparisonDtoCopyWithImpl(this._self, this._then);

  final _PriceComparisonDto _self;
  final $Res Function(_PriceComparisonDto) _then;

/// Create a copy of PriceComparisonDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? daysBack = null,Object? symbol1 = null,Object? symbol2 = null,}) {
  return _then(_PriceComparisonDto(
daysBack: null == daysBack ? _self.daysBack : daysBack // ignore: cast_nullable_to_non_nullable
as int,symbol1: null == symbol1 ? _self.symbol1 : symbol1 // ignore: cast_nullable_to_non_nullable
as String,symbol2: null == symbol2 ? _self.symbol2 : symbol2 // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
