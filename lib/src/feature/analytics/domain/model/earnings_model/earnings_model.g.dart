// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'earnings_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_EarningsModel _$EarningsModelFromJson(Map<String, dynamic> json) =>
    _EarningsModel(
      status: (json['status'] as num).toInt(),
      msg: json['msg'] as String,
      data: json['data'] == null
          ? null
          : EarningsData.fromJson(json['data'] as Map<String, dynamic>),
      errors: json['errors'],
    );

Map<String, dynamic> _$EarningsModelToJson(_EarningsModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'msg': instance.msg,
      'data': instance.data,
      'errors': instance.errors,
    };

_EarningsData _$EarningsDataFromJson(Map<String, dynamic> json) =>
    _EarningsData(
      reportedEps: json['REPORTED_EPS'] == null
          ? null
          : ReportedEps.fromJson(json['REPORTED_EPS'] as Map<String, dynamic>),
      reportedRevenue: json['REPORTED_REVENUE'] == null
          ? null
          : ReportedRevenue.fromJson(
              json['REPORTED_REVENUE'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$EarningsDataToJson(_EarningsData instance) =>
    <String, dynamic>{
      'REPORTED_EPS': instance.reportedEps,
      'REPORTED_REVENUE': instance.reportedRevenue,
    };

_ReportedEps _$ReportedEpsFromJson(Map<String, dynamic> json) => _ReportedEps(
  reportedEps: (json['REPORTED_EPS'] as num?)?.toDouble(),
  consensusEpsForecast: (json['Consensus_EPS_Forecast'] as num?)?.toDouble(),
  epsSurprise: (json['EPS_Surprise'] as num?)?.toDouble(),
  lastEarningsAnnouncement: json['Last_Earnings_Announcement'] as String?,
);

Map<String, dynamic> _$ReportedEpsToJson(_ReportedEps instance) =>
    <String, dynamic>{
      'REPORTED_EPS': instance.reportedEps,
      'Consensus_EPS_Forecast': instance.consensusEpsForecast,
      'EPS_Surprise': instance.epsSurprise,
      'Last_Earnings_Announcement': instance.lastEarningsAnnouncement,
    };

_ReportedRevenue _$ReportedRevenueFromJson(Map<String, dynamic> json) =>
    _ReportedRevenue(totalRevenue: (json['Total_Revenue'] as num?)?.toDouble());

Map<String, dynamic> _$ReportedRevenueToJson(_ReportedRevenue instance) =>
    <String, dynamic>{'Total_Revenue': instance.totalRevenue};
