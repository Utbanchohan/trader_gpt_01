// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'memory_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MemoryModel _$MemoryModelFromJson(Map<String, dynamic> json) => _MemoryModel(
  userId: json['user_id'] as String?,
  totalMemories: (json['total_memories'] as num?)?.toInt(),
  limit: (json['limit'] as num?)?.toInt(),
  memories: (json['memories'] as List<dynamic>?)
      ?.map((e) => Memory.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$MemoryModelToJson(_MemoryModel instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'total_memories': instance.totalMemories,
      'limit': instance.limit,
      'memories': instance.memories,
    };

_Memory _$MemoryFromJson(Map<String, dynamic> json) => _Memory(
  id: json['id'] as String?,
  memory: json['memory'] as String?,
  metadata: json['metadata'] == null
      ? null
      : MemoryMetadata.fromJson(json['metadata'] as Map<String, dynamic>),
  createdAt: json['created_at'] as String?,
  updatedAt: json['updated_at'] as String?,
  source: json['source'] as String?,
);

Map<String, dynamic> _$MemoryToJson(_Memory instance) => <String, dynamic>{
  'id': instance.id,
  'memory': instance.memory,
  'metadata': instance.metadata,
  'created_at': instance.createdAt,
  'updated_at': instance.updatedAt,
  'source': instance.source,
};

_MemoryMetadata _$MemoryMetadataFromJson(Map<String, dynamic> json) =>
    _MemoryMetadata(
      source: json['source'] as String?,
      memoryType: json['memory_type'] as String?,
      chatId: json['chat_id'] as String?,
      symbol: json['symbol'] as String?,
      timestamp: json['timestamp'] as String?,
    );

Map<String, dynamic> _$MemoryMetadataToJson(_MemoryMetadata instance) =>
    <String, dynamic>{
      'source': instance.source,
      'memory_type': instance.memoryType,
      'chat_id': instance.chatId,
      'symbol': instance.symbol,
      'timestamp': instance.timestamp,
    };
