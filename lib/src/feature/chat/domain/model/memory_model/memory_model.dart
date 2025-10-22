import 'package:freezed_annotation/freezed_annotation.dart';

part 'memory_model.freezed.dart';
part 'memory_model.g.dart';

@freezed
abstract class MemoryModel with _$MemoryModel {
  const factory MemoryModel({
    @JsonKey(name: 'user_id') String? userId,
    @JsonKey(name: 'total_memories') int? totalMemories,
    int? limit,
    List<Memory>? memories,
  }) = _MemoryModel;

  factory MemoryModel.fromJson(Map<String, dynamic> json) =>
      _$MemoryModelFromJson(json);
}

@freezed
abstract class Memory with _$Memory {
  const factory Memory({
    String? id,
    String? memory,
    MemoryMetadata? metadata,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
    String? source,
  }) = _Memory;

  factory Memory.fromJson(Map<String, dynamic> json) => _$MemoryFromJson(json);
}

@freezed
abstract class MemoryMetadata with _$MemoryMetadata {
  const factory MemoryMetadata({
    String? source,
    @JsonKey(name: 'memory_type') String? memoryType,
    @JsonKey(name: 'chat_id') String? chatId,
    String? symbol,
    String? timestamp,
  }) = _MemoryMetadata;

  factory MemoryMetadata.fromJson(Map<String, dynamic> json) =>
      _$MemoryMetadataFromJson(json);
}
