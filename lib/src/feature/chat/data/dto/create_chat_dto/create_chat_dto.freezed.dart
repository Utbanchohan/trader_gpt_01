// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_chat_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreateChatDto {

 String get companyName; String get stockId; String get symbol; String get type;
/// Create a copy of CreateChatDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateChatDtoCopyWith<CreateChatDto> get copyWith => _$CreateChatDtoCopyWithImpl<CreateChatDto>(this as CreateChatDto, _$identity);

  /// Serializes this CreateChatDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateChatDto&&(identical(other.companyName, companyName) || other.companyName == companyName)&&(identical(other.stockId, stockId) || other.stockId == stockId)&&(identical(other.symbol, symbol) || other.symbol == symbol)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,companyName,stockId,symbol,type);

@override
String toString() {
  return 'CreateChatDto(companyName: $companyName, stockId: $stockId, symbol: $symbol, type: $type)';
}


}

/// @nodoc
abstract mixin class $CreateChatDtoCopyWith<$Res>  {
  factory $CreateChatDtoCopyWith(CreateChatDto value, $Res Function(CreateChatDto) _then) = _$CreateChatDtoCopyWithImpl;
@useResult
$Res call({
 String companyName, String stockId, String symbol, String type
});




}
/// @nodoc
class _$CreateChatDtoCopyWithImpl<$Res>
    implements $CreateChatDtoCopyWith<$Res> {
  _$CreateChatDtoCopyWithImpl(this._self, this._then);

  final CreateChatDto _self;
  final $Res Function(CreateChatDto) _then;

/// Create a copy of CreateChatDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? companyName = null,Object? stockId = null,Object? symbol = null,Object? type = null,}) {
  return _then(_self.copyWith(
companyName: null == companyName ? _self.companyName : companyName // ignore: cast_nullable_to_non_nullable
as String,stockId: null == stockId ? _self.stockId : stockId // ignore: cast_nullable_to_non_nullable
as String,symbol: null == symbol ? _self.symbol : symbol // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateChatDto].
extension CreateChatDtoPatterns on CreateChatDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateChatDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateChatDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateChatDto value)  $default,){
final _that = this;
switch (_that) {
case _CreateChatDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateChatDto value)?  $default,){
final _that = this;
switch (_that) {
case _CreateChatDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String companyName,  String stockId,  String symbol,  String type)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateChatDto() when $default != null:
return $default(_that.companyName,_that.stockId,_that.symbol,_that.type);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String companyName,  String stockId,  String symbol,  String type)  $default,) {final _that = this;
switch (_that) {
case _CreateChatDto():
return $default(_that.companyName,_that.stockId,_that.symbol,_that.type);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String companyName,  String stockId,  String symbol,  String type)?  $default,) {final _that = this;
switch (_that) {
case _CreateChatDto() when $default != null:
return $default(_that.companyName,_that.stockId,_that.symbol,_that.type);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateChatDto implements CreateChatDto {
  const _CreateChatDto({required this.companyName, required this.stockId, required this.symbol, required this.type});
  factory _CreateChatDto.fromJson(Map<String, dynamic> json) => _$CreateChatDtoFromJson(json);

@override final  String companyName;
@override final  String stockId;
@override final  String symbol;
@override final  String type;

/// Create a copy of CreateChatDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateChatDtoCopyWith<_CreateChatDto> get copyWith => __$CreateChatDtoCopyWithImpl<_CreateChatDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateChatDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateChatDto&&(identical(other.companyName, companyName) || other.companyName == companyName)&&(identical(other.stockId, stockId) || other.stockId == stockId)&&(identical(other.symbol, symbol) || other.symbol == symbol)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,companyName,stockId,symbol,type);

@override
String toString() {
  return 'CreateChatDto(companyName: $companyName, stockId: $stockId, symbol: $symbol, type: $type)';
}


}

/// @nodoc
abstract mixin class _$CreateChatDtoCopyWith<$Res> implements $CreateChatDtoCopyWith<$Res> {
  factory _$CreateChatDtoCopyWith(_CreateChatDto value, $Res Function(_CreateChatDto) _then) = __$CreateChatDtoCopyWithImpl;
@override @useResult
$Res call({
 String companyName, String stockId, String symbol, String type
});




}
/// @nodoc
class __$CreateChatDtoCopyWithImpl<$Res>
    implements _$CreateChatDtoCopyWith<$Res> {
  __$CreateChatDtoCopyWithImpl(this._self, this._then);

  final _CreateChatDto _self;
  final $Res Function(_CreateChatDto) _then;

/// Create a copy of CreateChatDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? companyName = null,Object? stockId = null,Object? symbol = null,Object? type = null,}) {
  return _then(_CreateChatDto(
companyName: null == companyName ? _self.companyName : companyName // ignore: cast_nullable_to_non_nullable
as String,stockId: null == stockId ? _self.stockId : stockId // ignore: cast_nullable_to_non_nullable
as String,symbol: null == symbol ? _self.symbol : symbol // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
