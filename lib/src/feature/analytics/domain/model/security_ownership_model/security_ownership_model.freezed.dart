// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'security_ownership_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SecurityOwnershipResponse {

 int get status; String get msg; List<SecurityOwnership>? get data; dynamic get errors;
/// Create a copy of SecurityOwnershipResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SecurityOwnershipResponseCopyWith<SecurityOwnershipResponse> get copyWith => _$SecurityOwnershipResponseCopyWithImpl<SecurityOwnershipResponse>(this as SecurityOwnershipResponse, _$identity);

  /// Serializes this SecurityOwnershipResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SecurityOwnershipResponse&&(identical(other.status, status) || other.status == status)&&(identical(other.msg, msg) || other.msg == msg)&&const DeepCollectionEquality().equals(other.data, data)&&const DeepCollectionEquality().equals(other.errors, errors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,msg,const DeepCollectionEquality().hash(data),const DeepCollectionEquality().hash(errors));

@override
String toString() {
  return 'SecurityOwnershipResponse(status: $status, msg: $msg, data: $data, errors: $errors)';
}


}

/// @nodoc
abstract mixin class $SecurityOwnershipResponseCopyWith<$Res>  {
  factory $SecurityOwnershipResponseCopyWith(SecurityOwnershipResponse value, $Res Function(SecurityOwnershipResponse) _then) = _$SecurityOwnershipResponseCopyWithImpl;
@useResult
$Res call({
 int status, String msg, List<SecurityOwnership>? data, dynamic errors
});




}
/// @nodoc
class _$SecurityOwnershipResponseCopyWithImpl<$Res>
    implements $SecurityOwnershipResponseCopyWith<$Res> {
  _$SecurityOwnershipResponseCopyWithImpl(this._self, this._then);

  final SecurityOwnershipResponse _self;
  final $Res Function(SecurityOwnershipResponse) _then;

/// Create a copy of SecurityOwnershipResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? msg = null,Object? data = freezed,Object? errors = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int,msg: null == msg ? _self.msg : msg // ignore: cast_nullable_to_non_nullable
as String,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<SecurityOwnership>?,errors: freezed == errors ? _self.errors : errors // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

}


/// Adds pattern-matching-related methods to [SecurityOwnershipResponse].
extension SecurityOwnershipResponsePatterns on SecurityOwnershipResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SecurityOwnershipResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SecurityOwnershipResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SecurityOwnershipResponse value)  $default,){
final _that = this;
switch (_that) {
case _SecurityOwnershipResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SecurityOwnershipResponse value)?  $default,){
final _that = this;
switch (_that) {
case _SecurityOwnershipResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int status,  String msg,  List<SecurityOwnership>? data,  dynamic errors)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SecurityOwnershipResponse() when $default != null:
return $default(_that.status,_that.msg,_that.data,_that.errors);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int status,  String msg,  List<SecurityOwnership>? data,  dynamic errors)  $default,) {final _that = this;
switch (_that) {
case _SecurityOwnershipResponse():
return $default(_that.status,_that.msg,_that.data,_that.errors);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int status,  String msg,  List<SecurityOwnership>? data,  dynamic errors)?  $default,) {final _that = this;
switch (_that) {
case _SecurityOwnershipResponse() when $default != null:
return $default(_that.status,_that.msg,_that.data,_that.errors);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SecurityOwnershipResponse implements SecurityOwnershipResponse {
  const _SecurityOwnershipResponse({required this.status, required this.msg, final  List<SecurityOwnership>? data, this.errors}): _data = data;
  factory _SecurityOwnershipResponse.fromJson(Map<String, dynamic> json) => _$SecurityOwnershipResponseFromJson(json);

@override final  int status;
@override final  String msg;
 final  List<SecurityOwnership>? _data;
@override List<SecurityOwnership>? get data {
  final value = _data;
  if (value == null) return null;
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  dynamic errors;

/// Create a copy of SecurityOwnershipResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SecurityOwnershipResponseCopyWith<_SecurityOwnershipResponse> get copyWith => __$SecurityOwnershipResponseCopyWithImpl<_SecurityOwnershipResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SecurityOwnershipResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SecurityOwnershipResponse&&(identical(other.status, status) || other.status == status)&&(identical(other.msg, msg) || other.msg == msg)&&const DeepCollectionEquality().equals(other._data, _data)&&const DeepCollectionEquality().equals(other.errors, errors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,msg,const DeepCollectionEquality().hash(_data),const DeepCollectionEquality().hash(errors));

@override
String toString() {
  return 'SecurityOwnershipResponse(status: $status, msg: $msg, data: $data, errors: $errors)';
}


}

/// @nodoc
abstract mixin class _$SecurityOwnershipResponseCopyWith<$Res> implements $SecurityOwnershipResponseCopyWith<$Res> {
  factory _$SecurityOwnershipResponseCopyWith(_SecurityOwnershipResponse value, $Res Function(_SecurityOwnershipResponse) _then) = __$SecurityOwnershipResponseCopyWithImpl;
@override @useResult
$Res call({
 int status, String msg, List<SecurityOwnership>? data, dynamic errors
});




}
/// @nodoc
class __$SecurityOwnershipResponseCopyWithImpl<$Res>
    implements _$SecurityOwnershipResponseCopyWith<$Res> {
  __$SecurityOwnershipResponseCopyWithImpl(this._self, this._then);

  final _SecurityOwnershipResponse _self;
  final $Res Function(_SecurityOwnershipResponse) _then;

/// Create a copy of SecurityOwnershipResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? msg = null,Object? data = freezed,Object? errors = freezed,}) {
  return _then(_SecurityOwnershipResponse(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int,msg: null == msg ? _self.msg : msg // ignore: cast_nullable_to_non_nullable
as String,data: freezed == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<SecurityOwnership>?,errors: freezed == errors ? _self.errors : errors // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}


}


/// @nodoc
mixin _$SecurityOwnership {

 String get name; String get formType; String get effectiveDate; String get fileDate; int get shares; int get sharesChange; double get sharesPercentChange; double get value; double get valueChange; double get valuePercentChange; double get ownershipPercentChange; double get ownershipPercent;@JsonKey(name: 'stock_type') int get stockType;
/// Create a copy of SecurityOwnership
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SecurityOwnershipCopyWith<SecurityOwnership> get copyWith => _$SecurityOwnershipCopyWithImpl<SecurityOwnership>(this as SecurityOwnership, _$identity);

  /// Serializes this SecurityOwnership to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SecurityOwnership&&(identical(other.name, name) || other.name == name)&&(identical(other.formType, formType) || other.formType == formType)&&(identical(other.effectiveDate, effectiveDate) || other.effectiveDate == effectiveDate)&&(identical(other.fileDate, fileDate) || other.fileDate == fileDate)&&(identical(other.shares, shares) || other.shares == shares)&&(identical(other.sharesChange, sharesChange) || other.sharesChange == sharesChange)&&(identical(other.sharesPercentChange, sharesPercentChange) || other.sharesPercentChange == sharesPercentChange)&&(identical(other.value, value) || other.value == value)&&(identical(other.valueChange, valueChange) || other.valueChange == valueChange)&&(identical(other.valuePercentChange, valuePercentChange) || other.valuePercentChange == valuePercentChange)&&(identical(other.ownershipPercentChange, ownershipPercentChange) || other.ownershipPercentChange == ownershipPercentChange)&&(identical(other.ownershipPercent, ownershipPercent) || other.ownershipPercent == ownershipPercent)&&(identical(other.stockType, stockType) || other.stockType == stockType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,formType,effectiveDate,fileDate,shares,sharesChange,sharesPercentChange,value,valueChange,valuePercentChange,ownershipPercentChange,ownershipPercent,stockType);

@override
String toString() {
  return 'SecurityOwnership(name: $name, formType: $formType, effectiveDate: $effectiveDate, fileDate: $fileDate, shares: $shares, sharesChange: $sharesChange, sharesPercentChange: $sharesPercentChange, value: $value, valueChange: $valueChange, valuePercentChange: $valuePercentChange, ownershipPercentChange: $ownershipPercentChange, ownershipPercent: $ownershipPercent, stockType: $stockType)';
}


}

/// @nodoc
abstract mixin class $SecurityOwnershipCopyWith<$Res>  {
  factory $SecurityOwnershipCopyWith(SecurityOwnership value, $Res Function(SecurityOwnership) _then) = _$SecurityOwnershipCopyWithImpl;
@useResult
$Res call({
 String name, String formType, String effectiveDate, String fileDate, int shares, int sharesChange, double sharesPercentChange, double value, double valueChange, double valuePercentChange, double ownershipPercentChange, double ownershipPercent,@JsonKey(name: 'stock_type') int stockType
});




}
/// @nodoc
class _$SecurityOwnershipCopyWithImpl<$Res>
    implements $SecurityOwnershipCopyWith<$Res> {
  _$SecurityOwnershipCopyWithImpl(this._self, this._then);

  final SecurityOwnership _self;
  final $Res Function(SecurityOwnership) _then;

/// Create a copy of SecurityOwnership
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? formType = null,Object? effectiveDate = null,Object? fileDate = null,Object? shares = null,Object? sharesChange = null,Object? sharesPercentChange = null,Object? value = null,Object? valueChange = null,Object? valuePercentChange = null,Object? ownershipPercentChange = null,Object? ownershipPercent = null,Object? stockType = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,formType: null == formType ? _self.formType : formType // ignore: cast_nullable_to_non_nullable
as String,effectiveDate: null == effectiveDate ? _self.effectiveDate : effectiveDate // ignore: cast_nullable_to_non_nullable
as String,fileDate: null == fileDate ? _self.fileDate : fileDate // ignore: cast_nullable_to_non_nullable
as String,shares: null == shares ? _self.shares : shares // ignore: cast_nullable_to_non_nullable
as int,sharesChange: null == sharesChange ? _self.sharesChange : sharesChange // ignore: cast_nullable_to_non_nullable
as int,sharesPercentChange: null == sharesPercentChange ? _self.sharesPercentChange : sharesPercentChange // ignore: cast_nullable_to_non_nullable
as double,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as double,valueChange: null == valueChange ? _self.valueChange : valueChange // ignore: cast_nullable_to_non_nullable
as double,valuePercentChange: null == valuePercentChange ? _self.valuePercentChange : valuePercentChange // ignore: cast_nullable_to_non_nullable
as double,ownershipPercentChange: null == ownershipPercentChange ? _self.ownershipPercentChange : ownershipPercentChange // ignore: cast_nullable_to_non_nullable
as double,ownershipPercent: null == ownershipPercent ? _self.ownershipPercent : ownershipPercent // ignore: cast_nullable_to_non_nullable
as double,stockType: null == stockType ? _self.stockType : stockType // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [SecurityOwnership].
extension SecurityOwnershipPatterns on SecurityOwnership {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SecurityOwnership value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SecurityOwnership() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SecurityOwnership value)  $default,){
final _that = this;
switch (_that) {
case _SecurityOwnership():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SecurityOwnership value)?  $default,){
final _that = this;
switch (_that) {
case _SecurityOwnership() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String formType,  String effectiveDate,  String fileDate,  int shares,  int sharesChange,  double sharesPercentChange,  double value,  double valueChange,  double valuePercentChange,  double ownershipPercentChange,  double ownershipPercent, @JsonKey(name: 'stock_type')  int stockType)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SecurityOwnership() when $default != null:
return $default(_that.name,_that.formType,_that.effectiveDate,_that.fileDate,_that.shares,_that.sharesChange,_that.sharesPercentChange,_that.value,_that.valueChange,_that.valuePercentChange,_that.ownershipPercentChange,_that.ownershipPercent,_that.stockType);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String formType,  String effectiveDate,  String fileDate,  int shares,  int sharesChange,  double sharesPercentChange,  double value,  double valueChange,  double valuePercentChange,  double ownershipPercentChange,  double ownershipPercent, @JsonKey(name: 'stock_type')  int stockType)  $default,) {final _that = this;
switch (_that) {
case _SecurityOwnership():
return $default(_that.name,_that.formType,_that.effectiveDate,_that.fileDate,_that.shares,_that.sharesChange,_that.sharesPercentChange,_that.value,_that.valueChange,_that.valuePercentChange,_that.ownershipPercentChange,_that.ownershipPercent,_that.stockType);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String formType,  String effectiveDate,  String fileDate,  int shares,  int sharesChange,  double sharesPercentChange,  double value,  double valueChange,  double valuePercentChange,  double ownershipPercentChange,  double ownershipPercent, @JsonKey(name: 'stock_type')  int stockType)?  $default,) {final _that = this;
switch (_that) {
case _SecurityOwnership() when $default != null:
return $default(_that.name,_that.formType,_that.effectiveDate,_that.fileDate,_that.shares,_that.sharesChange,_that.sharesPercentChange,_that.value,_that.valueChange,_that.valuePercentChange,_that.ownershipPercentChange,_that.ownershipPercent,_that.stockType);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SecurityOwnership implements SecurityOwnership {
  const _SecurityOwnership({required this.name, required this.formType, required this.effectiveDate, required this.fileDate, required this.shares, required this.sharesChange, required this.sharesPercentChange, required this.value, required this.valueChange, required this.valuePercentChange, required this.ownershipPercentChange, required this.ownershipPercent, @JsonKey(name: 'stock_type') required this.stockType});
  factory _SecurityOwnership.fromJson(Map<String, dynamic> json) => _$SecurityOwnershipFromJson(json);

@override final  String name;
@override final  String formType;
@override final  String effectiveDate;
@override final  String fileDate;
@override final  int shares;
@override final  int sharesChange;
@override final  double sharesPercentChange;
@override final  double value;
@override final  double valueChange;
@override final  double valuePercentChange;
@override final  double ownershipPercentChange;
@override final  double ownershipPercent;
@override@JsonKey(name: 'stock_type') final  int stockType;

/// Create a copy of SecurityOwnership
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SecurityOwnershipCopyWith<_SecurityOwnership> get copyWith => __$SecurityOwnershipCopyWithImpl<_SecurityOwnership>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SecurityOwnershipToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SecurityOwnership&&(identical(other.name, name) || other.name == name)&&(identical(other.formType, formType) || other.formType == formType)&&(identical(other.effectiveDate, effectiveDate) || other.effectiveDate == effectiveDate)&&(identical(other.fileDate, fileDate) || other.fileDate == fileDate)&&(identical(other.shares, shares) || other.shares == shares)&&(identical(other.sharesChange, sharesChange) || other.sharesChange == sharesChange)&&(identical(other.sharesPercentChange, sharesPercentChange) || other.sharesPercentChange == sharesPercentChange)&&(identical(other.value, value) || other.value == value)&&(identical(other.valueChange, valueChange) || other.valueChange == valueChange)&&(identical(other.valuePercentChange, valuePercentChange) || other.valuePercentChange == valuePercentChange)&&(identical(other.ownershipPercentChange, ownershipPercentChange) || other.ownershipPercentChange == ownershipPercentChange)&&(identical(other.ownershipPercent, ownershipPercent) || other.ownershipPercent == ownershipPercent)&&(identical(other.stockType, stockType) || other.stockType == stockType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,formType,effectiveDate,fileDate,shares,sharesChange,sharesPercentChange,value,valueChange,valuePercentChange,ownershipPercentChange,ownershipPercent,stockType);

@override
String toString() {
  return 'SecurityOwnership(name: $name, formType: $formType, effectiveDate: $effectiveDate, fileDate: $fileDate, shares: $shares, sharesChange: $sharesChange, sharesPercentChange: $sharesPercentChange, value: $value, valueChange: $valueChange, valuePercentChange: $valuePercentChange, ownershipPercentChange: $ownershipPercentChange, ownershipPercent: $ownershipPercent, stockType: $stockType)';
}


}

/// @nodoc
abstract mixin class _$SecurityOwnershipCopyWith<$Res> implements $SecurityOwnershipCopyWith<$Res> {
  factory _$SecurityOwnershipCopyWith(_SecurityOwnership value, $Res Function(_SecurityOwnership) _then) = __$SecurityOwnershipCopyWithImpl;
@override @useResult
$Res call({
 String name, String formType, String effectiveDate, String fileDate, int shares, int sharesChange, double sharesPercentChange, double value, double valueChange, double valuePercentChange, double ownershipPercentChange, double ownershipPercent,@JsonKey(name: 'stock_type') int stockType
});




}
/// @nodoc
class __$SecurityOwnershipCopyWithImpl<$Res>
    implements _$SecurityOwnershipCopyWith<$Res> {
  __$SecurityOwnershipCopyWithImpl(this._self, this._then);

  final _SecurityOwnership _self;
  final $Res Function(_SecurityOwnership) _then;

/// Create a copy of SecurityOwnership
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? formType = null,Object? effectiveDate = null,Object? fileDate = null,Object? shares = null,Object? sharesChange = null,Object? sharesPercentChange = null,Object? value = null,Object? valueChange = null,Object? valuePercentChange = null,Object? ownershipPercentChange = null,Object? ownershipPercent = null,Object? stockType = null,}) {
  return _then(_SecurityOwnership(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,formType: null == formType ? _self.formType : formType // ignore: cast_nullable_to_non_nullable
as String,effectiveDate: null == effectiveDate ? _self.effectiveDate : effectiveDate // ignore: cast_nullable_to_non_nullable
as String,fileDate: null == fileDate ? _self.fileDate : fileDate // ignore: cast_nullable_to_non_nullable
as String,shares: null == shares ? _self.shares : shares // ignore: cast_nullable_to_non_nullable
as int,sharesChange: null == sharesChange ? _self.sharesChange : sharesChange // ignore: cast_nullable_to_non_nullable
as int,sharesPercentChange: null == sharesPercentChange ? _self.sharesPercentChange : sharesPercentChange // ignore: cast_nullable_to_non_nullable
as double,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as double,valueChange: null == valueChange ? _self.valueChange : valueChange // ignore: cast_nullable_to_non_nullable
as double,valuePercentChange: null == valuePercentChange ? _self.valuePercentChange : valuePercentChange // ignore: cast_nullable_to_non_nullable
as double,ownershipPercentChange: null == ownershipPercentChange ? _self.ownershipPercentChange : ownershipPercentChange // ignore: cast_nullable_to_non_nullable
as double,ownershipPercent: null == ownershipPercent ? _self.ownershipPercent : ownershipPercent // ignore: cast_nullable_to_non_nullable
as double,stockType: null == stockType ? _self.stockType : stockType // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
