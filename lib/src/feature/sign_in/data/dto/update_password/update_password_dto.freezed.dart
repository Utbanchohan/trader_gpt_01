// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_password_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UpdatePasswordDto {

 String get code; String get email;@JsonKey(name: 'newPassword') String get newPassword;
/// Create a copy of UpdatePasswordDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdatePasswordDtoCopyWith<UpdatePasswordDto> get copyWith => _$UpdatePasswordDtoCopyWithImpl<UpdatePasswordDto>(this as UpdatePasswordDto, _$identity);

  /// Serializes this UpdatePasswordDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdatePasswordDto&&(identical(other.code, code) || other.code == code)&&(identical(other.email, email) || other.email == email)&&(identical(other.newPassword, newPassword) || other.newPassword == newPassword));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,code,email,newPassword);

@override
String toString() {
  return 'UpdatePasswordDto(code: $code, email: $email, newPassword: $newPassword)';
}


}

/// @nodoc
abstract mixin class $UpdatePasswordDtoCopyWith<$Res>  {
  factory $UpdatePasswordDtoCopyWith(UpdatePasswordDto value, $Res Function(UpdatePasswordDto) _then) = _$UpdatePasswordDtoCopyWithImpl;
@useResult
$Res call({
 String code, String email,@JsonKey(name: 'newPassword') String newPassword
});




}
/// @nodoc
class _$UpdatePasswordDtoCopyWithImpl<$Res>
    implements $UpdatePasswordDtoCopyWith<$Res> {
  _$UpdatePasswordDtoCopyWithImpl(this._self, this._then);

  final UpdatePasswordDto _self;
  final $Res Function(UpdatePasswordDto) _then;

/// Create a copy of UpdatePasswordDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? code = null,Object? email = null,Object? newPassword = null,}) {
  return _then(_self.copyWith(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,newPassword: null == newPassword ? _self.newPassword : newPassword // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [UpdatePasswordDto].
extension UpdatePasswordDtoPatterns on UpdatePasswordDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UpdatePasswordDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UpdatePasswordDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UpdatePasswordDto value)  $default,){
final _that = this;
switch (_that) {
case _UpdatePasswordDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UpdatePasswordDto value)?  $default,){
final _that = this;
switch (_that) {
case _UpdatePasswordDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String code,  String email, @JsonKey(name: 'newPassword')  String newPassword)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UpdatePasswordDto() when $default != null:
return $default(_that.code,_that.email,_that.newPassword);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String code,  String email, @JsonKey(name: 'newPassword')  String newPassword)  $default,) {final _that = this;
switch (_that) {
case _UpdatePasswordDto():
return $default(_that.code,_that.email,_that.newPassword);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String code,  String email, @JsonKey(name: 'newPassword')  String newPassword)?  $default,) {final _that = this;
switch (_that) {
case _UpdatePasswordDto() when $default != null:
return $default(_that.code,_that.email,_that.newPassword);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UpdatePasswordDto implements UpdatePasswordDto {
  const _UpdatePasswordDto({required this.code, required this.email, @JsonKey(name: 'newPassword') required this.newPassword});
  factory _UpdatePasswordDto.fromJson(Map<String, dynamic> json) => _$UpdatePasswordDtoFromJson(json);

@override final  String code;
@override final  String email;
@override@JsonKey(name: 'newPassword') final  String newPassword;

/// Create a copy of UpdatePasswordDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdatePasswordDtoCopyWith<_UpdatePasswordDto> get copyWith => __$UpdatePasswordDtoCopyWithImpl<_UpdatePasswordDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UpdatePasswordDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdatePasswordDto&&(identical(other.code, code) || other.code == code)&&(identical(other.email, email) || other.email == email)&&(identical(other.newPassword, newPassword) || other.newPassword == newPassword));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,code,email,newPassword);

@override
String toString() {
  return 'UpdatePasswordDto(code: $code, email: $email, newPassword: $newPassword)';
}


}

/// @nodoc
abstract mixin class _$UpdatePasswordDtoCopyWith<$Res> implements $UpdatePasswordDtoCopyWith<$Res> {
  factory _$UpdatePasswordDtoCopyWith(_UpdatePasswordDto value, $Res Function(_UpdatePasswordDto) _then) = __$UpdatePasswordDtoCopyWithImpl;
@override @useResult
$Res call({
 String code, String email,@JsonKey(name: 'newPassword') String newPassword
});




}
/// @nodoc
class __$UpdatePasswordDtoCopyWithImpl<$Res>
    implements _$UpdatePasswordDtoCopyWith<$Res> {
  __$UpdatePasswordDtoCopyWithImpl(this._self, this._then);

  final _UpdatePasswordDto _self;
  final $Res Function(_UpdatePasswordDto) _then;

/// Create a copy of UpdatePasswordDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? code = null,Object? email = null,Object? newPassword = null,}) {
  return _then(_UpdatePasswordDto(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,newPassword: null == newPassword ? _self.newPassword : newPassword // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
