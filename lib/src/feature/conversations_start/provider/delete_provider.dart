import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:trader_gpt/src/feature/chat/data/dto/archive_chat_dto/archive_chat_dto.dart';
import 'package:trader_gpt/src/feature/chat/domain/model/chats/chats_model.dart';
import 'package:trader_gpt/src/feature/chat/domain/model/delete_model/delete_model.dart';
import 'package:trader_gpt/src/feature/chat/domain/repository/chat_repository.dart';
import 'package:trader_gpt/src/shared/custom_message.dart';
import 'package:trader_gpt/src/shared/states/app_loading_state.dart';

part 'delete_provider.g.dart';

@riverpod
class DeleteProvider extends _$DeleteProvider {
  @override
  AppLoadingState build() => const AppLoadingState();

  Future<DeleteResponse?> delete({required String chatId}) async {
    state = AppLoadingState.loading();
    try {
      final response = await ref.read(chatRepository).deleteChat(chatId);
      if (response.isSuccess != null && response.isSuccess!) {
        state = AppLoadingState();
        return response.data;
      } else {
        $showMessage(response.message, isError: true);
      }
      state = AppLoadingState();
    } catch (e) {
      $showMessage(e.toString(), isError: true);
      state = AppLoadingState();
      debugPrint("errror $e");
    }
    return null;
  }

  Future<ChatHistory?> archive({
    required String chatId,
    required bool isArchived,
  }) async {
    state = AppLoadingState.loading();
    try {
      final response = await ref
          .read(chatRepository)
          .archiveChat(ArchiveChatDto(chatId: chatId, isArchived: isArchived));
      if (response.isSuccess != null && response.isSuccess!) {
        state = AppLoadingState();
        return response.data;
      } else {
        $showMessage(response.message, isError: true);
      }
      state = AppLoadingState();
    } catch (e) {
      $showMessage(e.toString(), isError: true);
      state = AppLoadingState();
      debugPrint("errror $e");
    }
    return null;
  }
}
