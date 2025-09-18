// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'archive_chat_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ArchiveChatDto {

 String get chatId; bool get isArchived;
/// Create a copy of ArchiveChatDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ArchiveChatDtoCopyWith<ArchiveChatDto> get copyWith => _$ArchiveChatDtoCopyWithImpl<ArchiveChatDto>(this as ArchiveChatDto, _$identity);

  /// Serializes this ArchiveChatDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ArchiveChatDto&&(identical(other.chatId, chatId) || other.chatId == chatId)&&(identical(other.isArchived, isArchived) || other.isArchived == isArchived));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,chatId,isArchived);

@override
String toString() {
  return 'ArchiveChatDto(chatId: $chatId, isArchived: $isArchived)';
}


}

/// @nodoc
abstract mixin class $ArchiveChatDtoCopyWith<$Res>  {
  factory $ArchiveChatDtoCopyWith(ArchiveChatDto value, $Res Function(ArchiveChatDto) _then) = _$ArchiveChatDtoCopyWithImpl;
@useResult
$Res call({
 String chatId, bool isArchived
});




}
/// @nodoc
class _$ArchiveChatDtoCopyWithImpl<$Res>
    implements $ArchiveChatDtoCopyWith<$Res> {
  _$ArchiveChatDtoCopyWithImpl(this._self, this._then);

  final ArchiveChatDto _self;
  final $Res Function(ArchiveChatDto) _then;

/// Create a copy of ArchiveChatDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? chatId = null,Object? isArchived = null,}) {
  return _then(_self.copyWith(
chatId: null == chatId ? _self.chatId : chatId // ignore: cast_nullable_to_non_nullable
as String,isArchived: null == isArchived ? _self.isArchived : isArchived // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [ArchiveChatDto].
extension ArchiveChatDtoPatterns on ArchiveChatDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ArchiveChatDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ArchiveChatDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ArchiveChatDto value)  $default,){
final _that = this;
switch (_that) {
case _ArchiveChatDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ArchiveChatDto value)?  $default,){
final _that = this;
switch (_that) {
case _ArchiveChatDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String chatId,  bool isArchived)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ArchiveChatDto() when $default != null:
return $default(_that.chatId,_that.isArchived);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String chatId,  bool isArchived)  $default,) {final _that = this;
switch (_that) {
case _ArchiveChatDto():
return $default(_that.chatId,_that.isArchived);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String chatId,  bool isArchived)?  $default,) {final _that = this;
switch (_that) {
case _ArchiveChatDto() when $default != null:
return $default(_that.chatId,_that.isArchived);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ArchiveChatDto implements ArchiveChatDto {
  const _ArchiveChatDto({required this.chatId, required this.isArchived});
  factory _ArchiveChatDto.fromJson(Map<String, dynamic> json) => _$ArchiveChatDtoFromJson(json);

@override final  String chatId;
@override final  bool isArchived;

/// Create a copy of ArchiveChatDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ArchiveChatDtoCopyWith<_ArchiveChatDto> get copyWith => __$ArchiveChatDtoCopyWithImpl<_ArchiveChatDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ArchiveChatDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ArchiveChatDto&&(identical(other.chatId, chatId) || other.chatId == chatId)&&(identical(other.isArchived, isArchived) || other.isArchived == isArchived));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,chatId,isArchived);

@override
String toString() {
  return 'ArchiveChatDto(chatId: $chatId, isArchived: $isArchived)';
}


}

/// @nodoc
abstract mixin class _$ArchiveChatDtoCopyWith<$Res> implements $ArchiveChatDtoCopyWith<$Res> {
  factory _$ArchiveChatDtoCopyWith(_ArchiveChatDto value, $Res Function(_ArchiveChatDto) _then) = __$ArchiveChatDtoCopyWithImpl;
@override @useResult
$Res call({
 String chatId, bool isArchived
});




}
/// @nodoc
class __$ArchiveChatDtoCopyWithImpl<$Res>
    implements _$ArchiveChatDtoCopyWith<$Res> {
  __$ArchiveChatDtoCopyWithImpl(this._self, this._then);

  final _ArchiveChatDto _self;
  final $Res Function(_ArchiveChatDto) _then;

/// Create a copy of ArchiveChatDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? chatId = null,Object? isArchived = null,}) {
  return _then(_ArchiveChatDto(
chatId: null == chatId ? _self.chatId : chatId // ignore: cast_nullable_to_non_nullable
as String,isArchived: null == isArchived ? _self.isArchived : isArchived // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
