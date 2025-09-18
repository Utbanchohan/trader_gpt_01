import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:trader_gpt/src/feature/chat/data/dto/create_chat_dto/create_chat_dto.dart';

import '../../../../../shared/states/app_loading_state.dart';
import '../../../../chat/domain/repository/chat_repository.dart';

part 'create_chat.g.dart';


@riverpod
class CreateChatProvider extends _$CreateChatProvider {
  
  @override
  AppLoadingState build() => const AppLoadingState();

  createChate(CreateChatDto createChatDto) async {
    var res = await ref.read(chatRepository).createNewChat(createChatDto);
    if (res.isSuccess) {
      return res.data;
    } else {
      return false;
    }
  }
}
