// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'financial_chart_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FinanceDataResponse {

 FinanceData get data; String get msg; int get status; dynamic get errors;
/// Create a copy of FinanceDataResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FinanceDataResponseCopyWith<FinanceDataResponse> get copyWith => _$FinanceDataResponseCopyWithImpl<FinanceDataResponse>(this as FinanceDataResponse, _$identity);

  /// Serializes this FinanceDataResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FinanceDataResponse&&(identical(other.data, data) || other.data == data)&&(identical(other.msg, msg) || other.msg == msg)&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.errors, errors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data,msg,status,const DeepCollectionEquality().hash(errors));

@override
String toString() {
  return 'FinanceDataResponse(data: $data, msg: $msg, status: $status, errors: $errors)';
}


}

/// @nodoc
abstract mixin class $FinanceDataResponseCopyWith<$Res>  {
  factory $FinanceDataResponseCopyWith(FinanceDataResponse value, $Res Function(FinanceDataResponse) _then) = _$FinanceDataResponseCopyWithImpl;
@useResult
$Res call({
 FinanceData data, String msg, int status, dynamic errors
});


$FinanceDataCopyWith<$Res> get data;

}
/// @nodoc
class _$FinanceDataResponseCopyWithImpl<$Res>
    implements $FinanceDataResponseCopyWith<$Res> {
  _$FinanceDataResponseCopyWithImpl(this._self, this._then);

  final FinanceDataResponse _self;
  final $Res Function(FinanceDataResponse) _then;

/// Create a copy of FinanceDataResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = null,Object? msg = null,Object? status = null,Object? errors = freezed,}) {
  return _then(_self.copyWith(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as FinanceData,msg: null == msg ? _self.msg : msg // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int,errors: freezed == errors ? _self.errors : errors // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}
/// Create a copy of FinanceDataResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FinanceDataCopyWith<$Res> get data {
  
  return $FinanceDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [FinanceDataResponse].
extension FinanceDataResponsePatterns on FinanceDataResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FinanceDataResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FinanceDataResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FinanceDataResponse value)  $default,){
final _that = this;
switch (_that) {
case _FinanceDataResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FinanceDataResponse value)?  $default,){
final _that = this;
switch (_that) {
case _FinanceDataResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( FinanceData data,  String msg,  int status,  dynamic errors)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FinanceDataResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( FinanceData data,  String msg,  int status,  dynamic errors)  $default,) {final _that = this;
switch (_that) {
case _FinanceDataResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( FinanceData data,  String msg,  int status,  dynamic errors)?  $default,) {final _that = this;
switch (_that) {
case _FinanceDataResponse() when $default != null:
return $default(_that.data,_that.msg,_that.status,_that.errors);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FinanceDataResponse implements FinanceDataResponse {
  const _FinanceDataResponse({required this.data, required this.msg, required this.status, this.errors});
  factory _FinanceDataResponse.fromJson(Map<String, dynamic> json) => _$FinanceDataResponseFromJson(json);

@override final  FinanceData data;
@override final  String msg;
@override final  int status;
@override final  dynamic errors;

/// Create a copy of FinanceDataResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FinanceDataResponseCopyWith<_FinanceDataResponse> get copyWith => __$FinanceDataResponseCopyWithImpl<_FinanceDataResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FinanceDataResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FinanceDataResponse&&(identical(other.data, data) || other.data == data)&&(identical(other.msg, msg) || other.msg == msg)&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.errors, errors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data,msg,status,const DeepCollectionEquality().hash(errors));

@override
String toString() {
  return 'FinanceDataResponse(data: $data, msg: $msg, status: $status, errors: $errors)';
}


}

/// @nodoc
abstract mixin class _$FinanceDataResponseCopyWith<$Res> implements $FinanceDataResponseCopyWith<$Res> {
  factory _$FinanceDataResponseCopyWith(_FinanceDataResponse value, $Res Function(_FinanceDataResponse) _then) = __$FinanceDataResponseCopyWithImpl;
@override @useResult
$Res call({
 FinanceData data, String msg, int status, dynamic errors
});


@override $FinanceDataCopyWith<$Res> get data;

}
/// @nodoc
class __$FinanceDataResponseCopyWithImpl<$Res>
    implements _$FinanceDataResponseCopyWith<$Res> {
  __$FinanceDataResponseCopyWithImpl(this._self, this._then);

  final _FinanceDataResponse _self;
  final $Res Function(_FinanceDataResponse) _then;

/// Create a copy of FinanceDataResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,Object? msg = null,Object? status = null,Object? errors = freezed,}) {
  return _then(_FinanceDataResponse(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as FinanceData,msg: null == msg ? _self.msg : msg // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int,errors: freezed == errors ? _self.errors : errors // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

/// Create a copy of FinanceDataResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FinanceDataCopyWith<$Res> get data {
  
  return $FinanceDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$FinanceData {

@JsonKey(name: 'Cash and Debt') FinanceCategory get cashAndDebt;@JsonKey(name: 'Assets and StockHolders') FinanceCategory get assetsAndStockHolders;@JsonKey(name: 'Outstanding Shares & Buyback') FinanceCategory get outstandingSharesBuyback;@JsonKey(name: 'Revenue and Income') FinanceCategory get revenueAndIncome;@JsonKey(name: 'Cash Flow Data') FinanceCategory get cashFlowData;
/// Create a copy of FinanceData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FinanceDataCopyWith<FinanceData> get copyWith => _$FinanceDataCopyWithImpl<FinanceData>(this as FinanceData, _$identity);

  /// Serializes this FinanceData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FinanceData&&(identical(other.cashAndDebt, cashAndDebt) || other.cashAndDebt == cashAndDebt)&&(identical(other.assetsAndStockHolders, assetsAndStockHolders) || other.assetsAndStockHolders == assetsAndStockHolders)&&(identical(other.outstandingSharesBuyback, outstandingSharesBuyback) || other.outstandingSharesBuyback == outstandingSharesBuyback)&&(identical(other.revenueAndIncome, revenueAndIncome) || other.revenueAndIncome == revenueAndIncome)&&(identical(other.cashFlowData, cashFlowData) || other.cashFlowData == cashFlowData));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,cashAndDebt,assetsAndStockHolders,outstandingSharesBuyback,revenueAndIncome,cashFlowData);

@override
String toString() {
  return 'FinanceData(cashAndDebt: $cashAndDebt, assetsAndStockHolders: $assetsAndStockHolders, outstandingSharesBuyback: $outstandingSharesBuyback, revenueAndIncome: $revenueAndIncome, cashFlowData: $cashFlowData)';
}


}

/// @nodoc
abstract mixin class $FinanceDataCopyWith<$Res>  {
  factory $FinanceDataCopyWith(FinanceData value, $Res Function(FinanceData) _then) = _$FinanceDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'Cash and Debt') FinanceCategory cashAndDebt,@JsonKey(name: 'Assets and StockHolders') FinanceCategory assetsAndStockHolders,@JsonKey(name: 'Outstanding Shares & Buyback') FinanceCategory outstandingSharesBuyback,@JsonKey(name: 'Revenue and Income') FinanceCategory revenueAndIncome,@JsonKey(name: 'Cash Flow Data') FinanceCategory cashFlowData
});


$FinanceCategoryCopyWith<$Res> get cashAndDebt;$FinanceCategoryCopyWith<$Res> get assetsAndStockHolders;$FinanceCategoryCopyWith<$Res> get outstandingSharesBuyback;$FinanceCategoryCopyWith<$Res> get revenueAndIncome;$FinanceCategoryCopyWith<$Res> get cashFlowData;

}
/// @nodoc
class _$FinanceDataCopyWithImpl<$Res>
    implements $FinanceDataCopyWith<$Res> {
  _$FinanceDataCopyWithImpl(this._self, this._then);

  final FinanceData _self;
  final $Res Function(FinanceData) _then;

/// Create a copy of FinanceData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? cashAndDebt = null,Object? assetsAndStockHolders = null,Object? outstandingSharesBuyback = null,Object? revenueAndIncome = null,Object? cashFlowData = null,}) {
  return _then(_self.copyWith(
cashAndDebt: null == cashAndDebt ? _self.cashAndDebt : cashAndDebt // ignore: cast_nullable_to_non_nullable
as FinanceCategory,assetsAndStockHolders: null == assetsAndStockHolders ? _self.assetsAndStockHolders : assetsAndStockHolders // ignore: cast_nullable_to_non_nullable
as FinanceCategory,outstandingSharesBuyback: null == outstandingSharesBuyback ? _self.outstandingSharesBuyback : outstandingSharesBuyback // ignore: cast_nullable_to_non_nullable
as FinanceCategory,revenueAndIncome: null == revenueAndIncome ? _self.revenueAndIncome : revenueAndIncome // ignore: cast_nullable_to_non_nullable
as FinanceCategory,cashFlowData: null == cashFlowData ? _self.cashFlowData : cashFlowData // ignore: cast_nullable_to_non_nullable
as FinanceCategory,
  ));
}
/// Create a copy of FinanceData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FinanceCategoryCopyWith<$Res> get cashAndDebt {
  
  return $FinanceCategoryCopyWith<$Res>(_self.cashAndDebt, (value) {
    return _then(_self.copyWith(cashAndDebt: value));
  });
}/// Create a copy of FinanceData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FinanceCategoryCopyWith<$Res> get assetsAndStockHolders {
  
  return $FinanceCategoryCopyWith<$Res>(_self.assetsAndStockHolders, (value) {
    return _then(_self.copyWith(assetsAndStockHolders: value));
  });
}/// Create a copy of FinanceData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FinanceCategoryCopyWith<$Res> get outstandingSharesBuyback {
  
  return $FinanceCategoryCopyWith<$Res>(_self.outstandingSharesBuyback, (value) {
    return _then(_self.copyWith(outstandingSharesBuyback: value));
  });
}/// Create a copy of FinanceData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FinanceCategoryCopyWith<$Res> get revenueAndIncome {
  
  return $FinanceCategoryCopyWith<$Res>(_self.revenueAndIncome, (value) {
    return _then(_self.copyWith(revenueAndIncome: value));
  });
}/// Create a copy of FinanceData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FinanceCategoryCopyWith<$Res> get cashFlowData {
  
  return $FinanceCategoryCopyWith<$Res>(_self.cashFlowData, (value) {
    return _then(_self.copyWith(cashFlowData: value));
  });
}
}


/// Adds pattern-matching-related methods to [FinanceData].
extension FinanceDataPatterns on FinanceData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FinanceData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FinanceData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FinanceData value)  $default,){
final _that = this;
switch (_that) {
case _FinanceData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FinanceData value)?  $default,){
final _that = this;
switch (_that) {
case _FinanceData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'Cash and Debt')  FinanceCategory cashAndDebt, @JsonKey(name: 'Assets and StockHolders')  FinanceCategory assetsAndStockHolders, @JsonKey(name: 'Outstanding Shares & Buyback')  FinanceCategory outstandingSharesBuyback, @JsonKey(name: 'Revenue and Income')  FinanceCategory revenueAndIncome, @JsonKey(name: 'Cash Flow Data')  FinanceCategory cashFlowData)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FinanceData() when $default != null:
return $default(_that.cashAndDebt,_that.assetsAndStockHolders,_that.outstandingSharesBuyback,_that.revenueAndIncome,_that.cashFlowData);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'Cash and Debt')  FinanceCategory cashAndDebt, @JsonKey(name: 'Assets and StockHolders')  FinanceCategory assetsAndStockHolders, @JsonKey(name: 'Outstanding Shares & Buyback')  FinanceCategory outstandingSharesBuyback, @JsonKey(name: 'Revenue and Income')  FinanceCategory revenueAndIncome, @JsonKey(name: 'Cash Flow Data')  FinanceCategory cashFlowData)  $default,) {final _that = this;
switch (_that) {
case _FinanceData():
return $default(_that.cashAndDebt,_that.assetsAndStockHolders,_that.outstandingSharesBuyback,_that.revenueAndIncome,_that.cashFlowData);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'Cash and Debt')  FinanceCategory cashAndDebt, @JsonKey(name: 'Assets and StockHolders')  FinanceCategory assetsAndStockHolders, @JsonKey(name: 'Outstanding Shares & Buyback')  FinanceCategory outstandingSharesBuyback, @JsonKey(name: 'Revenue and Income')  FinanceCategory revenueAndIncome, @JsonKey(name: 'Cash Flow Data')  FinanceCategory cashFlowData)?  $default,) {final _that = this;
switch (_that) {
case _FinanceData() when $default != null:
return $default(_that.cashAndDebt,_that.assetsAndStockHolders,_that.outstandingSharesBuyback,_that.revenueAndIncome,_that.cashFlowData);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FinanceData implements FinanceData {
  const _FinanceData({@JsonKey(name: 'Cash and Debt') required this.cashAndDebt, @JsonKey(name: 'Assets and StockHolders') required this.assetsAndStockHolders, @JsonKey(name: 'Outstanding Shares & Buyback') required this.outstandingSharesBuyback, @JsonKey(name: 'Revenue and Income') required this.revenueAndIncome, @JsonKey(name: 'Cash Flow Data') required this.cashFlowData});
  factory _FinanceData.fromJson(Map<String, dynamic> json) => _$FinanceDataFromJson(json);

@override@JsonKey(name: 'Cash and Debt') final  FinanceCategory cashAndDebt;
@override@JsonKey(name: 'Assets and StockHolders') final  FinanceCategory assetsAndStockHolders;
@override@JsonKey(name: 'Outstanding Shares & Buyback') final  FinanceCategory outstandingSharesBuyback;
@override@JsonKey(name: 'Revenue and Income') final  FinanceCategory revenueAndIncome;
@override@JsonKey(name: 'Cash Flow Data') final  FinanceCategory cashFlowData;

/// Create a copy of FinanceData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FinanceDataCopyWith<_FinanceData> get copyWith => __$FinanceDataCopyWithImpl<_FinanceData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FinanceDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FinanceData&&(identical(other.cashAndDebt, cashAndDebt) || other.cashAndDebt == cashAndDebt)&&(identical(other.assetsAndStockHolders, assetsAndStockHolders) || other.assetsAndStockHolders == assetsAndStockHolders)&&(identical(other.outstandingSharesBuyback, outstandingSharesBuyback) || other.outstandingSharesBuyback == outstandingSharesBuyback)&&(identical(other.revenueAndIncome, revenueAndIncome) || other.revenueAndIncome == revenueAndIncome)&&(identical(other.cashFlowData, cashFlowData) || other.cashFlowData == cashFlowData));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,cashAndDebt,assetsAndStockHolders,outstandingSharesBuyback,revenueAndIncome,cashFlowData);

@override
String toString() {
  return 'FinanceData(cashAndDebt: $cashAndDebt, assetsAndStockHolders: $assetsAndStockHolders, outstandingSharesBuyback: $outstandingSharesBuyback, revenueAndIncome: $revenueAndIncome, cashFlowData: $cashFlowData)';
}


}

/// @nodoc
abstract mixin class _$FinanceDataCopyWith<$Res> implements $FinanceDataCopyWith<$Res> {
  factory _$FinanceDataCopyWith(_FinanceData value, $Res Function(_FinanceData) _then) = __$FinanceDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'Cash and Debt') FinanceCategory cashAndDebt,@JsonKey(name: 'Assets and StockHolders') FinanceCategory assetsAndStockHolders,@JsonKey(name: 'Outstanding Shares & Buyback') FinanceCategory outstandingSharesBuyback,@JsonKey(name: 'Revenue and Income') FinanceCategory revenueAndIncome,@JsonKey(name: 'Cash Flow Data') FinanceCategory cashFlowData
});


@override $FinanceCategoryCopyWith<$Res> get cashAndDebt;@override $FinanceCategoryCopyWith<$Res> get assetsAndStockHolders;@override $FinanceCategoryCopyWith<$Res> get outstandingSharesBuyback;@override $FinanceCategoryCopyWith<$Res> get revenueAndIncome;@override $FinanceCategoryCopyWith<$Res> get cashFlowData;

}
/// @nodoc
class __$FinanceDataCopyWithImpl<$Res>
    implements _$FinanceDataCopyWith<$Res> {
  __$FinanceDataCopyWithImpl(this._self, this._then);

  final _FinanceData _self;
  final $Res Function(_FinanceData) _then;

/// Create a copy of FinanceData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? cashAndDebt = null,Object? assetsAndStockHolders = null,Object? outstandingSharesBuyback = null,Object? revenueAndIncome = null,Object? cashFlowData = null,}) {
  return _then(_FinanceData(
cashAndDebt: null == cashAndDebt ? _self.cashAndDebt : cashAndDebt // ignore: cast_nullable_to_non_nullable
as FinanceCategory,assetsAndStockHolders: null == assetsAndStockHolders ? _self.assetsAndStockHolders : assetsAndStockHolders // ignore: cast_nullable_to_non_nullable
as FinanceCategory,outstandingSharesBuyback: null == outstandingSharesBuyback ? _self.outstandingSharesBuyback : outstandingSharesBuyback // ignore: cast_nullable_to_non_nullable
as FinanceCategory,revenueAndIncome: null == revenueAndIncome ? _self.revenueAndIncome : revenueAndIncome // ignore: cast_nullable_to_non_nullable
as FinanceCategory,cashFlowData: null == cashFlowData ? _self.cashFlowData : cashFlowData // ignore: cast_nullable_to_non_nullable
as FinanceCategory,
  ));
}

/// Create a copy of FinanceData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FinanceCategoryCopyWith<$Res> get cashAndDebt {
  
  return $FinanceCategoryCopyWith<$Res>(_self.cashAndDebt, (value) {
    return _then(_self.copyWith(cashAndDebt: value));
  });
}/// Create a copy of FinanceData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FinanceCategoryCopyWith<$Res> get assetsAndStockHolders {
  
  return $FinanceCategoryCopyWith<$Res>(_self.assetsAndStockHolders, (value) {
    return _then(_self.copyWith(assetsAndStockHolders: value));
  });
}/// Create a copy of FinanceData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FinanceCategoryCopyWith<$Res> get outstandingSharesBuyback {
  
  return $FinanceCategoryCopyWith<$Res>(_self.outstandingSharesBuyback, (value) {
    return _then(_self.copyWith(outstandingSharesBuyback: value));
  });
}/// Create a copy of FinanceData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FinanceCategoryCopyWith<$Res> get revenueAndIncome {
  
  return $FinanceCategoryCopyWith<$Res>(_self.revenueAndIncome, (value) {
    return _then(_self.copyWith(revenueAndIncome: value));
  });
}/// Create a copy of FinanceData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FinanceCategoryCopyWith<$Res> get cashFlowData {
  
  return $FinanceCategoryCopyWith<$Res>(_self.cashFlowData, (value) {
    return _then(_self.copyWith(cashFlowData: value));
  });
}
}


/// @nodoc
mixin _$FinanceCategory {

@JsonKey(name: "Yearly") FinancePeriod? get yearly;@JsonKey(name: "Quarterly") FinancePeriod? get quarterly;
/// Create a copy of FinanceCategory
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FinanceCategoryCopyWith<FinanceCategory> get copyWith => _$FinanceCategoryCopyWithImpl<FinanceCategory>(this as FinanceCategory, _$identity);

  /// Serializes this FinanceCategory to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FinanceCategory&&(identical(other.yearly, yearly) || other.yearly == yearly)&&(identical(other.quarterly, quarterly) || other.quarterly == quarterly));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,yearly,quarterly);

@override
String toString() {
  return 'FinanceCategory(yearly: $yearly, quarterly: $quarterly)';
}


}

/// @nodoc
abstract mixin class $FinanceCategoryCopyWith<$Res>  {
  factory $FinanceCategoryCopyWith(FinanceCategory value, $Res Function(FinanceCategory) _then) = _$FinanceCategoryCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "Yearly") FinancePeriod? yearly,@JsonKey(name: "Quarterly") FinancePeriod? quarterly
});


$FinancePeriodCopyWith<$Res>? get yearly;$FinancePeriodCopyWith<$Res>? get quarterly;

}
/// @nodoc
class _$FinanceCategoryCopyWithImpl<$Res>
    implements $FinanceCategoryCopyWith<$Res> {
  _$FinanceCategoryCopyWithImpl(this._self, this._then);

  final FinanceCategory _self;
  final $Res Function(FinanceCategory) _then;

/// Create a copy of FinanceCategory
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? yearly = freezed,Object? quarterly = freezed,}) {
  return _then(_self.copyWith(
yearly: freezed == yearly ? _self.yearly : yearly // ignore: cast_nullable_to_non_nullable
as FinancePeriod?,quarterly: freezed == quarterly ? _self.quarterly : quarterly // ignore: cast_nullable_to_non_nullable
as FinancePeriod?,
  ));
}
/// Create a copy of FinanceCategory
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FinancePeriodCopyWith<$Res>? get yearly {
    if (_self.yearly == null) {
    return null;
  }

  return $FinancePeriodCopyWith<$Res>(_self.yearly!, (value) {
    return _then(_self.copyWith(yearly: value));
  });
}/// Create a copy of FinanceCategory
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FinancePeriodCopyWith<$Res>? get quarterly {
    if (_self.quarterly == null) {
    return null;
  }

  return $FinancePeriodCopyWith<$Res>(_self.quarterly!, (value) {
    return _then(_self.copyWith(quarterly: value));
  });
}
}


/// Adds pattern-matching-related methods to [FinanceCategory].
extension FinanceCategoryPatterns on FinanceCategory {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FinanceCategory value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FinanceCategory() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FinanceCategory value)  $default,){
final _that = this;
switch (_that) {
case _FinanceCategory():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FinanceCategory value)?  $default,){
final _that = this;
switch (_that) {
case _FinanceCategory() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "Yearly")  FinancePeriod? yearly, @JsonKey(name: "Quarterly")  FinancePeriod? quarterly)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FinanceCategory() when $default != null:
return $default(_that.yearly,_that.quarterly);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "Yearly")  FinancePeriod? yearly, @JsonKey(name: "Quarterly")  FinancePeriod? quarterly)  $default,) {final _that = this;
switch (_that) {
case _FinanceCategory():
return $default(_that.yearly,_that.quarterly);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "Yearly")  FinancePeriod? yearly, @JsonKey(name: "Quarterly")  FinancePeriod? quarterly)?  $default,) {final _that = this;
switch (_that) {
case _FinanceCategory() when $default != null:
return $default(_that.yearly,_that.quarterly);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FinanceCategory implements FinanceCategory {
  const _FinanceCategory({@JsonKey(name: "Yearly") this.yearly, @JsonKey(name: "Quarterly") this.quarterly});
  factory _FinanceCategory.fromJson(Map<String, dynamic> json) => _$FinanceCategoryFromJson(json);

@override@JsonKey(name: "Yearly") final  FinancePeriod? yearly;
@override@JsonKey(name: "Quarterly") final  FinancePeriod? quarterly;

/// Create a copy of FinanceCategory
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FinanceCategoryCopyWith<_FinanceCategory> get copyWith => __$FinanceCategoryCopyWithImpl<_FinanceCategory>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FinanceCategoryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FinanceCategory&&(identical(other.yearly, yearly) || other.yearly == yearly)&&(identical(other.quarterly, quarterly) || other.quarterly == quarterly));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,yearly,quarterly);

@override
String toString() {
  return 'FinanceCategory(yearly: $yearly, quarterly: $quarterly)';
}


}

/// @nodoc
abstract mixin class _$FinanceCategoryCopyWith<$Res> implements $FinanceCategoryCopyWith<$Res> {
  factory _$FinanceCategoryCopyWith(_FinanceCategory value, $Res Function(_FinanceCategory) _then) = __$FinanceCategoryCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "Yearly") FinancePeriod? yearly,@JsonKey(name: "Quarterly") FinancePeriod? quarterly
});


@override $FinancePeriodCopyWith<$Res>? get yearly;@override $FinancePeriodCopyWith<$Res>? get quarterly;

}
/// @nodoc
class __$FinanceCategoryCopyWithImpl<$Res>
    implements _$FinanceCategoryCopyWith<$Res> {
  __$FinanceCategoryCopyWithImpl(this._self, this._then);

  final _FinanceCategory _self;
  final $Res Function(_FinanceCategory) _then;

/// Create a copy of FinanceCategory
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? yearly = freezed,Object? quarterly = freezed,}) {
  return _then(_FinanceCategory(
yearly: freezed == yearly ? _self.yearly : yearly // ignore: cast_nullable_to_non_nullable
as FinancePeriod?,quarterly: freezed == quarterly ? _self.quarterly : quarterly // ignore: cast_nullable_to_non_nullable
as FinancePeriod?,
  ));
}

/// Create a copy of FinanceCategory
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FinancePeriodCopyWith<$Res>? get yearly {
    if (_self.yearly == null) {
    return null;
  }

  return $FinancePeriodCopyWith<$Res>(_self.yearly!, (value) {
    return _then(_self.copyWith(yearly: value));
  });
}/// Create a copy of FinanceCategory
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FinancePeriodCopyWith<$Res>? get quarterly {
    if (_self.quarterly == null) {
    return null;
  }

  return $FinancePeriodCopyWith<$Res>(_self.quarterly!, (value) {
    return _then(_self.copyWith(quarterly: value));
  });
}
}


/// @nodoc
mixin _$FinancePeriod {

@JsonKey(fromJson: _metricsFromJson, toJson: _metricsToJson) Map<String, List<List<num?>>> get metrics;
/// Create a copy of FinancePeriod
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FinancePeriodCopyWith<FinancePeriod> get copyWith => _$FinancePeriodCopyWithImpl<FinancePeriod>(this as FinancePeriod, _$identity);

  /// Serializes this FinancePeriod to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FinancePeriod&&const DeepCollectionEquality().equals(other.metrics, metrics));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(metrics));

@override
String toString() {
  return 'FinancePeriod(metrics: $metrics)';
}


}

/// @nodoc
abstract mixin class $FinancePeriodCopyWith<$Res>  {
  factory $FinancePeriodCopyWith(FinancePeriod value, $Res Function(FinancePeriod) _then) = _$FinancePeriodCopyWithImpl;
@useResult
$Res call({
@JsonKey(fromJson: _metricsFromJson, toJson: _metricsToJson) Map<String, List<List<num?>>> metrics
});




}
/// @nodoc
class _$FinancePeriodCopyWithImpl<$Res>
    implements $FinancePeriodCopyWith<$Res> {
  _$FinancePeriodCopyWithImpl(this._self, this._then);

  final FinancePeriod _self;
  final $Res Function(FinancePeriod) _then;

/// Create a copy of FinancePeriod
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? metrics = null,}) {
  return _then(_self.copyWith(
metrics: null == metrics ? _self.metrics : metrics // ignore: cast_nullable_to_non_nullable
as Map<String, List<List<num?>>>,
  ));
}

}


/// Adds pattern-matching-related methods to [FinancePeriod].
extension FinancePeriodPatterns on FinancePeriod {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FinancePeriod value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FinancePeriod() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FinancePeriod value)  $default,){
final _that = this;
switch (_that) {
case _FinancePeriod():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FinancePeriod value)?  $default,){
final _that = this;
switch (_that) {
case _FinancePeriod() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(fromJson: _metricsFromJson, toJson: _metricsToJson)  Map<String, List<List<num?>>> metrics)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FinancePeriod() when $default != null:
return $default(_that.metrics);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(fromJson: _metricsFromJson, toJson: _metricsToJson)  Map<String, List<List<num?>>> metrics)  $default,) {final _that = this;
switch (_that) {
case _FinancePeriod():
return $default(_that.metrics);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(fromJson: _metricsFromJson, toJson: _metricsToJson)  Map<String, List<List<num?>>> metrics)?  $default,) {final _that = this;
switch (_that) {
case _FinancePeriod() when $default != null:
return $default(_that.metrics);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FinancePeriod implements FinancePeriod {
  const _FinancePeriod({@JsonKey(fromJson: _metricsFromJson, toJson: _metricsToJson) required final  Map<String, List<List<num?>>> metrics}): _metrics = metrics;
  factory _FinancePeriod.fromJson(Map<String, dynamic> json) => _$FinancePeriodFromJson(json);

 final  Map<String, List<List<num?>>> _metrics;
@override@JsonKey(fromJson: _metricsFromJson, toJson: _metricsToJson) Map<String, List<List<num?>>> get metrics {
  if (_metrics is EqualUnmodifiableMapView) return _metrics;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_metrics);
}


/// Create a copy of FinancePeriod
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FinancePeriodCopyWith<_FinancePeriod> get copyWith => __$FinancePeriodCopyWithImpl<_FinancePeriod>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FinancePeriodToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FinancePeriod&&const DeepCollectionEquality().equals(other._metrics, _metrics));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_metrics));

@override
String toString() {
  return 'FinancePeriod(metrics: $metrics)';
}


}

/// @nodoc
abstract mixin class _$FinancePeriodCopyWith<$Res> implements $FinancePeriodCopyWith<$Res> {
  factory _$FinancePeriodCopyWith(_FinancePeriod value, $Res Function(_FinancePeriod) _then) = __$FinancePeriodCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(fromJson: _metricsFromJson, toJson: _metricsToJson) Map<String, List<List<num?>>> metrics
});




}
/// @nodoc
class __$FinancePeriodCopyWithImpl<$Res>
    implements _$FinancePeriodCopyWith<$Res> {
  __$FinancePeriodCopyWithImpl(this._self, this._then);

  final _FinancePeriod _self;
  final $Res Function(_FinancePeriod) _then;

/// Create a copy of FinancePeriod
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? metrics = null,}) {
  return _then(_FinancePeriod(
metrics: null == metrics ? _self._metrics : metrics // ignore: cast_nullable_to_non_nullable
as Map<String, List<List<num?>>>,
  ));
}


}

// dart format on
