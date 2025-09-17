import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_chat_dto.freezed.dart';
part 'create_chat_dto.g.dart';

@freezed
abstract class CreateChatDto with _$CreateChatDto {
  const factory CreateChatDto({
    required String companyName,
    required String stockId,
    required String symbol,
    required String type,
  }) = _CreateChatDto;

  factory CreateChatDto.fromJson(Map<String, dynamic> json) => _$CreateChatDtoFromJson(json);
}