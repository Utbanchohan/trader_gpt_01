// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:trader_gpt/src/feature/chat/domain/model/chat_response/chat_message_model.dart';
// import 'package:trader_gpt/src/feature/chat/domain/model/gp_state/gp_state_model.dart';
// import 'gpt_state.dart';


// class GptNotifier extends StateNotifier<GptState> {
//   GptNotifier() : super(GptState.initial());

//   // ===== MUTATIONS =====

//   void setConversation(List<ChatMessageModel> messages, int totalCount) {
//     state = state.copyWith(
//       conversation: state.conversation.copyWith(
//         page: 1,
//         data: messages,
//         totalCount: totalCount,
//         timestamp: DateTime.now().millisecondsSinceEpoch,
//       ),
//     );
//   }

//   void updateConversation(List<ChatMessageModel> messages, int totalCount, int page) {
//     final updated = [...messages, ...(state.conversation.data ?? [])];
//     state = state.copyWith(
//       conversation: state.conversation.copyWith(
//         data: updated,
//         totalCount: totalCount,
//         page: page,
//         timestamp: DateTime.now().millisecondsSinceEpoch,
//       ),
//     );
//   }

//   void setConversationLoader(bool isLoading) {
//     state = state.copyWith(
//       conversation: state.conversation.copyWith(isLoading: isLoading),
//     );
//   }

//   void setChats(List<ChatSummary> chats) {
//     state = state.copyWith(
//       chats: state.chats.copyWith(
//         data: chats,
//         timestamp: DateTime.now().millisecondsSinceEpoch,
//       ),
//     );
//   }

//   void setChatsLoader(bool isLoading) {
//     state = state.copyWith(
//       chats: state.chats.copyWith(isLoading: isLoading),
//     );
//   }

//   void setTrendingQuestions(List<String> questions) {
//     state = state.copyWith(trendingQuestions: questions);
//   }

//   void toggleWebMode() {
//     state = state.copyWith(showWebAnswer: !state.showWebAnswer);
//   }

//   // ===== ACTIONS (async) =====

//   Future<void> getAllChats() async {
//     setChatsLoader(true);
//     final res = await HttpService.getAllConversation();
//     if (res.success) {
//       setChats(res.data.results);
//     }
//     setChatsLoader(false);
//   }

//   Future<void> getAllConversation(String chatId) async {
//     setConversationLoader(true);
//     setTrendingQuestions([]);
//     setConversation([], 0);
//     final res = await HttpService.getAllChatsFromConversation(chatId);
//     if (res.success) {
//       setConversation(res.data.messages, res.data.totalCount);
//     }
//     setConversationLoader(false);
//   }

//   Future<void> fetchTrendingQuestions(String symbol) async {
//     final res = await HttpService.getTrendingQuestion(symbol);
//     setTrendingQuestions(res.questions);
//   }

//   // ===== SUBMIT MESSAGE (streaming) =====

//   Future<void> submitMessage({
//     required String chatId,
//     required String query,
//   }) async {
//     // 1️⃣ Mark as loading
//     state = state.copyWith(isFetchingAnswer: "loading");

//     // 2️⃣ Add user’s message
//     final userMsg = ChatMessageModel(
//       chatId: chatId,
//       message: query,
//       type: "user",
//       createdAt: DateTime.now().toIso8601String(),
//       updatedAt: DateTime.now().toIso8601String(),
//     );
//     final conv = [...(state.conversation.data ?? []), userMsg];

//     // 3️⃣ Add placeholder AI message
//     final aiMsg = ChatMessage(
//       chatId: chatId,
//       message: "",
//       type: "ai",
//       status: "Pending",
//       createdAt: DateTime.now().toIso8601String(),
//       updatedAt: DateTime.now().toIso8601String(),
//     );
//     conv.add(aiMsg);
//     final aiIndex = conv.length - 1;

//     state = state.copyWith(
//       conversation: state.conversation.copyWith(
//         data: conv,
//         timestamp: DateTime.now().millisecondsSinceEpoch,
//       ),
//     );

//     // 4️⃣ Send to API
//     try {
//       final res = await HttpService.postMessage(chatId, query);
//       if (!res.success) throw Exception("postMessage failed");

//       final msgId = res.data["_id"];

//       // 5️⃣ Stream response
//       await HttpService.fetchAnswerStream(
//         chatId: chatId,
//         task: query,
//         messageId: msgId,
//         onEvent: (event) {
//           final updated = [...(state.conversation.data ?? [])];

//           switch (event["type"]) {
//             case "writer":
//               final chunk = event["chunk"] ?? "";
//               final prev = updated[aiIndex].message ?? "";
//               updated[aiIndex] = updated[aiIndex].copyWith(
//                 message: prev + chunk,
//               );
//               break;
//             case "followup":
//               state = state.copyWith(
//                 followUpQuestion: FollowUpQuestion(
//                   from: "chat",
//                   list: [event["chunk"]],
//                 ),
//               );
//               break;
//             case "tracing":
//               updated[aiIndex] =
//                   updated[aiIndex].copyWith(tracing: event["chunk"]);
//               break;
//             case "error":
//               updated[aiIndex] =
//                   updated[aiIndex].copyWith(status: "Error");
//               state = state.copyWith(isFetchingAnswer: "failed");
//               break;
//           }

//           state = state.copyWith(
//             conversation: state.conversation.copyWith(data: updated),
//           );
//         },
//         onComplete: () {
//           final updated = [...(state.conversation.data ?? [])];
//           updated[aiIndex] = updated[aiIndex].copyWith(status: "Completed");
//           state = state.copyWith(
//             isFetchingAnswer: "succeeded",
//             conversation: state.conversation.copyWith(data: updated),
//           );
//         },
//       );
//     } catch (e) {
//       state = state.copyWith(isFetchingAnswer: "failed");
//     }
//   }
// }
