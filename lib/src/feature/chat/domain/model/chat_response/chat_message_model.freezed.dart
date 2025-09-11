// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_message_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ChatMessageModel {

@JsonKey(name: '_id') String get id; String get chatId; String get message; String get type; String get userId; DateTime get createdAt; DateTime get updatedAt; String? get followup; String? get feedback; String get runId; String? get tempMessageId; String? get symbol; String get status; List<dynamic>? get displayableData; dynamic get tracing; List<dynamic>? get updates;
/// Create a copy of ChatMessageModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatMessageModelCopyWith<ChatMessageModel> get copyWith => _$ChatMessageModelCopyWithImpl<ChatMessageModel>(this as ChatMessageModel, _$identity);

  /// Serializes this ChatMessageModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatMessageModel&&(identical(other.id, id) || other.id == id)&&(identical(other.chatId, chatId) || other.chatId == chatId)&&(identical(other.message, message) || other.message == message)&&(identical(other.type, type) || other.type == type)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.followup, followup) || other.followup == followup)&&(identical(other.feedback, feedback) || other.feedback == feedback)&&(identical(other.runId, runId) || other.runId == runId)&&(identical(other.tempMessageId, tempMessageId) || other.tempMessageId == tempMessageId)&&(identical(other.symbol, symbol) || other.symbol == symbol)&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.displayableData, displayableData)&&const DeepCollectionEquality().equals(other.tracing, tracing)&&const DeepCollectionEquality().equals(other.updates, updates));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,chatId,message,type,userId,createdAt,updatedAt,followup,feedback,runId,tempMessageId,symbol,status,const DeepCollectionEquality().hash(displayableData),const DeepCollectionEquality().hash(tracing),const DeepCollectionEquality().hash(updates));

@override
String toString() {
  return 'ChatMessageModel(id: $id, chatId: $chatId, message: $message, type: $type, userId: $userId, createdAt: $createdAt, updatedAt: $updatedAt, followup: $followup, feedback: $feedback, runId: $runId, tempMessageId: $tempMessageId, symbol: $symbol, status: $status, displayableData: $displayableData, tracing: $tracing, updates: $updates)';
}


}

/// @nodoc
abstract mixin class $ChatMessageModelCopyWith<$Res>  {
  factory $ChatMessageModelCopyWith(ChatMessageModel value, $Res Function(ChatMessageModel) _then) = _$ChatMessageModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: '_id') String id, String chatId, String message, String type, String userId, DateTime createdAt, DateTime updatedAt, String? followup, String? feedback, String runId, String? tempMessageId, String? symbol, String status, List<dynamic>? displayableData, dynamic tracing, List<dynamic>? updates
});




}
/// @nodoc
class _$ChatMessageModelCopyWithImpl<$Res>
    implements $ChatMessageModelCopyWith<$Res> {
  _$ChatMessageModelCopyWithImpl(this._self, this._then);

  final ChatMessageModel _self;
  final $Res Function(ChatMessageModel) _then;

/// Create a copy of ChatMessageModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? chatId = null,Object? message = null,Object? type = null,Object? userId = null,Object? createdAt = null,Object? updatedAt = null,Object? followup = freezed,Object? feedback = freezed,Object? runId = null,Object? tempMessageId = freezed,Object? symbol = freezed,Object? status = null,Object? displayableData = freezed,Object? tracing = freezed,Object? updates = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,chatId: null == chatId ? _self.chatId : chatId // ignore: cast_nullable_to_non_nullable
as String,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,followup: freezed == followup ? _self.followup : followup // ignore: cast_nullable_to_non_nullable
as String?,feedback: freezed == feedback ? _self.feedback : feedback // ignore: cast_nullable_to_non_nullable
as String?,runId: null == runId ? _self.runId : runId // ignore: cast_nullable_to_non_nullable
as String,tempMessageId: freezed == tempMessageId ? _self.tempMessageId : tempMessageId // ignore: cast_nullable_to_non_nullable
as String?,symbol: freezed == symbol ? _self.symbol : symbol // ignore: cast_nullable_to_non_nullable
as String?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,displayableData: freezed == displayableData ? _self.displayableData : displayableData // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,tracing: freezed == tracing ? _self.tracing : tracing // ignore: cast_nullable_to_non_nullable
as dynamic,updates: freezed == updates ? _self.updates : updates // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,
  ));
}

}


/// Adds pattern-matching-related methods to [ChatMessageModel].
extension ChatMessageModelPatterns on ChatMessageModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChatMessageModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChatMessageModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChatMessageModel value)  $default,){
final _that = this;
switch (_that) {
case _ChatMessageModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChatMessageModel value)?  $default,){
final _that = this;
switch (_that) {
case _ChatMessageModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  String id,  String chatId,  String message,  String type,  String userId,  DateTime createdAt,  DateTime updatedAt,  String? followup,  String? feedback,  String runId,  String? tempMessageId,  String? symbol,  String status,  List<dynamic>? displayableData,  dynamic tracing,  List<dynamic>? updates)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChatMessageModel() when $default != null:
return $default(_that.id,_that.chatId,_that.message,_that.type,_that.userId,_that.createdAt,_that.updatedAt,_that.followup,_that.feedback,_that.runId,_that.tempMessageId,_that.symbol,_that.status,_that.displayableData,_that.tracing,_that.updates);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  String id,  String chatId,  String message,  String type,  String userId,  DateTime createdAt,  DateTime updatedAt,  String? followup,  String? feedback,  String runId,  String? tempMessageId,  String? symbol,  String status,  List<dynamic>? displayableData,  dynamic tracing,  List<dynamic>? updates)  $default,) {final _that = this;
switch (_that) {
case _ChatMessageModel():
return $default(_that.id,_that.chatId,_that.message,_that.type,_that.userId,_that.createdAt,_that.updatedAt,_that.followup,_that.feedback,_that.runId,_that.tempMessageId,_that.symbol,_that.status,_that.displayableData,_that.tracing,_that.updates);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: '_id')  String id,  String chatId,  String message,  String type,  String userId,  DateTime createdAt,  DateTime updatedAt,  String? followup,  String? feedback,  String runId,  String? tempMessageId,  String? symbol,  String status,  List<dynamic>? displayableData,  dynamic tracing,  List<dynamic>? updates)?  $default,) {final _that = this;
switch (_that) {
case _ChatMessageModel() when $default != null:
return $default(_that.id,_that.chatId,_that.message,_that.type,_that.userId,_that.createdAt,_that.updatedAt,_that.followup,_that.feedback,_that.runId,_that.tempMessageId,_that.symbol,_that.status,_that.displayableData,_that.tracing,_that.updates);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ChatMessageModel implements ChatMessageModel {
  const _ChatMessageModel({@JsonKey(name: '_id') required this.id, required this.chatId, required this.message, required this.type, required this.userId, required this.createdAt, required this.updatedAt, this.followup, this.feedback, this.runId = '', this.tempMessageId, this.symbol, this.status = "Pending", final  List<dynamic>? displayableData, this.tracing, final  List<dynamic>? updates}): _displayableData = displayableData,_updates = updates;
  factory _ChatMessageModel.fromJson(Map<String, dynamic> json) => _$ChatMessageModelFromJson(json);

@override@JsonKey(name: '_id') final  String id;
@override final  String chatId;
@override final  String message;
@override final  String type;
@override final  String userId;
@override final  DateTime createdAt;
@override final  DateTime updatedAt;
@override final  String? followup;
@override final  String? feedback;
@override@JsonKey() final  String runId;
@override final  String? tempMessageId;
@override final  String? symbol;
@override@JsonKey() final  String status;
 final  List<dynamic>? _displayableData;
@override List<dynamic>? get displayableData {
  final value = _displayableData;
  if (value == null) return null;
  if (_displayableData is EqualUnmodifiableListView) return _displayableData;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  dynamic tracing;
 final  List<dynamic>? _updates;
@override List<dynamic>? get updates {
  final value = _updates;
  if (value == null) return null;
  if (_updates is EqualUnmodifiableListView) return _updates;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of ChatMessageModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChatMessageModelCopyWith<_ChatMessageModel> get copyWith => __$ChatMessageModelCopyWithImpl<_ChatMessageModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChatMessageModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChatMessageModel&&(identical(other.id, id) || other.id == id)&&(identical(other.chatId, chatId) || other.chatId == chatId)&&(identical(other.message, message) || other.message == message)&&(identical(other.type, type) || other.type == type)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.followup, followup) || other.followup == followup)&&(identical(other.feedback, feedback) || other.feedback == feedback)&&(identical(other.runId, runId) || other.runId == runId)&&(identical(other.tempMessageId, tempMessageId) || other.tempMessageId == tempMessageId)&&(identical(other.symbol, symbol) || other.symbol == symbol)&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._displayableData, _displayableData)&&const DeepCollectionEquality().equals(other.tracing, tracing)&&const DeepCollectionEquality().equals(other._updates, _updates));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,chatId,message,type,userId,createdAt,updatedAt,followup,feedback,runId,tempMessageId,symbol,status,const DeepCollectionEquality().hash(_displayableData),const DeepCollectionEquality().hash(tracing),const DeepCollectionEquality().hash(_updates));

@override
String toString() {
  return 'ChatMessageModel(id: $id, chatId: $chatId, message: $message, type: $type, userId: $userId, createdAt: $createdAt, updatedAt: $updatedAt, followup: $followup, feedback: $feedback, runId: $runId, tempMessageId: $tempMessageId, symbol: $symbol, status: $status, displayableData: $displayableData, tracing: $tracing, updates: $updates)';
}


}

/// @nodoc
abstract mixin class _$ChatMessageModelCopyWith<$Res> implements $ChatMessageModelCopyWith<$Res> {
  factory _$ChatMessageModelCopyWith(_ChatMessageModel value, $Res Function(_ChatMessageModel) _then) = __$ChatMessageModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: '_id') String id, String chatId, String message, String type, String userId, DateTime createdAt, DateTime updatedAt, String? followup, String? feedback, String runId, String? tempMessageId, String? symbol, String status, List<dynamic>? displayableData, dynamic tracing, List<dynamic>? updates
});




}
/// @nodoc
class __$ChatMessageModelCopyWithImpl<$Res>
    implements _$ChatMessageModelCopyWith<$Res> {
  __$ChatMessageModelCopyWithImpl(this._self, this._then);

  final _ChatMessageModel _self;
  final $Res Function(_ChatMessageModel) _then;

/// Create a copy of ChatMessageModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? chatId = null,Object? message = null,Object? type = null,Object? userId = null,Object? createdAt = null,Object? updatedAt = null,Object? followup = freezed,Object? feedback = freezed,Object? runId = null,Object? tempMessageId = freezed,Object? symbol = freezed,Object? status = null,Object? displayableData = freezed,Object? tracing = freezed,Object? updates = freezed,}) {
  return _then(_ChatMessageModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,chatId: null == chatId ? _self.chatId : chatId // ignore: cast_nullable_to_non_nullable
as String,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,followup: freezed == followup ? _self.followup : followup // ignore: cast_nullable_to_non_nullable
as String?,feedback: freezed == feedback ? _self.feedback : feedback // ignore: cast_nullable_to_non_nullable
as String?,runId: null == runId ? _self.runId : runId // ignore: cast_nullable_to_non_nullable
as String,tempMessageId: freezed == tempMessageId ? _self.tempMessageId : tempMessageId // ignore: cast_nullable_to_non_nullable
as String?,symbol: freezed == symbol ? _self.symbol : symbol // ignore: cast_nullable_to_non_nullable
as String?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,displayableData: freezed == displayableData ? _self._displayableData : displayableData // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,tracing: freezed == tracing ? _self.tracing : tracing // ignore: cast_nullable_to_non_nullable
as dynamic,updates: freezed == updates ? _self._updates : updates // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,
  ));
}


}

// dart format on
