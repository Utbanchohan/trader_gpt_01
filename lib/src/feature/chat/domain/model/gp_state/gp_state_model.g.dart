// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gp_state_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GptState _$GptStateFromJson(Map<String, dynamic> json) => _GptState(
  timestamp: (json['timestamp'] as num).toInt(),
  setIntervalTime: (json['setIntervalTime'] as num).toInt(),
  conversation: Conversation.fromJson(
    json['conversation'] as Map<String, dynamic>,
  ),
  chats: ChatHistory.fromJson(json['chats'] as Map<String, dynamic>),
  selectedChat: json['selectedChat'],
  stockSymbolsData: json['stockSymbolsData'] as Map<String, dynamic>,
  draggableWidth: (json['draggableWidth'] as List<dynamic>?)
      ?.map((e) => (e as num).toDouble())
      .toList(),
  isFetchingAnswer: json['isFetchingAnswer'] as String? ?? "idle",
  followUpQuestion: json['followUpQuestion'],
  showReportedAnswer: json['showReportedAnswer'] as bool? ?? false,
  showWebAnswer: json['showWebAnswer'] as bool? ?? false,
  showDeepSearch: json['showDeepSearch'] as bool? ?? false,
  userChatMessagePlacement: json['userChatMessagePlacement'] as bool? ?? false,
  isMainMenuOpened: json['isMainMenuOpened'] as bool? ?? false,
  trendingQuestions:
      (json['trendingQuestions'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
  isFeaturedQuestionShownOnChat:
      json['isFeaturedQuestionShownOnChat'] as bool? ?? false,
  workflows: json['workflows'] as List<dynamic>? ?? const [],
  showRelatedQuestionAfterMessage:
      json['showRelatedQuestionAfterMessage'] as bool? ?? true,
  showDeepAnalysis: json['showDeepAnalysis'] as bool? ?? false,
);

Map<String, dynamic> _$GptStateToJson(_GptState instance) => <String, dynamic>{
  'timestamp': instance.timestamp,
  'setIntervalTime': instance.setIntervalTime,
  'conversation': instance.conversation,
  'chats': instance.chats,
  'selectedChat': instance.selectedChat,
  'stockSymbolsData': instance.stockSymbolsData,
  'draggableWidth': instance.draggableWidth,
  'isFetchingAnswer': instance.isFetchingAnswer,
  'followUpQuestion': instance.followUpQuestion,
  'showReportedAnswer': instance.showReportedAnswer,
  'showWebAnswer': instance.showWebAnswer,
  'showDeepSearch': instance.showDeepSearch,
  'userChatMessagePlacement': instance.userChatMessagePlacement,
  'isMainMenuOpened': instance.isMainMenuOpened,
  'trendingQuestions': instance.trendingQuestions,
  'isFeaturedQuestionShownOnChat': instance.isFeaturedQuestionShownOnChat,
  'workflows': instance.workflows,
  'showRelatedQuestionAfterMessage': instance.showRelatedQuestionAfterMessage,
  'showDeepAnalysis': instance.showDeepAnalysis,
};
