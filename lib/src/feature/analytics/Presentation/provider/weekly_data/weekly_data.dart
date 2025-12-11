import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../domain/model/weekly_model/weekly_model.dart';
import '../../../domain/repositroy/overview_repository.dart';

part 'weekly_data.g.dart';

@riverpod
class WeeklyData extends _$WeeklyData {
  String? ticker;
  @override
  Future<WeeklyModel> build() async {
    return state.value!;
  }
}

@Riverpod(keepAlive: true)
Future<WeeklyModel> getWeeklyData(Ref ref, String ticker) async {
  final res = await ref.read(overviewRepositoryele).weeklyData(ticker);
  return res;
}
