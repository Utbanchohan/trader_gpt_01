import 'package:freezed_annotation/freezed_annotation.dart';

part 'earning_chart_model.freezed.dart';
part 'earning_chart_model.g.dart';

@freezed
abstract class EarningChartModel with _$EarningChartModel {
  const factory EarningChartModel({
    required int status,
    required String msg,
    required List<EarningChartData> data,
    dynamic errors,
  }) = _EarningChartModel;

  factory EarningChartModel.fromJson(Map<String, dynamic> json) =>
      _$EarningChartModelFromJson(json);
}

@freezed
abstract class EarningChartData with _$EarningChartData {
  const factory EarningChartData({
    required List<String> x, // ["Q4-2023", "beat"]
    required List<double> y, // [0.72, 0.71]
  }) = _EarningChartData;

  factory EarningChartData.fromJson(Map<String, dynamic> json) =>
      _$EarningChartDataFromJson(json);
}
