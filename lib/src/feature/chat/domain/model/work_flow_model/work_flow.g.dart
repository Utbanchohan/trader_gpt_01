// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'work_flow.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WorkflowsData _$WorkflowsDataFromJson(Map<String, dynamic> json) =>
    _WorkflowsData(
      userId: json['user_id'] as String,
      totalWorkflows: (json['total_workflows'] as num).toInt(),
      workflows: (json['workflows'] as List<dynamic>)
          .map((e) => Workflow.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$WorkflowsDataToJson(_WorkflowsData instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'total_workflows': instance.totalWorkflows,
      'workflows': instance.workflows,
    };

_Workflow _$WorkflowFromJson(Map<String, dynamic> json) => _Workflow(
  name: json['name'] as String,
  displayName: json['display_name'] as String,
  description: json['description'] as String,
  query: json['query'] as String,
  parameters: (json['parameters'] as List<dynamic>?)
      ?.map((e) => Parameter.fromJson(e as Map<String, dynamic>))
      .toList(),
  isStock: json['isStock'] as bool?,
);

Map<String, dynamic> _$WorkflowToJson(_Workflow instance) => <String, dynamic>{
  'name': instance.name,
  'display_name': instance.displayName,
  'description': instance.description,
  'query': instance.query,
  'parameters': instance.parameters,
  'isStock': instance.isStock,
};

_Parameter _$ParameterFromJson(Map<String, dynamic> json) => _Parameter(
  name: json['name'] as String,
  isRequired: json['required'] as bool,
  description: json['description'] as String?,
  defaultValue: json['default'],
);

Map<String, dynamic> _$ParameterToJson(_Parameter instance) =>
    <String, dynamic>{
      'name': instance.name,
      'required': instance.isRequired,
      'description': instance.description,
      'default': instance.defaultValue,
    };
