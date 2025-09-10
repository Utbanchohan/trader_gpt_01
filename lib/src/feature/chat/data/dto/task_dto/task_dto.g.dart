// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TaskRequestDto _$TaskRequestDtoFromJson(Map<String, dynamic> json) =>
    _TaskRequestDto(
      analysisRequired: json['analysis_required'] as bool,
      chatId: json['chat_id'] as String,
      deepSearch: json['deep_search'] as bool,
      isWebResearch: json['is_web_research'] as bool,
      isWorkflow: json['is_workflow'] as bool,
      replyId: json['reply_id'] as String,
      report: json['report'] as bool,
      symbol: json['symbol'] as String,
      symbolName: json['symbol_name'] as String,
      task: json['task'] as String,
      workflowObject: json['workflow_object'],
    );

Map<String, dynamic> _$TaskRequestDtoToJson(_TaskRequestDto instance) =>
    <String, dynamic>{
      'analysis_required': instance.analysisRequired,
      'chat_id': instance.chatId,
      'deep_search': instance.deepSearch,
      'is_web_research': instance.isWebResearch,
      'is_workflow': instance.isWorkflow,
      'reply_id': instance.replyId,
      'report': instance.report,
      'symbol': instance.symbol,
      'symbol_name': instance.symbolName,
      'task': instance.task,
      'workflow_object': instance.workflowObject,
    };
