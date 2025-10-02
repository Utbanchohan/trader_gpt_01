import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:trader_gpt/src/feature/analytics/domain/repositroy/overview_repository.dart';
import 'package:trader_gpt/src/feature/chat/domain/model/work_flow_model/work_flow.dart';
import 'package:trader_gpt/src/feature/chat/domain/repository/chat_repository.dart';

import '../../../domain/model/monthly_model/monthly_model.dart';
part 'monthly_data.g.dart';

@riverpod
class MonthlyData extends _$MonthlyData {
  String? ticker;
  @override
  Future<ProbabilityResponse> build() async {
    return state.value!;
  }

  Future<ProbabilityResponse> getMonthlyData(ticker) async {
    final res = await ref.read(overviewRepositoryele).monthlyData(ticker);

    return res;
  }
}
