import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../domain/model/weekly_model/weekly_model.dart';
import '../../../domain/repositroy/overview_repository.dart';
part 'weekly_data_crypto.g.dart';

@riverpod
class WeeklyDataCrypto extends _$WeeklyDataCrypto {
  String? ticker;
  @override
  Future<WeeklyModel> build() async {
    return state.value!;
  }

  Future<WeeklyModel> getWeeklyDataCrypto(ticker, assetType) async {
    final res = await ref
        .read(overviewRepositoryele)
        .weeklyDataCrypto(ticker, assetType);

    return res;
  }
}
