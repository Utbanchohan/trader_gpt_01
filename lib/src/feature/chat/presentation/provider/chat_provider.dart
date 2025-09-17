import 'dart:async';
import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:trader_gpt/src/core/local/repository/local_storage_repository.dart';
import 'package:trader_gpt/src/feature/chat/data/dto/chat_message_dto/chat_message_dto.dart';
import 'package:trader_gpt/src/feature/chat/domain/repository/chat_repository.dart';
import 'package:trader_gpt/src/feature/chat/presentation/provider/stream_service.dart';
import 'package:trader_gpt/src/shared/states/app_loading_state.dart';

part 'chat_provider.g.dart';

final sseProvider = StreamProvider.family<String, Map<String, dynamic>>((
  ref,
  body,
) {
  final service = SseService();
  String token = ref.watch(localDataProvider).accessToken ?? "";
  return service.connect(body, token);
});

final followupProvider =
    StreamProvider.family<String, Map<String, dynamic>>((ref, body) {
  final service = SseService();
  final token = ref.watch(localDataProvider).accessToken ?? "";

  // make sure we "consume" connect so it starts producing events
  service.connect(body, token);

  return service.followupStream;
});

@riverpod
class ChatProvider extends _$ChatProvider {
  final _controller = StreamController<String>.broadcast();
  Stream<String> get stream => _controller.stream;
  @override
  AppLoadingState build() => const AppLoadingState();

  sendMessage(ChatMessageDto chatMessageDto) async {
    var res = await ref.read(chatRepository).sendMessage(chatMessageDto);
    if (res.isSuccess) {
      return res.data;
    } else {
      return false;
    }
  }
}
