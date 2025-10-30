// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'feedback_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FeedbackDto {

 String get comment; String get key;@JsonKey(name: "messageid") String get messageId; int get score;@JsonKey(name: "trace_id") String get traceId;
/// Create a copy of FeedbackDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FeedbackDtoCopyWith<FeedbackDto> get copyWith => _$FeedbackDtoCopyWithImpl<FeedbackDto>(this as FeedbackDto, _$identity);

  /// Serializes this FeedbackDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FeedbackDto&&(identical(other.comment, comment) || other.comment == comment)&&(identical(other.key, key) || other.key == key)&&(identical(other.messageId, messageId) || other.messageId == messageId)&&(identical(other.score, score) || other.score == score)&&(identical(other.traceId, traceId) || other.traceId == traceId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,comment,key,messageId,score,traceId);

@override
String toString() {
  return 'FeedbackDto(comment: $comment, key: $key, messageId: $messageId, score: $score, traceId: $traceId)';
}


}

/// @nodoc
abstract mixin class $FeedbackDtoCopyWith<$Res>  {
  factory $FeedbackDtoCopyWith(FeedbackDto value, $Res Function(FeedbackDto) _then) = _$FeedbackDtoCopyWithImpl;
@useResult
$Res call({
 String comment, String key,@JsonKey(name: "messageid") String messageId, int score,@JsonKey(name: "trace_id") String traceId
});




}
/// @nodoc
class _$FeedbackDtoCopyWithImpl<$Res>
    implements $FeedbackDtoCopyWith<$Res> {
  _$FeedbackDtoCopyWithImpl(this._self, this._then);

  final FeedbackDto _self;
  final $Res Function(FeedbackDto) _then;

/// Create a copy of FeedbackDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? comment = null,Object? key = null,Object? messageId = null,Object? score = null,Object? traceId = null,}) {
  return _then(_self.copyWith(
comment: null == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as String,key: null == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as String,messageId: null == messageId ? _self.messageId : messageId // ignore: cast_nullable_to_non_nullable
as String,score: null == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as int,traceId: null == traceId ? _self.traceId : traceId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [FeedbackDto].
extension FeedbackDtoPatterns on FeedbackDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FeedbackDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FeedbackDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FeedbackDto value)  $default,){
final _that = this;
switch (_that) {
case _FeedbackDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FeedbackDto value)?  $default,){
final _that = this;
switch (_that) {
case _FeedbackDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String comment,  String key, @JsonKey(name: "messageid")  String messageId,  int score, @JsonKey(name: "trace_id")  String traceId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FeedbackDto() when $default != null:
return $default(_that.comment,_that.key,_that.messageId,_that.score,_that.traceId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String comment,  String key, @JsonKey(name: "messageid")  String messageId,  int score, @JsonKey(name: "trace_id")  String traceId)  $default,) {final _that = this;
switch (_that) {
case _FeedbackDto():
return $default(_that.comment,_that.key,_that.messageId,_that.score,_that.traceId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String comment,  String key, @JsonKey(name: "messageid")  String messageId,  int score, @JsonKey(name: "trace_id")  String traceId)?  $default,) {final _that = this;
switch (_that) {
case _FeedbackDto() when $default != null:
return $default(_that.comment,_that.key,_that.messageId,_that.score,_that.traceId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FeedbackDto implements FeedbackDto {
  const _FeedbackDto({required this.comment, required this.key, @JsonKey(name: "messageid") required this.messageId, required this.score, @JsonKey(name: "trace_id") required this.traceId});
  factory _FeedbackDto.fromJson(Map<String, dynamic> json) => _$FeedbackDtoFromJson(json);

@override final  String comment;
@override final  String key;
@override@JsonKey(name: "messageid") final  String messageId;
@override final  int score;
@override@JsonKey(name: "trace_id") final  String traceId;

/// Create a copy of FeedbackDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FeedbackDtoCopyWith<_FeedbackDto> get copyWith => __$FeedbackDtoCopyWithImpl<_FeedbackDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FeedbackDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FeedbackDto&&(identical(other.comment, comment) || other.comment == comment)&&(identical(other.key, key) || other.key == key)&&(identical(other.messageId, messageId) || other.messageId == messageId)&&(identical(other.score, score) || other.score == score)&&(identical(other.traceId, traceId) || other.traceId == traceId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,comment,key,messageId,score,traceId);

@override
String toString() {
  return 'FeedbackDto(comment: $comment, key: $key, messageId: $messageId, score: $score, traceId: $traceId)';
}


}

/// @nodoc
abstract mixin class _$FeedbackDtoCopyWith<$Res> implements $FeedbackDtoCopyWith<$Res> {
  factory _$FeedbackDtoCopyWith(_FeedbackDto value, $Res Function(_FeedbackDto) _then) = __$FeedbackDtoCopyWithImpl;
@override @useResult
$Res call({
 String comment, String key,@JsonKey(name: "messageid") String messageId, int score,@JsonKey(name: "trace_id") String traceId
});




}
/// @nodoc
class __$FeedbackDtoCopyWithImpl<$Res>
    implements _$FeedbackDtoCopyWith<$Res> {
  __$FeedbackDtoCopyWithImpl(this._self, this._then);

  final _FeedbackDto _self;
  final $Res Function(_FeedbackDto) _then;

/// Create a copy of FeedbackDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? comment = null,Object? key = null,Object? messageId = null,Object? score = null,Object? traceId = null,}) {
  return _then(_FeedbackDto(
comment: null == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as String,key: null == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as String,messageId: null == messageId ? _self.messageId : messageId // ignore: cast_nullable_to_non_nullable
as String,score: null == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as int,traceId: null == traceId ? _self.traceId : traceId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
