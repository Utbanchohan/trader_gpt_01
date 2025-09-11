// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'complete_profile_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CompleteProfileDto {

 String get email;@JsonKey(name: 'img_url') String get imgUrl; String get name; String get password;
/// Create a copy of CompleteProfileDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CompleteProfileDtoCopyWith<CompleteProfileDto> get copyWith => _$CompleteProfileDtoCopyWithImpl<CompleteProfileDto>(this as CompleteProfileDto, _$identity);

  /// Serializes this CompleteProfileDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CompleteProfileDto&&(identical(other.email, email) || other.email == email)&&(identical(other.imgUrl, imgUrl) || other.imgUrl == imgUrl)&&(identical(other.name, name) || other.name == name)&&(identical(other.password, password) || other.password == password));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,email,imgUrl,name,password);

@override
String toString() {
  return 'CompleteProfileDto(email: $email, imgUrl: $imgUrl, name: $name, password: $password)';
}


}

/// @nodoc
abstract mixin class $CompleteProfileDtoCopyWith<$Res>  {
  factory $CompleteProfileDtoCopyWith(CompleteProfileDto value, $Res Function(CompleteProfileDto) _then) = _$CompleteProfileDtoCopyWithImpl;
@useResult
$Res call({
 String email,@JsonKey(name: 'img_url') String imgUrl, String name, String password
});




}
/// @nodoc
class _$CompleteProfileDtoCopyWithImpl<$Res>
    implements $CompleteProfileDtoCopyWith<$Res> {
  _$CompleteProfileDtoCopyWithImpl(this._self, this._then);

  final CompleteProfileDto _self;
  final $Res Function(CompleteProfileDto) _then;

/// Create a copy of CompleteProfileDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? email = null,Object? imgUrl = null,Object? name = null,Object? password = null,}) {
  return _then(_self.copyWith(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,imgUrl: null == imgUrl ? _self.imgUrl : imgUrl // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CompleteProfileDto].
extension CompleteProfileDtoPatterns on CompleteProfileDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CompleteProfileDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CompleteProfileDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CompleteProfileDto value)  $default,){
final _that = this;
switch (_that) {
case _CompleteProfileDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CompleteProfileDto value)?  $default,){
final _that = this;
switch (_that) {
case _CompleteProfileDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String email, @JsonKey(name: 'img_url')  String imgUrl,  String name,  String password)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CompleteProfileDto() when $default != null:
return $default(_that.email,_that.imgUrl,_that.name,_that.password);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String email, @JsonKey(name: 'img_url')  String imgUrl,  String name,  String password)  $default,) {final _that = this;
switch (_that) {
case _CompleteProfileDto():
return $default(_that.email,_that.imgUrl,_that.name,_that.password);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String email, @JsonKey(name: 'img_url')  String imgUrl,  String name,  String password)?  $default,) {final _that = this;
switch (_that) {
case _CompleteProfileDto() when $default != null:
return $default(_that.email,_that.imgUrl,_that.name,_that.password);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CompleteProfileDto implements CompleteProfileDto {
  const _CompleteProfileDto({this.email = '', @JsonKey(name: 'img_url') this.imgUrl = '', this.name = '', this.password = ''});
  factory _CompleteProfileDto.fromJson(Map<String, dynamic> json) => _$CompleteProfileDtoFromJson(json);

@override@JsonKey() final  String email;
@override@JsonKey(name: 'img_url') final  String imgUrl;
@override@JsonKey() final  String name;
@override@JsonKey() final  String password;

/// Create a copy of CompleteProfileDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CompleteProfileDtoCopyWith<_CompleteProfileDto> get copyWith => __$CompleteProfileDtoCopyWithImpl<_CompleteProfileDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CompleteProfileDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CompleteProfileDto&&(identical(other.email, email) || other.email == email)&&(identical(other.imgUrl, imgUrl) || other.imgUrl == imgUrl)&&(identical(other.name, name) || other.name == name)&&(identical(other.password, password) || other.password == password));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,email,imgUrl,name,password);

@override
String toString() {
  return 'CompleteProfileDto(email: $email, imgUrl: $imgUrl, name: $name, password: $password)';
}


}

/// @nodoc
abstract mixin class _$CompleteProfileDtoCopyWith<$Res> implements $CompleteProfileDtoCopyWith<$Res> {
  factory _$CompleteProfileDtoCopyWith(_CompleteProfileDto value, $Res Function(_CompleteProfileDto) _then) = __$CompleteProfileDtoCopyWithImpl;
@override @useResult
$Res call({
 String email,@JsonKey(name: 'img_url') String imgUrl, String name, String password
});




}
/// @nodoc
class __$CompleteProfileDtoCopyWithImpl<$Res>
    implements _$CompleteProfileDtoCopyWith<$Res> {
  __$CompleteProfileDtoCopyWithImpl(this._self, this._then);

  final _CompleteProfileDto _self;
  final $Res Function(_CompleteProfileDto) _then;

/// Create a copy of CompleteProfileDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? email = null,Object? imgUrl = null,Object? name = null,Object? password = null,}) {
  return _then(_CompleteProfileDto(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,imgUrl: null == imgUrl ? _self.imgUrl : imgUrl // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
