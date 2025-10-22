import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../../shared/states/app_loading_state.dart';
import '../../../../chat/domain/model/delete_all_memories/delete_all_memories.dart';
import '../../../../chat/domain/model/delete_memory_model/delete_memory_model.dart';
import '../../../../chat/domain/repository/chat_repository.dart';

part 'delete_memory.g.dart';

@riverpod
class DeleteMemory extends _$DeleteMemory {
  @override
  AppLoadingState build() => const AppLoadingState();

  Future<DeleteMemoryModel?> deleteMemory(String id) async {
    var res = await ref.read(chatRepository).deleteMemory(id);
    if (res.message != null) {
      return res;
    } else {
      return null;
    }
  }

  Future<DeleteAllMemoriesModel?> deleteAllMemory() async {
    var res = await ref.read(chatRepository).deleteAllMemory("asd");
    if (res.message != null) {
      return res;
    } else {
      return null;
    }
  }
}
