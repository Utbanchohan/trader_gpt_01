import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:trader_gpt/src/feature/analytics/domain/repositroy/overview_repository.dart';

import '../../../domain/model/info_model_crypto/info_model_crypto.dart';
import '../../../domain/model/monthly_model/monthly_model.dart';
part 'info_crypto.g.dart';

@riverpod
class InfoCrypto extends _$InfoCrypto {
  String? ticker;
  @override
  Future<InfoCryptoResponse> build() async {
    return state.value!;
  }

  Future<InfoCryptoResponse> infoCryptoData(ticker) async {
    final res = await ref.read(overviewRepository).infoCrypto(ticker);

    return res;
  }
}
