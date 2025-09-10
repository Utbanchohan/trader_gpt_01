// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chats_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Chats {

 bool get isLoading; List<dynamic>? get data; int? get timestamp;
/// Create a copy of Chats
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatsCopyWith<Chats> get copyWith => _$ChatsCopyWithImpl<Chats>(this as Chats, _$identity);

  /// Serializes this Chats to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Chats&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,isLoading,const DeepCollectionEquality().hash(data),timestamp);

@override
String toString() {
  return 'Chats(isLoading: $isLoading, data: $data, timestamp: $timestamp)';
}


}

/// @nodoc
abstract mixin class $ChatsCopyWith<$Res>  {
  factory $ChatsCopyWith(Chats value, $Res Function(Chats) _then) = _$ChatsCopyWithImpl;
@useResult
$Res call({
 bool isLoading, List<dynamic>? data, int? timestamp
});




}
/// @nodoc
class _$ChatsCopyWithImpl<$Res>
    implements $ChatsCopyWith<$Res> {
  _$ChatsCopyWithImpl(this._self, this._then);

  final Chats _self;
  final $Res Function(Chats) _then;

/// Create a copy of Chats
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? data = freezed,Object? timestamp = freezed,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,timestamp: freezed == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [Chats].
extension ChatsPatterns on Chats {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Chats value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Chats() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Chats value)  $default,){
final _that = this;
switch (_that) {
case _Chats():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Chats value)?  $default,){
final _that = this;
switch (_that) {
case _Chats() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  List<dynamic>? data,  int? timestamp)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Chats() when $default != null:
return $default(_that.isLoading,_that.data,_that.timestamp);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  List<dynamic>? data,  int? timestamp)  $default,) {final _that = this;
switch (_that) {
case _Chats():
return $default(_that.isLoading,_that.data,_that.timestamp);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  List<dynamic>? data,  int? timestamp)?  $default,) {final _that = this;
switch (_that) {
case _Chats() when $default != null:
return $default(_that.isLoading,_that.data,_that.timestamp);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Chats implements Chats {
  const _Chats({this.isLoading = false, final  List<dynamic>? data, this.timestamp}): _data = data;
  factory _Chats.fromJson(Map<String, dynamic> json) => _$ChatsFromJson(json);

@override@JsonKey() final  bool isLoading;
 final  List<dynamic>? _data;
@override List<dynamic>? get data {
  final value = _data;
  if (value == null) return null;
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  int? timestamp;

/// Create a copy of Chats
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChatsCopyWith<_Chats> get copyWith => __$ChatsCopyWithImpl<_Chats>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChatsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Chats&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&const DeepCollectionEquality().equals(other._data, _data)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,isLoading,const DeepCollectionEquality().hash(_data),timestamp);

@override
String toString() {
  return 'Chats(isLoading: $isLoading, data: $data, timestamp: $timestamp)';
}


}

/// @nodoc
abstract mixin class _$ChatsCopyWith<$Res> implements $ChatsCopyWith<$Res> {
  factory _$ChatsCopyWith(_Chats value, $Res Function(_Chats) _then) = __$ChatsCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, List<dynamic>? data, int? timestamp
});




}
/// @nodoc
class __$ChatsCopyWithImpl<$Res>
    implements _$ChatsCopyWith<$Res> {
  __$ChatsCopyWithImpl(this._self, this._then);

  final _Chats _self;
  final $Res Function(_Chats) _then;

/// Create a copy of Chats
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? data = freezed,Object? timestamp = freezed,}) {
  return _then(_Chats(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,data: freezed == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,timestamp: freezed == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
