// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_message_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ChatMessageModel _$ChatMessageModelFromJson(Map<String, dynamic> json) =>
    _ChatMessageModel(
      id: json['_id'] as String,
      chatId: json['chatId'] as String,
      message: json['message'] as String,
      type: json['type'] as String,
      userId: json['userId'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      followup: json['followup'] as String?,
      feedback: json['feedback'] as String?,
      runId: json['runId'] as String? ?? '',
      tempMessageId: json['tempMessageId'] as String?,
      symbol: json['symbol'] as String?,
      status: json['status'] as String? ?? "Pending",
      displayable: json['displayable'] == null
          ? null
          : Displayable.fromJson(json['displayable'] as Map<String, dynamic>),
      tracing: json['tracing'],
      updates: json['updates'] as List<dynamic>?,
    );

Map<String, dynamic> _$ChatMessageModelToJson(_ChatMessageModel instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'chatId': instance.chatId,
      'message': instance.message,
      'type': instance.type,
      'userId': instance.userId,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'followup': instance.followup,
      'feedback': instance.feedback,
      'runId': instance.runId,
      'tempMessageId': instance.tempMessageId,
      'symbol': instance.symbol,
      'status': instance.status,
      'displayable': instance.displayable,
      'tracing': instance.tracing,
      'updates': instance.updates,
    };

_Displayable _$DisplayableFromJson(Map<String, dynamic> json) => _Displayable(
  Worker:
      (json['Worker'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
  Display:
      (json['Display'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
);

Map<String, dynamic> _$DisplayableToJson(_Displayable instance) =>
    <String, dynamic>{'Worker': instance.Worker, 'Display': instance.Display};

_DisplayData _$DisplayDataFromJson(Map<String, dynamic> json) => _DisplayData(
  chartType: json['chart_type'] as String,
  subType: json['sub_type'] as String?,
  type: json['type'] as String,
  title: json['title'] as String,
  xAxis: json['xAxis'] == null
      ? null
      : AxisData.fromJson(json['xAxis'] as Map<String, dynamic>),
  yAxis: json['yAxis'] == null
      ? null
      : AxisData.fromJson(json['yAxis'] as Map<String, dynamic>),
  data: json['data'] as List<dynamic>?,
);

Map<String, dynamic> _$DisplayDataToJson(_DisplayData instance) =>
    <String, dynamic>{
      'chart_type': instance.chartType,
      'sub_type': instance.subType,
      'type': instance.type,
      'title': instance.title,
      'xAxis': instance.xAxis,
      'yAxis': instance.yAxis,
      'data': instance.data,
    };

_AxisData _$AxisDataFromJson(Map<String, dynamic> json) => _AxisData(
  xTitle: json['X_title'] as String?,
  yTitle: json['Y_title'] as String?,
  data: json['data'] as List<dynamic>?,
);

Map<String, dynamic> _$AxisDataToJson(_AxisData instance) => <String, dynamic>{
  'X_title': instance.xTitle,
  'Y_title': instance.yTitle,
  'data': instance.data,
};
