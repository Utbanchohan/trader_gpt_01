// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company_analysis_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StreamDto _$StreamDtoFromJson(Map<String, dynamic> json) => _StreamDto(
  task: json['task'] as String,
  symbol: json['symbol'] as String,
  symbolName: json['symbol_name'] as String,
  report: json['report'] as bool,
  isWebResearch: json['is_web_research'] as bool,
  deepSearch: json['deep_search'] as bool,
  chatId: json['chat_id'] as String,
  replyId: json['reply_id'] as String,
  workflowObject: json['workflow_object'] == null
      ? null
      : WorkflowObject.fromJson(
          json['workflow_object'] as Map<String, dynamic>,
        ),
  analysisRequired: json['analysis_required'] as bool,
  isWorkflow: json['is_workflow'] as bool,
);

Map<String, dynamic> _$StreamDtoToJson(_StreamDto instance) =>
    <String, dynamic>{
      'task': instance.task,
      'symbol': instance.symbol,
      'symbol_name': instance.symbolName,
      'report': instance.report,
      'is_web_research': instance.isWebResearch,
      'deep_search': instance.deepSearch,
      'chat_id': instance.chatId,
      'reply_id': instance.replyId,
      'workflow_object': instance.workflowObject,
      'analysis_required': instance.analysisRequired,
      'is_workflow': instance.isWorkflow,
    };

_WorkflowObject _$WorkflowObjectFromJson(Map<String, dynamic> json) =>
    _WorkflowObject(
      name: json['name'] as String,
      isStock: json['isStock'] as bool,
      displayName: json['display_name'] as String,
      description: json['description'] as String,
      query: json['query'] as String,
      parameters: (json['parameters'] as List<dynamic>)
          .map((e) => WorkflowParameter.fromJson(e as Map<String, dynamic>))
          .toList(),
      label: json['label'] as String,
      companyName: json['companyName'] as String?,
    );

Map<String, dynamic> _$WorkflowObjectToJson(_WorkflowObject instance) =>
    <String, dynamic>{
      'name': instance.name,
      'isStock': instance.isStock,
      'display_name': instance.displayName,
      'description': instance.description,
      'query': instance.query,
      'parameters': instance.parameters,
      'label': instance.label,
      'companyName': instance.companyName,
    };

_WorkflowParameter _$WorkflowParameterFromJson(Map<String, dynamic> json) =>
    _WorkflowParameter(
      name: json['name'] as String,
      required: json['required'] as bool,
      description: json['description'] as String,
      value: json['value'] as String?,
      disabled: json['disabled'] as bool?,
    );

Map<String, dynamic> _$WorkflowParameterToJson(_WorkflowParameter instance) =>
    <String, dynamic>{
      'name': instance.name,
      'required': instance.required,
      'description': instance.description,
      'value': instance.value,
      'disabled': instance.disabled,
    };
