import 'package:freezed_annotation/freezed_annotation.dart';

part 'price_performance_model.freezed.dart';
part 'price_performance_model.g.dart';

@freezed
abstract class PricePerformance with _$PricePerformance {
  const factory PricePerformance({
    required List<PricePerformanceData> data,
    String? msg,
    int? status,
    dynamic errors,
  }) = _PricePerformance;

  factory PricePerformance.fromJson(Map<String, dynamic> json) =>
      _$PricePerformanceFromJson(json);
}

@freezed
abstract class PricePerformanceData with _$PricePerformanceData {
  const factory PricePerformanceData({
    String? period,
    double? prevClosePrice,
    String? performanceLastDate,
    double? periodOpen,
    double? periodOpenPercentage,
    double? periodLow,
    double? periodLowPercentage,
    double? barPositionPercentage,
    double? periodHigh,
    double? periodHighPercentage,
    String? periodLowDate,
    String? periodHighDate,
    double? performance,
    double? performancePercentage,
    double? startClose,
    double? endClose,
    String? performanceDate,
    List<double>? chart,
  }) = _PricePerformanceData;

  factory PricePerformanceData.fromJson(Map<String, dynamic> json) =>
      _$PricePerformanceDataFromJson(json);
}
