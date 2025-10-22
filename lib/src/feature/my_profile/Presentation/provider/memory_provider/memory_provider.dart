import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../chat/domain/model/memory_model/memory_model.dart';
import '../../../../chat/domain/repository/chat_repository.dart';

part 'memory_provider.g.dart';

@riverpod
class MemoryProvider extends _$MemoryProvider {
  @override
  Future<MemoryModel> build() async {
    return state.value!;
  }

  Future<MemoryModel> getMemory(String limit) async {
    final res = await ref.read(chatRepository).getMemories(limit);

    return res;
  }
}
