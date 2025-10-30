// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'feedback_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FeedbackModel {

 String get message;@JsonKey(name: 'message_id') String get messageId;@JsonKey(name: 'trace_id') String get traceId;@JsonKey(name: 'user_id') String get userId; FeedbackData get feedback;
/// Create a copy of FeedbackModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FeedbackModelCopyWith<FeedbackModel> get copyWith => _$FeedbackModelCopyWithImpl<FeedbackModel>(this as FeedbackModel, _$identity);

  /// Serializes this FeedbackModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FeedbackModel&&(identical(other.message, message) || other.message == message)&&(identical(other.messageId, messageId) || other.messageId == messageId)&&(identical(other.traceId, traceId) || other.traceId == traceId)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.feedback, feedback) || other.feedback == feedback));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message,messageId,traceId,userId,feedback);

@override
String toString() {
  return 'FeedbackModel(message: $message, messageId: $messageId, traceId: $traceId, userId: $userId, feedback: $feedback)';
}


}

/// @nodoc
abstract mixin class $FeedbackModelCopyWith<$Res>  {
  factory $FeedbackModelCopyWith(FeedbackModel value, $Res Function(FeedbackModel) _then) = _$FeedbackModelCopyWithImpl;
@useResult
$Res call({
 String message,@JsonKey(name: 'message_id') String messageId,@JsonKey(name: 'trace_id') String traceId,@JsonKey(name: 'user_id') String userId, FeedbackData feedback
});


$FeedbackDataCopyWith<$Res> get feedback;

}
/// @nodoc
class _$FeedbackModelCopyWithImpl<$Res>
    implements $FeedbackModelCopyWith<$Res> {
  _$FeedbackModelCopyWithImpl(this._self, this._then);

  final FeedbackModel _self;
  final $Res Function(FeedbackModel) _then;

/// Create a copy of FeedbackModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? message = null,Object? messageId = null,Object? traceId = null,Object? userId = null,Object? feedback = null,}) {
  return _then(_self.copyWith(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,messageId: null == messageId ? _self.messageId : messageId // ignore: cast_nullable_to_non_nullable
as String,traceId: null == traceId ? _self.traceId : traceId // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,feedback: null == feedback ? _self.feedback : feedback // ignore: cast_nullable_to_non_nullable
as FeedbackData,
  ));
}
/// Create a copy of FeedbackModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FeedbackDataCopyWith<$Res> get feedback {
  
  return $FeedbackDataCopyWith<$Res>(_self.feedback, (value) {
    return _then(_self.copyWith(feedback: value));
  });
}
}


/// Adds pattern-matching-related methods to [FeedbackModel].
extension FeedbackModelPatterns on FeedbackModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FeedbackModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FeedbackModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FeedbackModel value)  $default,){
final _that = this;
switch (_that) {
case _FeedbackModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FeedbackModel value)?  $default,){
final _that = this;
switch (_that) {
case _FeedbackModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String message, @JsonKey(name: 'message_id')  String messageId, @JsonKey(name: 'trace_id')  String traceId, @JsonKey(name: 'user_id')  String userId,  FeedbackData feedback)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FeedbackModel() when $default != null:
return $default(_that.message,_that.messageId,_that.traceId,_that.userId,_that.feedback);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String message, @JsonKey(name: 'message_id')  String messageId, @JsonKey(name: 'trace_id')  String traceId, @JsonKey(name: 'user_id')  String userId,  FeedbackData feedback)  $default,) {final _that = this;
switch (_that) {
case _FeedbackModel():
return $default(_that.message,_that.messageId,_that.traceId,_that.userId,_that.feedback);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String message, @JsonKey(name: 'message_id')  String messageId, @JsonKey(name: 'trace_id')  String traceId, @JsonKey(name: 'user_id')  String userId,  FeedbackData feedback)?  $default,) {final _that = this;
switch (_that) {
case _FeedbackModel() when $default != null:
return $default(_that.message,_that.messageId,_that.traceId,_that.userId,_that.feedback);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FeedbackModel implements FeedbackModel {
  const _FeedbackModel({required this.message, @JsonKey(name: 'message_id') required this.messageId, @JsonKey(name: 'trace_id') required this.traceId, @JsonKey(name: 'user_id') required this.userId, required this.feedback});
  factory _FeedbackModel.fromJson(Map<String, dynamic> json) => _$FeedbackModelFromJson(json);

@override final  String message;
@override@JsonKey(name: 'message_id') final  String messageId;
@override@JsonKey(name: 'trace_id') final  String traceId;
@override@JsonKey(name: 'user_id') final  String userId;
@override final  FeedbackData feedback;

/// Create a copy of FeedbackModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FeedbackModelCopyWith<_FeedbackModel> get copyWith => __$FeedbackModelCopyWithImpl<_FeedbackModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FeedbackModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FeedbackModel&&(identical(other.message, message) || other.message == message)&&(identical(other.messageId, messageId) || other.messageId == messageId)&&(identical(other.traceId, traceId) || other.traceId == traceId)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.feedback, feedback) || other.feedback == feedback));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message,messageId,traceId,userId,feedback);

@override
String toString() {
  return 'FeedbackModel(message: $message, messageId: $messageId, traceId: $traceId, userId: $userId, feedback: $feedback)';
}


}

/// @nodoc
abstract mixin class _$FeedbackModelCopyWith<$Res> implements $FeedbackModelCopyWith<$Res> {
  factory _$FeedbackModelCopyWith(_FeedbackModel value, $Res Function(_FeedbackModel) _then) = __$FeedbackModelCopyWithImpl;
@override @useResult
$Res call({
 String message,@JsonKey(name: 'message_id') String messageId,@JsonKey(name: 'trace_id') String traceId,@JsonKey(name: 'user_id') String userId, FeedbackData feedback
});


@override $FeedbackDataCopyWith<$Res> get feedback;

}
/// @nodoc
class __$FeedbackModelCopyWithImpl<$Res>
    implements _$FeedbackModelCopyWith<$Res> {
  __$FeedbackModelCopyWithImpl(this._self, this._then);

  final _FeedbackModel _self;
  final $Res Function(_FeedbackModel) _then;

/// Create a copy of FeedbackModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,Object? messageId = null,Object? traceId = null,Object? userId = null,Object? feedback = null,}) {
  return _then(_FeedbackModel(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,messageId: null == messageId ? _self.messageId : messageId // ignore: cast_nullable_to_non_nullable
as String,traceId: null == traceId ? _self.traceId : traceId // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,feedback: null == feedback ? _self.feedback : feedback // ignore: cast_nullable_to_non_nullable
as FeedbackData,
  ));
}

/// Create a copy of FeedbackModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FeedbackDataCopyWith<$Res> get feedback {
  
  return $FeedbackDataCopyWith<$Res>(_self.feedback, (value) {
    return _then(_self.copyWith(feedback: value));
  });
}
}


/// @nodoc
mixin _$FeedbackData {

 String get key; double get score; String get comment;
/// Create a copy of FeedbackData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FeedbackDataCopyWith<FeedbackData> get copyWith => _$FeedbackDataCopyWithImpl<FeedbackData>(this as FeedbackData, _$identity);

  /// Serializes this FeedbackData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FeedbackData&&(identical(other.key, key) || other.key == key)&&(identical(other.score, score) || other.score == score)&&(identical(other.comment, comment) || other.comment == comment));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,key,score,comment);

@override
String toString() {
  return 'FeedbackData(key: $key, score: $score, comment: $comment)';
}


}

/// @nodoc
abstract mixin class $FeedbackDataCopyWith<$Res>  {
  factory $FeedbackDataCopyWith(FeedbackData value, $Res Function(FeedbackData) _then) = _$FeedbackDataCopyWithImpl;
@useResult
$Res call({
 String key, double score, String comment
});




}
/// @nodoc
class _$FeedbackDataCopyWithImpl<$Res>
    implements $FeedbackDataCopyWith<$Res> {
  _$FeedbackDataCopyWithImpl(this._self, this._then);

  final FeedbackData _self;
  final $Res Function(FeedbackData) _then;

/// Create a copy of FeedbackData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? key = null,Object? score = null,Object? comment = null,}) {
  return _then(_self.copyWith(
key: null == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as String,score: null == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as double,comment: null == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [FeedbackData].
extension FeedbackDataPatterns on FeedbackData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FeedbackData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FeedbackData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FeedbackData value)  $default,){
final _that = this;
switch (_that) {
case _FeedbackData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FeedbackData value)?  $default,){
final _that = this;
switch (_that) {
case _FeedbackData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String key,  double score,  String comment)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FeedbackData() when $default != null:
return $default(_that.key,_that.score,_that.comment);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String key,  double score,  String comment)  $default,) {final _that = this;
switch (_that) {
case _FeedbackData():
return $default(_that.key,_that.score,_that.comment);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String key,  double score,  String comment)?  $default,) {final _that = this;
switch (_that) {
case _FeedbackData() when $default != null:
return $default(_that.key,_that.score,_that.comment);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FeedbackData implements FeedbackData {
  const _FeedbackData({required this.key, required this.score, required this.comment});
  factory _FeedbackData.fromJson(Map<String, dynamic> json) => _$FeedbackDataFromJson(json);

@override final  String key;
@override final  double score;
@override final  String comment;

/// Create a copy of FeedbackData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FeedbackDataCopyWith<_FeedbackData> get copyWith => __$FeedbackDataCopyWithImpl<_FeedbackData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FeedbackDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FeedbackData&&(identical(other.key, key) || other.key == key)&&(identical(other.score, score) || other.score == score)&&(identical(other.comment, comment) || other.comment == comment));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,key,score,comment);

@override
String toString() {
  return 'FeedbackData(key: $key, score: $score, comment: $comment)';
}


}

/// @nodoc
abstract mixin class _$FeedbackDataCopyWith<$Res> implements $FeedbackDataCopyWith<$Res> {
  factory _$FeedbackDataCopyWith(_FeedbackData value, $Res Function(_FeedbackData) _then) = __$FeedbackDataCopyWithImpl;
@override @useResult
$Res call({
 String key, double score, String comment
});




}
/// @nodoc
class __$FeedbackDataCopyWithImpl<$Res>
    implements _$FeedbackDataCopyWith<$Res> {
  __$FeedbackDataCopyWithImpl(this._self, this._then);

  final _FeedbackData _self;
  final $Res Function(_FeedbackData) _then;

/// Create a copy of FeedbackData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? key = null,Object? score = null,Object? comment = null,}) {
  return _then(_FeedbackData(
key: null == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as String,score: null == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as double,comment: null == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
