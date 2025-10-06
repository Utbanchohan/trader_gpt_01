// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BaseModel<T> {

 String get message;@JsonKey(name: 'success') bool? get isSuccess; T? get data;
/// Create a copy of BaseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BaseModelCopyWith<T, BaseModel<T>> get copyWith => _$BaseModelCopyWithImpl<T, BaseModel<T>>(this as BaseModel<T>, _$identity);

  /// Serializes this BaseModel to a JSON map.
  Map<String, dynamic> toJson(Object? Function(T) toJsonT);


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BaseModel<T>&&(identical(other.message, message) || other.message == message)&&(identical(other.isSuccess, isSuccess) || other.isSuccess == isSuccess)&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message,isSuccess,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'BaseModel<$T>(message: $message, isSuccess: $isSuccess, data: $data)';
}


}

/// @nodoc
abstract mixin class $BaseModelCopyWith<T,$Res>  {
  factory $BaseModelCopyWith(BaseModel<T> value, $Res Function(BaseModel<T>) _then) = _$BaseModelCopyWithImpl;
@useResult
$Res call({
 String message,@JsonKey(name: 'success') bool? isSuccess, T? data
});




}
/// @nodoc
class _$BaseModelCopyWithImpl<T,$Res>
    implements $BaseModelCopyWith<T, $Res> {
  _$BaseModelCopyWithImpl(this._self, this._then);

  final BaseModel<T> _self;
  final $Res Function(BaseModel<T>) _then;

/// Create a copy of BaseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? message = null,Object? isSuccess = freezed,Object? data = freezed,}) {
  return _then(_self.copyWith(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,isSuccess: freezed == isSuccess ? _self.isSuccess : isSuccess // ignore: cast_nullable_to_non_nullable
as bool?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as T?,
  ));
}

}


/// Adds pattern-matching-related methods to [BaseModel].
extension BaseModelPatterns<T> on BaseModel<T> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BaseModel<T> value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BaseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BaseModel<T> value)  $default,){
final _that = this;
switch (_that) {
case _BaseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BaseModel<T> value)?  $default,){
final _that = this;
switch (_that) {
case _BaseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String message, @JsonKey(name: 'success')  bool? isSuccess,  T? data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BaseModel() when $default != null:
return $default(_that.message,_that.isSuccess,_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String message, @JsonKey(name: 'success')  bool? isSuccess,  T? data)  $default,) {final _that = this;
switch (_that) {
case _BaseModel():
return $default(_that.message,_that.isSuccess,_that.data);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String message, @JsonKey(name: 'success')  bool? isSuccess,  T? data)?  $default,) {final _that = this;
switch (_that) {
case _BaseModel() when $default != null:
return $default(_that.message,_that.isSuccess,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)

class _BaseModel<T> implements BaseModel<T> {
  const _BaseModel({required this.message, @JsonKey(name: 'success') this.isSuccess, this.data});
  factory _BaseModel.fromJson(Map<String, dynamic> json,T Function(Object?) fromJsonT) => _$BaseModelFromJson(json,fromJsonT);

@override final  String message;
@override@JsonKey(name: 'success') final  bool? isSuccess;
@override final  T? data;

/// Create a copy of BaseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BaseModelCopyWith<T, _BaseModel<T>> get copyWith => __$BaseModelCopyWithImpl<T, _BaseModel<T>>(this, _$identity);

@override
Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
  return _$BaseModelToJson<T>(this, toJsonT);
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BaseModel<T>&&(identical(other.message, message) || other.message == message)&&(identical(other.isSuccess, isSuccess) || other.isSuccess == isSuccess)&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message,isSuccess,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'BaseModel<$T>(message: $message, isSuccess: $isSuccess, data: $data)';
}


}

/// @nodoc
abstract mixin class _$BaseModelCopyWith<T,$Res> implements $BaseModelCopyWith<T, $Res> {
  factory _$BaseModelCopyWith(_BaseModel<T> value, $Res Function(_BaseModel<T>) _then) = __$BaseModelCopyWithImpl;
@override @useResult
$Res call({
 String message,@JsonKey(name: 'success') bool? isSuccess, T? data
});




}
/// @nodoc
class __$BaseModelCopyWithImpl<T,$Res>
    implements _$BaseModelCopyWith<T, $Res> {
  __$BaseModelCopyWithImpl(this._self, this._then);

  final _BaseModel<T> _self;
  final $Res Function(_BaseModel<T>) _then;

/// Create a copy of BaseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,Object? isSuccess = freezed,Object? data = freezed,}) {
  return _then(_BaseModel<T>(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,isSuccess: freezed == isSuccess ? _self.isSuccess : isSuccess // ignore: cast_nullable_to_non_nullable
as bool?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as T?,
  ));
}


}


/// @nodoc
mixin _$BaseModelList<T> {

 String get message; bool get isSuccess; List<T>? get data;
/// Create a copy of BaseModelList
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BaseModelListCopyWith<T, BaseModelList<T>> get copyWith => _$BaseModelListCopyWithImpl<T, BaseModelList<T>>(this as BaseModelList<T>, _$identity);

  /// Serializes this BaseModelList to a JSON map.
  Map<String, dynamic> toJson(Object? Function(T) toJsonT);


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BaseModelList<T>&&(identical(other.message, message) || other.message == message)&&(identical(other.isSuccess, isSuccess) || other.isSuccess == isSuccess)&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message,isSuccess,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'BaseModelList<$T>(message: $message, isSuccess: $isSuccess, data: $data)';
}


}

/// @nodoc
abstract mixin class $BaseModelListCopyWith<T,$Res>  {
  factory $BaseModelListCopyWith(BaseModelList<T> value, $Res Function(BaseModelList<T>) _then) = _$BaseModelListCopyWithImpl;
@useResult
$Res call({
 String message, bool isSuccess, List<T>? data
});




}
/// @nodoc
class _$BaseModelListCopyWithImpl<T,$Res>
    implements $BaseModelListCopyWith<T, $Res> {
  _$BaseModelListCopyWithImpl(this._self, this._then);

  final BaseModelList<T> _self;
  final $Res Function(BaseModelList<T>) _then;

/// Create a copy of BaseModelList
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? message = null,Object? isSuccess = null,Object? data = freezed,}) {
  return _then(_self.copyWith(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,isSuccess: null == isSuccess ? _self.isSuccess : isSuccess // ignore: cast_nullable_to_non_nullable
as bool,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<T>?,
  ));
}

}


/// Adds pattern-matching-related methods to [BaseModelList].
extension BaseModelListPatterns<T> on BaseModelList<T> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BaseModelList<T> value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BaseModelList() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BaseModelList<T> value)  $default,){
final _that = this;
switch (_that) {
case _BaseModelList():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BaseModelList<T> value)?  $default,){
final _that = this;
switch (_that) {
case _BaseModelList() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String message,  bool isSuccess,  List<T>? data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BaseModelList() when $default != null:
return $default(_that.message,_that.isSuccess,_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String message,  bool isSuccess,  List<T>? data)  $default,) {final _that = this;
switch (_that) {
case _BaseModelList():
return $default(_that.message,_that.isSuccess,_that.data);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String message,  bool isSuccess,  List<T>? data)?  $default,) {final _that = this;
switch (_that) {
case _BaseModelList() when $default != null:
return $default(_that.message,_that.isSuccess,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)

class _BaseModelList<T> implements BaseModelList<T> {
  const _BaseModelList({required this.message, required this.isSuccess, final  List<T>? data}): _data = data;
  factory _BaseModelList.fromJson(Map<String, dynamic> json,T Function(Object?) fromJsonT) => _$BaseModelListFromJson(json,fromJsonT);

@override final  String message;
@override final  bool isSuccess;
 final  List<T>? _data;
@override List<T>? get data {
  final value = _data;
  if (value == null) return null;
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of BaseModelList
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BaseModelListCopyWith<T, _BaseModelList<T>> get copyWith => __$BaseModelListCopyWithImpl<T, _BaseModelList<T>>(this, _$identity);

@override
Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
  return _$BaseModelListToJson<T>(this, toJsonT);
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BaseModelList<T>&&(identical(other.message, message) || other.message == message)&&(identical(other.isSuccess, isSuccess) || other.isSuccess == isSuccess)&&const DeepCollectionEquality().equals(other._data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message,isSuccess,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'BaseModelList<$T>(message: $message, isSuccess: $isSuccess, data: $data)';
}


}

/// @nodoc
abstract mixin class _$BaseModelListCopyWith<T,$Res> implements $BaseModelListCopyWith<T, $Res> {
  factory _$BaseModelListCopyWith(_BaseModelList<T> value, $Res Function(_BaseModelList<T>) _then) = __$BaseModelListCopyWithImpl;
@override @useResult
$Res call({
 String message, bool isSuccess, List<T>? data
});




}
/// @nodoc
class __$BaseModelListCopyWithImpl<T,$Res>
    implements _$BaseModelListCopyWith<T, $Res> {
  __$BaseModelListCopyWithImpl(this._self, this._then);

  final _BaseModelList<T> _self;
  final $Res Function(_BaseModelList<T>) _then;

/// Create a copy of BaseModelList
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,Object? isSuccess = null,Object? data = freezed,}) {
  return _then(_BaseModelList<T>(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,isSuccess: null == isSuccess ? _self.isSuccess : isSuccess // ignore: cast_nullable_to_non_nullable
as bool,data: freezed == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<T>?,
  ));
}


}

// dart format on
