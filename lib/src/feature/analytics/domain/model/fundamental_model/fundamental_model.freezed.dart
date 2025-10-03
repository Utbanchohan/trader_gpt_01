// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fundamental_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FundamentalResponse {

 FundamentalData get data; String get msg; int get status;
/// Create a copy of FundamentalResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FundamentalResponseCopyWith<FundamentalResponse> get copyWith => _$FundamentalResponseCopyWithImpl<FundamentalResponse>(this as FundamentalResponse, _$identity);

  /// Serializes this FundamentalResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FundamentalResponse&&(identical(other.data, data) || other.data == data)&&(identical(other.msg, msg) || other.msg == msg)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data,msg,status);

@override
String toString() {
  return 'FundamentalResponse(data: $data, msg: $msg, status: $status)';
}


}

/// @nodoc
abstract mixin class $FundamentalResponseCopyWith<$Res>  {
  factory $FundamentalResponseCopyWith(FundamentalResponse value, $Res Function(FundamentalResponse) _then) = _$FundamentalResponseCopyWithImpl;
@useResult
$Res call({
 FundamentalData data, String msg, int status
});


$FundamentalDataCopyWith<$Res> get data;

}
/// @nodoc
class _$FundamentalResponseCopyWithImpl<$Res>
    implements $FundamentalResponseCopyWith<$Res> {
  _$FundamentalResponseCopyWithImpl(this._self, this._then);

  final FundamentalResponse _self;
  final $Res Function(FundamentalResponse) _then;

/// Create a copy of FundamentalResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = null,Object? msg = null,Object? status = null,}) {
  return _then(_self.copyWith(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as FundamentalData,msg: null == msg ? _self.msg : msg // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int,
  ));
}
/// Create a copy of FundamentalResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FundamentalDataCopyWith<$Res> get data {
  
  return $FundamentalDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [FundamentalResponse].
extension FundamentalResponsePatterns on FundamentalResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FundamentalResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FundamentalResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FundamentalResponse value)  $default,){
final _that = this;
switch (_that) {
case _FundamentalResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FundamentalResponse value)?  $default,){
final _that = this;
switch (_that) {
case _FundamentalResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( FundamentalData data,  String msg,  int status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FundamentalResponse() when $default != null:
return $default(_that.data,_that.msg,_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( FundamentalData data,  String msg,  int status)  $default,) {final _that = this;
switch (_that) {
case _FundamentalResponse():
return $default(_that.data,_that.msg,_that.status);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( FundamentalData data,  String msg,  int status)?  $default,) {final _that = this;
switch (_that) {
case _FundamentalResponse() when $default != null:
return $default(_that.data,_that.msg,_that.status);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FundamentalResponse implements FundamentalResponse {
  const _FundamentalResponse({required this.data, required this.msg, required this.status});
  factory _FundamentalResponse.fromJson(Map<String, dynamic> json) => _$FundamentalResponseFromJson(json);

@override final  FundamentalData data;
@override final  String msg;
@override final  int status;

/// Create a copy of FundamentalResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FundamentalResponseCopyWith<_FundamentalResponse> get copyWith => __$FundamentalResponseCopyWithImpl<_FundamentalResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FundamentalResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FundamentalResponse&&(identical(other.data, data) || other.data == data)&&(identical(other.msg, msg) || other.msg == msg)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data,msg,status);

@override
String toString() {
  return 'FundamentalResponse(data: $data, msg: $msg, status: $status)';
}


}

/// @nodoc
abstract mixin class _$FundamentalResponseCopyWith<$Res> implements $FundamentalResponseCopyWith<$Res> {
  factory _$FundamentalResponseCopyWith(_FundamentalResponse value, $Res Function(_FundamentalResponse) _then) = __$FundamentalResponseCopyWithImpl;
@override @useResult
$Res call({
 FundamentalData data, String msg, int status
});


@override $FundamentalDataCopyWith<$Res> get data;

}
/// @nodoc
class __$FundamentalResponseCopyWithImpl<$Res>
    implements _$FundamentalResponseCopyWith<$Res> {
  __$FundamentalResponseCopyWithImpl(this._self, this._then);

  final _FundamentalResponse _self;
  final $Res Function(_FundamentalResponse) _then;

/// Create a copy of FundamentalResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,Object? msg = null,Object? status = null,}) {
  return _then(_FundamentalResponse(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as FundamentalData,msg: null == msg ? _self.msg : msg // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

/// Create a copy of FundamentalResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FundamentalDataCopyWith<$Res> get data {
  
  return $FundamentalDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$FundamentalData {

 Fundamentals get fundamentals;
/// Create a copy of FundamentalData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FundamentalDataCopyWith<FundamentalData> get copyWith => _$FundamentalDataCopyWithImpl<FundamentalData>(this as FundamentalData, _$identity);

  /// Serializes this FundamentalData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FundamentalData&&(identical(other.fundamentals, fundamentals) || other.fundamentals == fundamentals));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,fundamentals);

@override
String toString() {
  return 'FundamentalData(fundamentals: $fundamentals)';
}


}

/// @nodoc
abstract mixin class $FundamentalDataCopyWith<$Res>  {
  factory $FundamentalDataCopyWith(FundamentalData value, $Res Function(FundamentalData) _then) = _$FundamentalDataCopyWithImpl;
@useResult
$Res call({
 Fundamentals fundamentals
});


$FundamentalsCopyWith<$Res> get fundamentals;

}
/// @nodoc
class _$FundamentalDataCopyWithImpl<$Res>
    implements $FundamentalDataCopyWith<$Res> {
  _$FundamentalDataCopyWithImpl(this._self, this._then);

  final FundamentalData _self;
  final $Res Function(FundamentalData) _then;

/// Create a copy of FundamentalData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? fundamentals = null,}) {
  return _then(_self.copyWith(
fundamentals: null == fundamentals ? _self.fundamentals : fundamentals // ignore: cast_nullable_to_non_nullable
as Fundamentals,
  ));
}
/// Create a copy of FundamentalData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FundamentalsCopyWith<$Res> get fundamentals {
  
  return $FundamentalsCopyWith<$Res>(_self.fundamentals, (value) {
    return _then(_self.copyWith(fundamentals: value));
  });
}
}


/// Adds pattern-matching-related methods to [FundamentalData].
extension FundamentalDataPatterns on FundamentalData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FundamentalData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FundamentalData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FundamentalData value)  $default,){
final _that = this;
switch (_that) {
case _FundamentalData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FundamentalData value)?  $default,){
final _that = this;
switch (_that) {
case _FundamentalData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Fundamentals fundamentals)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FundamentalData() when $default != null:
return $default(_that.fundamentals);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Fundamentals fundamentals)  $default,) {final _that = this;
switch (_that) {
case _FundamentalData():
return $default(_that.fundamentals);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Fundamentals fundamentals)?  $default,) {final _that = this;
switch (_that) {
case _FundamentalData() when $default != null:
return $default(_that.fundamentals);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FundamentalData implements FundamentalData {
  const _FundamentalData({required this.fundamentals});
  factory _FundamentalData.fromJson(Map<String, dynamic> json) => _$FundamentalDataFromJson(json);

@override final  Fundamentals fundamentals;

/// Create a copy of FundamentalData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FundamentalDataCopyWith<_FundamentalData> get copyWith => __$FundamentalDataCopyWithImpl<_FundamentalData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FundamentalDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FundamentalData&&(identical(other.fundamentals, fundamentals) || other.fundamentals == fundamentals));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,fundamentals);

@override
String toString() {
  return 'FundamentalData(fundamentals: $fundamentals)';
}


}

/// @nodoc
abstract mixin class _$FundamentalDataCopyWith<$Res> implements $FundamentalDataCopyWith<$Res> {
  factory _$FundamentalDataCopyWith(_FundamentalData value, $Res Function(_FundamentalData) _then) = __$FundamentalDataCopyWithImpl;
@override @useResult
$Res call({
 Fundamentals fundamentals
});


@override $FundamentalsCopyWith<$Res> get fundamentals;

}
/// @nodoc
class __$FundamentalDataCopyWithImpl<$Res>
    implements _$FundamentalDataCopyWith<$Res> {
  __$FundamentalDataCopyWithImpl(this._self, this._then);

  final _FundamentalData _self;
  final $Res Function(_FundamentalData) _then;

/// Create a copy of FundamentalData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? fundamentals = null,}) {
  return _then(_FundamentalData(
fundamentals: null == fundamentals ? _self.fundamentals : fundamentals // ignore: cast_nullable_to_non_nullable
as Fundamentals,
  ));
}

/// Create a copy of FundamentalData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FundamentalsCopyWith<$Res> get fundamentals {
  
  return $FundamentalsCopyWith<$Res>(_self.fundamentals, (value) {
    return _then(_self.copyWith(fundamentals: value));
  });
}
}


/// @nodoc
mixin _$Fundamentals {

 String get annualSale; String get annualIncome; String get priceCashFlow; String get shortInterest; String get shortPercentOfFloat; String get daysToCover;
/// Create a copy of Fundamentals
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FundamentalsCopyWith<Fundamentals> get copyWith => _$FundamentalsCopyWithImpl<Fundamentals>(this as Fundamentals, _$identity);

  /// Serializes this Fundamentals to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Fundamentals&&(identical(other.annualSale, annualSale) || other.annualSale == annualSale)&&(identical(other.annualIncome, annualIncome) || other.annualIncome == annualIncome)&&(identical(other.priceCashFlow, priceCashFlow) || other.priceCashFlow == priceCashFlow)&&(identical(other.shortInterest, shortInterest) || other.shortInterest == shortInterest)&&(identical(other.shortPercentOfFloat, shortPercentOfFloat) || other.shortPercentOfFloat == shortPercentOfFloat)&&(identical(other.daysToCover, daysToCover) || other.daysToCover == daysToCover));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,annualSale,annualIncome,priceCashFlow,shortInterest,shortPercentOfFloat,daysToCover);

@override
String toString() {
  return 'Fundamentals(annualSale: $annualSale, annualIncome: $annualIncome, priceCashFlow: $priceCashFlow, shortInterest: $shortInterest, shortPercentOfFloat: $shortPercentOfFloat, daysToCover: $daysToCover)';
}


}

/// @nodoc
abstract mixin class $FundamentalsCopyWith<$Res>  {
  factory $FundamentalsCopyWith(Fundamentals value, $Res Function(Fundamentals) _then) = _$FundamentalsCopyWithImpl;
@useResult
$Res call({
 String annualSale, String annualIncome, String priceCashFlow, String shortInterest, String shortPercentOfFloat, String daysToCover
});




}
/// @nodoc
class _$FundamentalsCopyWithImpl<$Res>
    implements $FundamentalsCopyWith<$Res> {
  _$FundamentalsCopyWithImpl(this._self, this._then);

  final Fundamentals _self;
  final $Res Function(Fundamentals) _then;

/// Create a copy of Fundamentals
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? annualSale = null,Object? annualIncome = null,Object? priceCashFlow = null,Object? shortInterest = null,Object? shortPercentOfFloat = null,Object? daysToCover = null,}) {
  return _then(_self.copyWith(
annualSale: null == annualSale ? _self.annualSale : annualSale // ignore: cast_nullable_to_non_nullable
as String,annualIncome: null == annualIncome ? _self.annualIncome : annualIncome // ignore: cast_nullable_to_non_nullable
as String,priceCashFlow: null == priceCashFlow ? _self.priceCashFlow : priceCashFlow // ignore: cast_nullable_to_non_nullable
as String,shortInterest: null == shortInterest ? _self.shortInterest : shortInterest // ignore: cast_nullable_to_non_nullable
as String,shortPercentOfFloat: null == shortPercentOfFloat ? _self.shortPercentOfFloat : shortPercentOfFloat // ignore: cast_nullable_to_non_nullable
as String,daysToCover: null == daysToCover ? _self.daysToCover : daysToCover // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [Fundamentals].
extension FundamentalsPatterns on Fundamentals {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Fundamentals value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Fundamentals() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Fundamentals value)  $default,){
final _that = this;
switch (_that) {
case _Fundamentals():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Fundamentals value)?  $default,){
final _that = this;
switch (_that) {
case _Fundamentals() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String annualSale,  String annualIncome,  String priceCashFlow,  String shortInterest,  String shortPercentOfFloat,  String daysToCover)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Fundamentals() when $default != null:
return $default(_that.annualSale,_that.annualIncome,_that.priceCashFlow,_that.shortInterest,_that.shortPercentOfFloat,_that.daysToCover);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String annualSale,  String annualIncome,  String priceCashFlow,  String shortInterest,  String shortPercentOfFloat,  String daysToCover)  $default,) {final _that = this;
switch (_that) {
case _Fundamentals():
return $default(_that.annualSale,_that.annualIncome,_that.priceCashFlow,_that.shortInterest,_that.shortPercentOfFloat,_that.daysToCover);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String annualSale,  String annualIncome,  String priceCashFlow,  String shortInterest,  String shortPercentOfFloat,  String daysToCover)?  $default,) {final _that = this;
switch (_that) {
case _Fundamentals() when $default != null:
return $default(_that.annualSale,_that.annualIncome,_that.priceCashFlow,_that.shortInterest,_that.shortPercentOfFloat,_that.daysToCover);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Fundamentals implements Fundamentals {
  const _Fundamentals({required this.annualSale, required this.annualIncome, required this.priceCashFlow, required this.shortInterest, required this.shortPercentOfFloat, required this.daysToCover});
  factory _Fundamentals.fromJson(Map<String, dynamic> json) => _$FundamentalsFromJson(json);

@override final  String annualSale;
@override final  String annualIncome;
@override final  String priceCashFlow;
@override final  String shortInterest;
@override final  String shortPercentOfFloat;
@override final  String daysToCover;

/// Create a copy of Fundamentals
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FundamentalsCopyWith<_Fundamentals> get copyWith => __$FundamentalsCopyWithImpl<_Fundamentals>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FundamentalsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Fundamentals&&(identical(other.annualSale, annualSale) || other.annualSale == annualSale)&&(identical(other.annualIncome, annualIncome) || other.annualIncome == annualIncome)&&(identical(other.priceCashFlow, priceCashFlow) || other.priceCashFlow == priceCashFlow)&&(identical(other.shortInterest, shortInterest) || other.shortInterest == shortInterest)&&(identical(other.shortPercentOfFloat, shortPercentOfFloat) || other.shortPercentOfFloat == shortPercentOfFloat)&&(identical(other.daysToCover, daysToCover) || other.daysToCover == daysToCover));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,annualSale,annualIncome,priceCashFlow,shortInterest,shortPercentOfFloat,daysToCover);

@override
String toString() {
  return 'Fundamentals(annualSale: $annualSale, annualIncome: $annualIncome, priceCashFlow: $priceCashFlow, shortInterest: $shortInterest, shortPercentOfFloat: $shortPercentOfFloat, daysToCover: $daysToCover)';
}


}

/// @nodoc
abstract mixin class _$FundamentalsCopyWith<$Res> implements $FundamentalsCopyWith<$Res> {
  factory _$FundamentalsCopyWith(_Fundamentals value, $Res Function(_Fundamentals) _then) = __$FundamentalsCopyWithImpl;
@override @useResult
$Res call({
 String annualSale, String annualIncome, String priceCashFlow, String shortInterest, String shortPercentOfFloat, String daysToCover
});




}
/// @nodoc
class __$FundamentalsCopyWithImpl<$Res>
    implements _$FundamentalsCopyWith<$Res> {
  __$FundamentalsCopyWithImpl(this._self, this._then);

  final _Fundamentals _self;
  final $Res Function(_Fundamentals) _then;

/// Create a copy of Fundamentals
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? annualSale = null,Object? annualIncome = null,Object? priceCashFlow = null,Object? shortInterest = null,Object? shortPercentOfFloat = null,Object? daysToCover = null,}) {
  return _then(_Fundamentals(
annualSale: null == annualSale ? _self.annualSale : annualSale // ignore: cast_nullable_to_non_nullable
as String,annualIncome: null == annualIncome ? _self.annualIncome : annualIncome // ignore: cast_nullable_to_non_nullable
as String,priceCashFlow: null == priceCashFlow ? _self.priceCashFlow : priceCashFlow // ignore: cast_nullable_to_non_nullable
as String,shortInterest: null == shortInterest ? _self.shortInterest : shortInterest // ignore: cast_nullable_to_non_nullable
as String,shortPercentOfFloat: null == shortPercentOfFloat ? _self.shortPercentOfFloat : shortPercentOfFloat // ignore: cast_nullable_to_non_nullable
as String,daysToCover: null == daysToCover ? _self.daysToCover : daysToCover // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
