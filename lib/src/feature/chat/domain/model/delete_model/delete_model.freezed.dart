// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DeleteResponse {

 bool get deleted;
/// Create a copy of DeleteResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeleteResponseCopyWith<DeleteResponse> get copyWith => _$DeleteResponseCopyWithImpl<DeleteResponse>(this as DeleteResponse, _$identity);

  /// Serializes this DeleteResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeleteResponse&&(identical(other.deleted, deleted) || other.deleted == deleted));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,deleted);

@override
String toString() {
  return 'DeleteResponse(deleted: $deleted)';
}


}

/// @nodoc
abstract mixin class $DeleteResponseCopyWith<$Res>  {
  factory $DeleteResponseCopyWith(DeleteResponse value, $Res Function(DeleteResponse) _then) = _$DeleteResponseCopyWithImpl;
@useResult
$Res call({
 bool deleted
});




}
/// @nodoc
class _$DeleteResponseCopyWithImpl<$Res>
    implements $DeleteResponseCopyWith<$Res> {
  _$DeleteResponseCopyWithImpl(this._self, this._then);

  final DeleteResponse _self;
  final $Res Function(DeleteResponse) _then;

/// Create a copy of DeleteResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? deleted = null,}) {
  return _then(_self.copyWith(
deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [DeleteResponse].
extension DeleteResponsePatterns on DeleteResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DeleteResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DeleteResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DeleteResponse value)  $default,){
final _that = this;
switch (_that) {
case _DeleteResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DeleteResponse value)?  $default,){
final _that = this;
switch (_that) {
case _DeleteResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool deleted)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DeleteResponse() when $default != null:
return $default(_that.deleted);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool deleted)  $default,) {final _that = this;
switch (_that) {
case _DeleteResponse():
return $default(_that.deleted);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool deleted)?  $default,) {final _that = this;
switch (_that) {
case _DeleteResponse() when $default != null:
return $default(_that.deleted);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DeleteResponse implements DeleteResponse {
  const _DeleteResponse({required this.deleted});
  factory _DeleteResponse.fromJson(Map<String, dynamic> json) => _$DeleteResponseFromJson(json);

@override final  bool deleted;

/// Create a copy of DeleteResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeleteResponseCopyWith<_DeleteResponse> get copyWith => __$DeleteResponseCopyWithImpl<_DeleteResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DeleteResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeleteResponse&&(identical(other.deleted, deleted) || other.deleted == deleted));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,deleted);

@override
String toString() {
  return 'DeleteResponse(deleted: $deleted)';
}


}

/// @nodoc
abstract mixin class _$DeleteResponseCopyWith<$Res> implements $DeleteResponseCopyWith<$Res> {
  factory _$DeleteResponseCopyWith(_DeleteResponse value, $Res Function(_DeleteResponse) _then) = __$DeleteResponseCopyWithImpl;
@override @useResult
$Res call({
 bool deleted
});




}
/// @nodoc
class __$DeleteResponseCopyWithImpl<$Res>
    implements _$DeleteResponseCopyWith<$Res> {
  __$DeleteResponseCopyWithImpl(this._self, this._then);

  final _DeleteResponse _self;
  final $Res Function(_DeleteResponse) _then;

/// Create a copy of DeleteResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? deleted = null,}) {
  return _then(_DeleteResponse(
deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
