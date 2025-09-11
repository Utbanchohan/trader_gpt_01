// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'random_question_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RandomQuestionModel _$RandomQuestionModelFromJson(Map<String, dynamic> json) =>
    _RandomQuestionModel(
      questions: (json['questions'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$RandomQuestionModelToJson(
  _RandomQuestionModel instance,
) => <String, dynamic>{'questions': instance.questions};
