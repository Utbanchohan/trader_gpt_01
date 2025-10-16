// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'about_crypto_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AboutCryptoModel {

 CryptoData? get data; String? get msg; int? get status; dynamic get errors;
/// Create a copy of AboutCryptoModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AboutCryptoModelCopyWith<AboutCryptoModel> get copyWith => _$AboutCryptoModelCopyWithImpl<AboutCryptoModel>(this as AboutCryptoModel, _$identity);

  /// Serializes this AboutCryptoModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AboutCryptoModel&&(identical(other.data, data) || other.data == data)&&(identical(other.msg, msg) || other.msg == msg)&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.errors, errors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data,msg,status,const DeepCollectionEquality().hash(errors));

@override
String toString() {
  return 'AboutCryptoModel(data: $data, msg: $msg, status: $status, errors: $errors)';
}


}

/// @nodoc
abstract mixin class $AboutCryptoModelCopyWith<$Res>  {
  factory $AboutCryptoModelCopyWith(AboutCryptoModel value, $Res Function(AboutCryptoModel) _then) = _$AboutCryptoModelCopyWithImpl;
@useResult
$Res call({
 CryptoData? data, String? msg, int? status, dynamic errors
});


$CryptoDataCopyWith<$Res>? get data;

}
/// @nodoc
class _$AboutCryptoModelCopyWithImpl<$Res>
    implements $AboutCryptoModelCopyWith<$Res> {
  _$AboutCryptoModelCopyWithImpl(this._self, this._then);

  final AboutCryptoModel _self;
  final $Res Function(AboutCryptoModel) _then;

/// Create a copy of AboutCryptoModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = freezed,Object? msg = freezed,Object? status = freezed,Object? errors = freezed,}) {
  return _then(_self.copyWith(
data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as CryptoData?,msg: freezed == msg ? _self.msg : msg // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int?,errors: freezed == errors ? _self.errors : errors // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}
/// Create a copy of AboutCryptoModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CryptoDataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $CryptoDataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [AboutCryptoModel].
extension AboutCryptoModelPatterns on AboutCryptoModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AboutCryptoModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AboutCryptoModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AboutCryptoModel value)  $default,){
final _that = this;
switch (_that) {
case _AboutCryptoModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AboutCryptoModel value)?  $default,){
final _that = this;
switch (_that) {
case _AboutCryptoModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( CryptoData? data,  String? msg,  int? status,  dynamic errors)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AboutCryptoModel() when $default != null:
return $default(_that.data,_that.msg,_that.status,_that.errors);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( CryptoData? data,  String? msg,  int? status,  dynamic errors)  $default,) {final _that = this;
switch (_that) {
case _AboutCryptoModel():
return $default(_that.data,_that.msg,_that.status,_that.errors);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( CryptoData? data,  String? msg,  int? status,  dynamic errors)?  $default,) {final _that = this;
switch (_that) {
case _AboutCryptoModel() when $default != null:
return $default(_that.data,_that.msg,_that.status,_that.errors);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AboutCryptoModel implements AboutCryptoModel {
  const _AboutCryptoModel({required this.data, required this.msg, required this.status, required this.errors});
  factory _AboutCryptoModel.fromJson(Map<String, dynamic> json) => _$AboutCryptoModelFromJson(json);

@override final  CryptoData? data;
@override final  String? msg;
@override final  int? status;
@override final  dynamic errors;

/// Create a copy of AboutCryptoModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AboutCryptoModelCopyWith<_AboutCryptoModel> get copyWith => __$AboutCryptoModelCopyWithImpl<_AboutCryptoModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AboutCryptoModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AboutCryptoModel&&(identical(other.data, data) || other.data == data)&&(identical(other.msg, msg) || other.msg == msg)&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.errors, errors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data,msg,status,const DeepCollectionEquality().hash(errors));

@override
String toString() {
  return 'AboutCryptoModel(data: $data, msg: $msg, status: $status, errors: $errors)';
}


}

/// @nodoc
abstract mixin class _$AboutCryptoModelCopyWith<$Res> implements $AboutCryptoModelCopyWith<$Res> {
  factory _$AboutCryptoModelCopyWith(_AboutCryptoModel value, $Res Function(_AboutCryptoModel) _then) = __$AboutCryptoModelCopyWithImpl;
@override @useResult
$Res call({
 CryptoData? data, String? msg, int? status, dynamic errors
});


@override $CryptoDataCopyWith<$Res>? get data;

}
/// @nodoc
class __$AboutCryptoModelCopyWithImpl<$Res>
    implements _$AboutCryptoModelCopyWith<$Res> {
  __$AboutCryptoModelCopyWithImpl(this._self, this._then);

  final _AboutCryptoModel _self;
  final $Res Function(_AboutCryptoModel) _then;

/// Create a copy of AboutCryptoModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = freezed,Object? msg = freezed,Object? status = freezed,Object? errors = freezed,}) {
  return _then(_AboutCryptoModel(
data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as CryptoData?,msg: freezed == msg ? _self.msg : msg // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int?,errors: freezed == errors ? _self.errors : errors // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

/// Create a copy of AboutCryptoModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CryptoDataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $CryptoDataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$CryptoData {

 Description? get description; String? get name;
/// Create a copy of CryptoData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CryptoDataCopyWith<CryptoData> get copyWith => _$CryptoDataCopyWithImpl<CryptoData>(this as CryptoData, _$identity);

  /// Serializes this CryptoData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CryptoData&&(identical(other.description, description) || other.description == description)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,description,name);

@override
String toString() {
  return 'CryptoData(description: $description, name: $name)';
}


}

/// @nodoc
abstract mixin class $CryptoDataCopyWith<$Res>  {
  factory $CryptoDataCopyWith(CryptoData value, $Res Function(CryptoData) _then) = _$CryptoDataCopyWithImpl;
@useResult
$Res call({
 Description? description, String? name
});


$DescriptionCopyWith<$Res>? get description;

}
/// @nodoc
class _$CryptoDataCopyWithImpl<$Res>
    implements $CryptoDataCopyWith<$Res> {
  _$CryptoDataCopyWithImpl(this._self, this._then);

  final CryptoData _self;
  final $Res Function(CryptoData) _then;

/// Create a copy of CryptoData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? description = freezed,Object? name = freezed,}) {
  return _then(_self.copyWith(
description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as Description?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of CryptoData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DescriptionCopyWith<$Res>? get description {
    if (_self.description == null) {
    return null;
  }

  return $DescriptionCopyWith<$Res>(_self.description!, (value) {
    return _then(_self.copyWith(description: value));
  });
}
}


/// Adds pattern-matching-related methods to [CryptoData].
extension CryptoDataPatterns on CryptoData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CryptoData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CryptoData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CryptoData value)  $default,){
final _that = this;
switch (_that) {
case _CryptoData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CryptoData value)?  $default,){
final _that = this;
switch (_that) {
case _CryptoData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Description? description,  String? name)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CryptoData() when $default != null:
return $default(_that.description,_that.name);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Description? description,  String? name)  $default,) {final _that = this;
switch (_that) {
case _CryptoData():
return $default(_that.description,_that.name);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Description? description,  String? name)?  $default,) {final _that = this;
switch (_that) {
case _CryptoData() when $default != null:
return $default(_that.description,_that.name);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CryptoData implements CryptoData {
  const _CryptoData({required this.description, required this.name});
  factory _CryptoData.fromJson(Map<String, dynamic> json) => _$CryptoDataFromJson(json);

@override final  Description? description;
@override final  String? name;

/// Create a copy of CryptoData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CryptoDataCopyWith<_CryptoData> get copyWith => __$CryptoDataCopyWithImpl<_CryptoData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CryptoDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CryptoData&&(identical(other.description, description) || other.description == description)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,description,name);

@override
String toString() {
  return 'CryptoData(description: $description, name: $name)';
}


}

/// @nodoc
abstract mixin class _$CryptoDataCopyWith<$Res> implements $CryptoDataCopyWith<$Res> {
  factory _$CryptoDataCopyWith(_CryptoData value, $Res Function(_CryptoData) _then) = __$CryptoDataCopyWithImpl;
@override @useResult
$Res call({
 Description? description, String? name
});


@override $DescriptionCopyWith<$Res>? get description;

}
/// @nodoc
class __$CryptoDataCopyWithImpl<$Res>
    implements _$CryptoDataCopyWith<$Res> {
  __$CryptoDataCopyWithImpl(this._self, this._then);

  final _CryptoData _self;
  final $Res Function(_CryptoData) _then;

/// Create a copy of CryptoData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? description = freezed,Object? name = freezed,}) {
  return _then(_CryptoData(
description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as Description?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of CryptoData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DescriptionCopyWith<$Res>? get description {
    if (_self.description == null) {
    return null;
  }

  return $DescriptionCopyWith<$Res>(_self.description!, (value) {
    return _then(_self.copyWith(description: value));
  });
}
}


/// @nodoc
mixin _$Description {

 String? get en;
/// Create a copy of Description
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DescriptionCopyWith<Description> get copyWith => _$DescriptionCopyWithImpl<Description>(this as Description, _$identity);

  /// Serializes this Description to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Description&&(identical(other.en, en) || other.en == en));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,en);

@override
String toString() {
  return 'Description(en: $en)';
}


}

/// @nodoc
abstract mixin class $DescriptionCopyWith<$Res>  {
  factory $DescriptionCopyWith(Description value, $Res Function(Description) _then) = _$DescriptionCopyWithImpl;
@useResult
$Res call({
 String? en
});




}
/// @nodoc
class _$DescriptionCopyWithImpl<$Res>
    implements $DescriptionCopyWith<$Res> {
  _$DescriptionCopyWithImpl(this._self, this._then);

  final Description _self;
  final $Res Function(Description) _then;

/// Create a copy of Description
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? en = freezed,}) {
  return _then(_self.copyWith(
en: freezed == en ? _self.en : en // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Description].
extension DescriptionPatterns on Description {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Description value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Description() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Description value)  $default,){
final _that = this;
switch (_that) {
case _Description():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Description value)?  $default,){
final _that = this;
switch (_that) {
case _Description() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? en)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Description() when $default != null:
return $default(_that.en);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? en)  $default,) {final _that = this;
switch (_that) {
case _Description():
return $default(_that.en);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? en)?  $default,) {final _that = this;
switch (_that) {
case _Description() when $default != null:
return $default(_that.en);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Description implements Description {
  const _Description({required this.en});
  factory _Description.fromJson(Map<String, dynamic> json) => _$DescriptionFromJson(json);

@override final  String? en;

/// Create a copy of Description
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DescriptionCopyWith<_Description> get copyWith => __$DescriptionCopyWithImpl<_Description>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DescriptionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Description&&(identical(other.en, en) || other.en == en));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,en);

@override
String toString() {
  return 'Description(en: $en)';
}


}

/// @nodoc
abstract mixin class _$DescriptionCopyWith<$Res> implements $DescriptionCopyWith<$Res> {
  factory _$DescriptionCopyWith(_Description value, $Res Function(_Description) _then) = __$DescriptionCopyWithImpl;
@override @useResult
$Res call({
 String? en
});




}
/// @nodoc
class __$DescriptionCopyWithImpl<$Res>
    implements _$DescriptionCopyWith<$Res> {
  __$DescriptionCopyWithImpl(this._self, this._then);

  final _Description _self;
  final $Res Function(_Description) _then;

/// Create a copy of Description
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? en = freezed,}) {
  return _then(_Description(
en: freezed == en ? _self.en : en // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
