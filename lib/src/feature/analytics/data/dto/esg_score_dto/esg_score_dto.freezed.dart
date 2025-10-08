// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'esg_score_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EsgDto {

 String get symbol;@JsonKey(name: 'start_date') DateTime get startDate;@JsonKey(name: 'end_date') DateTime get endDate;
/// Create a copy of EsgDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EsgDtoCopyWith<EsgDto> get copyWith => _$EsgDtoCopyWithImpl<EsgDto>(this as EsgDto, _$identity);

  /// Serializes this EsgDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EsgDto&&(identical(other.symbol, symbol) || other.symbol == symbol)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,symbol,startDate,endDate);

@override
String toString() {
  return 'EsgDto(symbol: $symbol, startDate: $startDate, endDate: $endDate)';
}


}

/// @nodoc
abstract mixin class $EsgDtoCopyWith<$Res>  {
  factory $EsgDtoCopyWith(EsgDto value, $Res Function(EsgDto) _then) = _$EsgDtoCopyWithImpl;
@useResult
$Res call({
 String symbol,@JsonKey(name: 'start_date') DateTime startDate,@JsonKey(name: 'end_date') DateTime endDate
});




}
/// @nodoc
class _$EsgDtoCopyWithImpl<$Res>
    implements $EsgDtoCopyWith<$Res> {
  _$EsgDtoCopyWithImpl(this._self, this._then);

  final EsgDto _self;
  final $Res Function(EsgDto) _then;

/// Create a copy of EsgDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? symbol = null,Object? startDate = null,Object? endDate = null,}) {
  return _then(_self.copyWith(
symbol: null == symbol ? _self.symbol : symbol // ignore: cast_nullable_to_non_nullable
as String,startDate: null == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as DateTime,endDate: null == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [EsgDto].
extension EsgDtoPatterns on EsgDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EsgDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EsgDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EsgDto value)  $default,){
final _that = this;
switch (_that) {
case _EsgDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EsgDto value)?  $default,){
final _that = this;
switch (_that) {
case _EsgDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String symbol, @JsonKey(name: 'start_date')  DateTime startDate, @JsonKey(name: 'end_date')  DateTime endDate)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EsgDto() when $default != null:
return $default(_that.symbol,_that.startDate,_that.endDate);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String symbol, @JsonKey(name: 'start_date')  DateTime startDate, @JsonKey(name: 'end_date')  DateTime endDate)  $default,) {final _that = this;
switch (_that) {
case _EsgDto():
return $default(_that.symbol,_that.startDate,_that.endDate);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String symbol, @JsonKey(name: 'start_date')  DateTime startDate, @JsonKey(name: 'end_date')  DateTime endDate)?  $default,) {final _that = this;
switch (_that) {
case _EsgDto() when $default != null:
return $default(_that.symbol,_that.startDate,_that.endDate);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EsgDto implements EsgDto {
  const _EsgDto({required this.symbol, @JsonKey(name: 'start_date') required this.startDate, @JsonKey(name: 'end_date') required this.endDate});
  factory _EsgDto.fromJson(Map<String, dynamic> json) => _$EsgDtoFromJson(json);

@override final  String symbol;
@override@JsonKey(name: 'start_date') final  DateTime startDate;
@override@JsonKey(name: 'end_date') final  DateTime endDate;

/// Create a copy of EsgDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EsgDtoCopyWith<_EsgDto> get copyWith => __$EsgDtoCopyWithImpl<_EsgDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EsgDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EsgDto&&(identical(other.symbol, symbol) || other.symbol == symbol)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,symbol,startDate,endDate);

@override
String toString() {
  return 'EsgDto(symbol: $symbol, startDate: $startDate, endDate: $endDate)';
}


}

/// @nodoc
abstract mixin class _$EsgDtoCopyWith<$Res> implements $EsgDtoCopyWith<$Res> {
  factory _$EsgDtoCopyWith(_EsgDto value, $Res Function(_EsgDto) _then) = __$EsgDtoCopyWithImpl;
@override @useResult
$Res call({
 String symbol,@JsonKey(name: 'start_date') DateTime startDate,@JsonKey(name: 'end_date') DateTime endDate
});




}
/// @nodoc
class __$EsgDtoCopyWithImpl<$Res>
    implements _$EsgDtoCopyWith<$Res> {
  __$EsgDtoCopyWithImpl(this._self, this._then);

  final _EsgDto _self;
  final $Res Function(_EsgDto) _then;

/// Create a copy of EsgDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? symbol = null,Object? startDate = null,Object? endDate = null,}) {
  return _then(_EsgDto(
symbol: null == symbol ? _self.symbol : symbol // ignore: cast_nullable_to_non_nullable
as String,startDate: null == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as DateTime,endDate: null == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
