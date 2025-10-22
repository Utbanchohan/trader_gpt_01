// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'memory_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MemoryModel {

@JsonKey(name: 'user_id') String? get userId;@JsonKey(name: 'total_memories') int? get totalMemories; int? get limit; List<Memory>? get memories;
/// Create a copy of MemoryModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MemoryModelCopyWith<MemoryModel> get copyWith => _$MemoryModelCopyWithImpl<MemoryModel>(this as MemoryModel, _$identity);

  /// Serializes this MemoryModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MemoryModel&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.totalMemories, totalMemories) || other.totalMemories == totalMemories)&&(identical(other.limit, limit) || other.limit == limit)&&const DeepCollectionEquality().equals(other.memories, memories));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,totalMemories,limit,const DeepCollectionEquality().hash(memories));

@override
String toString() {
  return 'MemoryModel(userId: $userId, totalMemories: $totalMemories, limit: $limit, memories: $memories)';
}


}

/// @nodoc
abstract mixin class $MemoryModelCopyWith<$Res>  {
  factory $MemoryModelCopyWith(MemoryModel value, $Res Function(MemoryModel) _then) = _$MemoryModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'user_id') String? userId,@JsonKey(name: 'total_memories') int? totalMemories, int? limit, List<Memory>? memories
});




}
/// @nodoc
class _$MemoryModelCopyWithImpl<$Res>
    implements $MemoryModelCopyWith<$Res> {
  _$MemoryModelCopyWithImpl(this._self, this._then);

  final MemoryModel _self;
  final $Res Function(MemoryModel) _then;

/// Create a copy of MemoryModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = freezed,Object? totalMemories = freezed,Object? limit = freezed,Object? memories = freezed,}) {
  return _then(_self.copyWith(
userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String?,totalMemories: freezed == totalMemories ? _self.totalMemories : totalMemories // ignore: cast_nullable_to_non_nullable
as int?,limit: freezed == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int?,memories: freezed == memories ? _self.memories : memories // ignore: cast_nullable_to_non_nullable
as List<Memory>?,
  ));
}

}


/// Adds pattern-matching-related methods to [MemoryModel].
extension MemoryModelPatterns on MemoryModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MemoryModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MemoryModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MemoryModel value)  $default,){
final _that = this;
switch (_that) {
case _MemoryModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MemoryModel value)?  $default,){
final _that = this;
switch (_that) {
case _MemoryModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'user_id')  String? userId, @JsonKey(name: 'total_memories')  int? totalMemories,  int? limit,  List<Memory>? memories)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MemoryModel() when $default != null:
return $default(_that.userId,_that.totalMemories,_that.limit,_that.memories);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'user_id')  String? userId, @JsonKey(name: 'total_memories')  int? totalMemories,  int? limit,  List<Memory>? memories)  $default,) {final _that = this;
switch (_that) {
case _MemoryModel():
return $default(_that.userId,_that.totalMemories,_that.limit,_that.memories);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'user_id')  String? userId, @JsonKey(name: 'total_memories')  int? totalMemories,  int? limit,  List<Memory>? memories)?  $default,) {final _that = this;
switch (_that) {
case _MemoryModel() when $default != null:
return $default(_that.userId,_that.totalMemories,_that.limit,_that.memories);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MemoryModel implements MemoryModel {
  const _MemoryModel({@JsonKey(name: 'user_id') this.userId, @JsonKey(name: 'total_memories') this.totalMemories, this.limit, final  List<Memory>? memories}): _memories = memories;
  factory _MemoryModel.fromJson(Map<String, dynamic> json) => _$MemoryModelFromJson(json);

@override@JsonKey(name: 'user_id') final  String? userId;
@override@JsonKey(name: 'total_memories') final  int? totalMemories;
@override final  int? limit;
 final  List<Memory>? _memories;
@override List<Memory>? get memories {
  final value = _memories;
  if (value == null) return null;
  if (_memories is EqualUnmodifiableListView) return _memories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of MemoryModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MemoryModelCopyWith<_MemoryModel> get copyWith => __$MemoryModelCopyWithImpl<_MemoryModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MemoryModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MemoryModel&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.totalMemories, totalMemories) || other.totalMemories == totalMemories)&&(identical(other.limit, limit) || other.limit == limit)&&const DeepCollectionEquality().equals(other._memories, _memories));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,totalMemories,limit,const DeepCollectionEquality().hash(_memories));

@override
String toString() {
  return 'MemoryModel(userId: $userId, totalMemories: $totalMemories, limit: $limit, memories: $memories)';
}


}

/// @nodoc
abstract mixin class _$MemoryModelCopyWith<$Res> implements $MemoryModelCopyWith<$Res> {
  factory _$MemoryModelCopyWith(_MemoryModel value, $Res Function(_MemoryModel) _then) = __$MemoryModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'user_id') String? userId,@JsonKey(name: 'total_memories') int? totalMemories, int? limit, List<Memory>? memories
});




}
/// @nodoc
class __$MemoryModelCopyWithImpl<$Res>
    implements _$MemoryModelCopyWith<$Res> {
  __$MemoryModelCopyWithImpl(this._self, this._then);

  final _MemoryModel _self;
  final $Res Function(_MemoryModel) _then;

/// Create a copy of MemoryModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = freezed,Object? totalMemories = freezed,Object? limit = freezed,Object? memories = freezed,}) {
  return _then(_MemoryModel(
userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String?,totalMemories: freezed == totalMemories ? _self.totalMemories : totalMemories // ignore: cast_nullable_to_non_nullable
as int?,limit: freezed == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int?,memories: freezed == memories ? _self._memories : memories // ignore: cast_nullable_to_non_nullable
as List<Memory>?,
  ));
}


}


/// @nodoc
mixin _$Memory {

 String? get id; String? get memory; MemoryMetadata? get metadata;@JsonKey(name: 'created_at') String? get createdAt;@JsonKey(name: 'updated_at') String? get updatedAt; String? get source;
/// Create a copy of Memory
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MemoryCopyWith<Memory> get copyWith => _$MemoryCopyWithImpl<Memory>(this as Memory, _$identity);

  /// Serializes this Memory to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Memory&&(identical(other.id, id) || other.id == id)&&(identical(other.memory, memory) || other.memory == memory)&&(identical(other.metadata, metadata) || other.metadata == metadata)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.source, source) || other.source == source));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,memory,metadata,createdAt,updatedAt,source);

@override
String toString() {
  return 'Memory(id: $id, memory: $memory, metadata: $metadata, createdAt: $createdAt, updatedAt: $updatedAt, source: $source)';
}


}

/// @nodoc
abstract mixin class $MemoryCopyWith<$Res>  {
  factory $MemoryCopyWith(Memory value, $Res Function(Memory) _then) = _$MemoryCopyWithImpl;
@useResult
$Res call({
 String? id, String? memory, MemoryMetadata? metadata,@JsonKey(name: 'created_at') String? createdAt,@JsonKey(name: 'updated_at') String? updatedAt, String? source
});


$MemoryMetadataCopyWith<$Res>? get metadata;

}
/// @nodoc
class _$MemoryCopyWithImpl<$Res>
    implements $MemoryCopyWith<$Res> {
  _$MemoryCopyWithImpl(this._self, this._then);

  final Memory _self;
  final $Res Function(Memory) _then;

/// Create a copy of Memory
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? memory = freezed,Object? metadata = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? source = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,memory: freezed == memory ? _self.memory : memory // ignore: cast_nullable_to_non_nullable
as String?,metadata: freezed == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as MemoryMetadata?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,source: freezed == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of Memory
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MemoryMetadataCopyWith<$Res>? get metadata {
    if (_self.metadata == null) {
    return null;
  }

  return $MemoryMetadataCopyWith<$Res>(_self.metadata!, (value) {
    return _then(_self.copyWith(metadata: value));
  });
}
}


/// Adds pattern-matching-related methods to [Memory].
extension MemoryPatterns on Memory {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Memory value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Memory() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Memory value)  $default,){
final _that = this;
switch (_that) {
case _Memory():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Memory value)?  $default,){
final _that = this;
switch (_that) {
case _Memory() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  String? memory,  MemoryMetadata? metadata, @JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt,  String? source)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Memory() when $default != null:
return $default(_that.id,_that.memory,_that.metadata,_that.createdAt,_that.updatedAt,_that.source);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  String? memory,  MemoryMetadata? metadata, @JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt,  String? source)  $default,) {final _that = this;
switch (_that) {
case _Memory():
return $default(_that.id,_that.memory,_that.metadata,_that.createdAt,_that.updatedAt,_that.source);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  String? memory,  MemoryMetadata? metadata, @JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt,  String? source)?  $default,) {final _that = this;
switch (_that) {
case _Memory() when $default != null:
return $default(_that.id,_that.memory,_that.metadata,_that.createdAt,_that.updatedAt,_that.source);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Memory implements Memory {
  const _Memory({this.id, this.memory, this.metadata, @JsonKey(name: 'created_at') this.createdAt, @JsonKey(name: 'updated_at') this.updatedAt, this.source});
  factory _Memory.fromJson(Map<String, dynamic> json) => _$MemoryFromJson(json);

@override final  String? id;
@override final  String? memory;
@override final  MemoryMetadata? metadata;
@override@JsonKey(name: 'created_at') final  String? createdAt;
@override@JsonKey(name: 'updated_at') final  String? updatedAt;
@override final  String? source;

/// Create a copy of Memory
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MemoryCopyWith<_Memory> get copyWith => __$MemoryCopyWithImpl<_Memory>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MemoryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Memory&&(identical(other.id, id) || other.id == id)&&(identical(other.memory, memory) || other.memory == memory)&&(identical(other.metadata, metadata) || other.metadata == metadata)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.source, source) || other.source == source));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,memory,metadata,createdAt,updatedAt,source);

@override
String toString() {
  return 'Memory(id: $id, memory: $memory, metadata: $metadata, createdAt: $createdAt, updatedAt: $updatedAt, source: $source)';
}


}

/// @nodoc
abstract mixin class _$MemoryCopyWith<$Res> implements $MemoryCopyWith<$Res> {
  factory _$MemoryCopyWith(_Memory value, $Res Function(_Memory) _then) = __$MemoryCopyWithImpl;
@override @useResult
$Res call({
 String? id, String? memory, MemoryMetadata? metadata,@JsonKey(name: 'created_at') String? createdAt,@JsonKey(name: 'updated_at') String? updatedAt, String? source
});


@override $MemoryMetadataCopyWith<$Res>? get metadata;

}
/// @nodoc
class __$MemoryCopyWithImpl<$Res>
    implements _$MemoryCopyWith<$Res> {
  __$MemoryCopyWithImpl(this._self, this._then);

  final _Memory _self;
  final $Res Function(_Memory) _then;

/// Create a copy of Memory
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? memory = freezed,Object? metadata = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? source = freezed,}) {
  return _then(_Memory(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,memory: freezed == memory ? _self.memory : memory // ignore: cast_nullable_to_non_nullable
as String?,metadata: freezed == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as MemoryMetadata?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,source: freezed == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of Memory
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MemoryMetadataCopyWith<$Res>? get metadata {
    if (_self.metadata == null) {
    return null;
  }

  return $MemoryMetadataCopyWith<$Res>(_self.metadata!, (value) {
    return _then(_self.copyWith(metadata: value));
  });
}
}


/// @nodoc
mixin _$MemoryMetadata {

 String? get source;@JsonKey(name: 'memory_type') String? get memoryType;@JsonKey(name: 'chat_id') String? get chatId; String? get symbol; String? get timestamp;
/// Create a copy of MemoryMetadata
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MemoryMetadataCopyWith<MemoryMetadata> get copyWith => _$MemoryMetadataCopyWithImpl<MemoryMetadata>(this as MemoryMetadata, _$identity);

  /// Serializes this MemoryMetadata to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MemoryMetadata&&(identical(other.source, source) || other.source == source)&&(identical(other.memoryType, memoryType) || other.memoryType == memoryType)&&(identical(other.chatId, chatId) || other.chatId == chatId)&&(identical(other.symbol, symbol) || other.symbol == symbol)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,source,memoryType,chatId,symbol,timestamp);

@override
String toString() {
  return 'MemoryMetadata(source: $source, memoryType: $memoryType, chatId: $chatId, symbol: $symbol, timestamp: $timestamp)';
}


}

/// @nodoc
abstract mixin class $MemoryMetadataCopyWith<$Res>  {
  factory $MemoryMetadataCopyWith(MemoryMetadata value, $Res Function(MemoryMetadata) _then) = _$MemoryMetadataCopyWithImpl;
@useResult
$Res call({
 String? source,@JsonKey(name: 'memory_type') String? memoryType,@JsonKey(name: 'chat_id') String? chatId, String? symbol, String? timestamp
});




}
/// @nodoc
class _$MemoryMetadataCopyWithImpl<$Res>
    implements $MemoryMetadataCopyWith<$Res> {
  _$MemoryMetadataCopyWithImpl(this._self, this._then);

  final MemoryMetadata _self;
  final $Res Function(MemoryMetadata) _then;

/// Create a copy of MemoryMetadata
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? source = freezed,Object? memoryType = freezed,Object? chatId = freezed,Object? symbol = freezed,Object? timestamp = freezed,}) {
  return _then(_self.copyWith(
source: freezed == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as String?,memoryType: freezed == memoryType ? _self.memoryType : memoryType // ignore: cast_nullable_to_non_nullable
as String?,chatId: freezed == chatId ? _self.chatId : chatId // ignore: cast_nullable_to_non_nullable
as String?,symbol: freezed == symbol ? _self.symbol : symbol // ignore: cast_nullable_to_non_nullable
as String?,timestamp: freezed == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [MemoryMetadata].
extension MemoryMetadataPatterns on MemoryMetadata {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MemoryMetadata value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MemoryMetadata() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MemoryMetadata value)  $default,){
final _that = this;
switch (_that) {
case _MemoryMetadata():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MemoryMetadata value)?  $default,){
final _that = this;
switch (_that) {
case _MemoryMetadata() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? source, @JsonKey(name: 'memory_type')  String? memoryType, @JsonKey(name: 'chat_id')  String? chatId,  String? symbol,  String? timestamp)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MemoryMetadata() when $default != null:
return $default(_that.source,_that.memoryType,_that.chatId,_that.symbol,_that.timestamp);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? source, @JsonKey(name: 'memory_type')  String? memoryType, @JsonKey(name: 'chat_id')  String? chatId,  String? symbol,  String? timestamp)  $default,) {final _that = this;
switch (_that) {
case _MemoryMetadata():
return $default(_that.source,_that.memoryType,_that.chatId,_that.symbol,_that.timestamp);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? source, @JsonKey(name: 'memory_type')  String? memoryType, @JsonKey(name: 'chat_id')  String? chatId,  String? symbol,  String? timestamp)?  $default,) {final _that = this;
switch (_that) {
case _MemoryMetadata() when $default != null:
return $default(_that.source,_that.memoryType,_that.chatId,_that.symbol,_that.timestamp);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MemoryMetadata implements MemoryMetadata {
  const _MemoryMetadata({this.source, @JsonKey(name: 'memory_type') this.memoryType, @JsonKey(name: 'chat_id') this.chatId, this.symbol, this.timestamp});
  factory _MemoryMetadata.fromJson(Map<String, dynamic> json) => _$MemoryMetadataFromJson(json);

@override final  String? source;
@override@JsonKey(name: 'memory_type') final  String? memoryType;
@override@JsonKey(name: 'chat_id') final  String? chatId;
@override final  String? symbol;
@override final  String? timestamp;

/// Create a copy of MemoryMetadata
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MemoryMetadataCopyWith<_MemoryMetadata> get copyWith => __$MemoryMetadataCopyWithImpl<_MemoryMetadata>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MemoryMetadataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MemoryMetadata&&(identical(other.source, source) || other.source == source)&&(identical(other.memoryType, memoryType) || other.memoryType == memoryType)&&(identical(other.chatId, chatId) || other.chatId == chatId)&&(identical(other.symbol, symbol) || other.symbol == symbol)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,source,memoryType,chatId,symbol,timestamp);

@override
String toString() {
  return 'MemoryMetadata(source: $source, memoryType: $memoryType, chatId: $chatId, symbol: $symbol, timestamp: $timestamp)';
}


}

/// @nodoc
abstract mixin class _$MemoryMetadataCopyWith<$Res> implements $MemoryMetadataCopyWith<$Res> {
  factory _$MemoryMetadataCopyWith(_MemoryMetadata value, $Res Function(_MemoryMetadata) _then) = __$MemoryMetadataCopyWithImpl;
@override @useResult
$Res call({
 String? source,@JsonKey(name: 'memory_type') String? memoryType,@JsonKey(name: 'chat_id') String? chatId, String? symbol, String? timestamp
});




}
/// @nodoc
class __$MemoryMetadataCopyWithImpl<$Res>
    implements _$MemoryMetadataCopyWith<$Res> {
  __$MemoryMetadataCopyWithImpl(this._self, this._then);

  final _MemoryMetadata _self;
  final $Res Function(_MemoryMetadata) _then;

/// Create a copy of MemoryMetadata
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? source = freezed,Object? memoryType = freezed,Object? chatId = freezed,Object? symbol = freezed,Object? timestamp = freezed,}) {
  return _then(_MemoryMetadata(
source: freezed == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as String?,memoryType: freezed == memoryType ? _self.memoryType : memoryType // ignore: cast_nullable_to_non_nullable
as String?,chatId: freezed == chatId ? _self.chatId : chatId // ignore: cast_nullable_to_non_nullable
as String?,symbol: freezed == symbol ? _self.symbol : symbol // ignore: cast_nullable_to_non_nullable
as String?,timestamp: freezed == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
