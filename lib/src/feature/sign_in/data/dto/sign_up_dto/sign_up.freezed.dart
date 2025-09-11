// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SignUpDto {

 String get email;
/// Create a copy of SignUpDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignUpDtoCopyWith<SignUpDto> get copyWith => _$SignUpDtoCopyWithImpl<SignUpDto>(this as SignUpDto, _$identity);

  /// Serializes this SignUpDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignUpDto&&(identical(other.email, email) || other.email == email));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,email);

@override
String toString() {
  return 'SignUpDto(email: $email)';
}


}

/// @nodoc
abstract mixin class $SignUpDtoCopyWith<$Res>  {
  factory $SignUpDtoCopyWith(SignUpDto value, $Res Function(SignUpDto) _then) = _$SignUpDtoCopyWithImpl;
@useResult
$Res call({
 String email
});




}
/// @nodoc
class _$SignUpDtoCopyWithImpl<$Res>
    implements $SignUpDtoCopyWith<$Res> {
  _$SignUpDtoCopyWithImpl(this._self, this._then);

  final SignUpDto _self;
  final $Res Function(SignUpDto) _then;

/// Create a copy of SignUpDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? email = null,}) {
  return _then(_self.copyWith(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [SignUpDto].
extension SignUpDtoPatterns on SignUpDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SignUpDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SignUpDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SignUpDto value)  $default,){
final _that = this;
switch (_that) {
case _SignUpDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SignUpDto value)?  $default,){
final _that = this;
switch (_that) {
case _SignUpDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String email)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SignUpDto() when $default != null:
return $default(_that.email);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String email)  $default,) {final _that = this;
switch (_that) {
case _SignUpDto():
return $default(_that.email);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String email)?  $default,) {final _that = this;
switch (_that) {
case _SignUpDto() when $default != null:
return $default(_that.email);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SignUpDto implements SignUpDto {
  const _SignUpDto({this.email = ''});
  factory _SignUpDto.fromJson(Map<String, dynamic> json) => _$SignUpDtoFromJson(json);

@override@JsonKey() final  String email;

/// Create a copy of SignUpDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SignUpDtoCopyWith<_SignUpDto> get copyWith => __$SignUpDtoCopyWithImpl<_SignUpDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SignUpDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SignUpDto&&(identical(other.email, email) || other.email == email));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,email);

@override
String toString() {
  return 'SignUpDto(email: $email)';
}


}

/// @nodoc
abstract mixin class _$SignUpDtoCopyWith<$Res> implements $SignUpDtoCopyWith<$Res> {
  factory _$SignUpDtoCopyWith(_SignUpDto value, $Res Function(_SignUpDto) _then) = __$SignUpDtoCopyWithImpl;
@override @useResult
$Res call({
 String email
});




}
/// @nodoc
class __$SignUpDtoCopyWithImpl<$Res>
    implements _$SignUpDtoCopyWith<$Res> {
  __$SignUpDtoCopyWithImpl(this._self, this._then);

  final _SignUpDto _self;
  final $Res Function(_SignUpDto) _then;

/// Create a copy of SignUpDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? email = null,}) {
  return _then(_SignUpDto(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
