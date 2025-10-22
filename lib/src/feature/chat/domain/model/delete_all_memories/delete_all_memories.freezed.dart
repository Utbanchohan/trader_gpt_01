// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_all_memories.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DeleteAllMemoriesModel {

 String? get message;@JsonKey(name: 'user_id') String? get userId;
/// Create a copy of DeleteAllMemoriesModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeleteAllMemoriesModelCopyWith<DeleteAllMemoriesModel> get copyWith => _$DeleteAllMemoriesModelCopyWithImpl<DeleteAllMemoriesModel>(this as DeleteAllMemoriesModel, _$identity);

  /// Serializes this DeleteAllMemoriesModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeleteAllMemoriesModel&&(identical(other.message, message) || other.message == message)&&(identical(other.userId, userId) || other.userId == userId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message,userId);

@override
String toString() {
  return 'DeleteAllMemoriesModel(message: $message, userId: $userId)';
}


}

/// @nodoc
abstract mixin class $DeleteAllMemoriesModelCopyWith<$Res>  {
  factory $DeleteAllMemoriesModelCopyWith(DeleteAllMemoriesModel value, $Res Function(DeleteAllMemoriesModel) _then) = _$DeleteAllMemoriesModelCopyWithImpl;
@useResult
$Res call({
 String? message,@JsonKey(name: 'user_id') String? userId
});




}
/// @nodoc
class _$DeleteAllMemoriesModelCopyWithImpl<$Res>
    implements $DeleteAllMemoriesModelCopyWith<$Res> {
  _$DeleteAllMemoriesModelCopyWithImpl(this._self, this._then);

  final DeleteAllMemoriesModel _self;
  final $Res Function(DeleteAllMemoriesModel) _then;

/// Create a copy of DeleteAllMemoriesModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? message = freezed,Object? userId = freezed,}) {
  return _then(_self.copyWith(
message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [DeleteAllMemoriesModel].
extension DeleteAllMemoriesModelPatterns on DeleteAllMemoriesModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DeleteAllMemoriesModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DeleteAllMemoriesModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DeleteAllMemoriesModel value)  $default,){
final _that = this;
switch (_that) {
case _DeleteAllMemoriesModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DeleteAllMemoriesModel value)?  $default,){
final _that = this;
switch (_that) {
case _DeleteAllMemoriesModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? message, @JsonKey(name: 'user_id')  String? userId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DeleteAllMemoriesModel() when $default != null:
return $default(_that.message,_that.userId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? message, @JsonKey(name: 'user_id')  String? userId)  $default,) {final _that = this;
switch (_that) {
case _DeleteAllMemoriesModel():
return $default(_that.message,_that.userId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? message, @JsonKey(name: 'user_id')  String? userId)?  $default,) {final _that = this;
switch (_that) {
case _DeleteAllMemoriesModel() when $default != null:
return $default(_that.message,_that.userId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DeleteAllMemoriesModel implements DeleteAllMemoriesModel {
  const _DeleteAllMemoriesModel({this.message, @JsonKey(name: 'user_id') this.userId});
  factory _DeleteAllMemoriesModel.fromJson(Map<String, dynamic> json) => _$DeleteAllMemoriesModelFromJson(json);

@override final  String? message;
@override@JsonKey(name: 'user_id') final  String? userId;

/// Create a copy of DeleteAllMemoriesModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeleteAllMemoriesModelCopyWith<_DeleteAllMemoriesModel> get copyWith => __$DeleteAllMemoriesModelCopyWithImpl<_DeleteAllMemoriesModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DeleteAllMemoriesModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeleteAllMemoriesModel&&(identical(other.message, message) || other.message == message)&&(identical(other.userId, userId) || other.userId == userId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message,userId);

@override
String toString() {
  return 'DeleteAllMemoriesModel(message: $message, userId: $userId)';
}


}

/// @nodoc
abstract mixin class _$DeleteAllMemoriesModelCopyWith<$Res> implements $DeleteAllMemoriesModelCopyWith<$Res> {
  factory _$DeleteAllMemoriesModelCopyWith(_DeleteAllMemoriesModel value, $Res Function(_DeleteAllMemoriesModel) _then) = __$DeleteAllMemoriesModelCopyWithImpl;
@override @useResult
$Res call({
 String? message,@JsonKey(name: 'user_id') String? userId
});




}
/// @nodoc
class __$DeleteAllMemoriesModelCopyWithImpl<$Res>
    implements _$DeleteAllMemoriesModelCopyWith<$Res> {
  __$DeleteAllMemoriesModelCopyWithImpl(this._self, this._then);

  final _DeleteAllMemoriesModel _self;
  final $Res Function(_DeleteAllMemoriesModel) _then;

/// Create a copy of DeleteAllMemoriesModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = freezed,Object? userId = freezed,}) {
  return _then(_DeleteAllMemoriesModel(
message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
