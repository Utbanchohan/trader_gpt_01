// Freezed data model for the workflows JSON you provided.
// Save as: lib/models/workflows_model.dart
// Run: flutter pub add freezed_annotation json_annotation
// dev deps: build_runner freezed
// Then run: flutter pub run build_runner build --delete-conflicting-outputs

import 'package:freezed_annotation/freezed_annotation.dart';

part 'work_flow.freezed.dart';
part 'work_flow.g.dart';

@freezed
abstract class WorkflowsData with _$WorkflowsData {
  const factory WorkflowsData({
    @JsonKey(name: 'user_id') required String userId,
    @JsonKey(name: 'total_workflows') required int totalWorkflows,
    required List<Workflow> workflows,
  }) = _WorkflowsData;

  factory WorkflowsData.fromJson(Map<String, dynamic> json) => _$WorkflowsDataFromJson(json);
}

@freezed
abstract class Workflow with _$Workflow {
  const factory Workflow({
    required String name,
    @JsonKey(name: 'display_name') required String displayName,
    required String description,
    required String query,
    List<Parameter>? parameters,
  }) = _Workflow;

  factory Workflow.fromJson(Map<String, dynamic> json) => _$WorkflowFromJson(json);
}

@freezed
abstract class Parameter with _$Parameter {
  const factory Parameter({
    required String name,
    @JsonKey(name: 'required') required bool isRequired,
    String? description,
    @JsonKey(name: 'default') dynamic defaultValue,
  }) = _Parameter;

  factory Parameter.fromJson(Map<String, dynamic> json) => _$ParameterFromJson(json);
}

/*
Notes / usage:
1. This file uses `freezed` + `json_serializable` (freezed_annotation + json_annotation).
2. Add dependencies in pubspec.yaml:

dependencies:
  freezed_annotation: ^2.0.0
  json_annotation: ^4.0.1

dev_dependencies:
  build_runner: ^2.0.0
  freezed: ^2.0.0
  json_serializable: ^6.0.0

3. Generate files:
   flutter pub run build_runner build --delete-conflicting-outputs

4. Then you can parse the JSON like:

final data = WorkflowsData.fromJson(jsonMap);

5. If you want camelCase JSON keys mapping different names, annotations already added for the snake_case ones.

If you want modifications (e.g., make some fields nullable/optional, rename classes, or include helper methods), tell me and I'll update the model.
*/
