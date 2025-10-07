import 'package:freezed_annotation/freezed_annotation.dart';

part 'insider_transaction_model.freezed.dart';
part 'insider_transaction_model.g.dart';

@freezed
abstract class InsiderTransactionResponse with _$InsiderTransactionResponse {
  const factory InsiderTransactionResponse({
    required List<InsiderTransaction> data,
  }) = _InsiderTransactionResponse;

  factory InsiderTransactionResponse.fromJson(Map<String, dynamic> json) =>
      _$InsiderTransactionResponseFromJson(json);
}

@freezed
abstract class InsiderTransaction with _$InsiderTransaction {
  const factory InsiderTransaction({
    required String name,
    required String formType,
    required String code,
    required String fileDate,
    required int shares,
    required double value,
    required String transactionDate,
    @JsonKey(name: 'stock_type') required int stockType,
    required String link,
  }) = _InsiderTransaction;

  factory InsiderTransaction.fromJson(Map<String, dynamic> json) =>
      _$InsiderTransactionFromJson(json);
}
