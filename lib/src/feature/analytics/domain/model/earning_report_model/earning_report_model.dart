import 'package:freezed_annotation/freezed_annotation.dart';

part 'earning_report_model.freezed.dart';
part 'earning_report_model.g.dart';

@freezed
abstract class EarningReportsModel with _$EarningReportsModel {
  const factory EarningReportsModel({
    required int status,
    required String msg,
    required List<EarningReportData> data,
    dynamic errors,
  }) = _EarningReportsModel;

  factory EarningReportsModel.fromJson(Map<String, dynamic> json) =>
      _$EarningReportsModelFromJson(json);
}

@freezed
abstract class EarningReportData with _$EarningReportData {
  const factory EarningReportData({
    required String period,
    required double growth,
    required double actual,
    @JsonKey(name: 'estimate_eps') required double estimateEps,
    required double surprise,
    @JsonKey(name: 'estimate_revenue') required String estimateRevenue,
    @JsonKey(name: 'stock_type') required int stockType,
  }) = _EarningReportData;

  factory EarningReportData.fromJson(Map<String, dynamic> json) =>
      _$EarningReportDataFromJson(json);
}
