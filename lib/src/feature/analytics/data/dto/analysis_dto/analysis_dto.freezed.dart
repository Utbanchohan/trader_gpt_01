// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'analysis_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ChartRequestDto {

@JsonKey(name: 'symbol') String get symbol;@JsonKey(name: 'interval') String get interval;@JsonKey(name: 'start_date') String get startDate;@JsonKey(name: 'end_date') String get endDate;
/// Create a copy of ChartRequestDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChartRequestDtoCopyWith<ChartRequestDto> get copyWith => _$ChartRequestDtoCopyWithImpl<ChartRequestDto>(this as ChartRequestDto, _$identity);

  /// Serializes this ChartRequestDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChartRequestDto&&(identical(other.symbol, symbol) || other.symbol == symbol)&&(identical(other.interval, interval) || other.interval == interval)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,symbol,interval,startDate,endDate);

@override
String toString() {
  return 'ChartRequestDto(symbol: $symbol, interval: $interval, startDate: $startDate, endDate: $endDate)';
}


}

/// @nodoc
abstract mixin class $ChartRequestDtoCopyWith<$Res>  {
  factory $ChartRequestDtoCopyWith(ChartRequestDto value, $Res Function(ChartRequestDto) _then) = _$ChartRequestDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'symbol') String symbol,@JsonKey(name: 'interval') String interval,@JsonKey(name: 'start_date') String startDate,@JsonKey(name: 'end_date') String endDate
});




}
/// @nodoc
class _$ChartRequestDtoCopyWithImpl<$Res>
    implements $ChartRequestDtoCopyWith<$Res> {
  _$ChartRequestDtoCopyWithImpl(this._self, this._then);

  final ChartRequestDto _self;
  final $Res Function(ChartRequestDto) _then;

/// Create a copy of ChartRequestDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? symbol = null,Object? interval = null,Object? startDate = null,Object? endDate = null,}) {
  return _then(_self.copyWith(
symbol: null == symbol ? _self.symbol : symbol // ignore: cast_nullable_to_non_nullable
as String,interval: null == interval ? _self.interval : interval // ignore: cast_nullable_to_non_nullable
as String,startDate: null == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as String,endDate: null == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ChartRequestDto].
extension ChartRequestDtoPatterns on ChartRequestDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChartRequestDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChartRequestDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChartRequestDto value)  $default,){
final _that = this;
switch (_that) {
case _ChartRequestDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChartRequestDto value)?  $default,){
final _that = this;
switch (_that) {
case _ChartRequestDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'symbol')  String symbol, @JsonKey(name: 'interval')  String interval, @JsonKey(name: 'start_date')  String startDate, @JsonKey(name: 'end_date')  String endDate)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChartRequestDto() when $default != null:
return $default(_that.symbol,_that.interval,_that.startDate,_that.endDate);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'symbol')  String symbol, @JsonKey(name: 'interval')  String interval, @JsonKey(name: 'start_date')  String startDate, @JsonKey(name: 'end_date')  String endDate)  $default,) {final _that = this;
switch (_that) {
case _ChartRequestDto():
return $default(_that.symbol,_that.interval,_that.startDate,_that.endDate);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'symbol')  String symbol, @JsonKey(name: 'interval')  String interval, @JsonKey(name: 'start_date')  String startDate, @JsonKey(name: 'end_date')  String endDate)?  $default,) {final _that = this;
switch (_that) {
case _ChartRequestDto() when $default != null:
return $default(_that.symbol,_that.interval,_that.startDate,_that.endDate);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ChartRequestDto implements ChartRequestDto {
  const _ChartRequestDto({@JsonKey(name: 'symbol') required this.symbol, @JsonKey(name: 'interval') required this.interval, @JsonKey(name: 'start_date') required this.startDate, @JsonKey(name: 'end_date') required this.endDate});
  factory _ChartRequestDto.fromJson(Map<String, dynamic> json) => _$ChartRequestDtoFromJson(json);

@override@JsonKey(name: 'symbol') final  String symbol;
@override@JsonKey(name: 'interval') final  String interval;
@override@JsonKey(name: 'start_date') final  String startDate;
@override@JsonKey(name: 'end_date') final  String endDate;

/// Create a copy of ChartRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChartRequestDtoCopyWith<_ChartRequestDto> get copyWith => __$ChartRequestDtoCopyWithImpl<_ChartRequestDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChartRequestDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChartRequestDto&&(identical(other.symbol, symbol) || other.symbol == symbol)&&(identical(other.interval, interval) || other.interval == interval)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,symbol,interval,startDate,endDate);

@override
String toString() {
  return 'ChartRequestDto(symbol: $symbol, interval: $interval, startDate: $startDate, endDate: $endDate)';
}


}

/// @nodoc
abstract mixin class _$ChartRequestDtoCopyWith<$Res> implements $ChartRequestDtoCopyWith<$Res> {
  factory _$ChartRequestDtoCopyWith(_ChartRequestDto value, $Res Function(_ChartRequestDto) _then) = __$ChartRequestDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'symbol') String symbol,@JsonKey(name: 'interval') String interval,@JsonKey(name: 'start_date') String startDate,@JsonKey(name: 'end_date') String endDate
});




}
/// @nodoc
class __$ChartRequestDtoCopyWithImpl<$Res>
    implements _$ChartRequestDtoCopyWith<$Res> {
  __$ChartRequestDtoCopyWithImpl(this._self, this._then);

  final _ChartRequestDto _self;
  final $Res Function(_ChartRequestDto) _then;

/// Create a copy of ChartRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? symbol = null,Object? interval = null,Object? startDate = null,Object? endDate = null,}) {
  return _then(_ChartRequestDto(
symbol: null == symbol ? _self.symbol : symbol // ignore: cast_nullable_to_non_nullable
as String,interval: null == interval ? _self.interval : interval // ignore: cast_nullable_to_non_nullable
as String,startDate: null == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as String,endDate: null == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
