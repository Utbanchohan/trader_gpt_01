import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../domain/model/monthly_model/monthly_model.dart';
import '../../../domain/repositroy/overview_repository.dart';
part 'monthly_data_crypto.g.dart';

@riverpod
class MonthlyDataCrypto extends _$MonthlyDataCrypto {
  String? ticker;
  @override
  Future<ProbabilityResponse> build() async {
    return state.value!;
  }

  Future<ProbabilityResponse> getMonthlyData(ticker, assetType) async {
    final res = await ref
        .read(overviewRepositoryele)
        .monthlyDataCrypto(ticker, assetType);

    return res;
  }
}
