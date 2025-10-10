import 'package:freezed_annotation/freezed_annotation.dart';

part 'fundamental_model.freezed.dart';
part 'fundamental_model.g.dart';

@freezed
abstract class FundamentalResponse with _$FundamentalResponse {
  const factory FundamentalResponse({
    required FundamentalData data,
    required String msg,
    required int status,
  }) = _FundamentalResponse;

  factory FundamentalResponse.fromJson(Map<String, dynamic> json) =>
      _$FundamentalResponseFromJson(json);
}

@freezed
abstract class FundamentalData with _$FundamentalData {
  const factory FundamentalData({required Fundamentals fundamentals}) =
      _FundamentalData;

  factory FundamentalData.fromJson(Map<String, dynamic> json) =>
      _$FundamentalDataFromJson(json);
}

@freezed
abstract class Fundamentals with _$Fundamentals {
  const factory Fundamentals({
    required String annualSale,
    required String annualIncome,
    required String priceCashFlow,
    required String shortInterest,
    required String shortPercentOfFloat,
    required String daysToCover,
  }) = _Fundamentals;

  factory Fundamentals.fromJson(Map<String, dynamic> json) =>
      _$FundamentalsFromJson(json);
}
