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

@JsonKey(name: '_id') String get id; String get chatId; String get message; String get type; String get userId; DateTime get createdAt; DateTime get updatedAt; String? get followup; String? get feedback; String get runId; String? get tempMessageId; String? get symbol; String get status; Displayable? get displayable; dynamic get tracing; List<dynamic>? get updates;
/// Create a copy of ChatMessageModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatMessageModelCopyWith<ChatMessageModel> get copyWith => _$ChatMessageModelCopyWithImpl<ChatMessageModel>(this as ChatMessageModel, _$identity);

  /// Serializes this ChatMessageModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatMessageModel&&(identical(other.id, id) || other.id == id)&&(identical(other.chatId, chatId) || other.chatId == chatId)&&(identical(other.message, message) || other.message == message)&&(identical(other.type, type) || other.type == type)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.followup, followup) || other.followup == followup)&&(identical(other.feedback, feedback) || other.feedback == feedback)&&(identical(other.runId, runId) || other.runId == runId)&&(identical(other.tempMessageId, tempMessageId) || other.tempMessageId == tempMessageId)&&(identical(other.symbol, symbol) || other.symbol == symbol)&&(identical(other.status, status) || other.status == status)&&(identical(other.displayable, displayable) || other.displayable == displayable)&&const DeepCollectionEquality().equals(other.tracing, tracing)&&const DeepCollectionEquality().equals(other.updates, updates));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,chatId,message,type,userId,createdAt,updatedAt,followup,feedback,runId,tempMessageId,symbol,status,displayable,const DeepCollectionEquality().hash(tracing),const DeepCollectionEquality().hash(updates));

@override
String toString() {
  return 'ChatMessageModel(id: $id, chatId: $chatId, message: $message, type: $type, userId: $userId, createdAt: $createdAt, updatedAt: $updatedAt, followup: $followup, feedback: $feedback, runId: $runId, tempMessageId: $tempMessageId, symbol: $symbol, status: $status, displayable: $displayable, tracing: $tracing, updates: $updates)';
}


}

/// @nodoc
abstract mixin class $ChatMessageModelCopyWith<$Res>  {
  factory $ChatMessageModelCopyWith(ChatMessageModel value, $Res Function(ChatMessageModel) _then) = _$ChatMessageModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: '_id') String id, String chatId, String message, String type, String userId, DateTime createdAt, DateTime updatedAt, String? followup, String? feedback, String runId, String? tempMessageId, String? symbol, String status, Displayable? displayable, dynamic tracing, List<dynamic>? updates
});


$DisplayableCopyWith<$Res>? get displayable;

}
/// @nodoc
class _$ChatMessageModelCopyWithImpl<$Res>
    implements $ChatMessageModelCopyWith<$Res> {
  _$ChatMessageModelCopyWithImpl(this._self, this._then);

  final ChatMessageModel _self;
  final $Res Function(ChatMessageModel) _then;

/// Create a copy of ChatMessageModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? chatId = null,Object? message = null,Object? type = null,Object? userId = null,Object? createdAt = null,Object? updatedAt = null,Object? followup = freezed,Object? feedback = freezed,Object? runId = null,Object? tempMessageId = freezed,Object? symbol = freezed,Object? status = null,Object? displayable = freezed,Object? tracing = freezed,Object? updates = freezed,}) {
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
as String,displayable: freezed == displayable ? _self.displayable : displayable // ignore: cast_nullable_to_non_nullable
as Displayable?,tracing: freezed == tracing ? _self.tracing : tracing // ignore: cast_nullable_to_non_nullable
as dynamic,updates: freezed == updates ? _self.updates : updates // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,
  ));
}
/// Create a copy of ChatMessageModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DisplayableCopyWith<$Res>? get displayable {
    if (_self.displayable == null) {
    return null;
  }

  return $DisplayableCopyWith<$Res>(_self.displayable!, (value) {
    return _then(_self.copyWith(displayable: value));
  });
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  String id,  String chatId,  String message,  String type,  String userId,  DateTime createdAt,  DateTime updatedAt,  String? followup,  String? feedback,  String runId,  String? tempMessageId,  String? symbol,  String status,  Displayable? displayable,  dynamic tracing,  List<dynamic>? updates)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChatMessageModel() when $default != null:
return $default(_that.id,_that.chatId,_that.message,_that.type,_that.userId,_that.createdAt,_that.updatedAt,_that.followup,_that.feedback,_that.runId,_that.tempMessageId,_that.symbol,_that.status,_that.displayable,_that.tracing,_that.updates);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  String id,  String chatId,  String message,  String type,  String userId,  DateTime createdAt,  DateTime updatedAt,  String? followup,  String? feedback,  String runId,  String? tempMessageId,  String? symbol,  String status,  Displayable? displayable,  dynamic tracing,  List<dynamic>? updates)  $default,) {final _that = this;
switch (_that) {
case _ChatMessageModel():
return $default(_that.id,_that.chatId,_that.message,_that.type,_that.userId,_that.createdAt,_that.updatedAt,_that.followup,_that.feedback,_that.runId,_that.tempMessageId,_that.symbol,_that.status,_that.displayable,_that.tracing,_that.updates);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: '_id')  String id,  String chatId,  String message,  String type,  String userId,  DateTime createdAt,  DateTime updatedAt,  String? followup,  String? feedback,  String runId,  String? tempMessageId,  String? symbol,  String status,  Displayable? displayable,  dynamic tracing,  List<dynamic>? updates)?  $default,) {final _that = this;
switch (_that) {
case _ChatMessageModel() when $default != null:
return $default(_that.id,_that.chatId,_that.message,_that.type,_that.userId,_that.createdAt,_that.updatedAt,_that.followup,_that.feedback,_that.runId,_that.tempMessageId,_that.symbol,_that.status,_that.displayable,_that.tracing,_that.updates);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ChatMessageModel implements ChatMessageModel {
  const _ChatMessageModel({@JsonKey(name: '_id') required this.id, required this.chatId, required this.message, required this.type, required this.userId, required this.createdAt, required this.updatedAt, this.followup, this.feedback, this.runId = '', this.tempMessageId, this.symbol, this.status = "Pending", this.displayable, this.tracing, final  List<dynamic>? updates}): _updates = updates;
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
@override final  Displayable? displayable;
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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChatMessageModel&&(identical(other.id, id) || other.id == id)&&(identical(other.chatId, chatId) || other.chatId == chatId)&&(identical(other.message, message) || other.message == message)&&(identical(other.type, type) || other.type == type)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.followup, followup) || other.followup == followup)&&(identical(other.feedback, feedback) || other.feedback == feedback)&&(identical(other.runId, runId) || other.runId == runId)&&(identical(other.tempMessageId, tempMessageId) || other.tempMessageId == tempMessageId)&&(identical(other.symbol, symbol) || other.symbol == symbol)&&(identical(other.status, status) || other.status == status)&&(identical(other.displayable, displayable) || other.displayable == displayable)&&const DeepCollectionEquality().equals(other.tracing, tracing)&&const DeepCollectionEquality().equals(other._updates, _updates));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,chatId,message,type,userId,createdAt,updatedAt,followup,feedback,runId,tempMessageId,symbol,status,displayable,const DeepCollectionEquality().hash(tracing),const DeepCollectionEquality().hash(_updates));

@override
String toString() {
  return 'ChatMessageModel(id: $id, chatId: $chatId, message: $message, type: $type, userId: $userId, createdAt: $createdAt, updatedAt: $updatedAt, followup: $followup, feedback: $feedback, runId: $runId, tempMessageId: $tempMessageId, symbol: $symbol, status: $status, displayable: $displayable, tracing: $tracing, updates: $updates)';
}


}

/// @nodoc
abstract mixin class _$ChatMessageModelCopyWith<$Res> implements $ChatMessageModelCopyWith<$Res> {
  factory _$ChatMessageModelCopyWith(_ChatMessageModel value, $Res Function(_ChatMessageModel) _then) = __$ChatMessageModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: '_id') String id, String chatId, String message, String type, String userId, DateTime createdAt, DateTime updatedAt, String? followup, String? feedback, String runId, String? tempMessageId, String? symbol, String status, Displayable? displayable, dynamic tracing, List<dynamic>? updates
});


@override $DisplayableCopyWith<$Res>? get displayable;

}
/// @nodoc
class __$ChatMessageModelCopyWithImpl<$Res>
    implements _$ChatMessageModelCopyWith<$Res> {
  __$ChatMessageModelCopyWithImpl(this._self, this._then);

  final _ChatMessageModel _self;
  final $Res Function(_ChatMessageModel) _then;

/// Create a copy of ChatMessageModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? chatId = null,Object? message = null,Object? type = null,Object? userId = null,Object? createdAt = null,Object? updatedAt = null,Object? followup = freezed,Object? feedback = freezed,Object? runId = null,Object? tempMessageId = freezed,Object? symbol = freezed,Object? status = null,Object? displayable = freezed,Object? tracing = freezed,Object? updates = freezed,}) {
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
as String,displayable: freezed == displayable ? _self.displayable : displayable // ignore: cast_nullable_to_non_nullable
as Displayable?,tracing: freezed == tracing ? _self.tracing : tracing // ignore: cast_nullable_to_non_nullable
as dynamic,updates: freezed == updates ? _self._updates : updates // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,
  ));
}

/// Create a copy of ChatMessageModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DisplayableCopyWith<$Res>? get displayable {
    if (_self.displayable == null) {
    return null;
  }

  return $DisplayableCopyWith<$Res>(_self.displayable!, (value) {
    return _then(_self.copyWith(displayable: value));
  });
}
}


/// @nodoc
mixin _$Displayable {

 List<String> get Worker; List<String> get Display;
/// Create a copy of Displayable
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DisplayableCopyWith<Displayable> get copyWith => _$DisplayableCopyWithImpl<Displayable>(this as Displayable, _$identity);

  /// Serializes this Displayable to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Displayable&&const DeepCollectionEquality().equals(other.Worker, Worker)&&const DeepCollectionEquality().equals(other.Display, Display));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(Worker),const DeepCollectionEquality().hash(Display));

@override
String toString() {
  return 'Displayable(Worker: $Worker, Display: $Display)';
}


}

/// @nodoc
abstract mixin class $DisplayableCopyWith<$Res>  {
  factory $DisplayableCopyWith(Displayable value, $Res Function(Displayable) _then) = _$DisplayableCopyWithImpl;
@useResult
$Res call({
 List<String> Worker, List<String> Display
});




}
/// @nodoc
class _$DisplayableCopyWithImpl<$Res>
    implements $DisplayableCopyWith<$Res> {
  _$DisplayableCopyWithImpl(this._self, this._then);

  final Displayable _self;
  final $Res Function(Displayable) _then;

/// Create a copy of Displayable
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? Worker = null,Object? Display = null,}) {
  return _then(_self.copyWith(
Worker: null == Worker ? _self.Worker : Worker // ignore: cast_nullable_to_non_nullable
as List<String>,Display: null == Display ? _self.Display : Display // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [Displayable].
extension DisplayablePatterns on Displayable {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Displayable value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Displayable() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Displayable value)  $default,){
final _that = this;
switch (_that) {
case _Displayable():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Displayable value)?  $default,){
final _that = this;
switch (_that) {
case _Displayable() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<String> Worker,  List<String> Display)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Displayable() when $default != null:
return $default(_that.Worker,_that.Display);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<String> Worker,  List<String> Display)  $default,) {final _that = this;
switch (_that) {
case _Displayable():
return $default(_that.Worker,_that.Display);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<String> Worker,  List<String> Display)?  $default,) {final _that = this;
switch (_that) {
case _Displayable() when $default != null:
return $default(_that.Worker,_that.Display);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Displayable implements Displayable {
  const _Displayable({final  List<String> Worker = const [], final  List<String> Display = const []}): _Worker = Worker,_Display = Display;
  factory _Displayable.fromJson(Map<String, dynamic> json) => _$DisplayableFromJson(json);

 final  List<String> _Worker;
@override@JsonKey() List<String> get Worker {
  if (_Worker is EqualUnmodifiableListView) return _Worker;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_Worker);
}

 final  List<String> _Display;
@override@JsonKey() List<String> get Display {
  if (_Display is EqualUnmodifiableListView) return _Display;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_Display);
}


/// Create a copy of Displayable
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DisplayableCopyWith<_Displayable> get copyWith => __$DisplayableCopyWithImpl<_Displayable>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DisplayableToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Displayable&&const DeepCollectionEquality().equals(other._Worker, _Worker)&&const DeepCollectionEquality().equals(other._Display, _Display));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_Worker),const DeepCollectionEquality().hash(_Display));

@override
String toString() {
  return 'Displayable(Worker: $Worker, Display: $Display)';
}


}

/// @nodoc
abstract mixin class _$DisplayableCopyWith<$Res> implements $DisplayableCopyWith<$Res> {
  factory _$DisplayableCopyWith(_Displayable value, $Res Function(_Displayable) _then) = __$DisplayableCopyWithImpl;
@override @useResult
$Res call({
 List<String> Worker, List<String> Display
});




}
/// @nodoc
class __$DisplayableCopyWithImpl<$Res>
    implements _$DisplayableCopyWith<$Res> {
  __$DisplayableCopyWithImpl(this._self, this._then);

  final _Displayable _self;
  final $Res Function(_Displayable) _then;

/// Create a copy of Displayable
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? Worker = null,Object? Display = null,}) {
  return _then(_Displayable(
Worker: null == Worker ? _self._Worker : Worker // ignore: cast_nullable_to_non_nullable
as List<String>,Display: null == Display ? _self._Display : Display // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}


/// @nodoc
mixin _$DisplayData {

@JsonKey(name: "chart_type") String? get chartType;@JsonKey(name: "sub_type") String? get subType; String get type; String get title; AxisData? get xAxis; AxisData? get yAxis; List<dynamic>? get data;
/// Create a copy of DisplayData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DisplayDataCopyWith<DisplayData> get copyWith => _$DisplayDataCopyWithImpl<DisplayData>(this as DisplayData, _$identity);

  /// Serializes this DisplayData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DisplayData&&(identical(other.chartType, chartType) || other.chartType == chartType)&&(identical(other.subType, subType) || other.subType == subType)&&(identical(other.type, type) || other.type == type)&&(identical(other.title, title) || other.title == title)&&(identical(other.xAxis, xAxis) || other.xAxis == xAxis)&&(identical(other.yAxis, yAxis) || other.yAxis == yAxis)&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,chartType,subType,type,title,xAxis,yAxis,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'DisplayData(chartType: $chartType, subType: $subType, type: $type, title: $title, xAxis: $xAxis, yAxis: $yAxis, data: $data)';
}


}

/// @nodoc
abstract mixin class $DisplayDataCopyWith<$Res>  {
  factory $DisplayDataCopyWith(DisplayData value, $Res Function(DisplayData) _then) = _$DisplayDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "chart_type") String? chartType,@JsonKey(name: "sub_type") String? subType, String type, String title, AxisData? xAxis, AxisData? yAxis, List<dynamic>? data
});


$AxisDataCopyWith<$Res>? get xAxis;$AxisDataCopyWith<$Res>? get yAxis;

}
/// @nodoc
class _$DisplayDataCopyWithImpl<$Res>
    implements $DisplayDataCopyWith<$Res> {
  _$DisplayDataCopyWithImpl(this._self, this._then);

  final DisplayData _self;
  final $Res Function(DisplayData) _then;

/// Create a copy of DisplayData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? chartType = freezed,Object? subType = freezed,Object? type = null,Object? title = null,Object? xAxis = freezed,Object? yAxis = freezed,Object? data = freezed,}) {
  return _then(_self.copyWith(
chartType: freezed == chartType ? _self.chartType : chartType // ignore: cast_nullable_to_non_nullable
as String?,subType: freezed == subType ? _self.subType : subType // ignore: cast_nullable_to_non_nullable
as String?,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,xAxis: freezed == xAxis ? _self.xAxis : xAxis // ignore: cast_nullable_to_non_nullable
as AxisData?,yAxis: freezed == yAxis ? _self.yAxis : yAxis // ignore: cast_nullable_to_non_nullable
as AxisData?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,
  ));
}
/// Create a copy of DisplayData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AxisDataCopyWith<$Res>? get xAxis {
    if (_self.xAxis == null) {
    return null;
  }

  return $AxisDataCopyWith<$Res>(_self.xAxis!, (value) {
    return _then(_self.copyWith(xAxis: value));
  });
}/// Create a copy of DisplayData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AxisDataCopyWith<$Res>? get yAxis {
    if (_self.yAxis == null) {
    return null;
  }

  return $AxisDataCopyWith<$Res>(_self.yAxis!, (value) {
    return _then(_self.copyWith(yAxis: value));
  });
}
}


/// Adds pattern-matching-related methods to [DisplayData].
extension DisplayDataPatterns on DisplayData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DisplayData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DisplayData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DisplayData value)  $default,){
final _that = this;
switch (_that) {
case _DisplayData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DisplayData value)?  $default,){
final _that = this;
switch (_that) {
case _DisplayData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "chart_type")  String? chartType, @JsonKey(name: "sub_type")  String? subType,  String type,  String title,  AxisData? xAxis,  AxisData? yAxis,  List<dynamic>? data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DisplayData() when $default != null:
return $default(_that.chartType,_that.subType,_that.type,_that.title,_that.xAxis,_that.yAxis,_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "chart_type")  String? chartType, @JsonKey(name: "sub_type")  String? subType,  String type,  String title,  AxisData? xAxis,  AxisData? yAxis,  List<dynamic>? data)  $default,) {final _that = this;
switch (_that) {
case _DisplayData():
return $default(_that.chartType,_that.subType,_that.type,_that.title,_that.xAxis,_that.yAxis,_that.data);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "chart_type")  String? chartType, @JsonKey(name: "sub_type")  String? subType,  String type,  String title,  AxisData? xAxis,  AxisData? yAxis,  List<dynamic>? data)?  $default,) {final _that = this;
switch (_that) {
case _DisplayData() when $default != null:
return $default(_that.chartType,_that.subType,_that.type,_that.title,_that.xAxis,_that.yAxis,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DisplayData implements DisplayData {
  const _DisplayData({@JsonKey(name: "chart_type") this.chartType, @JsonKey(name: "sub_type") this.subType, required this.type, required this.title, this.xAxis, this.yAxis, final  List<dynamic>? data}): _data = data;
  factory _DisplayData.fromJson(Map<String, dynamic> json) => _$DisplayDataFromJson(json);

@override@JsonKey(name: "chart_type") final  String? chartType;
@override@JsonKey(name: "sub_type") final  String? subType;
@override final  String type;
@override final  String title;
@override final  AxisData? xAxis;
@override final  AxisData? yAxis;
 final  List<dynamic>? _data;
@override List<dynamic>? get data {
  final value = _data;
  if (value == null) return null;
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of DisplayData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DisplayDataCopyWith<_DisplayData> get copyWith => __$DisplayDataCopyWithImpl<_DisplayData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DisplayDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DisplayData&&(identical(other.chartType, chartType) || other.chartType == chartType)&&(identical(other.subType, subType) || other.subType == subType)&&(identical(other.type, type) || other.type == type)&&(identical(other.title, title) || other.title == title)&&(identical(other.xAxis, xAxis) || other.xAxis == xAxis)&&(identical(other.yAxis, yAxis) || other.yAxis == yAxis)&&const DeepCollectionEquality().equals(other._data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,chartType,subType,type,title,xAxis,yAxis,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'DisplayData(chartType: $chartType, subType: $subType, type: $type, title: $title, xAxis: $xAxis, yAxis: $yAxis, data: $data)';
}


}

/// @nodoc
abstract mixin class _$DisplayDataCopyWith<$Res> implements $DisplayDataCopyWith<$Res> {
  factory _$DisplayDataCopyWith(_DisplayData value, $Res Function(_DisplayData) _then) = __$DisplayDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "chart_type") String? chartType,@JsonKey(name: "sub_type") String? subType, String type, String title, AxisData? xAxis, AxisData? yAxis, List<dynamic>? data
});


@override $AxisDataCopyWith<$Res>? get xAxis;@override $AxisDataCopyWith<$Res>? get yAxis;

}
/// @nodoc
class __$DisplayDataCopyWithImpl<$Res>
    implements _$DisplayDataCopyWith<$Res> {
  __$DisplayDataCopyWithImpl(this._self, this._then);

  final _DisplayData _self;
  final $Res Function(_DisplayData) _then;

/// Create a copy of DisplayData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? chartType = freezed,Object? subType = freezed,Object? type = null,Object? title = null,Object? xAxis = freezed,Object? yAxis = freezed,Object? data = freezed,}) {
  return _then(_DisplayData(
chartType: freezed == chartType ? _self.chartType : chartType // ignore: cast_nullable_to_non_nullable
as String?,subType: freezed == subType ? _self.subType : subType // ignore: cast_nullable_to_non_nullable
as String?,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,xAxis: freezed == xAxis ? _self.xAxis : xAxis // ignore: cast_nullable_to_non_nullable
as AxisData?,yAxis: freezed == yAxis ? _self.yAxis : yAxis // ignore: cast_nullable_to_non_nullable
as AxisData?,data: freezed == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,
  ));
}

/// Create a copy of DisplayData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AxisDataCopyWith<$Res>? get xAxis {
    if (_self.xAxis == null) {
    return null;
  }

  return $AxisDataCopyWith<$Res>(_self.xAxis!, (value) {
    return _then(_self.copyWith(xAxis: value));
  });
}/// Create a copy of DisplayData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AxisDataCopyWith<$Res>? get yAxis {
    if (_self.yAxis == null) {
    return null;
  }

  return $AxisDataCopyWith<$Res>(_self.yAxis!, (value) {
    return _then(_self.copyWith(yAxis: value));
  });
}
}


/// @nodoc
mixin _$AxisData {

@JsonKey(name: "X_title") String? get xTitle;@JsonKey(name: "Y_title") String? get yTitle; List<dynamic>? get data;
/// Create a copy of AxisData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AxisDataCopyWith<AxisData> get copyWith => _$AxisDataCopyWithImpl<AxisData>(this as AxisData, _$identity);

  /// Serializes this AxisData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AxisData&&(identical(other.xTitle, xTitle) || other.xTitle == xTitle)&&(identical(other.yTitle, yTitle) || other.yTitle == yTitle)&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,xTitle,yTitle,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'AxisData(xTitle: $xTitle, yTitle: $yTitle, data: $data)';
}


}

/// @nodoc
abstract mixin class $AxisDataCopyWith<$Res>  {
  factory $AxisDataCopyWith(AxisData value, $Res Function(AxisData) _then) = _$AxisDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "X_title") String? xTitle,@JsonKey(name: "Y_title") String? yTitle, List<dynamic>? data
});




}
/// @nodoc
class _$AxisDataCopyWithImpl<$Res>
    implements $AxisDataCopyWith<$Res> {
  _$AxisDataCopyWithImpl(this._self, this._then);

  final AxisData _self;
  final $Res Function(AxisData) _then;

/// Create a copy of AxisData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? xTitle = freezed,Object? yTitle = freezed,Object? data = freezed,}) {
  return _then(_self.copyWith(
xTitle: freezed == xTitle ? _self.xTitle : xTitle // ignore: cast_nullable_to_non_nullable
as String?,yTitle: freezed == yTitle ? _self.yTitle : yTitle // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,
  ));
}

}


/// Adds pattern-matching-related methods to [AxisData].
extension AxisDataPatterns on AxisData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AxisData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AxisData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AxisData value)  $default,){
final _that = this;
switch (_that) {
case _AxisData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AxisData value)?  $default,){
final _that = this;
switch (_that) {
case _AxisData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "X_title")  String? xTitle, @JsonKey(name: "Y_title")  String? yTitle,  List<dynamic>? data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AxisData() when $default != null:
return $default(_that.xTitle,_that.yTitle,_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "X_title")  String? xTitle, @JsonKey(name: "Y_title")  String? yTitle,  List<dynamic>? data)  $default,) {final _that = this;
switch (_that) {
case _AxisData():
return $default(_that.xTitle,_that.yTitle,_that.data);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "X_title")  String? xTitle, @JsonKey(name: "Y_title")  String? yTitle,  List<dynamic>? data)?  $default,) {final _that = this;
switch (_that) {
case _AxisData() when $default != null:
return $default(_that.xTitle,_that.yTitle,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AxisData implements AxisData {
  const _AxisData({@JsonKey(name: "X_title") this.xTitle, @JsonKey(name: "Y_title") this.yTitle, final  List<dynamic>? data}): _data = data;
  factory _AxisData.fromJson(Map<String, dynamic> json) => _$AxisDataFromJson(json);

@override@JsonKey(name: "X_title") final  String? xTitle;
@override@JsonKey(name: "Y_title") final  String? yTitle;
 final  List<dynamic>? _data;
@override List<dynamic>? get data {
  final value = _data;
  if (value == null) return null;
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of AxisData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AxisDataCopyWith<_AxisData> get copyWith => __$AxisDataCopyWithImpl<_AxisData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AxisDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AxisData&&(identical(other.xTitle, xTitle) || other.xTitle == xTitle)&&(identical(other.yTitle, yTitle) || other.yTitle == yTitle)&&const DeepCollectionEquality().equals(other._data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,xTitle,yTitle,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'AxisData(xTitle: $xTitle, yTitle: $yTitle, data: $data)';
}


}

/// @nodoc
abstract mixin class _$AxisDataCopyWith<$Res> implements $AxisDataCopyWith<$Res> {
  factory _$AxisDataCopyWith(_AxisData value, $Res Function(_AxisData) _then) = __$AxisDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "X_title") String? xTitle,@JsonKey(name: "Y_title") String? yTitle, List<dynamic>? data
});




}
/// @nodoc
class __$AxisDataCopyWithImpl<$Res>
    implements _$AxisDataCopyWith<$Res> {
  __$AxisDataCopyWithImpl(this._self, this._then);

  final _AxisData _self;
  final $Res Function(_AxisData) _then;

/// Create a copy of AxisData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? xTitle = freezed,Object? yTitle = freezed,Object? data = freezed,}) {
  return _then(_AxisData(
xTitle: freezed == xTitle ? _self.xTitle : xTitle // ignore: cast_nullable_to_non_nullable
as String?,yTitle: freezed == yTitle ? _self.yTitle : yTitle // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,
  ));
}


}

// dart format on
