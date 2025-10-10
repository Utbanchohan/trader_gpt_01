import 'package:freezed_annotation/freezed_annotation.dart';

part 'earnings_model.freezed.dart';
part 'earnings_model.g.dart';

@freezed
abstract class EarningsModel with _$EarningsModel {
  const factory EarningsModel({
    required int status,
    required String msg,
    EarningsData? data,
    dynamic errors,
  }) = _EarningsModel;

  factory EarningsModel.fromJson(Map<String, dynamic> json) =>
      _$EarningsModelFromJson(json);
}

@freezed
abstract class EarningsData with _$EarningsData {
  const factory EarningsData({
    @JsonKey(name: 'REPORTED_EPS') ReportedEps? reportedEps,
    @JsonKey(name: 'REPORTED_REVENUE') ReportedRevenue? reportedRevenue,
  }) = _EarningsData;

  factory EarningsData.fromJson(Map<String, dynamic> json) =>
      _$EarningsDataFromJson(json);
}

@freezed
abstract class ReportedEps with _$ReportedEps {
  const factory ReportedEps({
    @JsonKey(name: 'REPORTED_EPS') double? reportedEps,
    @JsonKey(name: 'Consensus_EPS_Forecast') double? consensusEpsForecast,
    @JsonKey(name: 'EPS_Surprise') double? epsSurprise,
    @JsonKey(name: 'Last_Earnings_Announcement')
    String? lastEarningsAnnouncement,
  }) = _ReportedEps;

  factory ReportedEps.fromJson(Map<String, dynamic> json) =>
      _$ReportedEpsFromJson(json);
}

@freezed
abstract class ReportedRevenue with _$ReportedRevenue {
  const factory ReportedRevenue({
    @JsonKey(name: 'Total_Revenue') double? totalRevenue,
  }) = _ReportedRevenue;

  factory ReportedRevenue.fromJson(Map<String, dynamic> json) =>
      _$ReportedRevenueFromJson(json);
}
