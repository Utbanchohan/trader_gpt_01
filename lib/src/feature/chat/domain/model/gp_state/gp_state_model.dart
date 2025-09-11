import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:trader_gpt/src/feature/chat/domain/model/chats/chats_model.dart';
import 'package:trader_gpt/src/feature/chat/domain/model/conversation/conversation_model.dart';


part 'gp_state_model.freezed.dart';
part 'gp_state_model.g.dart';

@freezed
abstract class GptState with _$GptState {
  const factory GptState({
    required int timestamp,
    required int setIntervalTime,
    required Conversation conversation,
    required ChatHistory chats,
    dynamic selectedChat,
    required Map<String, dynamic> stockSymbolsData,
    List<double>? draggableWidth,
    @Default("idle") String isFetchingAnswer,
    dynamic followUpQuestion,
    @Default(false) bool showReportedAnswer,
    @Default(false) bool showWebAnswer,
    @Default(false) bool showDeepSearch,
    @Default(false) bool userChatMessagePlacement,
    @Default(false) bool isMainMenuOpened,
    @Default([]) List<String> trendingQuestions,
    @Default(false) bool isFeaturedQuestionShownOnChat,
    @Default([]) List<dynamic> workflows,
    @Default(true) bool showRelatedQuestionAfterMessage,
    @Default(false) bool showDeepAnalysis,
  }) = _GptState;

  factory GptState.fromJson(Map<String, dynamic> json) =>
      _$GptStateFromJson(json);

  factory GptState.initial() {
    final now = DateTime.now().millisecondsSinceEpoch ~/ 1000;
    return GptState(
      timestamp: now,
      setIntervalTime: now + 12 * 60 * 60,
      conversation: Conversation.initial(),
      chats: ChatHistory.initial(),
      stockSymbolsData: {},
    );
  }
}
