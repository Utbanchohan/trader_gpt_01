import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:trader_gpt/src/feature/chat/domain/model/work_flow_model/work_flow.dart';
import 'package:trader_gpt/src/feature/chat/domain/repository/chat_repository.dart';
part 'work_flow_provider.g.dart';

@riverpod
class WorkFlowProvider extends _$WorkFlowProvider {
  @override
  Future<WorkflowsData> build() async {
    return state.value!;
  }

  Future<WorkflowsData> getWorksFlows() async {
    final res = await ref
        .read(chatRepository)
        .getWorkFlows();
    return res;
  }
}
