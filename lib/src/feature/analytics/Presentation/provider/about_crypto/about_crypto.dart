import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../domain/model/about_crypto/about_crypto_model.dart';
import '../../../domain/model/monthly_model/monthly_model.dart';
import '../../../domain/repositroy/overview_repository.dart';
part 'about_crypto.g.dart';

@riverpod
class AboutCrypto extends _$AboutCrypto {
  String? symbol;
  @override
  Future<ProbabilityResponse> build() async {
    return state.value!;
  }
}

@riverpod
Future<AboutCryptoModel> getAboutCrypto(Ref ref, String symbol) async {
  final res = await ref.read(overviewRepository).aboutCrypto(symbol);

  return res;
}
