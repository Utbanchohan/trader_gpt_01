// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'market_login_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MarketLoginDto {

 String get username; String get password;
/// Create a copy of MarketLoginDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MarketLoginDtoCopyWith<MarketLoginDto> get copyWith => _$MarketLoginDtoCopyWithImpl<MarketLoginDto>(this as MarketLoginDto, _$identity);

  /// Serializes this MarketLoginDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MarketLoginDto&&(identical(other.username, username) || other.username == username)&&(identical(other.password, password) || other.password == password));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,username,password);

@override
String toString() {
  return 'MarketLoginDto(username: $username, password: $password)';
}


}

/// @nodoc
abstract mixin class $MarketLoginDtoCopyWith<$Res>  {
  factory $MarketLoginDtoCopyWith(MarketLoginDto value, $Res Function(MarketLoginDto) _then) = _$MarketLoginDtoCopyWithImpl;
@useResult
$Res call({
 String username, String password
});




}
/// @nodoc
class _$MarketLoginDtoCopyWithImpl<$Res>
    implements $MarketLoginDtoCopyWith<$Res> {
  _$MarketLoginDtoCopyWithImpl(this._self, this._then);

  final MarketLoginDto _self;
  final $Res Function(MarketLoginDto) _then;

/// Create a copy of MarketLoginDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? username = null,Object? password = null,}) {
  return _then(_self.copyWith(
username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [MarketLoginDto].
extension MarketLoginDtoPatterns on MarketLoginDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MarketLoginDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MarketLoginDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MarketLoginDto value)  $default,){
final _that = this;
switch (_that) {
case _MarketLoginDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MarketLoginDto value)?  $default,){
final _that = this;
switch (_that) {
case _MarketLoginDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String username,  String password)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MarketLoginDto() when $default != null:
return $default(_that.username,_that.password);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String username,  String password)  $default,) {final _that = this;
switch (_that) {
case _MarketLoginDto():
return $default(_that.username,_that.password);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String username,  String password)?  $default,) {final _that = this;
switch (_that) {
case _MarketLoginDto() when $default != null:
return $default(_that.username,_that.password);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MarketLoginDto implements MarketLoginDto {
  const _MarketLoginDto({this.username = '', this.password = ''});
  factory _MarketLoginDto.fromJson(Map<String, dynamic> json) => _$MarketLoginDtoFromJson(json);

@override@JsonKey() final  String username;
@override@JsonKey() final  String password;

/// Create a copy of MarketLoginDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MarketLoginDtoCopyWith<_MarketLoginDto> get copyWith => __$MarketLoginDtoCopyWithImpl<_MarketLoginDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MarketLoginDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MarketLoginDto&&(identical(other.username, username) || other.username == username)&&(identical(other.password, password) || other.password == password));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,username,password);

@override
String toString() {
  return 'MarketLoginDto(username: $username, password: $password)';
}


}

/// @nodoc
abstract mixin class _$MarketLoginDtoCopyWith<$Res> implements $MarketLoginDtoCopyWith<$Res> {
  factory _$MarketLoginDtoCopyWith(_MarketLoginDto value, $Res Function(_MarketLoginDto) _then) = __$MarketLoginDtoCopyWithImpl;
@override @useResult
$Res call({
 String username, String password
});




}
/// @nodoc
class __$MarketLoginDtoCopyWithImpl<$Res>
    implements _$MarketLoginDtoCopyWith<$Res> {
  __$MarketLoginDtoCopyWithImpl(this._self, this._then);

  final _MarketLoginDto _self;
  final $Res Function(_MarketLoginDto) _then;

/// Create a copy of MarketLoginDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? username = null,Object? password = null,}) {
  return _then(_MarketLoginDto(
username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
