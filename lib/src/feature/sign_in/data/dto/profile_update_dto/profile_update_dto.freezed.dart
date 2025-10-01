// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_update_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProfileUpdateDto {

@JsonKey(name: 'img_url') String get imgUrl; String get name;
/// Create a copy of ProfileUpdateDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProfileUpdateDtoCopyWith<ProfileUpdateDto> get copyWith => _$ProfileUpdateDtoCopyWithImpl<ProfileUpdateDto>(this as ProfileUpdateDto, _$identity);

  /// Serializes this ProfileUpdateDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileUpdateDto&&(identical(other.imgUrl, imgUrl) || other.imgUrl == imgUrl)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,imgUrl,name);

@override
String toString() {
  return 'ProfileUpdateDto(imgUrl: $imgUrl, name: $name)';
}


}

/// @nodoc
abstract mixin class $ProfileUpdateDtoCopyWith<$Res>  {
  factory $ProfileUpdateDtoCopyWith(ProfileUpdateDto value, $Res Function(ProfileUpdateDto) _then) = _$ProfileUpdateDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'img_url') String imgUrl, String name
});




}
/// @nodoc
class _$ProfileUpdateDtoCopyWithImpl<$Res>
    implements $ProfileUpdateDtoCopyWith<$Res> {
  _$ProfileUpdateDtoCopyWithImpl(this._self, this._then);

  final ProfileUpdateDto _self;
  final $Res Function(ProfileUpdateDto) _then;

/// Create a copy of ProfileUpdateDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? imgUrl = null,Object? name = null,}) {
  return _then(_self.copyWith(
imgUrl: null == imgUrl ? _self.imgUrl : imgUrl // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ProfileUpdateDto].
extension ProfileUpdateDtoPatterns on ProfileUpdateDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProfileUpdateDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProfileUpdateDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProfileUpdateDto value)  $default,){
final _that = this;
switch (_that) {
case _ProfileUpdateDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProfileUpdateDto value)?  $default,){
final _that = this;
switch (_that) {
case _ProfileUpdateDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'img_url')  String imgUrl,  String name)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProfileUpdateDto() when $default != null:
return $default(_that.imgUrl,_that.name);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'img_url')  String imgUrl,  String name)  $default,) {final _that = this;
switch (_that) {
case _ProfileUpdateDto():
return $default(_that.imgUrl,_that.name);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'img_url')  String imgUrl,  String name)?  $default,) {final _that = this;
switch (_that) {
case _ProfileUpdateDto() when $default != null:
return $default(_that.imgUrl,_that.name);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProfileUpdateDto implements ProfileUpdateDto {
  const _ProfileUpdateDto({@JsonKey(name: 'img_url') required this.imgUrl, required this.name});
  factory _ProfileUpdateDto.fromJson(Map<String, dynamic> json) => _$ProfileUpdateDtoFromJson(json);

@override@JsonKey(name: 'img_url') final  String imgUrl;
@override final  String name;

/// Create a copy of ProfileUpdateDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProfileUpdateDtoCopyWith<_ProfileUpdateDto> get copyWith => __$ProfileUpdateDtoCopyWithImpl<_ProfileUpdateDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProfileUpdateDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProfileUpdateDto&&(identical(other.imgUrl, imgUrl) || other.imgUrl == imgUrl)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,imgUrl,name);

@override
String toString() {
  return 'ProfileUpdateDto(imgUrl: $imgUrl, name: $name)';
}


}

/// @nodoc
abstract mixin class _$ProfileUpdateDtoCopyWith<$Res> implements $ProfileUpdateDtoCopyWith<$Res> {
  factory _$ProfileUpdateDtoCopyWith(_ProfileUpdateDto value, $Res Function(_ProfileUpdateDto) _then) = __$ProfileUpdateDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'img_url') String imgUrl, String name
});




}
/// @nodoc
class __$ProfileUpdateDtoCopyWithImpl<$Res>
    implements _$ProfileUpdateDtoCopyWith<$Res> {
  __$ProfileUpdateDtoCopyWithImpl(this._self, this._then);

  final _ProfileUpdateDto _self;
  final $Res Function(_ProfileUpdateDto) _then;

/// Create a copy of ProfileUpdateDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? imgUrl = null,Object? name = null,}) {
  return _then(_ProfileUpdateDto(
imgUrl: null == imgUrl ? _self.imgUrl : imgUrl // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
