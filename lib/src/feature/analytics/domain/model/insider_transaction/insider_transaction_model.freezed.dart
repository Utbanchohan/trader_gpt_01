// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'insider_transaction_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$InsiderTransactionResponse {

 List<InsiderTransaction> get data;
/// Create a copy of InsiderTransactionResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InsiderTransactionResponseCopyWith<InsiderTransactionResponse> get copyWith => _$InsiderTransactionResponseCopyWithImpl<InsiderTransactionResponse>(this as InsiderTransactionResponse, _$identity);

  /// Serializes this InsiderTransactionResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InsiderTransactionResponse&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'InsiderTransactionResponse(data: $data)';
}


}

/// @nodoc
abstract mixin class $InsiderTransactionResponseCopyWith<$Res>  {
  factory $InsiderTransactionResponseCopyWith(InsiderTransactionResponse value, $Res Function(InsiderTransactionResponse) _then) = _$InsiderTransactionResponseCopyWithImpl;
@useResult
$Res call({
 List<InsiderTransaction> data
});




}
/// @nodoc
class _$InsiderTransactionResponseCopyWithImpl<$Res>
    implements $InsiderTransactionResponseCopyWith<$Res> {
  _$InsiderTransactionResponseCopyWithImpl(this._self, this._then);

  final InsiderTransactionResponse _self;
  final $Res Function(InsiderTransactionResponse) _then;

/// Create a copy of InsiderTransactionResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = null,}) {
  return _then(_self.copyWith(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<InsiderTransaction>,
  ));
}

}


/// Adds pattern-matching-related methods to [InsiderTransactionResponse].
extension InsiderTransactionResponsePatterns on InsiderTransactionResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _InsiderTransactionResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InsiderTransactionResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _InsiderTransactionResponse value)  $default,){
final _that = this;
switch (_that) {
case _InsiderTransactionResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _InsiderTransactionResponse value)?  $default,){
final _that = this;
switch (_that) {
case _InsiderTransactionResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<InsiderTransaction> data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InsiderTransactionResponse() when $default != null:
return $default(_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<InsiderTransaction> data)  $default,) {final _that = this;
switch (_that) {
case _InsiderTransactionResponse():
return $default(_that.data);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<InsiderTransaction> data)?  $default,) {final _that = this;
switch (_that) {
case _InsiderTransactionResponse() when $default != null:
return $default(_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _InsiderTransactionResponse implements InsiderTransactionResponse {
  const _InsiderTransactionResponse({required final  List<InsiderTransaction> data}): _data = data;
  factory _InsiderTransactionResponse.fromJson(Map<String, dynamic> json) => _$InsiderTransactionResponseFromJson(json);

 final  List<InsiderTransaction> _data;
@override List<InsiderTransaction> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}


/// Create a copy of InsiderTransactionResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InsiderTransactionResponseCopyWith<_InsiderTransactionResponse> get copyWith => __$InsiderTransactionResponseCopyWithImpl<_InsiderTransactionResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$InsiderTransactionResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InsiderTransactionResponse&&const DeepCollectionEquality().equals(other._data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'InsiderTransactionResponse(data: $data)';
}


}

/// @nodoc
abstract mixin class _$InsiderTransactionResponseCopyWith<$Res> implements $InsiderTransactionResponseCopyWith<$Res> {
  factory _$InsiderTransactionResponseCopyWith(_InsiderTransactionResponse value, $Res Function(_InsiderTransactionResponse) _then) = __$InsiderTransactionResponseCopyWithImpl;
@override @useResult
$Res call({
 List<InsiderTransaction> data
});




}
/// @nodoc
class __$InsiderTransactionResponseCopyWithImpl<$Res>
    implements _$InsiderTransactionResponseCopyWith<$Res> {
  __$InsiderTransactionResponseCopyWithImpl(this._self, this._then);

  final _InsiderTransactionResponse _self;
  final $Res Function(_InsiderTransactionResponse) _then;

/// Create a copy of InsiderTransactionResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(_InsiderTransactionResponse(
data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<InsiderTransaction>,
  ));
}


}


/// @nodoc
mixin _$InsiderTransaction {

 String get name; String get formType; String get code; String get fileDate; int get shares; double get value; String get transactionDate;@JsonKey(name: 'stock_type') int get stockType; String get link;
/// Create a copy of InsiderTransaction
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InsiderTransactionCopyWith<InsiderTransaction> get copyWith => _$InsiderTransactionCopyWithImpl<InsiderTransaction>(this as InsiderTransaction, _$identity);

  /// Serializes this InsiderTransaction to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InsiderTransaction&&(identical(other.name, name) || other.name == name)&&(identical(other.formType, formType) || other.formType == formType)&&(identical(other.code, code) || other.code == code)&&(identical(other.fileDate, fileDate) || other.fileDate == fileDate)&&(identical(other.shares, shares) || other.shares == shares)&&(identical(other.value, value) || other.value == value)&&(identical(other.transactionDate, transactionDate) || other.transactionDate == transactionDate)&&(identical(other.stockType, stockType) || other.stockType == stockType)&&(identical(other.link, link) || other.link == link));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,formType,code,fileDate,shares,value,transactionDate,stockType,link);

@override
String toString() {
  return 'InsiderTransaction(name: $name, formType: $formType, code: $code, fileDate: $fileDate, shares: $shares, value: $value, transactionDate: $transactionDate, stockType: $stockType, link: $link)';
}


}

/// @nodoc
abstract mixin class $InsiderTransactionCopyWith<$Res>  {
  factory $InsiderTransactionCopyWith(InsiderTransaction value, $Res Function(InsiderTransaction) _then) = _$InsiderTransactionCopyWithImpl;
@useResult
$Res call({
 String name, String formType, String code, String fileDate, int shares, double value, String transactionDate,@JsonKey(name: 'stock_type') int stockType, String link
});




}
/// @nodoc
class _$InsiderTransactionCopyWithImpl<$Res>
    implements $InsiderTransactionCopyWith<$Res> {
  _$InsiderTransactionCopyWithImpl(this._self, this._then);

  final InsiderTransaction _self;
  final $Res Function(InsiderTransaction) _then;

/// Create a copy of InsiderTransaction
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? formType = null,Object? code = null,Object? fileDate = null,Object? shares = null,Object? value = null,Object? transactionDate = null,Object? stockType = null,Object? link = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,formType: null == formType ? _self.formType : formType // ignore: cast_nullable_to_non_nullable
as String,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,fileDate: null == fileDate ? _self.fileDate : fileDate // ignore: cast_nullable_to_non_nullable
as String,shares: null == shares ? _self.shares : shares // ignore: cast_nullable_to_non_nullable
as int,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as double,transactionDate: null == transactionDate ? _self.transactionDate : transactionDate // ignore: cast_nullable_to_non_nullable
as String,stockType: null == stockType ? _self.stockType : stockType // ignore: cast_nullable_to_non_nullable
as int,link: null == link ? _self.link : link // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [InsiderTransaction].
extension InsiderTransactionPatterns on InsiderTransaction {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _InsiderTransaction value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InsiderTransaction() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _InsiderTransaction value)  $default,){
final _that = this;
switch (_that) {
case _InsiderTransaction():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _InsiderTransaction value)?  $default,){
final _that = this;
switch (_that) {
case _InsiderTransaction() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String formType,  String code,  String fileDate,  int shares,  double value,  String transactionDate, @JsonKey(name: 'stock_type')  int stockType,  String link)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InsiderTransaction() when $default != null:
return $default(_that.name,_that.formType,_that.code,_that.fileDate,_that.shares,_that.value,_that.transactionDate,_that.stockType,_that.link);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String formType,  String code,  String fileDate,  int shares,  double value,  String transactionDate, @JsonKey(name: 'stock_type')  int stockType,  String link)  $default,) {final _that = this;
switch (_that) {
case _InsiderTransaction():
return $default(_that.name,_that.formType,_that.code,_that.fileDate,_that.shares,_that.value,_that.transactionDate,_that.stockType,_that.link);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String formType,  String code,  String fileDate,  int shares,  double value,  String transactionDate, @JsonKey(name: 'stock_type')  int stockType,  String link)?  $default,) {final _that = this;
switch (_that) {
case _InsiderTransaction() when $default != null:
return $default(_that.name,_that.formType,_that.code,_that.fileDate,_that.shares,_that.value,_that.transactionDate,_that.stockType,_that.link);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _InsiderTransaction implements InsiderTransaction {
  const _InsiderTransaction({required this.name, required this.formType, required this.code, required this.fileDate, required this.shares, required this.value, required this.transactionDate, @JsonKey(name: 'stock_type') required this.stockType, required this.link});
  factory _InsiderTransaction.fromJson(Map<String, dynamic> json) => _$InsiderTransactionFromJson(json);

@override final  String name;
@override final  String formType;
@override final  String code;
@override final  String fileDate;
@override final  int shares;
@override final  double value;
@override final  String transactionDate;
@override@JsonKey(name: 'stock_type') final  int stockType;
@override final  String link;

/// Create a copy of InsiderTransaction
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InsiderTransactionCopyWith<_InsiderTransaction> get copyWith => __$InsiderTransactionCopyWithImpl<_InsiderTransaction>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$InsiderTransactionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InsiderTransaction&&(identical(other.name, name) || other.name == name)&&(identical(other.formType, formType) || other.formType == formType)&&(identical(other.code, code) || other.code == code)&&(identical(other.fileDate, fileDate) || other.fileDate == fileDate)&&(identical(other.shares, shares) || other.shares == shares)&&(identical(other.value, value) || other.value == value)&&(identical(other.transactionDate, transactionDate) || other.transactionDate == transactionDate)&&(identical(other.stockType, stockType) || other.stockType == stockType)&&(identical(other.link, link) || other.link == link));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,formType,code,fileDate,shares,value,transactionDate,stockType,link);

@override
String toString() {
  return 'InsiderTransaction(name: $name, formType: $formType, code: $code, fileDate: $fileDate, shares: $shares, value: $value, transactionDate: $transactionDate, stockType: $stockType, link: $link)';
}


}

/// @nodoc
abstract mixin class _$InsiderTransactionCopyWith<$Res> implements $InsiderTransactionCopyWith<$Res> {
  factory _$InsiderTransactionCopyWith(_InsiderTransaction value, $Res Function(_InsiderTransaction) _then) = __$InsiderTransactionCopyWithImpl;
@override @useResult
$Res call({
 String name, String formType, String code, String fileDate, int shares, double value, String transactionDate,@JsonKey(name: 'stock_type') int stockType, String link
});




}
/// @nodoc
class __$InsiderTransactionCopyWithImpl<$Res>
    implements _$InsiderTransactionCopyWith<$Res> {
  __$InsiderTransactionCopyWithImpl(this._self, this._then);

  final _InsiderTransaction _self;
  final $Res Function(_InsiderTransaction) _then;

/// Create a copy of InsiderTransaction
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? formType = null,Object? code = null,Object? fileDate = null,Object? shares = null,Object? value = null,Object? transactionDate = null,Object? stockType = null,Object? link = null,}) {
  return _then(_InsiderTransaction(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,formType: null == formType ? _self.formType : formType // ignore: cast_nullable_to_non_nullable
as String,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,fileDate: null == fileDate ? _self.fileDate : fileDate // ignore: cast_nullable_to_non_nullable
as String,shares: null == shares ? _self.shares : shares // ignore: cast_nullable_to_non_nullable
as int,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as double,transactionDate: null == transactionDate ? _self.transactionDate : transactionDate // ignore: cast_nullable_to_non_nullable
as String,stockType: null == stockType ? _self.stockType : stockType // ignore: cast_nullable_to_non_nullable
as int,link: null == link ? _self.link : link // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
