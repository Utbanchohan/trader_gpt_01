// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'overview_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StockResponse _$StockResponseFromJson(Map<String, dynamic> json) =>
    _StockResponse(
      data: OverviewData.fromJson(json['data'] as Map<String, dynamic>),
      msg: json['msg'] as String?,
      status: (json['status'] as num?)?.toInt(),
      errors: json['errors'],
    );

Map<String, dynamic> _$StockResponseToJson(_StockResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'msg': instance.msg,
      'status': instance.status,
      'errors': instance.errors,
    };

_OverviewData _$OverviewDataFromJson(Map<String, dynamic> json) =>
    _OverviewData(
      Open: (json['Open'] as num?)?.toDouble(),
      High: (json['High'] as num?)?.toDouble(),
      Low: (json['Low'] as num?)?.toDouble(),
      Close: (json['Close'] as num?)?.toDouble(),
      previousClose: (json['previousClose'] as num?)?.toDouble(),
      ThreeDaysChange: (json['ThreeDaysChange'] as num?)?.toDouble(),
      OneWeekChange: (json['OneWeekChange'] as num?)?.toDouble(),
      OneMonthChange: (json['OneMonthChange'] as num?)?.toDouble(),
      TotalVolume: json['TotalVolume'] as String?,
      AverageVolume: json['AverageVolume'] as String?,
      open_pos: (json['open_pos'] as num?)?.toDouble(),
      close_pos: (json['close_pos'] as num?)?.toDouble(),
      Sector: json['Sector'] as String?,
      Industry: json['Industry'] as String?,
      MarketCapitalization: json['MarketCapitalization'] as String?,
      SharesOutstanding: json['SharesOutstanding'] as String?,
      FiftyTwoWeekHigh: (json['FiftyTwoWeekHigh'] as num?)?.toDouble(),
      FiftyTwoWeekLow: (json['FiftyTwoWeekLow'] as num?)?.toDouble(),
      AfterHours: (json['AfterHours'] as num?)?.toDouble(),
      AfterHoursPercentage: (json['AfterHoursPercentage'] as num?)?.toDouble(),
      Exchange: json['Exchange'] as String?,
      MarketCapClassification: json['MarketCapClassification'] as String?,
    );

Map<String, dynamic> _$OverviewDataToJson(_OverviewData instance) =>
    <String, dynamic>{
      'Open': instance.Open,
      'High': instance.High,
      'Low': instance.Low,
      'Close': instance.Close,
      'previousClose': instance.previousClose,
      'ThreeDaysChange': instance.ThreeDaysChange,
      'OneWeekChange': instance.OneWeekChange,
      'OneMonthChange': instance.OneMonthChange,
      'TotalVolume': instance.TotalVolume,
      'AverageVolume': instance.AverageVolume,
      'open_pos': instance.open_pos,
      'close_pos': instance.close_pos,
      'Sector': instance.Sector,
      'Industry': instance.Industry,
      'MarketCapitalization': instance.MarketCapitalization,
      'SharesOutstanding': instance.SharesOutstanding,
      'FiftyTwoWeekHigh': instance.FiftyTwoWeekHigh,
      'FiftyTwoWeekLow': instance.FiftyTwoWeekLow,
      'AfterHours': instance.AfterHours,
      'AfterHoursPercentage': instance.AfterHoursPercentage,
      'Exchange': instance.Exchange,
      'MarketCapClassification': instance.MarketCapClassification,
    };
