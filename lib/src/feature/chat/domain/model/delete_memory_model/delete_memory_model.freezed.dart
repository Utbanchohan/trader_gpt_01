// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_memory_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DeleteMemoryModel {

 String? get message;@JsonKey(name: 'memory_id') String? get memoryId;@JsonKey(name: 'user_id') String? get userId;
/// Create a copy of DeleteMemoryModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeleteMemoryModelCopyWith<DeleteMemoryModel> get copyWith => _$DeleteMemoryModelCopyWithImpl<DeleteMemoryModel>(this as DeleteMemoryModel, _$identity);

  /// Serializes this DeleteMemoryModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeleteMemoryModel&&(identical(other.message, message) || other.message == message)&&(identical(other.memoryId, memoryId) || other.memoryId == memoryId)&&(identical(other.userId, userId) || other.userId == userId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message,memoryId,userId);

@override
String toString() {
  return 'DeleteMemoryModel(message: $message, memoryId: $memoryId, userId: $userId)';
}


}

/// @nodoc
abstract mixin class $DeleteMemoryModelCopyWith<$Res>  {
  factory $DeleteMemoryModelCopyWith(DeleteMemoryModel value, $Res Function(DeleteMemoryModel) _then) = _$DeleteMemoryModelCopyWithImpl;
@useResult
$Res call({
 String? message,@JsonKey(name: 'memory_id') String? memoryId,@JsonKey(name: 'user_id') String? userId
});




}
/// @nodoc
class _$DeleteMemoryModelCopyWithImpl<$Res>
    implements $DeleteMemoryModelCopyWith<$Res> {
  _$DeleteMemoryModelCopyWithImpl(this._self, this._then);

  final DeleteMemoryModel _self;
  final $Res Function(DeleteMemoryModel) _then;

/// Create a copy of DeleteMemoryModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? message = freezed,Object? memoryId = freezed,Object? userId = freezed,}) {
  return _then(_self.copyWith(
message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,memoryId: freezed == memoryId ? _self.memoryId : memoryId // ignore: cast_nullable_to_non_nullable
as String?,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [DeleteMemoryModel].
extension DeleteMemoryModelPatterns on DeleteMemoryModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DeleteMemoryModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DeleteMemoryModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DeleteMemoryModel value)  $default,){
final _that = this;
switch (_that) {
case _DeleteMemoryModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DeleteMemoryModel value)?  $default,){
final _that = this;
switch (_that) {
case _DeleteMemoryModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? message, @JsonKey(name: 'memory_id')  String? memoryId, @JsonKey(name: 'user_id')  String? userId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DeleteMemoryModel() when $default != null:
return $default(_that.message,_that.memoryId,_that.userId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? message, @JsonKey(name: 'memory_id')  String? memoryId, @JsonKey(name: 'user_id')  String? userId)  $default,) {final _that = this;
switch (_that) {
case _DeleteMemoryModel():
return $default(_that.message,_that.memoryId,_that.userId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? message, @JsonKey(name: 'memory_id')  String? memoryId, @JsonKey(name: 'user_id')  String? userId)?  $default,) {final _that = this;
switch (_that) {
case _DeleteMemoryModel() when $default != null:
return $default(_that.message,_that.memoryId,_that.userId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DeleteMemoryModel implements DeleteMemoryModel {
  const _DeleteMemoryModel({this.message, @JsonKey(name: 'memory_id') this.memoryId, @JsonKey(name: 'user_id') this.userId});
  factory _DeleteMemoryModel.fromJson(Map<String, dynamic> json) => _$DeleteMemoryModelFromJson(json);

@override final  String? message;
@override@JsonKey(name: 'memory_id') final  String? memoryId;
@override@JsonKey(name: 'user_id') final  String? userId;

/// Create a copy of DeleteMemoryModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeleteMemoryModelCopyWith<_DeleteMemoryModel> get copyWith => __$DeleteMemoryModelCopyWithImpl<_DeleteMemoryModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DeleteMemoryModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeleteMemoryModel&&(identical(other.message, message) || other.message == message)&&(identical(other.memoryId, memoryId) || other.memoryId == memoryId)&&(identical(other.userId, userId) || other.userId == userId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message,memoryId,userId);

@override
String toString() {
  return 'DeleteMemoryModel(message: $message, memoryId: $memoryId, userId: $userId)';
}


}

/// @nodoc
abstract mixin class _$DeleteMemoryModelCopyWith<$Res> implements $DeleteMemoryModelCopyWith<$Res> {
  factory _$DeleteMemoryModelCopyWith(_DeleteMemoryModel value, $Res Function(_DeleteMemoryModel) _then) = __$DeleteMemoryModelCopyWithImpl;
@override @useResult
$Res call({
 String? message,@JsonKey(name: 'memory_id') String? memoryId,@JsonKey(name: 'user_id') String? userId
});




}
/// @nodoc
class __$DeleteMemoryModelCopyWithImpl<$Res>
    implements _$DeleteMemoryModelCopyWith<$Res> {
  __$DeleteMemoryModelCopyWithImpl(this._self, this._then);

  final _DeleteMemoryModel _self;
  final $Res Function(_DeleteMemoryModel) _then;

/// Create a copy of DeleteMemoryModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = freezed,Object? memoryId = freezed,Object? userId = freezed,}) {
  return _then(_DeleteMemoryModel(
message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,memoryId: freezed == memoryId ? _self.memoryId : memoryId // ignore: cast_nullable_to_non_nullable
as String?,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
