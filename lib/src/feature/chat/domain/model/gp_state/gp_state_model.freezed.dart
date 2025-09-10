// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gp_state_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GptState {

 int get timestamp; int get setIntervalTime; Conversation get conversation; Chats get chats; dynamic get selectedChat; Map<String, dynamic> get stockSymbolsData; List<double>? get draggableWidth; String get isFetchingAnswer; dynamic get followUpQuestion; bool get showReportedAnswer; bool get showWebAnswer; bool get showDeepSearch; bool get userChatMessagePlacement; bool get isMainMenuOpened; List<String> get trendingQuestions; bool get isFeaturedQuestionShownOnChat; List<dynamic> get workflows; bool get showRelatedQuestionAfterMessage; bool get showDeepAnalysis;
/// Create a copy of GptState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GptStateCopyWith<GptState> get copyWith => _$GptStateCopyWithImpl<GptState>(this as GptState, _$identity);

  /// Serializes this GptState to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GptState&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.setIntervalTime, setIntervalTime) || other.setIntervalTime == setIntervalTime)&&(identical(other.conversation, conversation) || other.conversation == conversation)&&(identical(other.chats, chats) || other.chats == chats)&&const DeepCollectionEquality().equals(other.selectedChat, selectedChat)&&const DeepCollectionEquality().equals(other.stockSymbolsData, stockSymbolsData)&&const DeepCollectionEquality().equals(other.draggableWidth, draggableWidth)&&(identical(other.isFetchingAnswer, isFetchingAnswer) || other.isFetchingAnswer == isFetchingAnswer)&&const DeepCollectionEquality().equals(other.followUpQuestion, followUpQuestion)&&(identical(other.showReportedAnswer, showReportedAnswer) || other.showReportedAnswer == showReportedAnswer)&&(identical(other.showWebAnswer, showWebAnswer) || other.showWebAnswer == showWebAnswer)&&(identical(other.showDeepSearch, showDeepSearch) || other.showDeepSearch == showDeepSearch)&&(identical(other.userChatMessagePlacement, userChatMessagePlacement) || other.userChatMessagePlacement == userChatMessagePlacement)&&(identical(other.isMainMenuOpened, isMainMenuOpened) || other.isMainMenuOpened == isMainMenuOpened)&&const DeepCollectionEquality().equals(other.trendingQuestions, trendingQuestions)&&(identical(other.isFeaturedQuestionShownOnChat, isFeaturedQuestionShownOnChat) || other.isFeaturedQuestionShownOnChat == isFeaturedQuestionShownOnChat)&&const DeepCollectionEquality().equals(other.workflows, workflows)&&(identical(other.showRelatedQuestionAfterMessage, showRelatedQuestionAfterMessage) || other.showRelatedQuestionAfterMessage == showRelatedQuestionAfterMessage)&&(identical(other.showDeepAnalysis, showDeepAnalysis) || other.showDeepAnalysis == showDeepAnalysis));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,timestamp,setIntervalTime,conversation,chats,const DeepCollectionEquality().hash(selectedChat),const DeepCollectionEquality().hash(stockSymbolsData),const DeepCollectionEquality().hash(draggableWidth),isFetchingAnswer,const DeepCollectionEquality().hash(followUpQuestion),showReportedAnswer,showWebAnswer,showDeepSearch,userChatMessagePlacement,isMainMenuOpened,const DeepCollectionEquality().hash(trendingQuestions),isFeaturedQuestionShownOnChat,const DeepCollectionEquality().hash(workflows),showRelatedQuestionAfterMessage,showDeepAnalysis]);

@override
String toString() {
  return 'GptState(timestamp: $timestamp, setIntervalTime: $setIntervalTime, conversation: $conversation, chats: $chats, selectedChat: $selectedChat, stockSymbolsData: $stockSymbolsData, draggableWidth: $draggableWidth, isFetchingAnswer: $isFetchingAnswer, followUpQuestion: $followUpQuestion, showReportedAnswer: $showReportedAnswer, showWebAnswer: $showWebAnswer, showDeepSearch: $showDeepSearch, userChatMessagePlacement: $userChatMessagePlacement, isMainMenuOpened: $isMainMenuOpened, trendingQuestions: $trendingQuestions, isFeaturedQuestionShownOnChat: $isFeaturedQuestionShownOnChat, workflows: $workflows, showRelatedQuestionAfterMessage: $showRelatedQuestionAfterMessage, showDeepAnalysis: $showDeepAnalysis)';
}


}

/// @nodoc
abstract mixin class $GptStateCopyWith<$Res>  {
  factory $GptStateCopyWith(GptState value, $Res Function(GptState) _then) = _$GptStateCopyWithImpl;
@useResult
$Res call({
 int timestamp, int setIntervalTime, Conversation conversation, Chats chats, dynamic selectedChat, Map<String, dynamic> stockSymbolsData, List<double>? draggableWidth, String isFetchingAnswer, dynamic followUpQuestion, bool showReportedAnswer, bool showWebAnswer, bool showDeepSearch, bool userChatMessagePlacement, bool isMainMenuOpened, List<String> trendingQuestions, bool isFeaturedQuestionShownOnChat, List<dynamic> workflows, bool showRelatedQuestionAfterMessage, bool showDeepAnalysis
});


$ConversationCopyWith<$Res> get conversation;$ChatsCopyWith<$Res> get chats;

}
/// @nodoc
class _$GptStateCopyWithImpl<$Res>
    implements $GptStateCopyWith<$Res> {
  _$GptStateCopyWithImpl(this._self, this._then);

  final GptState _self;
  final $Res Function(GptState) _then;

/// Create a copy of GptState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? timestamp = null,Object? setIntervalTime = null,Object? conversation = null,Object? chats = null,Object? selectedChat = freezed,Object? stockSymbolsData = null,Object? draggableWidth = freezed,Object? isFetchingAnswer = null,Object? followUpQuestion = freezed,Object? showReportedAnswer = null,Object? showWebAnswer = null,Object? showDeepSearch = null,Object? userChatMessagePlacement = null,Object? isMainMenuOpened = null,Object? trendingQuestions = null,Object? isFeaturedQuestionShownOnChat = null,Object? workflows = null,Object? showRelatedQuestionAfterMessage = null,Object? showDeepAnalysis = null,}) {
  return _then(_self.copyWith(
timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as int,setIntervalTime: null == setIntervalTime ? _self.setIntervalTime : setIntervalTime // ignore: cast_nullable_to_non_nullable
as int,conversation: null == conversation ? _self.conversation : conversation // ignore: cast_nullable_to_non_nullable
as Conversation,chats: null == chats ? _self.chats : chats // ignore: cast_nullable_to_non_nullable
as Chats,selectedChat: freezed == selectedChat ? _self.selectedChat : selectedChat // ignore: cast_nullable_to_non_nullable
as dynamic,stockSymbolsData: null == stockSymbolsData ? _self.stockSymbolsData : stockSymbolsData // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,draggableWidth: freezed == draggableWidth ? _self.draggableWidth : draggableWidth // ignore: cast_nullable_to_non_nullable
as List<double>?,isFetchingAnswer: null == isFetchingAnswer ? _self.isFetchingAnswer : isFetchingAnswer // ignore: cast_nullable_to_non_nullable
as String,followUpQuestion: freezed == followUpQuestion ? _self.followUpQuestion : followUpQuestion // ignore: cast_nullable_to_non_nullable
as dynamic,showReportedAnswer: null == showReportedAnswer ? _self.showReportedAnswer : showReportedAnswer // ignore: cast_nullable_to_non_nullable
as bool,showWebAnswer: null == showWebAnswer ? _self.showWebAnswer : showWebAnswer // ignore: cast_nullable_to_non_nullable
as bool,showDeepSearch: null == showDeepSearch ? _self.showDeepSearch : showDeepSearch // ignore: cast_nullable_to_non_nullable
as bool,userChatMessagePlacement: null == userChatMessagePlacement ? _self.userChatMessagePlacement : userChatMessagePlacement // ignore: cast_nullable_to_non_nullable
as bool,isMainMenuOpened: null == isMainMenuOpened ? _self.isMainMenuOpened : isMainMenuOpened // ignore: cast_nullable_to_non_nullable
as bool,trendingQuestions: null == trendingQuestions ? _self.trendingQuestions : trendingQuestions // ignore: cast_nullable_to_non_nullable
as List<String>,isFeaturedQuestionShownOnChat: null == isFeaturedQuestionShownOnChat ? _self.isFeaturedQuestionShownOnChat : isFeaturedQuestionShownOnChat // ignore: cast_nullable_to_non_nullable
as bool,workflows: null == workflows ? _self.workflows : workflows // ignore: cast_nullable_to_non_nullable
as List<dynamic>,showRelatedQuestionAfterMessage: null == showRelatedQuestionAfterMessage ? _self.showRelatedQuestionAfterMessage : showRelatedQuestionAfterMessage // ignore: cast_nullable_to_non_nullable
as bool,showDeepAnalysis: null == showDeepAnalysis ? _self.showDeepAnalysis : showDeepAnalysis // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of GptState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ConversationCopyWith<$Res> get conversation {
  
  return $ConversationCopyWith<$Res>(_self.conversation, (value) {
    return _then(_self.copyWith(conversation: value));
  });
}/// Create a copy of GptState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ChatsCopyWith<$Res> get chats {
  
  return $ChatsCopyWith<$Res>(_self.chats, (value) {
    return _then(_self.copyWith(chats: value));
  });
}
}


/// Adds pattern-matching-related methods to [GptState].
extension GptStatePatterns on GptState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GptState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GptState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GptState value)  $default,){
final _that = this;
switch (_that) {
case _GptState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GptState value)?  $default,){
final _that = this;
switch (_that) {
case _GptState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int timestamp,  int setIntervalTime,  Conversation conversation,  Chats chats,  dynamic selectedChat,  Map<String, dynamic> stockSymbolsData,  List<double>? draggableWidth,  String isFetchingAnswer,  dynamic followUpQuestion,  bool showReportedAnswer,  bool showWebAnswer,  bool showDeepSearch,  bool userChatMessagePlacement,  bool isMainMenuOpened,  List<String> trendingQuestions,  bool isFeaturedQuestionShownOnChat,  List<dynamic> workflows,  bool showRelatedQuestionAfterMessage,  bool showDeepAnalysis)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GptState() when $default != null:
return $default(_that.timestamp,_that.setIntervalTime,_that.conversation,_that.chats,_that.selectedChat,_that.stockSymbolsData,_that.draggableWidth,_that.isFetchingAnswer,_that.followUpQuestion,_that.showReportedAnswer,_that.showWebAnswer,_that.showDeepSearch,_that.userChatMessagePlacement,_that.isMainMenuOpened,_that.trendingQuestions,_that.isFeaturedQuestionShownOnChat,_that.workflows,_that.showRelatedQuestionAfterMessage,_that.showDeepAnalysis);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int timestamp,  int setIntervalTime,  Conversation conversation,  Chats chats,  dynamic selectedChat,  Map<String, dynamic> stockSymbolsData,  List<double>? draggableWidth,  String isFetchingAnswer,  dynamic followUpQuestion,  bool showReportedAnswer,  bool showWebAnswer,  bool showDeepSearch,  bool userChatMessagePlacement,  bool isMainMenuOpened,  List<String> trendingQuestions,  bool isFeaturedQuestionShownOnChat,  List<dynamic> workflows,  bool showRelatedQuestionAfterMessage,  bool showDeepAnalysis)  $default,) {final _that = this;
switch (_that) {
case _GptState():
return $default(_that.timestamp,_that.setIntervalTime,_that.conversation,_that.chats,_that.selectedChat,_that.stockSymbolsData,_that.draggableWidth,_that.isFetchingAnswer,_that.followUpQuestion,_that.showReportedAnswer,_that.showWebAnswer,_that.showDeepSearch,_that.userChatMessagePlacement,_that.isMainMenuOpened,_that.trendingQuestions,_that.isFeaturedQuestionShownOnChat,_that.workflows,_that.showRelatedQuestionAfterMessage,_that.showDeepAnalysis);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int timestamp,  int setIntervalTime,  Conversation conversation,  Chats chats,  dynamic selectedChat,  Map<String, dynamic> stockSymbolsData,  List<double>? draggableWidth,  String isFetchingAnswer,  dynamic followUpQuestion,  bool showReportedAnswer,  bool showWebAnswer,  bool showDeepSearch,  bool userChatMessagePlacement,  bool isMainMenuOpened,  List<String> trendingQuestions,  bool isFeaturedQuestionShownOnChat,  List<dynamic> workflows,  bool showRelatedQuestionAfterMessage,  bool showDeepAnalysis)?  $default,) {final _that = this;
switch (_that) {
case _GptState() when $default != null:
return $default(_that.timestamp,_that.setIntervalTime,_that.conversation,_that.chats,_that.selectedChat,_that.stockSymbolsData,_that.draggableWidth,_that.isFetchingAnswer,_that.followUpQuestion,_that.showReportedAnswer,_that.showWebAnswer,_that.showDeepSearch,_that.userChatMessagePlacement,_that.isMainMenuOpened,_that.trendingQuestions,_that.isFeaturedQuestionShownOnChat,_that.workflows,_that.showRelatedQuestionAfterMessage,_that.showDeepAnalysis);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GptState implements GptState {
  const _GptState({required this.timestamp, required this.setIntervalTime, required this.conversation, required this.chats, this.selectedChat, required final  Map<String, dynamic> stockSymbolsData, final  List<double>? draggableWidth, this.isFetchingAnswer = "idle", this.followUpQuestion, this.showReportedAnswer = false, this.showWebAnswer = false, this.showDeepSearch = false, this.userChatMessagePlacement = false, this.isMainMenuOpened = false, final  List<String> trendingQuestions = const [], this.isFeaturedQuestionShownOnChat = false, final  List<dynamic> workflows = const [], this.showRelatedQuestionAfterMessage = true, this.showDeepAnalysis = false}): _stockSymbolsData = stockSymbolsData,_draggableWidth = draggableWidth,_trendingQuestions = trendingQuestions,_workflows = workflows;
  factory _GptState.fromJson(Map<String, dynamic> json) => _$GptStateFromJson(json);

@override final  int timestamp;
@override final  int setIntervalTime;
@override final  Conversation conversation;
@override final  Chats chats;
@override final  dynamic selectedChat;
 final  Map<String, dynamic> _stockSymbolsData;
@override Map<String, dynamic> get stockSymbolsData {
  if (_stockSymbolsData is EqualUnmodifiableMapView) return _stockSymbolsData;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_stockSymbolsData);
}

 final  List<double>? _draggableWidth;
@override List<double>? get draggableWidth {
  final value = _draggableWidth;
  if (value == null) return null;
  if (_draggableWidth is EqualUnmodifiableListView) return _draggableWidth;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey() final  String isFetchingAnswer;
@override final  dynamic followUpQuestion;
@override@JsonKey() final  bool showReportedAnswer;
@override@JsonKey() final  bool showWebAnswer;
@override@JsonKey() final  bool showDeepSearch;
@override@JsonKey() final  bool userChatMessagePlacement;
@override@JsonKey() final  bool isMainMenuOpened;
 final  List<String> _trendingQuestions;
@override@JsonKey() List<String> get trendingQuestions {
  if (_trendingQuestions is EqualUnmodifiableListView) return _trendingQuestions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_trendingQuestions);
}

@override@JsonKey() final  bool isFeaturedQuestionShownOnChat;
 final  List<dynamic> _workflows;
@override@JsonKey() List<dynamic> get workflows {
  if (_workflows is EqualUnmodifiableListView) return _workflows;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_workflows);
}

@override@JsonKey() final  bool showRelatedQuestionAfterMessage;
@override@JsonKey() final  bool showDeepAnalysis;

/// Create a copy of GptState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GptStateCopyWith<_GptState> get copyWith => __$GptStateCopyWithImpl<_GptState>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GptStateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GptState&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.setIntervalTime, setIntervalTime) || other.setIntervalTime == setIntervalTime)&&(identical(other.conversation, conversation) || other.conversation == conversation)&&(identical(other.chats, chats) || other.chats == chats)&&const DeepCollectionEquality().equals(other.selectedChat, selectedChat)&&const DeepCollectionEquality().equals(other._stockSymbolsData, _stockSymbolsData)&&const DeepCollectionEquality().equals(other._draggableWidth, _draggableWidth)&&(identical(other.isFetchingAnswer, isFetchingAnswer) || other.isFetchingAnswer == isFetchingAnswer)&&const DeepCollectionEquality().equals(other.followUpQuestion, followUpQuestion)&&(identical(other.showReportedAnswer, showReportedAnswer) || other.showReportedAnswer == showReportedAnswer)&&(identical(other.showWebAnswer, showWebAnswer) || other.showWebAnswer == showWebAnswer)&&(identical(other.showDeepSearch, showDeepSearch) || other.showDeepSearch == showDeepSearch)&&(identical(other.userChatMessagePlacement, userChatMessagePlacement) || other.userChatMessagePlacement == userChatMessagePlacement)&&(identical(other.isMainMenuOpened, isMainMenuOpened) || other.isMainMenuOpened == isMainMenuOpened)&&const DeepCollectionEquality().equals(other._trendingQuestions, _trendingQuestions)&&(identical(other.isFeaturedQuestionShownOnChat, isFeaturedQuestionShownOnChat) || other.isFeaturedQuestionShownOnChat == isFeaturedQuestionShownOnChat)&&const DeepCollectionEquality().equals(other._workflows, _workflows)&&(identical(other.showRelatedQuestionAfterMessage, showRelatedQuestionAfterMessage) || other.showRelatedQuestionAfterMessage == showRelatedQuestionAfterMessage)&&(identical(other.showDeepAnalysis, showDeepAnalysis) || other.showDeepAnalysis == showDeepAnalysis));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,timestamp,setIntervalTime,conversation,chats,const DeepCollectionEquality().hash(selectedChat),const DeepCollectionEquality().hash(_stockSymbolsData),const DeepCollectionEquality().hash(_draggableWidth),isFetchingAnswer,const DeepCollectionEquality().hash(followUpQuestion),showReportedAnswer,showWebAnswer,showDeepSearch,userChatMessagePlacement,isMainMenuOpened,const DeepCollectionEquality().hash(_trendingQuestions),isFeaturedQuestionShownOnChat,const DeepCollectionEquality().hash(_workflows),showRelatedQuestionAfterMessage,showDeepAnalysis]);

@override
String toString() {
  return 'GptState(timestamp: $timestamp, setIntervalTime: $setIntervalTime, conversation: $conversation, chats: $chats, selectedChat: $selectedChat, stockSymbolsData: $stockSymbolsData, draggableWidth: $draggableWidth, isFetchingAnswer: $isFetchingAnswer, followUpQuestion: $followUpQuestion, showReportedAnswer: $showReportedAnswer, showWebAnswer: $showWebAnswer, showDeepSearch: $showDeepSearch, userChatMessagePlacement: $userChatMessagePlacement, isMainMenuOpened: $isMainMenuOpened, trendingQuestions: $trendingQuestions, isFeaturedQuestionShownOnChat: $isFeaturedQuestionShownOnChat, workflows: $workflows, showRelatedQuestionAfterMessage: $showRelatedQuestionAfterMessage, showDeepAnalysis: $showDeepAnalysis)';
}


}

/// @nodoc
abstract mixin class _$GptStateCopyWith<$Res> implements $GptStateCopyWith<$Res> {
  factory _$GptStateCopyWith(_GptState value, $Res Function(_GptState) _then) = __$GptStateCopyWithImpl;
@override @useResult
$Res call({
 int timestamp, int setIntervalTime, Conversation conversation, Chats chats, dynamic selectedChat, Map<String, dynamic> stockSymbolsData, List<double>? draggableWidth, String isFetchingAnswer, dynamic followUpQuestion, bool showReportedAnswer, bool showWebAnswer, bool showDeepSearch, bool userChatMessagePlacement, bool isMainMenuOpened, List<String> trendingQuestions, bool isFeaturedQuestionShownOnChat, List<dynamic> workflows, bool showRelatedQuestionAfterMessage, bool showDeepAnalysis
});


@override $ConversationCopyWith<$Res> get conversation;@override $ChatsCopyWith<$Res> get chats;

}
/// @nodoc
class __$GptStateCopyWithImpl<$Res>
    implements _$GptStateCopyWith<$Res> {
  __$GptStateCopyWithImpl(this._self, this._then);

  final _GptState _self;
  final $Res Function(_GptState) _then;

/// Create a copy of GptState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? timestamp = null,Object? setIntervalTime = null,Object? conversation = null,Object? chats = null,Object? selectedChat = freezed,Object? stockSymbolsData = null,Object? draggableWidth = freezed,Object? isFetchingAnswer = null,Object? followUpQuestion = freezed,Object? showReportedAnswer = null,Object? showWebAnswer = null,Object? showDeepSearch = null,Object? userChatMessagePlacement = null,Object? isMainMenuOpened = null,Object? trendingQuestions = null,Object? isFeaturedQuestionShownOnChat = null,Object? workflows = null,Object? showRelatedQuestionAfterMessage = null,Object? showDeepAnalysis = null,}) {
  return _then(_GptState(
timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as int,setIntervalTime: null == setIntervalTime ? _self.setIntervalTime : setIntervalTime // ignore: cast_nullable_to_non_nullable
as int,conversation: null == conversation ? _self.conversation : conversation // ignore: cast_nullable_to_non_nullable
as Conversation,chats: null == chats ? _self.chats : chats // ignore: cast_nullable_to_non_nullable
as Chats,selectedChat: freezed == selectedChat ? _self.selectedChat : selectedChat // ignore: cast_nullable_to_non_nullable
as dynamic,stockSymbolsData: null == stockSymbolsData ? _self._stockSymbolsData : stockSymbolsData // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,draggableWidth: freezed == draggableWidth ? _self._draggableWidth : draggableWidth // ignore: cast_nullable_to_non_nullable
as List<double>?,isFetchingAnswer: null == isFetchingAnswer ? _self.isFetchingAnswer : isFetchingAnswer // ignore: cast_nullable_to_non_nullable
as String,followUpQuestion: freezed == followUpQuestion ? _self.followUpQuestion : followUpQuestion // ignore: cast_nullable_to_non_nullable
as dynamic,showReportedAnswer: null == showReportedAnswer ? _self.showReportedAnswer : showReportedAnswer // ignore: cast_nullable_to_non_nullable
as bool,showWebAnswer: null == showWebAnswer ? _self.showWebAnswer : showWebAnswer // ignore: cast_nullable_to_non_nullable
as bool,showDeepSearch: null == showDeepSearch ? _self.showDeepSearch : showDeepSearch // ignore: cast_nullable_to_non_nullable
as bool,userChatMessagePlacement: null == userChatMessagePlacement ? _self.userChatMessagePlacement : userChatMessagePlacement // ignore: cast_nullable_to_non_nullable
as bool,isMainMenuOpened: null == isMainMenuOpened ? _self.isMainMenuOpened : isMainMenuOpened // ignore: cast_nullable_to_non_nullable
as bool,trendingQuestions: null == trendingQuestions ? _self._trendingQuestions : trendingQuestions // ignore: cast_nullable_to_non_nullable
as List<String>,isFeaturedQuestionShownOnChat: null == isFeaturedQuestionShownOnChat ? _self.isFeaturedQuestionShownOnChat : isFeaturedQuestionShownOnChat // ignore: cast_nullable_to_non_nullable
as bool,workflows: null == workflows ? _self._workflows : workflows // ignore: cast_nullable_to_non_nullable
as List<dynamic>,showRelatedQuestionAfterMessage: null == showRelatedQuestionAfterMessage ? _self.showRelatedQuestionAfterMessage : showRelatedQuestionAfterMessage // ignore: cast_nullable_to_non_nullable
as bool,showDeepAnalysis: null == showDeepAnalysis ? _self.showDeepAnalysis : showDeepAnalysis // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of GptState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ConversationCopyWith<$Res> get conversation {
  
  return $ConversationCopyWith<$Res>(_self.conversation, (value) {
    return _then(_self.copyWith(conversation: value));
  });
}/// Create a copy of GptState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ChatsCopyWith<$Res> get chats {
  
  return $ChatsCopyWith<$Res>(_self.chats, (value) {
    return _then(_self.copyWith(chats: value));
  });
}
}

// dart format on
