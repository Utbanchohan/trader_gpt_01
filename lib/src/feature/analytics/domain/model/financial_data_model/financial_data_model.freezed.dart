// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'financial_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FinancialResponse {

 FinancialData get data; String get msg; int get status; dynamic get errors;
/// Create a copy of FinancialResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FinancialResponseCopyWith<FinancialResponse> get copyWith => _$FinancialResponseCopyWithImpl<FinancialResponse>(this as FinancialResponse, _$identity);

  /// Serializes this FinancialResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FinancialResponse&&(identical(other.data, data) || other.data == data)&&(identical(other.msg, msg) || other.msg == msg)&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.errors, errors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data,msg,status,const DeepCollectionEquality().hash(errors));

@override
String toString() {
  return 'FinancialResponse(data: $data, msg: $msg, status: $status, errors: $errors)';
}


}

/// @nodoc
abstract mixin class $FinancialResponseCopyWith<$Res>  {
  factory $FinancialResponseCopyWith(FinancialResponse value, $Res Function(FinancialResponse) _then) = _$FinancialResponseCopyWithImpl;
@useResult
$Res call({
 FinancialData data, String msg, int status, dynamic errors
});


$FinancialDataCopyWith<$Res> get data;

}
/// @nodoc
class _$FinancialResponseCopyWithImpl<$Res>
    implements $FinancialResponseCopyWith<$Res> {
  _$FinancialResponseCopyWithImpl(this._self, this._then);

  final FinancialResponse _self;
  final $Res Function(FinancialResponse) _then;

/// Create a copy of FinancialResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = null,Object? msg = null,Object? status = null,Object? errors = freezed,}) {
  return _then(_self.copyWith(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as FinancialData,msg: null == msg ? _self.msg : msg // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int,errors: freezed == errors ? _self.errors : errors // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}
/// Create a copy of FinancialResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FinancialDataCopyWith<$Res> get data {
  
  return $FinancialDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [FinancialResponse].
extension FinancialResponsePatterns on FinancialResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FinancialResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FinancialResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FinancialResponse value)  $default,){
final _that = this;
switch (_that) {
case _FinancialResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FinancialResponse value)?  $default,){
final _that = this;
switch (_that) {
case _FinancialResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( FinancialData data,  String msg,  int status,  dynamic errors)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FinancialResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( FinancialData data,  String msg,  int status,  dynamic errors)  $default,) {final _that = this;
switch (_that) {
case _FinancialResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( FinancialData data,  String msg,  int status,  dynamic errors)?  $default,) {final _that = this;
switch (_that) {
case _FinancialResponse() when $default != null:
return $default(_that.data,_that.msg,_that.status,_that.errors);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FinancialResponse implements FinancialResponse {
  const _FinancialResponse({required this.data, required this.msg, required this.status, this.errors});
  factory _FinancialResponse.fromJson(Map<String, dynamic> json) => _$FinancialResponseFromJson(json);

@override final  FinancialData data;
@override final  String msg;
@override final  int status;
@override final  dynamic errors;

/// Create a copy of FinancialResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FinancialResponseCopyWith<_FinancialResponse> get copyWith => __$FinancialResponseCopyWithImpl<_FinancialResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FinancialResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FinancialResponse&&(identical(other.data, data) || other.data == data)&&(identical(other.msg, msg) || other.msg == msg)&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.errors, errors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data,msg,status,const DeepCollectionEquality().hash(errors));

@override
String toString() {
  return 'FinancialResponse(data: $data, msg: $msg, status: $status, errors: $errors)';
}


}

/// @nodoc
abstract mixin class _$FinancialResponseCopyWith<$Res> implements $FinancialResponseCopyWith<$Res> {
  factory _$FinancialResponseCopyWith(_FinancialResponse value, $Res Function(_FinancialResponse) _then) = __$FinancialResponseCopyWithImpl;
@override @useResult
$Res call({
 FinancialData data, String msg, int status, dynamic errors
});


@override $FinancialDataCopyWith<$Res> get data;

}
/// @nodoc
class __$FinancialResponseCopyWithImpl<$Res>
    implements _$FinancialResponseCopyWith<$Res> {
  __$FinancialResponseCopyWithImpl(this._self, this._then);

  final _FinancialResponse _self;
  final $Res Function(_FinancialResponse) _then;

/// Create a copy of FinancialResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,Object? msg = null,Object? status = null,Object? errors = freezed,}) {
  return _then(_FinancialResponse(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as FinancialData,msg: null == msg ? _self.msg : msg // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int,errors: freezed == errors ? _self.errors : errors // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

/// Create a copy of FinancialResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FinancialDataCopyWith<$Res> get data {
  
  return $FinancialDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$FinancialData {

@JsonKey(name: 'financials_balance_sheet') FinancialBalanceSheet get financialsBalanceSheet;@JsonKey(name: 'financials_cash_flow') FinancialCashFlow get financialsCashFlow;@JsonKey(name: 'financials_income_statement') FinancialIncomeStatement get financialsIncomeStatement;
/// Create a copy of FinancialData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FinancialDataCopyWith<FinancialData> get copyWith => _$FinancialDataCopyWithImpl<FinancialData>(this as FinancialData, _$identity);

  /// Serializes this FinancialData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FinancialData&&(identical(other.financialsBalanceSheet, financialsBalanceSheet) || other.financialsBalanceSheet == financialsBalanceSheet)&&(identical(other.financialsCashFlow, financialsCashFlow) || other.financialsCashFlow == financialsCashFlow)&&(identical(other.financialsIncomeStatement, financialsIncomeStatement) || other.financialsIncomeStatement == financialsIncomeStatement));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,financialsBalanceSheet,financialsCashFlow,financialsIncomeStatement);

@override
String toString() {
  return 'FinancialData(financialsBalanceSheet: $financialsBalanceSheet, financialsCashFlow: $financialsCashFlow, financialsIncomeStatement: $financialsIncomeStatement)';
}


}

/// @nodoc
abstract mixin class $FinancialDataCopyWith<$Res>  {
  factory $FinancialDataCopyWith(FinancialData value, $Res Function(FinancialData) _then) = _$FinancialDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'financials_balance_sheet') FinancialBalanceSheet financialsBalanceSheet,@JsonKey(name: 'financials_cash_flow') FinancialCashFlow financialsCashFlow,@JsonKey(name: 'financials_income_statement') FinancialIncomeStatement financialsIncomeStatement
});


$FinancialBalanceSheetCopyWith<$Res> get financialsBalanceSheet;$FinancialCashFlowCopyWith<$Res> get financialsCashFlow;$FinancialIncomeStatementCopyWith<$Res> get financialsIncomeStatement;

}
/// @nodoc
class _$FinancialDataCopyWithImpl<$Res>
    implements $FinancialDataCopyWith<$Res> {
  _$FinancialDataCopyWithImpl(this._self, this._then);

  final FinancialData _self;
  final $Res Function(FinancialData) _then;

/// Create a copy of FinancialData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? financialsBalanceSheet = null,Object? financialsCashFlow = null,Object? financialsIncomeStatement = null,}) {
  return _then(_self.copyWith(
financialsBalanceSheet: null == financialsBalanceSheet ? _self.financialsBalanceSheet : financialsBalanceSheet // ignore: cast_nullable_to_non_nullable
as FinancialBalanceSheet,financialsCashFlow: null == financialsCashFlow ? _self.financialsCashFlow : financialsCashFlow // ignore: cast_nullable_to_non_nullable
as FinancialCashFlow,financialsIncomeStatement: null == financialsIncomeStatement ? _self.financialsIncomeStatement : financialsIncomeStatement // ignore: cast_nullable_to_non_nullable
as FinancialIncomeStatement,
  ));
}
/// Create a copy of FinancialData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FinancialBalanceSheetCopyWith<$Res> get financialsBalanceSheet {
  
  return $FinancialBalanceSheetCopyWith<$Res>(_self.financialsBalanceSheet, (value) {
    return _then(_self.copyWith(financialsBalanceSheet: value));
  });
}/// Create a copy of FinancialData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FinancialCashFlowCopyWith<$Res> get financialsCashFlow {
  
  return $FinancialCashFlowCopyWith<$Res>(_self.financialsCashFlow, (value) {
    return _then(_self.copyWith(financialsCashFlow: value));
  });
}/// Create a copy of FinancialData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FinancialIncomeStatementCopyWith<$Res> get financialsIncomeStatement {
  
  return $FinancialIncomeStatementCopyWith<$Res>(_self.financialsIncomeStatement, (value) {
    return _then(_self.copyWith(financialsIncomeStatement: value));
  });
}
}


/// Adds pattern-matching-related methods to [FinancialData].
extension FinancialDataPatterns on FinancialData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FinancialData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FinancialData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FinancialData value)  $default,){
final _that = this;
switch (_that) {
case _FinancialData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FinancialData value)?  $default,){
final _that = this;
switch (_that) {
case _FinancialData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'financials_balance_sheet')  FinancialBalanceSheet financialsBalanceSheet, @JsonKey(name: 'financials_cash_flow')  FinancialCashFlow financialsCashFlow, @JsonKey(name: 'financials_income_statement')  FinancialIncomeStatement financialsIncomeStatement)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FinancialData() when $default != null:
return $default(_that.financialsBalanceSheet,_that.financialsCashFlow,_that.financialsIncomeStatement);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'financials_balance_sheet')  FinancialBalanceSheet financialsBalanceSheet, @JsonKey(name: 'financials_cash_flow')  FinancialCashFlow financialsCashFlow, @JsonKey(name: 'financials_income_statement')  FinancialIncomeStatement financialsIncomeStatement)  $default,) {final _that = this;
switch (_that) {
case _FinancialData():
return $default(_that.financialsBalanceSheet,_that.financialsCashFlow,_that.financialsIncomeStatement);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'financials_balance_sheet')  FinancialBalanceSheet financialsBalanceSheet, @JsonKey(name: 'financials_cash_flow')  FinancialCashFlow financialsCashFlow, @JsonKey(name: 'financials_income_statement')  FinancialIncomeStatement financialsIncomeStatement)?  $default,) {final _that = this;
switch (_that) {
case _FinancialData() when $default != null:
return $default(_that.financialsBalanceSheet,_that.financialsCashFlow,_that.financialsIncomeStatement);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FinancialData implements FinancialData {
  const _FinancialData({@JsonKey(name: 'financials_balance_sheet') required this.financialsBalanceSheet, @JsonKey(name: 'financials_cash_flow') required this.financialsCashFlow, @JsonKey(name: 'financials_income_statement') required this.financialsIncomeStatement});
  factory _FinancialData.fromJson(Map<String, dynamic> json) => _$FinancialDataFromJson(json);

@override@JsonKey(name: 'financials_balance_sheet') final  FinancialBalanceSheet financialsBalanceSheet;
@override@JsonKey(name: 'financials_cash_flow') final  FinancialCashFlow financialsCashFlow;
@override@JsonKey(name: 'financials_income_statement') final  FinancialIncomeStatement financialsIncomeStatement;

/// Create a copy of FinancialData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FinancialDataCopyWith<_FinancialData> get copyWith => __$FinancialDataCopyWithImpl<_FinancialData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FinancialDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FinancialData&&(identical(other.financialsBalanceSheet, financialsBalanceSheet) || other.financialsBalanceSheet == financialsBalanceSheet)&&(identical(other.financialsCashFlow, financialsCashFlow) || other.financialsCashFlow == financialsCashFlow)&&(identical(other.financialsIncomeStatement, financialsIncomeStatement) || other.financialsIncomeStatement == financialsIncomeStatement));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,financialsBalanceSheet,financialsCashFlow,financialsIncomeStatement);

@override
String toString() {
  return 'FinancialData(financialsBalanceSheet: $financialsBalanceSheet, financialsCashFlow: $financialsCashFlow, financialsIncomeStatement: $financialsIncomeStatement)';
}


}

/// @nodoc
abstract mixin class _$FinancialDataCopyWith<$Res> implements $FinancialDataCopyWith<$Res> {
  factory _$FinancialDataCopyWith(_FinancialData value, $Res Function(_FinancialData) _then) = __$FinancialDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'financials_balance_sheet') FinancialBalanceSheet financialsBalanceSheet,@JsonKey(name: 'financials_cash_flow') FinancialCashFlow financialsCashFlow,@JsonKey(name: 'financials_income_statement') FinancialIncomeStatement financialsIncomeStatement
});


@override $FinancialBalanceSheetCopyWith<$Res> get financialsBalanceSheet;@override $FinancialCashFlowCopyWith<$Res> get financialsCashFlow;@override $FinancialIncomeStatementCopyWith<$Res> get financialsIncomeStatement;

}
/// @nodoc
class __$FinancialDataCopyWithImpl<$Res>
    implements _$FinancialDataCopyWith<$Res> {
  __$FinancialDataCopyWithImpl(this._self, this._then);

  final _FinancialData _self;
  final $Res Function(_FinancialData) _then;

/// Create a copy of FinancialData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? financialsBalanceSheet = null,Object? financialsCashFlow = null,Object? financialsIncomeStatement = null,}) {
  return _then(_FinancialData(
financialsBalanceSheet: null == financialsBalanceSheet ? _self.financialsBalanceSheet : financialsBalanceSheet // ignore: cast_nullable_to_non_nullable
as FinancialBalanceSheet,financialsCashFlow: null == financialsCashFlow ? _self.financialsCashFlow : financialsCashFlow // ignore: cast_nullable_to_non_nullable
as FinancialCashFlow,financialsIncomeStatement: null == financialsIncomeStatement ? _self.financialsIncomeStatement : financialsIncomeStatement // ignore: cast_nullable_to_non_nullable
as FinancialIncomeStatement,
  ));
}

/// Create a copy of FinancialData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FinancialBalanceSheetCopyWith<$Res> get financialsBalanceSheet {
  
  return $FinancialBalanceSheetCopyWith<$Res>(_self.financialsBalanceSheet, (value) {
    return _then(_self.copyWith(financialsBalanceSheet: value));
  });
}/// Create a copy of FinancialData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FinancialCashFlowCopyWith<$Res> get financialsCashFlow {
  
  return $FinancialCashFlowCopyWith<$Res>(_self.financialsCashFlow, (value) {
    return _then(_self.copyWith(financialsCashFlow: value));
  });
}/// Create a copy of FinancialData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FinancialIncomeStatementCopyWith<$Res> get financialsIncomeStatement {
  
  return $FinancialIncomeStatementCopyWith<$Res>(_self.financialsIncomeStatement, (value) {
    return _then(_self.copyWith(financialsIncomeStatement: value));
  });
}
}


/// @nodoc
mixin _$FinancialBalanceSheet {

 FinancialChart get chart; Map<String, YearlyFinancialData> get data;@JsonKey(name: 'current_ratio') double get currentRatio;
/// Create a copy of FinancialBalanceSheet
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FinancialBalanceSheetCopyWith<FinancialBalanceSheet> get copyWith => _$FinancialBalanceSheetCopyWithImpl<FinancialBalanceSheet>(this as FinancialBalanceSheet, _$identity);

  /// Serializes this FinancialBalanceSheet to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FinancialBalanceSheet&&(identical(other.chart, chart) || other.chart == chart)&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.currentRatio, currentRatio) || other.currentRatio == currentRatio));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,chart,const DeepCollectionEquality().hash(data),currentRatio);

@override
String toString() {
  return 'FinancialBalanceSheet(chart: $chart, data: $data, currentRatio: $currentRatio)';
}


}

/// @nodoc
abstract mixin class $FinancialBalanceSheetCopyWith<$Res>  {
  factory $FinancialBalanceSheetCopyWith(FinancialBalanceSheet value, $Res Function(FinancialBalanceSheet) _then) = _$FinancialBalanceSheetCopyWithImpl;
@useResult
$Res call({
 FinancialChart chart, Map<String, YearlyFinancialData> data,@JsonKey(name: 'current_ratio') double currentRatio
});


$FinancialChartCopyWith<$Res> get chart;

}
/// @nodoc
class _$FinancialBalanceSheetCopyWithImpl<$Res>
    implements $FinancialBalanceSheetCopyWith<$Res> {
  _$FinancialBalanceSheetCopyWithImpl(this._self, this._then);

  final FinancialBalanceSheet _self;
  final $Res Function(FinancialBalanceSheet) _then;

/// Create a copy of FinancialBalanceSheet
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? chart = null,Object? data = null,Object? currentRatio = null,}) {
  return _then(_self.copyWith(
chart: null == chart ? _self.chart : chart // ignore: cast_nullable_to_non_nullable
as FinancialChart,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Map<String, YearlyFinancialData>,currentRatio: null == currentRatio ? _self.currentRatio : currentRatio // ignore: cast_nullable_to_non_nullable
as double,
  ));
}
/// Create a copy of FinancialBalanceSheet
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FinancialChartCopyWith<$Res> get chart {
  
  return $FinancialChartCopyWith<$Res>(_self.chart, (value) {
    return _then(_self.copyWith(chart: value));
  });
}
}


/// Adds pattern-matching-related methods to [FinancialBalanceSheet].
extension FinancialBalanceSheetPatterns on FinancialBalanceSheet {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FinancialBalanceSheet value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FinancialBalanceSheet() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FinancialBalanceSheet value)  $default,){
final _that = this;
switch (_that) {
case _FinancialBalanceSheet():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FinancialBalanceSheet value)?  $default,){
final _that = this;
switch (_that) {
case _FinancialBalanceSheet() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( FinancialChart chart,  Map<String, YearlyFinancialData> data, @JsonKey(name: 'current_ratio')  double currentRatio)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FinancialBalanceSheet() when $default != null:
return $default(_that.chart,_that.data,_that.currentRatio);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( FinancialChart chart,  Map<String, YearlyFinancialData> data, @JsonKey(name: 'current_ratio')  double currentRatio)  $default,) {final _that = this;
switch (_that) {
case _FinancialBalanceSheet():
return $default(_that.chart,_that.data,_that.currentRatio);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( FinancialChart chart,  Map<String, YearlyFinancialData> data, @JsonKey(name: 'current_ratio')  double currentRatio)?  $default,) {final _that = this;
switch (_that) {
case _FinancialBalanceSheet() when $default != null:
return $default(_that.chart,_that.data,_that.currentRatio);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FinancialBalanceSheet implements FinancialBalanceSheet {
  const _FinancialBalanceSheet({required this.chart, required final  Map<String, YearlyFinancialData> data, @JsonKey(name: 'current_ratio') required this.currentRatio}): _data = data;
  factory _FinancialBalanceSheet.fromJson(Map<String, dynamic> json) => _$FinancialBalanceSheetFromJson(json);

@override final  FinancialChart chart;
 final  Map<String, YearlyFinancialData> _data;
@override Map<String, YearlyFinancialData> get data {
  if (_data is EqualUnmodifiableMapView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_data);
}

@override@JsonKey(name: 'current_ratio') final  double currentRatio;

/// Create a copy of FinancialBalanceSheet
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FinancialBalanceSheetCopyWith<_FinancialBalanceSheet> get copyWith => __$FinancialBalanceSheetCopyWithImpl<_FinancialBalanceSheet>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FinancialBalanceSheetToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FinancialBalanceSheet&&(identical(other.chart, chart) || other.chart == chart)&&const DeepCollectionEquality().equals(other._data, _data)&&(identical(other.currentRatio, currentRatio) || other.currentRatio == currentRatio));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,chart,const DeepCollectionEquality().hash(_data),currentRatio);

@override
String toString() {
  return 'FinancialBalanceSheet(chart: $chart, data: $data, currentRatio: $currentRatio)';
}


}

/// @nodoc
abstract mixin class _$FinancialBalanceSheetCopyWith<$Res> implements $FinancialBalanceSheetCopyWith<$Res> {
  factory _$FinancialBalanceSheetCopyWith(_FinancialBalanceSheet value, $Res Function(_FinancialBalanceSheet) _then) = __$FinancialBalanceSheetCopyWithImpl;
@override @useResult
$Res call({
 FinancialChart chart, Map<String, YearlyFinancialData> data,@JsonKey(name: 'current_ratio') double currentRatio
});


@override $FinancialChartCopyWith<$Res> get chart;

}
/// @nodoc
class __$FinancialBalanceSheetCopyWithImpl<$Res>
    implements _$FinancialBalanceSheetCopyWith<$Res> {
  __$FinancialBalanceSheetCopyWithImpl(this._self, this._then);

  final _FinancialBalanceSheet _self;
  final $Res Function(_FinancialBalanceSheet) _then;

/// Create a copy of FinancialBalanceSheet
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? chart = null,Object? data = null,Object? currentRatio = null,}) {
  return _then(_FinancialBalanceSheet(
chart: null == chart ? _self.chart : chart // ignore: cast_nullable_to_non_nullable
as FinancialChart,data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as Map<String, YearlyFinancialData>,currentRatio: null == currentRatio ? _self.currentRatio : currentRatio // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

/// Create a copy of FinancialBalanceSheet
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FinancialChartCopyWith<$Res> get chart {
  
  return $FinancialChartCopyWith<$Res>(_self.chart, (value) {
    return _then(_self.copyWith(chart: value));
  });
}
}


/// @nodoc
mixin _$FinancialCashFlow {

 FinancialChart get chart; Map<String, YearlyFinancialData> get data;
/// Create a copy of FinancialCashFlow
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FinancialCashFlowCopyWith<FinancialCashFlow> get copyWith => _$FinancialCashFlowCopyWithImpl<FinancialCashFlow>(this as FinancialCashFlow, _$identity);

  /// Serializes this FinancialCashFlow to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FinancialCashFlow&&(identical(other.chart, chart) || other.chart == chart)&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,chart,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'FinancialCashFlow(chart: $chart, data: $data)';
}


}

/// @nodoc
abstract mixin class $FinancialCashFlowCopyWith<$Res>  {
  factory $FinancialCashFlowCopyWith(FinancialCashFlow value, $Res Function(FinancialCashFlow) _then) = _$FinancialCashFlowCopyWithImpl;
@useResult
$Res call({
 FinancialChart chart, Map<String, YearlyFinancialData> data
});


$FinancialChartCopyWith<$Res> get chart;

}
/// @nodoc
class _$FinancialCashFlowCopyWithImpl<$Res>
    implements $FinancialCashFlowCopyWith<$Res> {
  _$FinancialCashFlowCopyWithImpl(this._self, this._then);

  final FinancialCashFlow _self;
  final $Res Function(FinancialCashFlow) _then;

/// Create a copy of FinancialCashFlow
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? chart = null,Object? data = null,}) {
  return _then(_self.copyWith(
chart: null == chart ? _self.chart : chart // ignore: cast_nullable_to_non_nullable
as FinancialChart,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Map<String, YearlyFinancialData>,
  ));
}
/// Create a copy of FinancialCashFlow
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FinancialChartCopyWith<$Res> get chart {
  
  return $FinancialChartCopyWith<$Res>(_self.chart, (value) {
    return _then(_self.copyWith(chart: value));
  });
}
}


/// Adds pattern-matching-related methods to [FinancialCashFlow].
extension FinancialCashFlowPatterns on FinancialCashFlow {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FinancialCashFlow value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FinancialCashFlow() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FinancialCashFlow value)  $default,){
final _that = this;
switch (_that) {
case _FinancialCashFlow():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FinancialCashFlow value)?  $default,){
final _that = this;
switch (_that) {
case _FinancialCashFlow() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( FinancialChart chart,  Map<String, YearlyFinancialData> data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FinancialCashFlow() when $default != null:
return $default(_that.chart,_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( FinancialChart chart,  Map<String, YearlyFinancialData> data)  $default,) {final _that = this;
switch (_that) {
case _FinancialCashFlow():
return $default(_that.chart,_that.data);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( FinancialChart chart,  Map<String, YearlyFinancialData> data)?  $default,) {final _that = this;
switch (_that) {
case _FinancialCashFlow() when $default != null:
return $default(_that.chart,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FinancialCashFlow implements FinancialCashFlow {
  const _FinancialCashFlow({required this.chart, required final  Map<String, YearlyFinancialData> data}): _data = data;
  factory _FinancialCashFlow.fromJson(Map<String, dynamic> json) => _$FinancialCashFlowFromJson(json);

@override final  FinancialChart chart;
 final  Map<String, YearlyFinancialData> _data;
@override Map<String, YearlyFinancialData> get data {
  if (_data is EqualUnmodifiableMapView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_data);
}


/// Create a copy of FinancialCashFlow
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FinancialCashFlowCopyWith<_FinancialCashFlow> get copyWith => __$FinancialCashFlowCopyWithImpl<_FinancialCashFlow>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FinancialCashFlowToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FinancialCashFlow&&(identical(other.chart, chart) || other.chart == chart)&&const DeepCollectionEquality().equals(other._data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,chart,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'FinancialCashFlow(chart: $chart, data: $data)';
}


}

/// @nodoc
abstract mixin class _$FinancialCashFlowCopyWith<$Res> implements $FinancialCashFlowCopyWith<$Res> {
  factory _$FinancialCashFlowCopyWith(_FinancialCashFlow value, $Res Function(_FinancialCashFlow) _then) = __$FinancialCashFlowCopyWithImpl;
@override @useResult
$Res call({
 FinancialChart chart, Map<String, YearlyFinancialData> data
});


@override $FinancialChartCopyWith<$Res> get chart;

}
/// @nodoc
class __$FinancialCashFlowCopyWithImpl<$Res>
    implements _$FinancialCashFlowCopyWith<$Res> {
  __$FinancialCashFlowCopyWithImpl(this._self, this._then);

  final _FinancialCashFlow _self;
  final $Res Function(_FinancialCashFlow) _then;

/// Create a copy of FinancialCashFlow
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? chart = null,Object? data = null,}) {
  return _then(_FinancialCashFlow(
chart: null == chart ? _self.chart : chart // ignore: cast_nullable_to_non_nullable
as FinancialChart,data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as Map<String, YearlyFinancialData>,
  ));
}

/// Create a copy of FinancialCashFlow
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FinancialChartCopyWith<$Res> get chart {
  
  return $FinancialChartCopyWith<$Res>(_self.chart, (value) {
    return _then(_self.copyWith(chart: value));
  });
}
}


/// @nodoc
mixin _$FinancialIncomeStatement {

 FinancialChart get chart; Map<String, YearlyFinancialData> get data;
/// Create a copy of FinancialIncomeStatement
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FinancialIncomeStatementCopyWith<FinancialIncomeStatement> get copyWith => _$FinancialIncomeStatementCopyWithImpl<FinancialIncomeStatement>(this as FinancialIncomeStatement, _$identity);

  /// Serializes this FinancialIncomeStatement to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FinancialIncomeStatement&&(identical(other.chart, chart) || other.chart == chart)&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,chart,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'FinancialIncomeStatement(chart: $chart, data: $data)';
}


}

/// @nodoc
abstract mixin class $FinancialIncomeStatementCopyWith<$Res>  {
  factory $FinancialIncomeStatementCopyWith(FinancialIncomeStatement value, $Res Function(FinancialIncomeStatement) _then) = _$FinancialIncomeStatementCopyWithImpl;
@useResult
$Res call({
 FinancialChart chart, Map<String, YearlyFinancialData> data
});


$FinancialChartCopyWith<$Res> get chart;

}
/// @nodoc
class _$FinancialIncomeStatementCopyWithImpl<$Res>
    implements $FinancialIncomeStatementCopyWith<$Res> {
  _$FinancialIncomeStatementCopyWithImpl(this._self, this._then);

  final FinancialIncomeStatement _self;
  final $Res Function(FinancialIncomeStatement) _then;

/// Create a copy of FinancialIncomeStatement
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? chart = null,Object? data = null,}) {
  return _then(_self.copyWith(
chart: null == chart ? _self.chart : chart // ignore: cast_nullable_to_non_nullable
as FinancialChart,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Map<String, YearlyFinancialData>,
  ));
}
/// Create a copy of FinancialIncomeStatement
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FinancialChartCopyWith<$Res> get chart {
  
  return $FinancialChartCopyWith<$Res>(_self.chart, (value) {
    return _then(_self.copyWith(chart: value));
  });
}
}


/// Adds pattern-matching-related methods to [FinancialIncomeStatement].
extension FinancialIncomeStatementPatterns on FinancialIncomeStatement {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FinancialIncomeStatement value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FinancialIncomeStatement() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FinancialIncomeStatement value)  $default,){
final _that = this;
switch (_that) {
case _FinancialIncomeStatement():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FinancialIncomeStatement value)?  $default,){
final _that = this;
switch (_that) {
case _FinancialIncomeStatement() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( FinancialChart chart,  Map<String, YearlyFinancialData> data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FinancialIncomeStatement() when $default != null:
return $default(_that.chart,_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( FinancialChart chart,  Map<String, YearlyFinancialData> data)  $default,) {final _that = this;
switch (_that) {
case _FinancialIncomeStatement():
return $default(_that.chart,_that.data);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( FinancialChart chart,  Map<String, YearlyFinancialData> data)?  $default,) {final _that = this;
switch (_that) {
case _FinancialIncomeStatement() when $default != null:
return $default(_that.chart,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FinancialIncomeStatement implements FinancialIncomeStatement {
  const _FinancialIncomeStatement({required this.chart, required final  Map<String, YearlyFinancialData> data}): _data = data;
  factory _FinancialIncomeStatement.fromJson(Map<String, dynamic> json) => _$FinancialIncomeStatementFromJson(json);

@override final  FinancialChart chart;
 final  Map<String, YearlyFinancialData> _data;
@override Map<String, YearlyFinancialData> get data {
  if (_data is EqualUnmodifiableMapView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_data);
}


/// Create a copy of FinancialIncomeStatement
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FinancialIncomeStatementCopyWith<_FinancialIncomeStatement> get copyWith => __$FinancialIncomeStatementCopyWithImpl<_FinancialIncomeStatement>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FinancialIncomeStatementToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FinancialIncomeStatement&&(identical(other.chart, chart) || other.chart == chart)&&const DeepCollectionEquality().equals(other._data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,chart,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'FinancialIncomeStatement(chart: $chart, data: $data)';
}


}

/// @nodoc
abstract mixin class _$FinancialIncomeStatementCopyWith<$Res> implements $FinancialIncomeStatementCopyWith<$Res> {
  factory _$FinancialIncomeStatementCopyWith(_FinancialIncomeStatement value, $Res Function(_FinancialIncomeStatement) _then) = __$FinancialIncomeStatementCopyWithImpl;
@override @useResult
$Res call({
 FinancialChart chart, Map<String, YearlyFinancialData> data
});


@override $FinancialChartCopyWith<$Res> get chart;

}
/// @nodoc
class __$FinancialIncomeStatementCopyWithImpl<$Res>
    implements _$FinancialIncomeStatementCopyWith<$Res> {
  __$FinancialIncomeStatementCopyWithImpl(this._self, this._then);

  final _FinancialIncomeStatement _self;
  final $Res Function(_FinancialIncomeStatement) _then;

/// Create a copy of FinancialIncomeStatement
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? chart = null,Object? data = null,}) {
  return _then(_FinancialIncomeStatement(
chart: null == chart ? _self.chart : chart // ignore: cast_nullable_to_non_nullable
as FinancialChart,data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as Map<String, YearlyFinancialData>,
  ));
}

/// Create a copy of FinancialIncomeStatement
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FinancialChartCopyWith<$Res> get chart {
  
  return $FinancialChartCopyWith<$Res>(_self.chart, (value) {
    return _then(_self.copyWith(chart: value));
  });
}
}


/// @nodoc
mixin _$FinancialChart {

 List<FinancialDataPoint>? get totalAssets; List<FinancialDataPoint>? get intangibleAssets; List<FinancialDataPoint>? get earningAssets; List<FinancialDataPoint>? get otherCurrentAssets; List<FinancialDataPoint>? get totalLiab; List<FinancialDataPoint>? get totalStockholderEquity; List<FinancialDataPoint>? get deferredLongTermLiab; List<FinancialDataPoint>? get otherCurrentLiab; List<FinancialDataPoint>? get commonStock; List<FinancialDataPoint>? get capitalStock; List<FinancialDataPoint>? get retainedEarnings; List<FinancialDataPoint>? get otherLiab; List<FinancialDataPoint>? get goodWill; List<FinancialDataPoint>? get otherAssets; List<FinancialDataPoint>? get cash; List<FinancialDataPoint>? get cashAndEquivalents; List<FinancialDataPoint>? get totalCurrentLiabilities; List<FinancialDataPoint>? get currentDeferredRevenue; List<FinancialDataPoint>? get netDebt; List<FinancialDataPoint>? get shortTermDebt; List<FinancialDataPoint>? get shortLongTermDebt; List<FinancialDataPoint>? get shortLongTermDebtTotal; List<FinancialDataPoint>? get otherStockholderEquity; List<FinancialDataPoint>? get propertyPlantEquipment; List<FinancialDataPoint>? get totalCurrentAssets; List<FinancialDataPoint>? get longTermInvestments; List<FinancialDataPoint>? get netTangibleAssets; List<FinancialDataPoint>? get shortTermInvestments; List<FinancialDataPoint>? get netReceivables; List<FinancialDataPoint>? get longTermDebt; List<FinancialDataPoint>? get inventory; List<FinancialDataPoint>? get accountsPayable; List<FinancialDataPoint>? get totalPermanentEquity; List<FinancialDataPoint>? get noncontrollingInterestInConsolidatedEntity; List<FinancialDataPoint>? get temporaryEquityRedeemableNoncontrollingInterests; List<FinancialDataPoint>? get accumulatedOtherComprehensiveIncome; List<FinancialDataPoint>? get additionalPaidInCapital; List<FinancialDataPoint>? get commonStockTotalEquity; List<FinancialDataPoint>? get preferredStockTotalEquity; List<FinancialDataPoint>? get retainedEarningsTotalEquity; List<FinancialDataPoint>? get treasuryStock; List<FinancialDataPoint>? get accumulatedAmortization; List<FinancialDataPoint>? get nonCurrrentAssetsOther; List<FinancialDataPoint>? get deferredLongTermAssetCharges; List<FinancialDataPoint>? get nonCurrentAssetsTotal; List<FinancialDataPoint>? get capitalLeaseObligations; List<FinancialDataPoint>? get longTermDebtTotal; List<FinancialDataPoint>? get nonCurrentLiabilitiesOther; List<FinancialDataPoint>? get nonCurrentLiabilitiesTotal; List<FinancialDataPoint>? get negativeGoodwill; List<FinancialDataPoint>? get warrants; List<FinancialDataPoint>? get preferredStockRedeemable; List<FinancialDataPoint>? get capitalSurpluse; List<FinancialDataPoint>? get liabilitiesAndStockholdersEquity; List<FinancialDataPoint>? get cashAndShortTermInvestments; List<FinancialDataPoint>? get propertyPlantAndEquipmentGross; List<FinancialDataPoint>? get propertyPlantAndEquipmentNet; List<FinancialDataPoint>? get accumulatedDepreciation; List<FinancialDataPoint>? get netWorkingCapital; List<FinancialDataPoint>? get netInvestedCapital; List<FinancialDataPoint>? get commonStockSharesOutstanding;// Cash Flow specific fields
 List<FinancialDataPoint>? get investments; List<FinancialDataPoint>? get changeToLiabilities; List<FinancialDataPoint>? get totalCashflowsFromInvestingActivities; List<FinancialDataPoint>? get netBorrowings; List<FinancialDataPoint>? get totalCashFromFinancingActivities; List<FinancialDataPoint>? get changeToOperatingActivities; List<FinancialDataPoint>? get netIncome; List<FinancialDataPoint>? get changeInCash; List<FinancialDataPoint>? get beginPeriodCashFlow; List<FinancialDataPoint>? get endPeriodCashFlow; List<FinancialDataPoint>? get totalCashFromOperatingActivities; List<FinancialDataPoint>? get issuanceOfCapitalStock; List<FinancialDataPoint>? get depreciation; List<FinancialDataPoint>? get otherCashflowsFromInvestingActivities; List<FinancialDataPoint>? get dividendsPaid; List<FinancialDataPoint>? get changeToInventory; List<FinancialDataPoint>? get changeToAccountReceivables; List<FinancialDataPoint>? get salePurchaseOfStock; List<FinancialDataPoint>? get otherCashflowsFromFinancingActivities; List<FinancialDataPoint>? get changeToNetincome; List<FinancialDataPoint>? get capitalExpenditures; List<FinancialDataPoint>? get changeReceivables; List<FinancialDataPoint>? get cashFlowsOtherOperating; List<FinancialDataPoint>? get exchangeRateChanges; List<FinancialDataPoint>? get cashAndCashEquivalentsChanges; List<FinancialDataPoint>? get changeInWorkingCapital; List<FinancialDataPoint>? get stockBasedCompensation; List<FinancialDataPoint>? get otherNonCashItems; List<FinancialDataPoint>? get freeCashFlow;// Income Statement specific fields
 List<FinancialDataPoint>? get researchDevelopment; List<FinancialDataPoint>? get effectOfAccountingCharges; List<FinancialDataPoint>? get incomeBeforeTax; List<FinancialDataPoint>? get minorityInterest; List<FinancialDataPoint>? get sellingGeneralAdministrative; List<FinancialDataPoint>? get sellingAndMarketingExpenses; List<FinancialDataPoint>? get grossProfit; List<FinancialDataPoint>? get reconciledDepreciation; List<FinancialDataPoint>? get ebit; List<FinancialDataPoint>? get ebitda; List<FinancialDataPoint>? get depreciationAndAmortization; List<FinancialDataPoint>? get nonOperatingIncomeNetOther; List<FinancialDataPoint>? get operatingIncome; List<FinancialDataPoint>? get otherOperatingExpenses; List<FinancialDataPoint>? get interestExpense; List<FinancialDataPoint>? get taxProvision; List<FinancialDataPoint>? get interestIncome; List<FinancialDataPoint>? get netInterestIncome; List<FinancialDataPoint>? get extraordinaryItems; List<FinancialDataPoint>? get nonRecurring; List<FinancialDataPoint>? get otherItems; List<FinancialDataPoint>? get incomeTaxExpense; List<FinancialDataPoint>? get totalRevenue; List<FinancialDataPoint>? get totalOperatingExpenses; List<FinancialDataPoint>? get costOfRevenue; List<FinancialDataPoint>? get totalOtherIncomeExpenseNet; List<FinancialDataPoint>? get discontinuedOperations; List<FinancialDataPoint>? get netIncomeFromContinuingOps; List<FinancialDataPoint>? get netIncomeApplicableToCommonShares; List<FinancialDataPoint>? get preferredStockAndOtherAdjustments;// Common fields
 List<FinancialDataPoint>? get type;@JsonKey(name: 'stock_type') List<FinancialDataPoint>? get stockType;
/// Create a copy of FinancialChart
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FinancialChartCopyWith<FinancialChart> get copyWith => _$FinancialChartCopyWithImpl<FinancialChart>(this as FinancialChart, _$identity);

  /// Serializes this FinancialChart to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FinancialChart&&const DeepCollectionEquality().equals(other.totalAssets, totalAssets)&&const DeepCollectionEquality().equals(other.intangibleAssets, intangibleAssets)&&const DeepCollectionEquality().equals(other.earningAssets, earningAssets)&&const DeepCollectionEquality().equals(other.otherCurrentAssets, otherCurrentAssets)&&const DeepCollectionEquality().equals(other.totalLiab, totalLiab)&&const DeepCollectionEquality().equals(other.totalStockholderEquity, totalStockholderEquity)&&const DeepCollectionEquality().equals(other.deferredLongTermLiab, deferredLongTermLiab)&&const DeepCollectionEquality().equals(other.otherCurrentLiab, otherCurrentLiab)&&const DeepCollectionEquality().equals(other.commonStock, commonStock)&&const DeepCollectionEquality().equals(other.capitalStock, capitalStock)&&const DeepCollectionEquality().equals(other.retainedEarnings, retainedEarnings)&&const DeepCollectionEquality().equals(other.otherLiab, otherLiab)&&const DeepCollectionEquality().equals(other.goodWill, goodWill)&&const DeepCollectionEquality().equals(other.otherAssets, otherAssets)&&const DeepCollectionEquality().equals(other.cash, cash)&&const DeepCollectionEquality().equals(other.cashAndEquivalents, cashAndEquivalents)&&const DeepCollectionEquality().equals(other.totalCurrentLiabilities, totalCurrentLiabilities)&&const DeepCollectionEquality().equals(other.currentDeferredRevenue, currentDeferredRevenue)&&const DeepCollectionEquality().equals(other.netDebt, netDebt)&&const DeepCollectionEquality().equals(other.shortTermDebt, shortTermDebt)&&const DeepCollectionEquality().equals(other.shortLongTermDebt, shortLongTermDebt)&&const DeepCollectionEquality().equals(other.shortLongTermDebtTotal, shortLongTermDebtTotal)&&const DeepCollectionEquality().equals(other.otherStockholderEquity, otherStockholderEquity)&&const DeepCollectionEquality().equals(other.propertyPlantEquipment, propertyPlantEquipment)&&const DeepCollectionEquality().equals(other.totalCurrentAssets, totalCurrentAssets)&&const DeepCollectionEquality().equals(other.longTermInvestments, longTermInvestments)&&const DeepCollectionEquality().equals(other.netTangibleAssets, netTangibleAssets)&&const DeepCollectionEquality().equals(other.shortTermInvestments, shortTermInvestments)&&const DeepCollectionEquality().equals(other.netReceivables, netReceivables)&&const DeepCollectionEquality().equals(other.longTermDebt, longTermDebt)&&const DeepCollectionEquality().equals(other.inventory, inventory)&&const DeepCollectionEquality().equals(other.accountsPayable, accountsPayable)&&const DeepCollectionEquality().equals(other.totalPermanentEquity, totalPermanentEquity)&&const DeepCollectionEquality().equals(other.noncontrollingInterestInConsolidatedEntity, noncontrollingInterestInConsolidatedEntity)&&const DeepCollectionEquality().equals(other.temporaryEquityRedeemableNoncontrollingInterests, temporaryEquityRedeemableNoncontrollingInterests)&&const DeepCollectionEquality().equals(other.accumulatedOtherComprehensiveIncome, accumulatedOtherComprehensiveIncome)&&const DeepCollectionEquality().equals(other.additionalPaidInCapital, additionalPaidInCapital)&&const DeepCollectionEquality().equals(other.commonStockTotalEquity, commonStockTotalEquity)&&const DeepCollectionEquality().equals(other.preferredStockTotalEquity, preferredStockTotalEquity)&&const DeepCollectionEquality().equals(other.retainedEarningsTotalEquity, retainedEarningsTotalEquity)&&const DeepCollectionEquality().equals(other.treasuryStock, treasuryStock)&&const DeepCollectionEquality().equals(other.accumulatedAmortization, accumulatedAmortization)&&const DeepCollectionEquality().equals(other.nonCurrrentAssetsOther, nonCurrrentAssetsOther)&&const DeepCollectionEquality().equals(other.deferredLongTermAssetCharges, deferredLongTermAssetCharges)&&const DeepCollectionEquality().equals(other.nonCurrentAssetsTotal, nonCurrentAssetsTotal)&&const DeepCollectionEquality().equals(other.capitalLeaseObligations, capitalLeaseObligations)&&const DeepCollectionEquality().equals(other.longTermDebtTotal, longTermDebtTotal)&&const DeepCollectionEquality().equals(other.nonCurrentLiabilitiesOther, nonCurrentLiabilitiesOther)&&const DeepCollectionEquality().equals(other.nonCurrentLiabilitiesTotal, nonCurrentLiabilitiesTotal)&&const DeepCollectionEquality().equals(other.negativeGoodwill, negativeGoodwill)&&const DeepCollectionEquality().equals(other.warrants, warrants)&&const DeepCollectionEquality().equals(other.preferredStockRedeemable, preferredStockRedeemable)&&const DeepCollectionEquality().equals(other.capitalSurpluse, capitalSurpluse)&&const DeepCollectionEquality().equals(other.liabilitiesAndStockholdersEquity, liabilitiesAndStockholdersEquity)&&const DeepCollectionEquality().equals(other.cashAndShortTermInvestments, cashAndShortTermInvestments)&&const DeepCollectionEquality().equals(other.propertyPlantAndEquipmentGross, propertyPlantAndEquipmentGross)&&const DeepCollectionEquality().equals(other.propertyPlantAndEquipmentNet, propertyPlantAndEquipmentNet)&&const DeepCollectionEquality().equals(other.accumulatedDepreciation, accumulatedDepreciation)&&const DeepCollectionEquality().equals(other.netWorkingCapital, netWorkingCapital)&&const DeepCollectionEquality().equals(other.netInvestedCapital, netInvestedCapital)&&const DeepCollectionEquality().equals(other.commonStockSharesOutstanding, commonStockSharesOutstanding)&&const DeepCollectionEquality().equals(other.investments, investments)&&const DeepCollectionEquality().equals(other.changeToLiabilities, changeToLiabilities)&&const DeepCollectionEquality().equals(other.totalCashflowsFromInvestingActivities, totalCashflowsFromInvestingActivities)&&const DeepCollectionEquality().equals(other.netBorrowings, netBorrowings)&&const DeepCollectionEquality().equals(other.totalCashFromFinancingActivities, totalCashFromFinancingActivities)&&const DeepCollectionEquality().equals(other.changeToOperatingActivities, changeToOperatingActivities)&&const DeepCollectionEquality().equals(other.netIncome, netIncome)&&const DeepCollectionEquality().equals(other.changeInCash, changeInCash)&&const DeepCollectionEquality().equals(other.beginPeriodCashFlow, beginPeriodCashFlow)&&const DeepCollectionEquality().equals(other.endPeriodCashFlow, endPeriodCashFlow)&&const DeepCollectionEquality().equals(other.totalCashFromOperatingActivities, totalCashFromOperatingActivities)&&const DeepCollectionEquality().equals(other.issuanceOfCapitalStock, issuanceOfCapitalStock)&&const DeepCollectionEquality().equals(other.depreciation, depreciation)&&const DeepCollectionEquality().equals(other.otherCashflowsFromInvestingActivities, otherCashflowsFromInvestingActivities)&&const DeepCollectionEquality().equals(other.dividendsPaid, dividendsPaid)&&const DeepCollectionEquality().equals(other.changeToInventory, changeToInventory)&&const DeepCollectionEquality().equals(other.changeToAccountReceivables, changeToAccountReceivables)&&const DeepCollectionEquality().equals(other.salePurchaseOfStock, salePurchaseOfStock)&&const DeepCollectionEquality().equals(other.otherCashflowsFromFinancingActivities, otherCashflowsFromFinancingActivities)&&const DeepCollectionEquality().equals(other.changeToNetincome, changeToNetincome)&&const DeepCollectionEquality().equals(other.capitalExpenditures, capitalExpenditures)&&const DeepCollectionEquality().equals(other.changeReceivables, changeReceivables)&&const DeepCollectionEquality().equals(other.cashFlowsOtherOperating, cashFlowsOtherOperating)&&const DeepCollectionEquality().equals(other.exchangeRateChanges, exchangeRateChanges)&&const DeepCollectionEquality().equals(other.cashAndCashEquivalentsChanges, cashAndCashEquivalentsChanges)&&const DeepCollectionEquality().equals(other.changeInWorkingCapital, changeInWorkingCapital)&&const DeepCollectionEquality().equals(other.stockBasedCompensation, stockBasedCompensation)&&const DeepCollectionEquality().equals(other.otherNonCashItems, otherNonCashItems)&&const DeepCollectionEquality().equals(other.freeCashFlow, freeCashFlow)&&const DeepCollectionEquality().equals(other.researchDevelopment, researchDevelopment)&&const DeepCollectionEquality().equals(other.effectOfAccountingCharges, effectOfAccountingCharges)&&const DeepCollectionEquality().equals(other.incomeBeforeTax, incomeBeforeTax)&&const DeepCollectionEquality().equals(other.minorityInterest, minorityInterest)&&const DeepCollectionEquality().equals(other.sellingGeneralAdministrative, sellingGeneralAdministrative)&&const DeepCollectionEquality().equals(other.sellingAndMarketingExpenses, sellingAndMarketingExpenses)&&const DeepCollectionEquality().equals(other.grossProfit, grossProfit)&&const DeepCollectionEquality().equals(other.reconciledDepreciation, reconciledDepreciation)&&const DeepCollectionEquality().equals(other.ebit, ebit)&&const DeepCollectionEquality().equals(other.ebitda, ebitda)&&const DeepCollectionEquality().equals(other.depreciationAndAmortization, depreciationAndAmortization)&&const DeepCollectionEquality().equals(other.nonOperatingIncomeNetOther, nonOperatingIncomeNetOther)&&const DeepCollectionEquality().equals(other.operatingIncome, operatingIncome)&&const DeepCollectionEquality().equals(other.otherOperatingExpenses, otherOperatingExpenses)&&const DeepCollectionEquality().equals(other.interestExpense, interestExpense)&&const DeepCollectionEquality().equals(other.taxProvision, taxProvision)&&const DeepCollectionEquality().equals(other.interestIncome, interestIncome)&&const DeepCollectionEquality().equals(other.netInterestIncome, netInterestIncome)&&const DeepCollectionEquality().equals(other.extraordinaryItems, extraordinaryItems)&&const DeepCollectionEquality().equals(other.nonRecurring, nonRecurring)&&const DeepCollectionEquality().equals(other.otherItems, otherItems)&&const DeepCollectionEquality().equals(other.incomeTaxExpense, incomeTaxExpense)&&const DeepCollectionEquality().equals(other.totalRevenue, totalRevenue)&&const DeepCollectionEquality().equals(other.totalOperatingExpenses, totalOperatingExpenses)&&const DeepCollectionEquality().equals(other.costOfRevenue, costOfRevenue)&&const DeepCollectionEquality().equals(other.totalOtherIncomeExpenseNet, totalOtherIncomeExpenseNet)&&const DeepCollectionEquality().equals(other.discontinuedOperations, discontinuedOperations)&&const DeepCollectionEquality().equals(other.netIncomeFromContinuingOps, netIncomeFromContinuingOps)&&const DeepCollectionEquality().equals(other.netIncomeApplicableToCommonShares, netIncomeApplicableToCommonShares)&&const DeepCollectionEquality().equals(other.preferredStockAndOtherAdjustments, preferredStockAndOtherAdjustments)&&const DeepCollectionEquality().equals(other.type, type)&&const DeepCollectionEquality().equals(other.stockType, stockType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,const DeepCollectionEquality().hash(totalAssets),const DeepCollectionEquality().hash(intangibleAssets),const DeepCollectionEquality().hash(earningAssets),const DeepCollectionEquality().hash(otherCurrentAssets),const DeepCollectionEquality().hash(totalLiab),const DeepCollectionEquality().hash(totalStockholderEquity),const DeepCollectionEquality().hash(deferredLongTermLiab),const DeepCollectionEquality().hash(otherCurrentLiab),const DeepCollectionEquality().hash(commonStock),const DeepCollectionEquality().hash(capitalStock),const DeepCollectionEquality().hash(retainedEarnings),const DeepCollectionEquality().hash(otherLiab),const DeepCollectionEquality().hash(goodWill),const DeepCollectionEquality().hash(otherAssets),const DeepCollectionEquality().hash(cash),const DeepCollectionEquality().hash(cashAndEquivalents),const DeepCollectionEquality().hash(totalCurrentLiabilities),const DeepCollectionEquality().hash(currentDeferredRevenue),const DeepCollectionEquality().hash(netDebt),const DeepCollectionEquality().hash(shortTermDebt),const DeepCollectionEquality().hash(shortLongTermDebt),const DeepCollectionEquality().hash(shortLongTermDebtTotal),const DeepCollectionEquality().hash(otherStockholderEquity),const DeepCollectionEquality().hash(propertyPlantEquipment),const DeepCollectionEquality().hash(totalCurrentAssets),const DeepCollectionEquality().hash(longTermInvestments),const DeepCollectionEquality().hash(netTangibleAssets),const DeepCollectionEquality().hash(shortTermInvestments),const DeepCollectionEquality().hash(netReceivables),const DeepCollectionEquality().hash(longTermDebt),const DeepCollectionEquality().hash(inventory),const DeepCollectionEquality().hash(accountsPayable),const DeepCollectionEquality().hash(totalPermanentEquity),const DeepCollectionEquality().hash(noncontrollingInterestInConsolidatedEntity),const DeepCollectionEquality().hash(temporaryEquityRedeemableNoncontrollingInterests),const DeepCollectionEquality().hash(accumulatedOtherComprehensiveIncome),const DeepCollectionEquality().hash(additionalPaidInCapital),const DeepCollectionEquality().hash(commonStockTotalEquity),const DeepCollectionEquality().hash(preferredStockTotalEquity),const DeepCollectionEquality().hash(retainedEarningsTotalEquity),const DeepCollectionEquality().hash(treasuryStock),const DeepCollectionEquality().hash(accumulatedAmortization),const DeepCollectionEquality().hash(nonCurrrentAssetsOther),const DeepCollectionEquality().hash(deferredLongTermAssetCharges),const DeepCollectionEquality().hash(nonCurrentAssetsTotal),const DeepCollectionEquality().hash(capitalLeaseObligations),const DeepCollectionEquality().hash(longTermDebtTotal),const DeepCollectionEquality().hash(nonCurrentLiabilitiesOther),const DeepCollectionEquality().hash(nonCurrentLiabilitiesTotal),const DeepCollectionEquality().hash(negativeGoodwill),const DeepCollectionEquality().hash(warrants),const DeepCollectionEquality().hash(preferredStockRedeemable),const DeepCollectionEquality().hash(capitalSurpluse),const DeepCollectionEquality().hash(liabilitiesAndStockholdersEquity),const DeepCollectionEquality().hash(cashAndShortTermInvestments),const DeepCollectionEquality().hash(propertyPlantAndEquipmentGross),const DeepCollectionEquality().hash(propertyPlantAndEquipmentNet),const DeepCollectionEquality().hash(accumulatedDepreciation),const DeepCollectionEquality().hash(netWorkingCapital),const DeepCollectionEquality().hash(netInvestedCapital),const DeepCollectionEquality().hash(commonStockSharesOutstanding),const DeepCollectionEquality().hash(investments),const DeepCollectionEquality().hash(changeToLiabilities),const DeepCollectionEquality().hash(totalCashflowsFromInvestingActivities),const DeepCollectionEquality().hash(netBorrowings),const DeepCollectionEquality().hash(totalCashFromFinancingActivities),const DeepCollectionEquality().hash(changeToOperatingActivities),const DeepCollectionEquality().hash(netIncome),const DeepCollectionEquality().hash(changeInCash),const DeepCollectionEquality().hash(beginPeriodCashFlow),const DeepCollectionEquality().hash(endPeriodCashFlow),const DeepCollectionEquality().hash(totalCashFromOperatingActivities),const DeepCollectionEquality().hash(issuanceOfCapitalStock),const DeepCollectionEquality().hash(depreciation),const DeepCollectionEquality().hash(otherCashflowsFromInvestingActivities),const DeepCollectionEquality().hash(dividendsPaid),const DeepCollectionEquality().hash(changeToInventory),const DeepCollectionEquality().hash(changeToAccountReceivables),const DeepCollectionEquality().hash(salePurchaseOfStock),const DeepCollectionEquality().hash(otherCashflowsFromFinancingActivities),const DeepCollectionEquality().hash(changeToNetincome),const DeepCollectionEquality().hash(capitalExpenditures),const DeepCollectionEquality().hash(changeReceivables),const DeepCollectionEquality().hash(cashFlowsOtherOperating),const DeepCollectionEquality().hash(exchangeRateChanges),const DeepCollectionEquality().hash(cashAndCashEquivalentsChanges),const DeepCollectionEquality().hash(changeInWorkingCapital),const DeepCollectionEquality().hash(stockBasedCompensation),const DeepCollectionEquality().hash(otherNonCashItems),const DeepCollectionEquality().hash(freeCashFlow),const DeepCollectionEquality().hash(researchDevelopment),const DeepCollectionEquality().hash(effectOfAccountingCharges),const DeepCollectionEquality().hash(incomeBeforeTax),const DeepCollectionEquality().hash(minorityInterest),const DeepCollectionEquality().hash(sellingGeneralAdministrative),const DeepCollectionEquality().hash(sellingAndMarketingExpenses),const DeepCollectionEquality().hash(grossProfit),const DeepCollectionEquality().hash(reconciledDepreciation),const DeepCollectionEquality().hash(ebit),const DeepCollectionEquality().hash(ebitda),const DeepCollectionEquality().hash(depreciationAndAmortization),const DeepCollectionEquality().hash(nonOperatingIncomeNetOther),const DeepCollectionEquality().hash(operatingIncome),const DeepCollectionEquality().hash(otherOperatingExpenses),const DeepCollectionEquality().hash(interestExpense),const DeepCollectionEquality().hash(taxProvision),const DeepCollectionEquality().hash(interestIncome),const DeepCollectionEquality().hash(netInterestIncome),const DeepCollectionEquality().hash(extraordinaryItems),const DeepCollectionEquality().hash(nonRecurring),const DeepCollectionEquality().hash(otherItems),const DeepCollectionEquality().hash(incomeTaxExpense),const DeepCollectionEquality().hash(totalRevenue),const DeepCollectionEquality().hash(totalOperatingExpenses),const DeepCollectionEquality().hash(costOfRevenue),const DeepCollectionEquality().hash(totalOtherIncomeExpenseNet),const DeepCollectionEquality().hash(discontinuedOperations),const DeepCollectionEquality().hash(netIncomeFromContinuingOps),const DeepCollectionEquality().hash(netIncomeApplicableToCommonShares),const DeepCollectionEquality().hash(preferredStockAndOtherAdjustments),const DeepCollectionEquality().hash(type),const DeepCollectionEquality().hash(stockType)]);

@override
String toString() {
  return 'FinancialChart(totalAssets: $totalAssets, intangibleAssets: $intangibleAssets, earningAssets: $earningAssets, otherCurrentAssets: $otherCurrentAssets, totalLiab: $totalLiab, totalStockholderEquity: $totalStockholderEquity, deferredLongTermLiab: $deferredLongTermLiab, otherCurrentLiab: $otherCurrentLiab, commonStock: $commonStock, capitalStock: $capitalStock, retainedEarnings: $retainedEarnings, otherLiab: $otherLiab, goodWill: $goodWill, otherAssets: $otherAssets, cash: $cash, cashAndEquivalents: $cashAndEquivalents, totalCurrentLiabilities: $totalCurrentLiabilities, currentDeferredRevenue: $currentDeferredRevenue, netDebt: $netDebt, shortTermDebt: $shortTermDebt, shortLongTermDebt: $shortLongTermDebt, shortLongTermDebtTotal: $shortLongTermDebtTotal, otherStockholderEquity: $otherStockholderEquity, propertyPlantEquipment: $propertyPlantEquipment, totalCurrentAssets: $totalCurrentAssets, longTermInvestments: $longTermInvestments, netTangibleAssets: $netTangibleAssets, shortTermInvestments: $shortTermInvestments, netReceivables: $netReceivables, longTermDebt: $longTermDebt, inventory: $inventory, accountsPayable: $accountsPayable, totalPermanentEquity: $totalPermanentEquity, noncontrollingInterestInConsolidatedEntity: $noncontrollingInterestInConsolidatedEntity, temporaryEquityRedeemableNoncontrollingInterests: $temporaryEquityRedeemableNoncontrollingInterests, accumulatedOtherComprehensiveIncome: $accumulatedOtherComprehensiveIncome, additionalPaidInCapital: $additionalPaidInCapital, commonStockTotalEquity: $commonStockTotalEquity, preferredStockTotalEquity: $preferredStockTotalEquity, retainedEarningsTotalEquity: $retainedEarningsTotalEquity, treasuryStock: $treasuryStock, accumulatedAmortization: $accumulatedAmortization, nonCurrrentAssetsOther: $nonCurrrentAssetsOther, deferredLongTermAssetCharges: $deferredLongTermAssetCharges, nonCurrentAssetsTotal: $nonCurrentAssetsTotal, capitalLeaseObligations: $capitalLeaseObligations, longTermDebtTotal: $longTermDebtTotal, nonCurrentLiabilitiesOther: $nonCurrentLiabilitiesOther, nonCurrentLiabilitiesTotal: $nonCurrentLiabilitiesTotal, negativeGoodwill: $negativeGoodwill, warrants: $warrants, preferredStockRedeemable: $preferredStockRedeemable, capitalSurpluse: $capitalSurpluse, liabilitiesAndStockholdersEquity: $liabilitiesAndStockholdersEquity, cashAndShortTermInvestments: $cashAndShortTermInvestments, propertyPlantAndEquipmentGross: $propertyPlantAndEquipmentGross, propertyPlantAndEquipmentNet: $propertyPlantAndEquipmentNet, accumulatedDepreciation: $accumulatedDepreciation, netWorkingCapital: $netWorkingCapital, netInvestedCapital: $netInvestedCapital, commonStockSharesOutstanding: $commonStockSharesOutstanding, investments: $investments, changeToLiabilities: $changeToLiabilities, totalCashflowsFromInvestingActivities: $totalCashflowsFromInvestingActivities, netBorrowings: $netBorrowings, totalCashFromFinancingActivities: $totalCashFromFinancingActivities, changeToOperatingActivities: $changeToOperatingActivities, netIncome: $netIncome, changeInCash: $changeInCash, beginPeriodCashFlow: $beginPeriodCashFlow, endPeriodCashFlow: $endPeriodCashFlow, totalCashFromOperatingActivities: $totalCashFromOperatingActivities, issuanceOfCapitalStock: $issuanceOfCapitalStock, depreciation: $depreciation, otherCashflowsFromInvestingActivities: $otherCashflowsFromInvestingActivities, dividendsPaid: $dividendsPaid, changeToInventory: $changeToInventory, changeToAccountReceivables: $changeToAccountReceivables, salePurchaseOfStock: $salePurchaseOfStock, otherCashflowsFromFinancingActivities: $otherCashflowsFromFinancingActivities, changeToNetincome: $changeToNetincome, capitalExpenditures: $capitalExpenditures, changeReceivables: $changeReceivables, cashFlowsOtherOperating: $cashFlowsOtherOperating, exchangeRateChanges: $exchangeRateChanges, cashAndCashEquivalentsChanges: $cashAndCashEquivalentsChanges, changeInWorkingCapital: $changeInWorkingCapital, stockBasedCompensation: $stockBasedCompensation, otherNonCashItems: $otherNonCashItems, freeCashFlow: $freeCashFlow, researchDevelopment: $researchDevelopment, effectOfAccountingCharges: $effectOfAccountingCharges, incomeBeforeTax: $incomeBeforeTax, minorityInterest: $minorityInterest, sellingGeneralAdministrative: $sellingGeneralAdministrative, sellingAndMarketingExpenses: $sellingAndMarketingExpenses, grossProfit: $grossProfit, reconciledDepreciation: $reconciledDepreciation, ebit: $ebit, ebitda: $ebitda, depreciationAndAmortization: $depreciationAndAmortization, nonOperatingIncomeNetOther: $nonOperatingIncomeNetOther, operatingIncome: $operatingIncome, otherOperatingExpenses: $otherOperatingExpenses, interestExpense: $interestExpense, taxProvision: $taxProvision, interestIncome: $interestIncome, netInterestIncome: $netInterestIncome, extraordinaryItems: $extraordinaryItems, nonRecurring: $nonRecurring, otherItems: $otherItems, incomeTaxExpense: $incomeTaxExpense, totalRevenue: $totalRevenue, totalOperatingExpenses: $totalOperatingExpenses, costOfRevenue: $costOfRevenue, totalOtherIncomeExpenseNet: $totalOtherIncomeExpenseNet, discontinuedOperations: $discontinuedOperations, netIncomeFromContinuingOps: $netIncomeFromContinuingOps, netIncomeApplicableToCommonShares: $netIncomeApplicableToCommonShares, preferredStockAndOtherAdjustments: $preferredStockAndOtherAdjustments, type: $type, stockType: $stockType)';
}


}

/// @nodoc
abstract mixin class $FinancialChartCopyWith<$Res>  {
  factory $FinancialChartCopyWith(FinancialChart value, $Res Function(FinancialChart) _then) = _$FinancialChartCopyWithImpl;
@useResult
$Res call({
 List<FinancialDataPoint>? totalAssets, List<FinancialDataPoint>? intangibleAssets, List<FinancialDataPoint>? earningAssets, List<FinancialDataPoint>? otherCurrentAssets, List<FinancialDataPoint>? totalLiab, List<FinancialDataPoint>? totalStockholderEquity, List<FinancialDataPoint>? deferredLongTermLiab, List<FinancialDataPoint>? otherCurrentLiab, List<FinancialDataPoint>? commonStock, List<FinancialDataPoint>? capitalStock, List<FinancialDataPoint>? retainedEarnings, List<FinancialDataPoint>? otherLiab, List<FinancialDataPoint>? goodWill, List<FinancialDataPoint>? otherAssets, List<FinancialDataPoint>? cash, List<FinancialDataPoint>? cashAndEquivalents, List<FinancialDataPoint>? totalCurrentLiabilities, List<FinancialDataPoint>? currentDeferredRevenue, List<FinancialDataPoint>? netDebt, List<FinancialDataPoint>? shortTermDebt, List<FinancialDataPoint>? shortLongTermDebt, List<FinancialDataPoint>? shortLongTermDebtTotal, List<FinancialDataPoint>? otherStockholderEquity, List<FinancialDataPoint>? propertyPlantEquipment, List<FinancialDataPoint>? totalCurrentAssets, List<FinancialDataPoint>? longTermInvestments, List<FinancialDataPoint>? netTangibleAssets, List<FinancialDataPoint>? shortTermInvestments, List<FinancialDataPoint>? netReceivables, List<FinancialDataPoint>? longTermDebt, List<FinancialDataPoint>? inventory, List<FinancialDataPoint>? accountsPayable, List<FinancialDataPoint>? totalPermanentEquity, List<FinancialDataPoint>? noncontrollingInterestInConsolidatedEntity, List<FinancialDataPoint>? temporaryEquityRedeemableNoncontrollingInterests, List<FinancialDataPoint>? accumulatedOtherComprehensiveIncome, List<FinancialDataPoint>? additionalPaidInCapital, List<FinancialDataPoint>? commonStockTotalEquity, List<FinancialDataPoint>? preferredStockTotalEquity, List<FinancialDataPoint>? retainedEarningsTotalEquity, List<FinancialDataPoint>? treasuryStock, List<FinancialDataPoint>? accumulatedAmortization, List<FinancialDataPoint>? nonCurrrentAssetsOther, List<FinancialDataPoint>? deferredLongTermAssetCharges, List<FinancialDataPoint>? nonCurrentAssetsTotal, List<FinancialDataPoint>? capitalLeaseObligations, List<FinancialDataPoint>? longTermDebtTotal, List<FinancialDataPoint>? nonCurrentLiabilitiesOther, List<FinancialDataPoint>? nonCurrentLiabilitiesTotal, List<FinancialDataPoint>? negativeGoodwill, List<FinancialDataPoint>? warrants, List<FinancialDataPoint>? preferredStockRedeemable, List<FinancialDataPoint>? capitalSurpluse, List<FinancialDataPoint>? liabilitiesAndStockholdersEquity, List<FinancialDataPoint>? cashAndShortTermInvestments, List<FinancialDataPoint>? propertyPlantAndEquipmentGross, List<FinancialDataPoint>? propertyPlantAndEquipmentNet, List<FinancialDataPoint>? accumulatedDepreciation, List<FinancialDataPoint>? netWorkingCapital, List<FinancialDataPoint>? netInvestedCapital, List<FinancialDataPoint>? commonStockSharesOutstanding, List<FinancialDataPoint>? investments, List<FinancialDataPoint>? changeToLiabilities, List<FinancialDataPoint>? totalCashflowsFromInvestingActivities, List<FinancialDataPoint>? netBorrowings, List<FinancialDataPoint>? totalCashFromFinancingActivities, List<FinancialDataPoint>? changeToOperatingActivities, List<FinancialDataPoint>? netIncome, List<FinancialDataPoint>? changeInCash, List<FinancialDataPoint>? beginPeriodCashFlow, List<FinancialDataPoint>? endPeriodCashFlow, List<FinancialDataPoint>? totalCashFromOperatingActivities, List<FinancialDataPoint>? issuanceOfCapitalStock, List<FinancialDataPoint>? depreciation, List<FinancialDataPoint>? otherCashflowsFromInvestingActivities, List<FinancialDataPoint>? dividendsPaid, List<FinancialDataPoint>? changeToInventory, List<FinancialDataPoint>? changeToAccountReceivables, List<FinancialDataPoint>? salePurchaseOfStock, List<FinancialDataPoint>? otherCashflowsFromFinancingActivities, List<FinancialDataPoint>? changeToNetincome, List<FinancialDataPoint>? capitalExpenditures, List<FinancialDataPoint>? changeReceivables, List<FinancialDataPoint>? cashFlowsOtherOperating, List<FinancialDataPoint>? exchangeRateChanges, List<FinancialDataPoint>? cashAndCashEquivalentsChanges, List<FinancialDataPoint>? changeInWorkingCapital, List<FinancialDataPoint>? stockBasedCompensation, List<FinancialDataPoint>? otherNonCashItems, List<FinancialDataPoint>? freeCashFlow, List<FinancialDataPoint>? researchDevelopment, List<FinancialDataPoint>? effectOfAccountingCharges, List<FinancialDataPoint>? incomeBeforeTax, List<FinancialDataPoint>? minorityInterest, List<FinancialDataPoint>? sellingGeneralAdministrative, List<FinancialDataPoint>? sellingAndMarketingExpenses, List<FinancialDataPoint>? grossProfit, List<FinancialDataPoint>? reconciledDepreciation, List<FinancialDataPoint>? ebit, List<FinancialDataPoint>? ebitda, List<FinancialDataPoint>? depreciationAndAmortization, List<FinancialDataPoint>? nonOperatingIncomeNetOther, List<FinancialDataPoint>? operatingIncome, List<FinancialDataPoint>? otherOperatingExpenses, List<FinancialDataPoint>? interestExpense, List<FinancialDataPoint>? taxProvision, List<FinancialDataPoint>? interestIncome, List<FinancialDataPoint>? netInterestIncome, List<FinancialDataPoint>? extraordinaryItems, List<FinancialDataPoint>? nonRecurring, List<FinancialDataPoint>? otherItems, List<FinancialDataPoint>? incomeTaxExpense, List<FinancialDataPoint>? totalRevenue, List<FinancialDataPoint>? totalOperatingExpenses, List<FinancialDataPoint>? costOfRevenue, List<FinancialDataPoint>? totalOtherIncomeExpenseNet, List<FinancialDataPoint>? discontinuedOperations, List<FinancialDataPoint>? netIncomeFromContinuingOps, List<FinancialDataPoint>? netIncomeApplicableToCommonShares, List<FinancialDataPoint>? preferredStockAndOtherAdjustments, List<FinancialDataPoint>? type,@JsonKey(name: 'stock_type') List<FinancialDataPoint>? stockType
});




}
/// @nodoc
class _$FinancialChartCopyWithImpl<$Res>
    implements $FinancialChartCopyWith<$Res> {
  _$FinancialChartCopyWithImpl(this._self, this._then);

  final FinancialChart _self;
  final $Res Function(FinancialChart) _then;

/// Create a copy of FinancialChart
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? totalAssets = freezed,Object? intangibleAssets = freezed,Object? earningAssets = freezed,Object? otherCurrentAssets = freezed,Object? totalLiab = freezed,Object? totalStockholderEquity = freezed,Object? deferredLongTermLiab = freezed,Object? otherCurrentLiab = freezed,Object? commonStock = freezed,Object? capitalStock = freezed,Object? retainedEarnings = freezed,Object? otherLiab = freezed,Object? goodWill = freezed,Object? otherAssets = freezed,Object? cash = freezed,Object? cashAndEquivalents = freezed,Object? totalCurrentLiabilities = freezed,Object? currentDeferredRevenue = freezed,Object? netDebt = freezed,Object? shortTermDebt = freezed,Object? shortLongTermDebt = freezed,Object? shortLongTermDebtTotal = freezed,Object? otherStockholderEquity = freezed,Object? propertyPlantEquipment = freezed,Object? totalCurrentAssets = freezed,Object? longTermInvestments = freezed,Object? netTangibleAssets = freezed,Object? shortTermInvestments = freezed,Object? netReceivables = freezed,Object? longTermDebt = freezed,Object? inventory = freezed,Object? accountsPayable = freezed,Object? totalPermanentEquity = freezed,Object? noncontrollingInterestInConsolidatedEntity = freezed,Object? temporaryEquityRedeemableNoncontrollingInterests = freezed,Object? accumulatedOtherComprehensiveIncome = freezed,Object? additionalPaidInCapital = freezed,Object? commonStockTotalEquity = freezed,Object? preferredStockTotalEquity = freezed,Object? retainedEarningsTotalEquity = freezed,Object? treasuryStock = freezed,Object? accumulatedAmortization = freezed,Object? nonCurrrentAssetsOther = freezed,Object? deferredLongTermAssetCharges = freezed,Object? nonCurrentAssetsTotal = freezed,Object? capitalLeaseObligations = freezed,Object? longTermDebtTotal = freezed,Object? nonCurrentLiabilitiesOther = freezed,Object? nonCurrentLiabilitiesTotal = freezed,Object? negativeGoodwill = freezed,Object? warrants = freezed,Object? preferredStockRedeemable = freezed,Object? capitalSurpluse = freezed,Object? liabilitiesAndStockholdersEquity = freezed,Object? cashAndShortTermInvestments = freezed,Object? propertyPlantAndEquipmentGross = freezed,Object? propertyPlantAndEquipmentNet = freezed,Object? accumulatedDepreciation = freezed,Object? netWorkingCapital = freezed,Object? netInvestedCapital = freezed,Object? commonStockSharesOutstanding = freezed,Object? investments = freezed,Object? changeToLiabilities = freezed,Object? totalCashflowsFromInvestingActivities = freezed,Object? netBorrowings = freezed,Object? totalCashFromFinancingActivities = freezed,Object? changeToOperatingActivities = freezed,Object? netIncome = freezed,Object? changeInCash = freezed,Object? beginPeriodCashFlow = freezed,Object? endPeriodCashFlow = freezed,Object? totalCashFromOperatingActivities = freezed,Object? issuanceOfCapitalStock = freezed,Object? depreciation = freezed,Object? otherCashflowsFromInvestingActivities = freezed,Object? dividendsPaid = freezed,Object? changeToInventory = freezed,Object? changeToAccountReceivables = freezed,Object? salePurchaseOfStock = freezed,Object? otherCashflowsFromFinancingActivities = freezed,Object? changeToNetincome = freezed,Object? capitalExpenditures = freezed,Object? changeReceivables = freezed,Object? cashFlowsOtherOperating = freezed,Object? exchangeRateChanges = freezed,Object? cashAndCashEquivalentsChanges = freezed,Object? changeInWorkingCapital = freezed,Object? stockBasedCompensation = freezed,Object? otherNonCashItems = freezed,Object? freeCashFlow = freezed,Object? researchDevelopment = freezed,Object? effectOfAccountingCharges = freezed,Object? incomeBeforeTax = freezed,Object? minorityInterest = freezed,Object? sellingGeneralAdministrative = freezed,Object? sellingAndMarketingExpenses = freezed,Object? grossProfit = freezed,Object? reconciledDepreciation = freezed,Object? ebit = freezed,Object? ebitda = freezed,Object? depreciationAndAmortization = freezed,Object? nonOperatingIncomeNetOther = freezed,Object? operatingIncome = freezed,Object? otherOperatingExpenses = freezed,Object? interestExpense = freezed,Object? taxProvision = freezed,Object? interestIncome = freezed,Object? netInterestIncome = freezed,Object? extraordinaryItems = freezed,Object? nonRecurring = freezed,Object? otherItems = freezed,Object? incomeTaxExpense = freezed,Object? totalRevenue = freezed,Object? totalOperatingExpenses = freezed,Object? costOfRevenue = freezed,Object? totalOtherIncomeExpenseNet = freezed,Object? discontinuedOperations = freezed,Object? netIncomeFromContinuingOps = freezed,Object? netIncomeApplicableToCommonShares = freezed,Object? preferredStockAndOtherAdjustments = freezed,Object? type = freezed,Object? stockType = freezed,}) {
  return _then(_self.copyWith(
totalAssets: freezed == totalAssets ? _self.totalAssets : totalAssets // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,intangibleAssets: freezed == intangibleAssets ? _self.intangibleAssets : intangibleAssets // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,earningAssets: freezed == earningAssets ? _self.earningAssets : earningAssets // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,otherCurrentAssets: freezed == otherCurrentAssets ? _self.otherCurrentAssets : otherCurrentAssets // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,totalLiab: freezed == totalLiab ? _self.totalLiab : totalLiab // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,totalStockholderEquity: freezed == totalStockholderEquity ? _self.totalStockholderEquity : totalStockholderEquity // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,deferredLongTermLiab: freezed == deferredLongTermLiab ? _self.deferredLongTermLiab : deferredLongTermLiab // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,otherCurrentLiab: freezed == otherCurrentLiab ? _self.otherCurrentLiab : otherCurrentLiab // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,commonStock: freezed == commonStock ? _self.commonStock : commonStock // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,capitalStock: freezed == capitalStock ? _self.capitalStock : capitalStock // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,retainedEarnings: freezed == retainedEarnings ? _self.retainedEarnings : retainedEarnings // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,otherLiab: freezed == otherLiab ? _self.otherLiab : otherLiab // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,goodWill: freezed == goodWill ? _self.goodWill : goodWill // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,otherAssets: freezed == otherAssets ? _self.otherAssets : otherAssets // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,cash: freezed == cash ? _self.cash : cash // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,cashAndEquivalents: freezed == cashAndEquivalents ? _self.cashAndEquivalents : cashAndEquivalents // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,totalCurrentLiabilities: freezed == totalCurrentLiabilities ? _self.totalCurrentLiabilities : totalCurrentLiabilities // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,currentDeferredRevenue: freezed == currentDeferredRevenue ? _self.currentDeferredRevenue : currentDeferredRevenue // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,netDebt: freezed == netDebt ? _self.netDebt : netDebt // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,shortTermDebt: freezed == shortTermDebt ? _self.shortTermDebt : shortTermDebt // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,shortLongTermDebt: freezed == shortLongTermDebt ? _self.shortLongTermDebt : shortLongTermDebt // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,shortLongTermDebtTotal: freezed == shortLongTermDebtTotal ? _self.shortLongTermDebtTotal : shortLongTermDebtTotal // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,otherStockholderEquity: freezed == otherStockholderEquity ? _self.otherStockholderEquity : otherStockholderEquity // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,propertyPlantEquipment: freezed == propertyPlantEquipment ? _self.propertyPlantEquipment : propertyPlantEquipment // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,totalCurrentAssets: freezed == totalCurrentAssets ? _self.totalCurrentAssets : totalCurrentAssets // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,longTermInvestments: freezed == longTermInvestments ? _self.longTermInvestments : longTermInvestments // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,netTangibleAssets: freezed == netTangibleAssets ? _self.netTangibleAssets : netTangibleAssets // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,shortTermInvestments: freezed == shortTermInvestments ? _self.shortTermInvestments : shortTermInvestments // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,netReceivables: freezed == netReceivables ? _self.netReceivables : netReceivables // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,longTermDebt: freezed == longTermDebt ? _self.longTermDebt : longTermDebt // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,inventory: freezed == inventory ? _self.inventory : inventory // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,accountsPayable: freezed == accountsPayable ? _self.accountsPayable : accountsPayable // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,totalPermanentEquity: freezed == totalPermanentEquity ? _self.totalPermanentEquity : totalPermanentEquity // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,noncontrollingInterestInConsolidatedEntity: freezed == noncontrollingInterestInConsolidatedEntity ? _self.noncontrollingInterestInConsolidatedEntity : noncontrollingInterestInConsolidatedEntity // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,temporaryEquityRedeemableNoncontrollingInterests: freezed == temporaryEquityRedeemableNoncontrollingInterests ? _self.temporaryEquityRedeemableNoncontrollingInterests : temporaryEquityRedeemableNoncontrollingInterests // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,accumulatedOtherComprehensiveIncome: freezed == accumulatedOtherComprehensiveIncome ? _self.accumulatedOtherComprehensiveIncome : accumulatedOtherComprehensiveIncome // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,additionalPaidInCapital: freezed == additionalPaidInCapital ? _self.additionalPaidInCapital : additionalPaidInCapital // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,commonStockTotalEquity: freezed == commonStockTotalEquity ? _self.commonStockTotalEquity : commonStockTotalEquity // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,preferredStockTotalEquity: freezed == preferredStockTotalEquity ? _self.preferredStockTotalEquity : preferredStockTotalEquity // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,retainedEarningsTotalEquity: freezed == retainedEarningsTotalEquity ? _self.retainedEarningsTotalEquity : retainedEarningsTotalEquity // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,treasuryStock: freezed == treasuryStock ? _self.treasuryStock : treasuryStock // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,accumulatedAmortization: freezed == accumulatedAmortization ? _self.accumulatedAmortization : accumulatedAmortization // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,nonCurrrentAssetsOther: freezed == nonCurrrentAssetsOther ? _self.nonCurrrentAssetsOther : nonCurrrentAssetsOther // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,deferredLongTermAssetCharges: freezed == deferredLongTermAssetCharges ? _self.deferredLongTermAssetCharges : deferredLongTermAssetCharges // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,nonCurrentAssetsTotal: freezed == nonCurrentAssetsTotal ? _self.nonCurrentAssetsTotal : nonCurrentAssetsTotal // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,capitalLeaseObligations: freezed == capitalLeaseObligations ? _self.capitalLeaseObligations : capitalLeaseObligations // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,longTermDebtTotal: freezed == longTermDebtTotal ? _self.longTermDebtTotal : longTermDebtTotal // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,nonCurrentLiabilitiesOther: freezed == nonCurrentLiabilitiesOther ? _self.nonCurrentLiabilitiesOther : nonCurrentLiabilitiesOther // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,nonCurrentLiabilitiesTotal: freezed == nonCurrentLiabilitiesTotal ? _self.nonCurrentLiabilitiesTotal : nonCurrentLiabilitiesTotal // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,negativeGoodwill: freezed == negativeGoodwill ? _self.negativeGoodwill : negativeGoodwill // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,warrants: freezed == warrants ? _self.warrants : warrants // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,preferredStockRedeemable: freezed == preferredStockRedeemable ? _self.preferredStockRedeemable : preferredStockRedeemable // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,capitalSurpluse: freezed == capitalSurpluse ? _self.capitalSurpluse : capitalSurpluse // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,liabilitiesAndStockholdersEquity: freezed == liabilitiesAndStockholdersEquity ? _self.liabilitiesAndStockholdersEquity : liabilitiesAndStockholdersEquity // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,cashAndShortTermInvestments: freezed == cashAndShortTermInvestments ? _self.cashAndShortTermInvestments : cashAndShortTermInvestments // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,propertyPlantAndEquipmentGross: freezed == propertyPlantAndEquipmentGross ? _self.propertyPlantAndEquipmentGross : propertyPlantAndEquipmentGross // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,propertyPlantAndEquipmentNet: freezed == propertyPlantAndEquipmentNet ? _self.propertyPlantAndEquipmentNet : propertyPlantAndEquipmentNet // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,accumulatedDepreciation: freezed == accumulatedDepreciation ? _self.accumulatedDepreciation : accumulatedDepreciation // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,netWorkingCapital: freezed == netWorkingCapital ? _self.netWorkingCapital : netWorkingCapital // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,netInvestedCapital: freezed == netInvestedCapital ? _self.netInvestedCapital : netInvestedCapital // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,commonStockSharesOutstanding: freezed == commonStockSharesOutstanding ? _self.commonStockSharesOutstanding : commonStockSharesOutstanding // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,investments: freezed == investments ? _self.investments : investments // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,changeToLiabilities: freezed == changeToLiabilities ? _self.changeToLiabilities : changeToLiabilities // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,totalCashflowsFromInvestingActivities: freezed == totalCashflowsFromInvestingActivities ? _self.totalCashflowsFromInvestingActivities : totalCashflowsFromInvestingActivities // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,netBorrowings: freezed == netBorrowings ? _self.netBorrowings : netBorrowings // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,totalCashFromFinancingActivities: freezed == totalCashFromFinancingActivities ? _self.totalCashFromFinancingActivities : totalCashFromFinancingActivities // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,changeToOperatingActivities: freezed == changeToOperatingActivities ? _self.changeToOperatingActivities : changeToOperatingActivities // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,netIncome: freezed == netIncome ? _self.netIncome : netIncome // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,changeInCash: freezed == changeInCash ? _self.changeInCash : changeInCash // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,beginPeriodCashFlow: freezed == beginPeriodCashFlow ? _self.beginPeriodCashFlow : beginPeriodCashFlow // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,endPeriodCashFlow: freezed == endPeriodCashFlow ? _self.endPeriodCashFlow : endPeriodCashFlow // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,totalCashFromOperatingActivities: freezed == totalCashFromOperatingActivities ? _self.totalCashFromOperatingActivities : totalCashFromOperatingActivities // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,issuanceOfCapitalStock: freezed == issuanceOfCapitalStock ? _self.issuanceOfCapitalStock : issuanceOfCapitalStock // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,depreciation: freezed == depreciation ? _self.depreciation : depreciation // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,otherCashflowsFromInvestingActivities: freezed == otherCashflowsFromInvestingActivities ? _self.otherCashflowsFromInvestingActivities : otherCashflowsFromInvestingActivities // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,dividendsPaid: freezed == dividendsPaid ? _self.dividendsPaid : dividendsPaid // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,changeToInventory: freezed == changeToInventory ? _self.changeToInventory : changeToInventory // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,changeToAccountReceivables: freezed == changeToAccountReceivables ? _self.changeToAccountReceivables : changeToAccountReceivables // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,salePurchaseOfStock: freezed == salePurchaseOfStock ? _self.salePurchaseOfStock : salePurchaseOfStock // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,otherCashflowsFromFinancingActivities: freezed == otherCashflowsFromFinancingActivities ? _self.otherCashflowsFromFinancingActivities : otherCashflowsFromFinancingActivities // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,changeToNetincome: freezed == changeToNetincome ? _self.changeToNetincome : changeToNetincome // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,capitalExpenditures: freezed == capitalExpenditures ? _self.capitalExpenditures : capitalExpenditures // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,changeReceivables: freezed == changeReceivables ? _self.changeReceivables : changeReceivables // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,cashFlowsOtherOperating: freezed == cashFlowsOtherOperating ? _self.cashFlowsOtherOperating : cashFlowsOtherOperating // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,exchangeRateChanges: freezed == exchangeRateChanges ? _self.exchangeRateChanges : exchangeRateChanges // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,cashAndCashEquivalentsChanges: freezed == cashAndCashEquivalentsChanges ? _self.cashAndCashEquivalentsChanges : cashAndCashEquivalentsChanges // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,changeInWorkingCapital: freezed == changeInWorkingCapital ? _self.changeInWorkingCapital : changeInWorkingCapital // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,stockBasedCompensation: freezed == stockBasedCompensation ? _self.stockBasedCompensation : stockBasedCompensation // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,otherNonCashItems: freezed == otherNonCashItems ? _self.otherNonCashItems : otherNonCashItems // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,freeCashFlow: freezed == freeCashFlow ? _self.freeCashFlow : freeCashFlow // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,researchDevelopment: freezed == researchDevelopment ? _self.researchDevelopment : researchDevelopment // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,effectOfAccountingCharges: freezed == effectOfAccountingCharges ? _self.effectOfAccountingCharges : effectOfAccountingCharges // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,incomeBeforeTax: freezed == incomeBeforeTax ? _self.incomeBeforeTax : incomeBeforeTax // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,minorityInterest: freezed == minorityInterest ? _self.minorityInterest : minorityInterest // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,sellingGeneralAdministrative: freezed == sellingGeneralAdministrative ? _self.sellingGeneralAdministrative : sellingGeneralAdministrative // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,sellingAndMarketingExpenses: freezed == sellingAndMarketingExpenses ? _self.sellingAndMarketingExpenses : sellingAndMarketingExpenses // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,grossProfit: freezed == grossProfit ? _self.grossProfit : grossProfit // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,reconciledDepreciation: freezed == reconciledDepreciation ? _self.reconciledDepreciation : reconciledDepreciation // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,ebit: freezed == ebit ? _self.ebit : ebit // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,ebitda: freezed == ebitda ? _self.ebitda : ebitda // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,depreciationAndAmortization: freezed == depreciationAndAmortization ? _self.depreciationAndAmortization : depreciationAndAmortization // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,nonOperatingIncomeNetOther: freezed == nonOperatingIncomeNetOther ? _self.nonOperatingIncomeNetOther : nonOperatingIncomeNetOther // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,operatingIncome: freezed == operatingIncome ? _self.operatingIncome : operatingIncome // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,otherOperatingExpenses: freezed == otherOperatingExpenses ? _self.otherOperatingExpenses : otherOperatingExpenses // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,interestExpense: freezed == interestExpense ? _self.interestExpense : interestExpense // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,taxProvision: freezed == taxProvision ? _self.taxProvision : taxProvision // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,interestIncome: freezed == interestIncome ? _self.interestIncome : interestIncome // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,netInterestIncome: freezed == netInterestIncome ? _self.netInterestIncome : netInterestIncome // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,extraordinaryItems: freezed == extraordinaryItems ? _self.extraordinaryItems : extraordinaryItems // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,nonRecurring: freezed == nonRecurring ? _self.nonRecurring : nonRecurring // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,otherItems: freezed == otherItems ? _self.otherItems : otherItems // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,incomeTaxExpense: freezed == incomeTaxExpense ? _self.incomeTaxExpense : incomeTaxExpense // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,totalRevenue: freezed == totalRevenue ? _self.totalRevenue : totalRevenue // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,totalOperatingExpenses: freezed == totalOperatingExpenses ? _self.totalOperatingExpenses : totalOperatingExpenses // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,costOfRevenue: freezed == costOfRevenue ? _self.costOfRevenue : costOfRevenue // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,totalOtherIncomeExpenseNet: freezed == totalOtherIncomeExpenseNet ? _self.totalOtherIncomeExpenseNet : totalOtherIncomeExpenseNet // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,discontinuedOperations: freezed == discontinuedOperations ? _self.discontinuedOperations : discontinuedOperations // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,netIncomeFromContinuingOps: freezed == netIncomeFromContinuingOps ? _self.netIncomeFromContinuingOps : netIncomeFromContinuingOps // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,netIncomeApplicableToCommonShares: freezed == netIncomeApplicableToCommonShares ? _self.netIncomeApplicableToCommonShares : netIncomeApplicableToCommonShares // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,preferredStockAndOtherAdjustments: freezed == preferredStockAndOtherAdjustments ? _self.preferredStockAndOtherAdjustments : preferredStockAndOtherAdjustments // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,stockType: freezed == stockType ? _self.stockType : stockType // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,
  ));
}

}


/// Adds pattern-matching-related methods to [FinancialChart].
extension FinancialChartPatterns on FinancialChart {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FinancialChart value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FinancialChart() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FinancialChart value)  $default,){
final _that = this;
switch (_that) {
case _FinancialChart():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FinancialChart value)?  $default,){
final _that = this;
switch (_that) {
case _FinancialChart() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<FinancialDataPoint>? totalAssets,  List<FinancialDataPoint>? intangibleAssets,  List<FinancialDataPoint>? earningAssets,  List<FinancialDataPoint>? otherCurrentAssets,  List<FinancialDataPoint>? totalLiab,  List<FinancialDataPoint>? totalStockholderEquity,  List<FinancialDataPoint>? deferredLongTermLiab,  List<FinancialDataPoint>? otherCurrentLiab,  List<FinancialDataPoint>? commonStock,  List<FinancialDataPoint>? capitalStock,  List<FinancialDataPoint>? retainedEarnings,  List<FinancialDataPoint>? otherLiab,  List<FinancialDataPoint>? goodWill,  List<FinancialDataPoint>? otherAssets,  List<FinancialDataPoint>? cash,  List<FinancialDataPoint>? cashAndEquivalents,  List<FinancialDataPoint>? totalCurrentLiabilities,  List<FinancialDataPoint>? currentDeferredRevenue,  List<FinancialDataPoint>? netDebt,  List<FinancialDataPoint>? shortTermDebt,  List<FinancialDataPoint>? shortLongTermDebt,  List<FinancialDataPoint>? shortLongTermDebtTotal,  List<FinancialDataPoint>? otherStockholderEquity,  List<FinancialDataPoint>? propertyPlantEquipment,  List<FinancialDataPoint>? totalCurrentAssets,  List<FinancialDataPoint>? longTermInvestments,  List<FinancialDataPoint>? netTangibleAssets,  List<FinancialDataPoint>? shortTermInvestments,  List<FinancialDataPoint>? netReceivables,  List<FinancialDataPoint>? longTermDebt,  List<FinancialDataPoint>? inventory,  List<FinancialDataPoint>? accountsPayable,  List<FinancialDataPoint>? totalPermanentEquity,  List<FinancialDataPoint>? noncontrollingInterestInConsolidatedEntity,  List<FinancialDataPoint>? temporaryEquityRedeemableNoncontrollingInterests,  List<FinancialDataPoint>? accumulatedOtherComprehensiveIncome,  List<FinancialDataPoint>? additionalPaidInCapital,  List<FinancialDataPoint>? commonStockTotalEquity,  List<FinancialDataPoint>? preferredStockTotalEquity,  List<FinancialDataPoint>? retainedEarningsTotalEquity,  List<FinancialDataPoint>? treasuryStock,  List<FinancialDataPoint>? accumulatedAmortization,  List<FinancialDataPoint>? nonCurrrentAssetsOther,  List<FinancialDataPoint>? deferredLongTermAssetCharges,  List<FinancialDataPoint>? nonCurrentAssetsTotal,  List<FinancialDataPoint>? capitalLeaseObligations,  List<FinancialDataPoint>? longTermDebtTotal,  List<FinancialDataPoint>? nonCurrentLiabilitiesOther,  List<FinancialDataPoint>? nonCurrentLiabilitiesTotal,  List<FinancialDataPoint>? negativeGoodwill,  List<FinancialDataPoint>? warrants,  List<FinancialDataPoint>? preferredStockRedeemable,  List<FinancialDataPoint>? capitalSurpluse,  List<FinancialDataPoint>? liabilitiesAndStockholdersEquity,  List<FinancialDataPoint>? cashAndShortTermInvestments,  List<FinancialDataPoint>? propertyPlantAndEquipmentGross,  List<FinancialDataPoint>? propertyPlantAndEquipmentNet,  List<FinancialDataPoint>? accumulatedDepreciation,  List<FinancialDataPoint>? netWorkingCapital,  List<FinancialDataPoint>? netInvestedCapital,  List<FinancialDataPoint>? commonStockSharesOutstanding,  List<FinancialDataPoint>? investments,  List<FinancialDataPoint>? changeToLiabilities,  List<FinancialDataPoint>? totalCashflowsFromInvestingActivities,  List<FinancialDataPoint>? netBorrowings,  List<FinancialDataPoint>? totalCashFromFinancingActivities,  List<FinancialDataPoint>? changeToOperatingActivities,  List<FinancialDataPoint>? netIncome,  List<FinancialDataPoint>? changeInCash,  List<FinancialDataPoint>? beginPeriodCashFlow,  List<FinancialDataPoint>? endPeriodCashFlow,  List<FinancialDataPoint>? totalCashFromOperatingActivities,  List<FinancialDataPoint>? issuanceOfCapitalStock,  List<FinancialDataPoint>? depreciation,  List<FinancialDataPoint>? otherCashflowsFromInvestingActivities,  List<FinancialDataPoint>? dividendsPaid,  List<FinancialDataPoint>? changeToInventory,  List<FinancialDataPoint>? changeToAccountReceivables,  List<FinancialDataPoint>? salePurchaseOfStock,  List<FinancialDataPoint>? otherCashflowsFromFinancingActivities,  List<FinancialDataPoint>? changeToNetincome,  List<FinancialDataPoint>? capitalExpenditures,  List<FinancialDataPoint>? changeReceivables,  List<FinancialDataPoint>? cashFlowsOtherOperating,  List<FinancialDataPoint>? exchangeRateChanges,  List<FinancialDataPoint>? cashAndCashEquivalentsChanges,  List<FinancialDataPoint>? changeInWorkingCapital,  List<FinancialDataPoint>? stockBasedCompensation,  List<FinancialDataPoint>? otherNonCashItems,  List<FinancialDataPoint>? freeCashFlow,  List<FinancialDataPoint>? researchDevelopment,  List<FinancialDataPoint>? effectOfAccountingCharges,  List<FinancialDataPoint>? incomeBeforeTax,  List<FinancialDataPoint>? minorityInterest,  List<FinancialDataPoint>? sellingGeneralAdministrative,  List<FinancialDataPoint>? sellingAndMarketingExpenses,  List<FinancialDataPoint>? grossProfit,  List<FinancialDataPoint>? reconciledDepreciation,  List<FinancialDataPoint>? ebit,  List<FinancialDataPoint>? ebitda,  List<FinancialDataPoint>? depreciationAndAmortization,  List<FinancialDataPoint>? nonOperatingIncomeNetOther,  List<FinancialDataPoint>? operatingIncome,  List<FinancialDataPoint>? otherOperatingExpenses,  List<FinancialDataPoint>? interestExpense,  List<FinancialDataPoint>? taxProvision,  List<FinancialDataPoint>? interestIncome,  List<FinancialDataPoint>? netInterestIncome,  List<FinancialDataPoint>? extraordinaryItems,  List<FinancialDataPoint>? nonRecurring,  List<FinancialDataPoint>? otherItems,  List<FinancialDataPoint>? incomeTaxExpense,  List<FinancialDataPoint>? totalRevenue,  List<FinancialDataPoint>? totalOperatingExpenses,  List<FinancialDataPoint>? costOfRevenue,  List<FinancialDataPoint>? totalOtherIncomeExpenseNet,  List<FinancialDataPoint>? discontinuedOperations,  List<FinancialDataPoint>? netIncomeFromContinuingOps,  List<FinancialDataPoint>? netIncomeApplicableToCommonShares,  List<FinancialDataPoint>? preferredStockAndOtherAdjustments,  List<FinancialDataPoint>? type, @JsonKey(name: 'stock_type')  List<FinancialDataPoint>? stockType)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FinancialChart() when $default != null:
return $default(_that.totalAssets,_that.intangibleAssets,_that.earningAssets,_that.otherCurrentAssets,_that.totalLiab,_that.totalStockholderEquity,_that.deferredLongTermLiab,_that.otherCurrentLiab,_that.commonStock,_that.capitalStock,_that.retainedEarnings,_that.otherLiab,_that.goodWill,_that.otherAssets,_that.cash,_that.cashAndEquivalents,_that.totalCurrentLiabilities,_that.currentDeferredRevenue,_that.netDebt,_that.shortTermDebt,_that.shortLongTermDebt,_that.shortLongTermDebtTotal,_that.otherStockholderEquity,_that.propertyPlantEquipment,_that.totalCurrentAssets,_that.longTermInvestments,_that.netTangibleAssets,_that.shortTermInvestments,_that.netReceivables,_that.longTermDebt,_that.inventory,_that.accountsPayable,_that.totalPermanentEquity,_that.noncontrollingInterestInConsolidatedEntity,_that.temporaryEquityRedeemableNoncontrollingInterests,_that.accumulatedOtherComprehensiveIncome,_that.additionalPaidInCapital,_that.commonStockTotalEquity,_that.preferredStockTotalEquity,_that.retainedEarningsTotalEquity,_that.treasuryStock,_that.accumulatedAmortization,_that.nonCurrrentAssetsOther,_that.deferredLongTermAssetCharges,_that.nonCurrentAssetsTotal,_that.capitalLeaseObligations,_that.longTermDebtTotal,_that.nonCurrentLiabilitiesOther,_that.nonCurrentLiabilitiesTotal,_that.negativeGoodwill,_that.warrants,_that.preferredStockRedeemable,_that.capitalSurpluse,_that.liabilitiesAndStockholdersEquity,_that.cashAndShortTermInvestments,_that.propertyPlantAndEquipmentGross,_that.propertyPlantAndEquipmentNet,_that.accumulatedDepreciation,_that.netWorkingCapital,_that.netInvestedCapital,_that.commonStockSharesOutstanding,_that.investments,_that.changeToLiabilities,_that.totalCashflowsFromInvestingActivities,_that.netBorrowings,_that.totalCashFromFinancingActivities,_that.changeToOperatingActivities,_that.netIncome,_that.changeInCash,_that.beginPeriodCashFlow,_that.endPeriodCashFlow,_that.totalCashFromOperatingActivities,_that.issuanceOfCapitalStock,_that.depreciation,_that.otherCashflowsFromInvestingActivities,_that.dividendsPaid,_that.changeToInventory,_that.changeToAccountReceivables,_that.salePurchaseOfStock,_that.otherCashflowsFromFinancingActivities,_that.changeToNetincome,_that.capitalExpenditures,_that.changeReceivables,_that.cashFlowsOtherOperating,_that.exchangeRateChanges,_that.cashAndCashEquivalentsChanges,_that.changeInWorkingCapital,_that.stockBasedCompensation,_that.otherNonCashItems,_that.freeCashFlow,_that.researchDevelopment,_that.effectOfAccountingCharges,_that.incomeBeforeTax,_that.minorityInterest,_that.sellingGeneralAdministrative,_that.sellingAndMarketingExpenses,_that.grossProfit,_that.reconciledDepreciation,_that.ebit,_that.ebitda,_that.depreciationAndAmortization,_that.nonOperatingIncomeNetOther,_that.operatingIncome,_that.otherOperatingExpenses,_that.interestExpense,_that.taxProvision,_that.interestIncome,_that.netInterestIncome,_that.extraordinaryItems,_that.nonRecurring,_that.otherItems,_that.incomeTaxExpense,_that.totalRevenue,_that.totalOperatingExpenses,_that.costOfRevenue,_that.totalOtherIncomeExpenseNet,_that.discontinuedOperations,_that.netIncomeFromContinuingOps,_that.netIncomeApplicableToCommonShares,_that.preferredStockAndOtherAdjustments,_that.type,_that.stockType);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<FinancialDataPoint>? totalAssets,  List<FinancialDataPoint>? intangibleAssets,  List<FinancialDataPoint>? earningAssets,  List<FinancialDataPoint>? otherCurrentAssets,  List<FinancialDataPoint>? totalLiab,  List<FinancialDataPoint>? totalStockholderEquity,  List<FinancialDataPoint>? deferredLongTermLiab,  List<FinancialDataPoint>? otherCurrentLiab,  List<FinancialDataPoint>? commonStock,  List<FinancialDataPoint>? capitalStock,  List<FinancialDataPoint>? retainedEarnings,  List<FinancialDataPoint>? otherLiab,  List<FinancialDataPoint>? goodWill,  List<FinancialDataPoint>? otherAssets,  List<FinancialDataPoint>? cash,  List<FinancialDataPoint>? cashAndEquivalents,  List<FinancialDataPoint>? totalCurrentLiabilities,  List<FinancialDataPoint>? currentDeferredRevenue,  List<FinancialDataPoint>? netDebt,  List<FinancialDataPoint>? shortTermDebt,  List<FinancialDataPoint>? shortLongTermDebt,  List<FinancialDataPoint>? shortLongTermDebtTotal,  List<FinancialDataPoint>? otherStockholderEquity,  List<FinancialDataPoint>? propertyPlantEquipment,  List<FinancialDataPoint>? totalCurrentAssets,  List<FinancialDataPoint>? longTermInvestments,  List<FinancialDataPoint>? netTangibleAssets,  List<FinancialDataPoint>? shortTermInvestments,  List<FinancialDataPoint>? netReceivables,  List<FinancialDataPoint>? longTermDebt,  List<FinancialDataPoint>? inventory,  List<FinancialDataPoint>? accountsPayable,  List<FinancialDataPoint>? totalPermanentEquity,  List<FinancialDataPoint>? noncontrollingInterestInConsolidatedEntity,  List<FinancialDataPoint>? temporaryEquityRedeemableNoncontrollingInterests,  List<FinancialDataPoint>? accumulatedOtherComprehensiveIncome,  List<FinancialDataPoint>? additionalPaidInCapital,  List<FinancialDataPoint>? commonStockTotalEquity,  List<FinancialDataPoint>? preferredStockTotalEquity,  List<FinancialDataPoint>? retainedEarningsTotalEquity,  List<FinancialDataPoint>? treasuryStock,  List<FinancialDataPoint>? accumulatedAmortization,  List<FinancialDataPoint>? nonCurrrentAssetsOther,  List<FinancialDataPoint>? deferredLongTermAssetCharges,  List<FinancialDataPoint>? nonCurrentAssetsTotal,  List<FinancialDataPoint>? capitalLeaseObligations,  List<FinancialDataPoint>? longTermDebtTotal,  List<FinancialDataPoint>? nonCurrentLiabilitiesOther,  List<FinancialDataPoint>? nonCurrentLiabilitiesTotal,  List<FinancialDataPoint>? negativeGoodwill,  List<FinancialDataPoint>? warrants,  List<FinancialDataPoint>? preferredStockRedeemable,  List<FinancialDataPoint>? capitalSurpluse,  List<FinancialDataPoint>? liabilitiesAndStockholdersEquity,  List<FinancialDataPoint>? cashAndShortTermInvestments,  List<FinancialDataPoint>? propertyPlantAndEquipmentGross,  List<FinancialDataPoint>? propertyPlantAndEquipmentNet,  List<FinancialDataPoint>? accumulatedDepreciation,  List<FinancialDataPoint>? netWorkingCapital,  List<FinancialDataPoint>? netInvestedCapital,  List<FinancialDataPoint>? commonStockSharesOutstanding,  List<FinancialDataPoint>? investments,  List<FinancialDataPoint>? changeToLiabilities,  List<FinancialDataPoint>? totalCashflowsFromInvestingActivities,  List<FinancialDataPoint>? netBorrowings,  List<FinancialDataPoint>? totalCashFromFinancingActivities,  List<FinancialDataPoint>? changeToOperatingActivities,  List<FinancialDataPoint>? netIncome,  List<FinancialDataPoint>? changeInCash,  List<FinancialDataPoint>? beginPeriodCashFlow,  List<FinancialDataPoint>? endPeriodCashFlow,  List<FinancialDataPoint>? totalCashFromOperatingActivities,  List<FinancialDataPoint>? issuanceOfCapitalStock,  List<FinancialDataPoint>? depreciation,  List<FinancialDataPoint>? otherCashflowsFromInvestingActivities,  List<FinancialDataPoint>? dividendsPaid,  List<FinancialDataPoint>? changeToInventory,  List<FinancialDataPoint>? changeToAccountReceivables,  List<FinancialDataPoint>? salePurchaseOfStock,  List<FinancialDataPoint>? otherCashflowsFromFinancingActivities,  List<FinancialDataPoint>? changeToNetincome,  List<FinancialDataPoint>? capitalExpenditures,  List<FinancialDataPoint>? changeReceivables,  List<FinancialDataPoint>? cashFlowsOtherOperating,  List<FinancialDataPoint>? exchangeRateChanges,  List<FinancialDataPoint>? cashAndCashEquivalentsChanges,  List<FinancialDataPoint>? changeInWorkingCapital,  List<FinancialDataPoint>? stockBasedCompensation,  List<FinancialDataPoint>? otherNonCashItems,  List<FinancialDataPoint>? freeCashFlow,  List<FinancialDataPoint>? researchDevelopment,  List<FinancialDataPoint>? effectOfAccountingCharges,  List<FinancialDataPoint>? incomeBeforeTax,  List<FinancialDataPoint>? minorityInterest,  List<FinancialDataPoint>? sellingGeneralAdministrative,  List<FinancialDataPoint>? sellingAndMarketingExpenses,  List<FinancialDataPoint>? grossProfit,  List<FinancialDataPoint>? reconciledDepreciation,  List<FinancialDataPoint>? ebit,  List<FinancialDataPoint>? ebitda,  List<FinancialDataPoint>? depreciationAndAmortization,  List<FinancialDataPoint>? nonOperatingIncomeNetOther,  List<FinancialDataPoint>? operatingIncome,  List<FinancialDataPoint>? otherOperatingExpenses,  List<FinancialDataPoint>? interestExpense,  List<FinancialDataPoint>? taxProvision,  List<FinancialDataPoint>? interestIncome,  List<FinancialDataPoint>? netInterestIncome,  List<FinancialDataPoint>? extraordinaryItems,  List<FinancialDataPoint>? nonRecurring,  List<FinancialDataPoint>? otherItems,  List<FinancialDataPoint>? incomeTaxExpense,  List<FinancialDataPoint>? totalRevenue,  List<FinancialDataPoint>? totalOperatingExpenses,  List<FinancialDataPoint>? costOfRevenue,  List<FinancialDataPoint>? totalOtherIncomeExpenseNet,  List<FinancialDataPoint>? discontinuedOperations,  List<FinancialDataPoint>? netIncomeFromContinuingOps,  List<FinancialDataPoint>? netIncomeApplicableToCommonShares,  List<FinancialDataPoint>? preferredStockAndOtherAdjustments,  List<FinancialDataPoint>? type, @JsonKey(name: 'stock_type')  List<FinancialDataPoint>? stockType)  $default,) {final _that = this;
switch (_that) {
case _FinancialChart():
return $default(_that.totalAssets,_that.intangibleAssets,_that.earningAssets,_that.otherCurrentAssets,_that.totalLiab,_that.totalStockholderEquity,_that.deferredLongTermLiab,_that.otherCurrentLiab,_that.commonStock,_that.capitalStock,_that.retainedEarnings,_that.otherLiab,_that.goodWill,_that.otherAssets,_that.cash,_that.cashAndEquivalents,_that.totalCurrentLiabilities,_that.currentDeferredRevenue,_that.netDebt,_that.shortTermDebt,_that.shortLongTermDebt,_that.shortLongTermDebtTotal,_that.otherStockholderEquity,_that.propertyPlantEquipment,_that.totalCurrentAssets,_that.longTermInvestments,_that.netTangibleAssets,_that.shortTermInvestments,_that.netReceivables,_that.longTermDebt,_that.inventory,_that.accountsPayable,_that.totalPermanentEquity,_that.noncontrollingInterestInConsolidatedEntity,_that.temporaryEquityRedeemableNoncontrollingInterests,_that.accumulatedOtherComprehensiveIncome,_that.additionalPaidInCapital,_that.commonStockTotalEquity,_that.preferredStockTotalEquity,_that.retainedEarningsTotalEquity,_that.treasuryStock,_that.accumulatedAmortization,_that.nonCurrrentAssetsOther,_that.deferredLongTermAssetCharges,_that.nonCurrentAssetsTotal,_that.capitalLeaseObligations,_that.longTermDebtTotal,_that.nonCurrentLiabilitiesOther,_that.nonCurrentLiabilitiesTotal,_that.negativeGoodwill,_that.warrants,_that.preferredStockRedeemable,_that.capitalSurpluse,_that.liabilitiesAndStockholdersEquity,_that.cashAndShortTermInvestments,_that.propertyPlantAndEquipmentGross,_that.propertyPlantAndEquipmentNet,_that.accumulatedDepreciation,_that.netWorkingCapital,_that.netInvestedCapital,_that.commonStockSharesOutstanding,_that.investments,_that.changeToLiabilities,_that.totalCashflowsFromInvestingActivities,_that.netBorrowings,_that.totalCashFromFinancingActivities,_that.changeToOperatingActivities,_that.netIncome,_that.changeInCash,_that.beginPeriodCashFlow,_that.endPeriodCashFlow,_that.totalCashFromOperatingActivities,_that.issuanceOfCapitalStock,_that.depreciation,_that.otherCashflowsFromInvestingActivities,_that.dividendsPaid,_that.changeToInventory,_that.changeToAccountReceivables,_that.salePurchaseOfStock,_that.otherCashflowsFromFinancingActivities,_that.changeToNetincome,_that.capitalExpenditures,_that.changeReceivables,_that.cashFlowsOtherOperating,_that.exchangeRateChanges,_that.cashAndCashEquivalentsChanges,_that.changeInWorkingCapital,_that.stockBasedCompensation,_that.otherNonCashItems,_that.freeCashFlow,_that.researchDevelopment,_that.effectOfAccountingCharges,_that.incomeBeforeTax,_that.minorityInterest,_that.sellingGeneralAdministrative,_that.sellingAndMarketingExpenses,_that.grossProfit,_that.reconciledDepreciation,_that.ebit,_that.ebitda,_that.depreciationAndAmortization,_that.nonOperatingIncomeNetOther,_that.operatingIncome,_that.otherOperatingExpenses,_that.interestExpense,_that.taxProvision,_that.interestIncome,_that.netInterestIncome,_that.extraordinaryItems,_that.nonRecurring,_that.otherItems,_that.incomeTaxExpense,_that.totalRevenue,_that.totalOperatingExpenses,_that.costOfRevenue,_that.totalOtherIncomeExpenseNet,_that.discontinuedOperations,_that.netIncomeFromContinuingOps,_that.netIncomeApplicableToCommonShares,_that.preferredStockAndOtherAdjustments,_that.type,_that.stockType);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<FinancialDataPoint>? totalAssets,  List<FinancialDataPoint>? intangibleAssets,  List<FinancialDataPoint>? earningAssets,  List<FinancialDataPoint>? otherCurrentAssets,  List<FinancialDataPoint>? totalLiab,  List<FinancialDataPoint>? totalStockholderEquity,  List<FinancialDataPoint>? deferredLongTermLiab,  List<FinancialDataPoint>? otherCurrentLiab,  List<FinancialDataPoint>? commonStock,  List<FinancialDataPoint>? capitalStock,  List<FinancialDataPoint>? retainedEarnings,  List<FinancialDataPoint>? otherLiab,  List<FinancialDataPoint>? goodWill,  List<FinancialDataPoint>? otherAssets,  List<FinancialDataPoint>? cash,  List<FinancialDataPoint>? cashAndEquivalents,  List<FinancialDataPoint>? totalCurrentLiabilities,  List<FinancialDataPoint>? currentDeferredRevenue,  List<FinancialDataPoint>? netDebt,  List<FinancialDataPoint>? shortTermDebt,  List<FinancialDataPoint>? shortLongTermDebt,  List<FinancialDataPoint>? shortLongTermDebtTotal,  List<FinancialDataPoint>? otherStockholderEquity,  List<FinancialDataPoint>? propertyPlantEquipment,  List<FinancialDataPoint>? totalCurrentAssets,  List<FinancialDataPoint>? longTermInvestments,  List<FinancialDataPoint>? netTangibleAssets,  List<FinancialDataPoint>? shortTermInvestments,  List<FinancialDataPoint>? netReceivables,  List<FinancialDataPoint>? longTermDebt,  List<FinancialDataPoint>? inventory,  List<FinancialDataPoint>? accountsPayable,  List<FinancialDataPoint>? totalPermanentEquity,  List<FinancialDataPoint>? noncontrollingInterestInConsolidatedEntity,  List<FinancialDataPoint>? temporaryEquityRedeemableNoncontrollingInterests,  List<FinancialDataPoint>? accumulatedOtherComprehensiveIncome,  List<FinancialDataPoint>? additionalPaidInCapital,  List<FinancialDataPoint>? commonStockTotalEquity,  List<FinancialDataPoint>? preferredStockTotalEquity,  List<FinancialDataPoint>? retainedEarningsTotalEquity,  List<FinancialDataPoint>? treasuryStock,  List<FinancialDataPoint>? accumulatedAmortization,  List<FinancialDataPoint>? nonCurrrentAssetsOther,  List<FinancialDataPoint>? deferredLongTermAssetCharges,  List<FinancialDataPoint>? nonCurrentAssetsTotal,  List<FinancialDataPoint>? capitalLeaseObligations,  List<FinancialDataPoint>? longTermDebtTotal,  List<FinancialDataPoint>? nonCurrentLiabilitiesOther,  List<FinancialDataPoint>? nonCurrentLiabilitiesTotal,  List<FinancialDataPoint>? negativeGoodwill,  List<FinancialDataPoint>? warrants,  List<FinancialDataPoint>? preferredStockRedeemable,  List<FinancialDataPoint>? capitalSurpluse,  List<FinancialDataPoint>? liabilitiesAndStockholdersEquity,  List<FinancialDataPoint>? cashAndShortTermInvestments,  List<FinancialDataPoint>? propertyPlantAndEquipmentGross,  List<FinancialDataPoint>? propertyPlantAndEquipmentNet,  List<FinancialDataPoint>? accumulatedDepreciation,  List<FinancialDataPoint>? netWorkingCapital,  List<FinancialDataPoint>? netInvestedCapital,  List<FinancialDataPoint>? commonStockSharesOutstanding,  List<FinancialDataPoint>? investments,  List<FinancialDataPoint>? changeToLiabilities,  List<FinancialDataPoint>? totalCashflowsFromInvestingActivities,  List<FinancialDataPoint>? netBorrowings,  List<FinancialDataPoint>? totalCashFromFinancingActivities,  List<FinancialDataPoint>? changeToOperatingActivities,  List<FinancialDataPoint>? netIncome,  List<FinancialDataPoint>? changeInCash,  List<FinancialDataPoint>? beginPeriodCashFlow,  List<FinancialDataPoint>? endPeriodCashFlow,  List<FinancialDataPoint>? totalCashFromOperatingActivities,  List<FinancialDataPoint>? issuanceOfCapitalStock,  List<FinancialDataPoint>? depreciation,  List<FinancialDataPoint>? otherCashflowsFromInvestingActivities,  List<FinancialDataPoint>? dividendsPaid,  List<FinancialDataPoint>? changeToInventory,  List<FinancialDataPoint>? changeToAccountReceivables,  List<FinancialDataPoint>? salePurchaseOfStock,  List<FinancialDataPoint>? otherCashflowsFromFinancingActivities,  List<FinancialDataPoint>? changeToNetincome,  List<FinancialDataPoint>? capitalExpenditures,  List<FinancialDataPoint>? changeReceivables,  List<FinancialDataPoint>? cashFlowsOtherOperating,  List<FinancialDataPoint>? exchangeRateChanges,  List<FinancialDataPoint>? cashAndCashEquivalentsChanges,  List<FinancialDataPoint>? changeInWorkingCapital,  List<FinancialDataPoint>? stockBasedCompensation,  List<FinancialDataPoint>? otherNonCashItems,  List<FinancialDataPoint>? freeCashFlow,  List<FinancialDataPoint>? researchDevelopment,  List<FinancialDataPoint>? effectOfAccountingCharges,  List<FinancialDataPoint>? incomeBeforeTax,  List<FinancialDataPoint>? minorityInterest,  List<FinancialDataPoint>? sellingGeneralAdministrative,  List<FinancialDataPoint>? sellingAndMarketingExpenses,  List<FinancialDataPoint>? grossProfit,  List<FinancialDataPoint>? reconciledDepreciation,  List<FinancialDataPoint>? ebit,  List<FinancialDataPoint>? ebitda,  List<FinancialDataPoint>? depreciationAndAmortization,  List<FinancialDataPoint>? nonOperatingIncomeNetOther,  List<FinancialDataPoint>? operatingIncome,  List<FinancialDataPoint>? otherOperatingExpenses,  List<FinancialDataPoint>? interestExpense,  List<FinancialDataPoint>? taxProvision,  List<FinancialDataPoint>? interestIncome,  List<FinancialDataPoint>? netInterestIncome,  List<FinancialDataPoint>? extraordinaryItems,  List<FinancialDataPoint>? nonRecurring,  List<FinancialDataPoint>? otherItems,  List<FinancialDataPoint>? incomeTaxExpense,  List<FinancialDataPoint>? totalRevenue,  List<FinancialDataPoint>? totalOperatingExpenses,  List<FinancialDataPoint>? costOfRevenue,  List<FinancialDataPoint>? totalOtherIncomeExpenseNet,  List<FinancialDataPoint>? discontinuedOperations,  List<FinancialDataPoint>? netIncomeFromContinuingOps,  List<FinancialDataPoint>? netIncomeApplicableToCommonShares,  List<FinancialDataPoint>? preferredStockAndOtherAdjustments,  List<FinancialDataPoint>? type, @JsonKey(name: 'stock_type')  List<FinancialDataPoint>? stockType)?  $default,) {final _that = this;
switch (_that) {
case _FinancialChart() when $default != null:
return $default(_that.totalAssets,_that.intangibleAssets,_that.earningAssets,_that.otherCurrentAssets,_that.totalLiab,_that.totalStockholderEquity,_that.deferredLongTermLiab,_that.otherCurrentLiab,_that.commonStock,_that.capitalStock,_that.retainedEarnings,_that.otherLiab,_that.goodWill,_that.otherAssets,_that.cash,_that.cashAndEquivalents,_that.totalCurrentLiabilities,_that.currentDeferredRevenue,_that.netDebt,_that.shortTermDebt,_that.shortLongTermDebt,_that.shortLongTermDebtTotal,_that.otherStockholderEquity,_that.propertyPlantEquipment,_that.totalCurrentAssets,_that.longTermInvestments,_that.netTangibleAssets,_that.shortTermInvestments,_that.netReceivables,_that.longTermDebt,_that.inventory,_that.accountsPayable,_that.totalPermanentEquity,_that.noncontrollingInterestInConsolidatedEntity,_that.temporaryEquityRedeemableNoncontrollingInterests,_that.accumulatedOtherComprehensiveIncome,_that.additionalPaidInCapital,_that.commonStockTotalEquity,_that.preferredStockTotalEquity,_that.retainedEarningsTotalEquity,_that.treasuryStock,_that.accumulatedAmortization,_that.nonCurrrentAssetsOther,_that.deferredLongTermAssetCharges,_that.nonCurrentAssetsTotal,_that.capitalLeaseObligations,_that.longTermDebtTotal,_that.nonCurrentLiabilitiesOther,_that.nonCurrentLiabilitiesTotal,_that.negativeGoodwill,_that.warrants,_that.preferredStockRedeemable,_that.capitalSurpluse,_that.liabilitiesAndStockholdersEquity,_that.cashAndShortTermInvestments,_that.propertyPlantAndEquipmentGross,_that.propertyPlantAndEquipmentNet,_that.accumulatedDepreciation,_that.netWorkingCapital,_that.netInvestedCapital,_that.commonStockSharesOutstanding,_that.investments,_that.changeToLiabilities,_that.totalCashflowsFromInvestingActivities,_that.netBorrowings,_that.totalCashFromFinancingActivities,_that.changeToOperatingActivities,_that.netIncome,_that.changeInCash,_that.beginPeriodCashFlow,_that.endPeriodCashFlow,_that.totalCashFromOperatingActivities,_that.issuanceOfCapitalStock,_that.depreciation,_that.otherCashflowsFromInvestingActivities,_that.dividendsPaid,_that.changeToInventory,_that.changeToAccountReceivables,_that.salePurchaseOfStock,_that.otherCashflowsFromFinancingActivities,_that.changeToNetincome,_that.capitalExpenditures,_that.changeReceivables,_that.cashFlowsOtherOperating,_that.exchangeRateChanges,_that.cashAndCashEquivalentsChanges,_that.changeInWorkingCapital,_that.stockBasedCompensation,_that.otherNonCashItems,_that.freeCashFlow,_that.researchDevelopment,_that.effectOfAccountingCharges,_that.incomeBeforeTax,_that.minorityInterest,_that.sellingGeneralAdministrative,_that.sellingAndMarketingExpenses,_that.grossProfit,_that.reconciledDepreciation,_that.ebit,_that.ebitda,_that.depreciationAndAmortization,_that.nonOperatingIncomeNetOther,_that.operatingIncome,_that.otherOperatingExpenses,_that.interestExpense,_that.taxProvision,_that.interestIncome,_that.netInterestIncome,_that.extraordinaryItems,_that.nonRecurring,_that.otherItems,_that.incomeTaxExpense,_that.totalRevenue,_that.totalOperatingExpenses,_that.costOfRevenue,_that.totalOtherIncomeExpenseNet,_that.discontinuedOperations,_that.netIncomeFromContinuingOps,_that.netIncomeApplicableToCommonShares,_that.preferredStockAndOtherAdjustments,_that.type,_that.stockType);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FinancialChart implements FinancialChart {
  const _FinancialChart({final  List<FinancialDataPoint>? totalAssets, final  List<FinancialDataPoint>? intangibleAssets, final  List<FinancialDataPoint>? earningAssets, final  List<FinancialDataPoint>? otherCurrentAssets, final  List<FinancialDataPoint>? totalLiab, final  List<FinancialDataPoint>? totalStockholderEquity, final  List<FinancialDataPoint>? deferredLongTermLiab, final  List<FinancialDataPoint>? otherCurrentLiab, final  List<FinancialDataPoint>? commonStock, final  List<FinancialDataPoint>? capitalStock, final  List<FinancialDataPoint>? retainedEarnings, final  List<FinancialDataPoint>? otherLiab, final  List<FinancialDataPoint>? goodWill, final  List<FinancialDataPoint>? otherAssets, final  List<FinancialDataPoint>? cash, final  List<FinancialDataPoint>? cashAndEquivalents, final  List<FinancialDataPoint>? totalCurrentLiabilities, final  List<FinancialDataPoint>? currentDeferredRevenue, final  List<FinancialDataPoint>? netDebt, final  List<FinancialDataPoint>? shortTermDebt, final  List<FinancialDataPoint>? shortLongTermDebt, final  List<FinancialDataPoint>? shortLongTermDebtTotal, final  List<FinancialDataPoint>? otherStockholderEquity, final  List<FinancialDataPoint>? propertyPlantEquipment, final  List<FinancialDataPoint>? totalCurrentAssets, final  List<FinancialDataPoint>? longTermInvestments, final  List<FinancialDataPoint>? netTangibleAssets, final  List<FinancialDataPoint>? shortTermInvestments, final  List<FinancialDataPoint>? netReceivables, final  List<FinancialDataPoint>? longTermDebt, final  List<FinancialDataPoint>? inventory, final  List<FinancialDataPoint>? accountsPayable, final  List<FinancialDataPoint>? totalPermanentEquity, final  List<FinancialDataPoint>? noncontrollingInterestInConsolidatedEntity, final  List<FinancialDataPoint>? temporaryEquityRedeemableNoncontrollingInterests, final  List<FinancialDataPoint>? accumulatedOtherComprehensiveIncome, final  List<FinancialDataPoint>? additionalPaidInCapital, final  List<FinancialDataPoint>? commonStockTotalEquity, final  List<FinancialDataPoint>? preferredStockTotalEquity, final  List<FinancialDataPoint>? retainedEarningsTotalEquity, final  List<FinancialDataPoint>? treasuryStock, final  List<FinancialDataPoint>? accumulatedAmortization, final  List<FinancialDataPoint>? nonCurrrentAssetsOther, final  List<FinancialDataPoint>? deferredLongTermAssetCharges, final  List<FinancialDataPoint>? nonCurrentAssetsTotal, final  List<FinancialDataPoint>? capitalLeaseObligations, final  List<FinancialDataPoint>? longTermDebtTotal, final  List<FinancialDataPoint>? nonCurrentLiabilitiesOther, final  List<FinancialDataPoint>? nonCurrentLiabilitiesTotal, final  List<FinancialDataPoint>? negativeGoodwill, final  List<FinancialDataPoint>? warrants, final  List<FinancialDataPoint>? preferredStockRedeemable, final  List<FinancialDataPoint>? capitalSurpluse, final  List<FinancialDataPoint>? liabilitiesAndStockholdersEquity, final  List<FinancialDataPoint>? cashAndShortTermInvestments, final  List<FinancialDataPoint>? propertyPlantAndEquipmentGross, final  List<FinancialDataPoint>? propertyPlantAndEquipmentNet, final  List<FinancialDataPoint>? accumulatedDepreciation, final  List<FinancialDataPoint>? netWorkingCapital, final  List<FinancialDataPoint>? netInvestedCapital, final  List<FinancialDataPoint>? commonStockSharesOutstanding, final  List<FinancialDataPoint>? investments, final  List<FinancialDataPoint>? changeToLiabilities, final  List<FinancialDataPoint>? totalCashflowsFromInvestingActivities, final  List<FinancialDataPoint>? netBorrowings, final  List<FinancialDataPoint>? totalCashFromFinancingActivities, final  List<FinancialDataPoint>? changeToOperatingActivities, final  List<FinancialDataPoint>? netIncome, final  List<FinancialDataPoint>? changeInCash, final  List<FinancialDataPoint>? beginPeriodCashFlow, final  List<FinancialDataPoint>? endPeriodCashFlow, final  List<FinancialDataPoint>? totalCashFromOperatingActivities, final  List<FinancialDataPoint>? issuanceOfCapitalStock, final  List<FinancialDataPoint>? depreciation, final  List<FinancialDataPoint>? otherCashflowsFromInvestingActivities, final  List<FinancialDataPoint>? dividendsPaid, final  List<FinancialDataPoint>? changeToInventory, final  List<FinancialDataPoint>? changeToAccountReceivables, final  List<FinancialDataPoint>? salePurchaseOfStock, final  List<FinancialDataPoint>? otherCashflowsFromFinancingActivities, final  List<FinancialDataPoint>? changeToNetincome, final  List<FinancialDataPoint>? capitalExpenditures, final  List<FinancialDataPoint>? changeReceivables, final  List<FinancialDataPoint>? cashFlowsOtherOperating, final  List<FinancialDataPoint>? exchangeRateChanges, final  List<FinancialDataPoint>? cashAndCashEquivalentsChanges, final  List<FinancialDataPoint>? changeInWorkingCapital, final  List<FinancialDataPoint>? stockBasedCompensation, final  List<FinancialDataPoint>? otherNonCashItems, final  List<FinancialDataPoint>? freeCashFlow, final  List<FinancialDataPoint>? researchDevelopment, final  List<FinancialDataPoint>? effectOfAccountingCharges, final  List<FinancialDataPoint>? incomeBeforeTax, final  List<FinancialDataPoint>? minorityInterest, final  List<FinancialDataPoint>? sellingGeneralAdministrative, final  List<FinancialDataPoint>? sellingAndMarketingExpenses, final  List<FinancialDataPoint>? grossProfit, final  List<FinancialDataPoint>? reconciledDepreciation, final  List<FinancialDataPoint>? ebit, final  List<FinancialDataPoint>? ebitda, final  List<FinancialDataPoint>? depreciationAndAmortization, final  List<FinancialDataPoint>? nonOperatingIncomeNetOther, final  List<FinancialDataPoint>? operatingIncome, final  List<FinancialDataPoint>? otherOperatingExpenses, final  List<FinancialDataPoint>? interestExpense, final  List<FinancialDataPoint>? taxProvision, final  List<FinancialDataPoint>? interestIncome, final  List<FinancialDataPoint>? netInterestIncome, final  List<FinancialDataPoint>? extraordinaryItems, final  List<FinancialDataPoint>? nonRecurring, final  List<FinancialDataPoint>? otherItems, final  List<FinancialDataPoint>? incomeTaxExpense, final  List<FinancialDataPoint>? totalRevenue, final  List<FinancialDataPoint>? totalOperatingExpenses, final  List<FinancialDataPoint>? costOfRevenue, final  List<FinancialDataPoint>? totalOtherIncomeExpenseNet, final  List<FinancialDataPoint>? discontinuedOperations, final  List<FinancialDataPoint>? netIncomeFromContinuingOps, final  List<FinancialDataPoint>? netIncomeApplicableToCommonShares, final  List<FinancialDataPoint>? preferredStockAndOtherAdjustments, final  List<FinancialDataPoint>? type, @JsonKey(name: 'stock_type') final  List<FinancialDataPoint>? stockType}): _totalAssets = totalAssets,_intangibleAssets = intangibleAssets,_earningAssets = earningAssets,_otherCurrentAssets = otherCurrentAssets,_totalLiab = totalLiab,_totalStockholderEquity = totalStockholderEquity,_deferredLongTermLiab = deferredLongTermLiab,_otherCurrentLiab = otherCurrentLiab,_commonStock = commonStock,_capitalStock = capitalStock,_retainedEarnings = retainedEarnings,_otherLiab = otherLiab,_goodWill = goodWill,_otherAssets = otherAssets,_cash = cash,_cashAndEquivalents = cashAndEquivalents,_totalCurrentLiabilities = totalCurrentLiabilities,_currentDeferredRevenue = currentDeferredRevenue,_netDebt = netDebt,_shortTermDebt = shortTermDebt,_shortLongTermDebt = shortLongTermDebt,_shortLongTermDebtTotal = shortLongTermDebtTotal,_otherStockholderEquity = otherStockholderEquity,_propertyPlantEquipment = propertyPlantEquipment,_totalCurrentAssets = totalCurrentAssets,_longTermInvestments = longTermInvestments,_netTangibleAssets = netTangibleAssets,_shortTermInvestments = shortTermInvestments,_netReceivables = netReceivables,_longTermDebt = longTermDebt,_inventory = inventory,_accountsPayable = accountsPayable,_totalPermanentEquity = totalPermanentEquity,_noncontrollingInterestInConsolidatedEntity = noncontrollingInterestInConsolidatedEntity,_temporaryEquityRedeemableNoncontrollingInterests = temporaryEquityRedeemableNoncontrollingInterests,_accumulatedOtherComprehensiveIncome = accumulatedOtherComprehensiveIncome,_additionalPaidInCapital = additionalPaidInCapital,_commonStockTotalEquity = commonStockTotalEquity,_preferredStockTotalEquity = preferredStockTotalEquity,_retainedEarningsTotalEquity = retainedEarningsTotalEquity,_treasuryStock = treasuryStock,_accumulatedAmortization = accumulatedAmortization,_nonCurrrentAssetsOther = nonCurrrentAssetsOther,_deferredLongTermAssetCharges = deferredLongTermAssetCharges,_nonCurrentAssetsTotal = nonCurrentAssetsTotal,_capitalLeaseObligations = capitalLeaseObligations,_longTermDebtTotal = longTermDebtTotal,_nonCurrentLiabilitiesOther = nonCurrentLiabilitiesOther,_nonCurrentLiabilitiesTotal = nonCurrentLiabilitiesTotal,_negativeGoodwill = negativeGoodwill,_warrants = warrants,_preferredStockRedeemable = preferredStockRedeemable,_capitalSurpluse = capitalSurpluse,_liabilitiesAndStockholdersEquity = liabilitiesAndStockholdersEquity,_cashAndShortTermInvestments = cashAndShortTermInvestments,_propertyPlantAndEquipmentGross = propertyPlantAndEquipmentGross,_propertyPlantAndEquipmentNet = propertyPlantAndEquipmentNet,_accumulatedDepreciation = accumulatedDepreciation,_netWorkingCapital = netWorkingCapital,_netInvestedCapital = netInvestedCapital,_commonStockSharesOutstanding = commonStockSharesOutstanding,_investments = investments,_changeToLiabilities = changeToLiabilities,_totalCashflowsFromInvestingActivities = totalCashflowsFromInvestingActivities,_netBorrowings = netBorrowings,_totalCashFromFinancingActivities = totalCashFromFinancingActivities,_changeToOperatingActivities = changeToOperatingActivities,_netIncome = netIncome,_changeInCash = changeInCash,_beginPeriodCashFlow = beginPeriodCashFlow,_endPeriodCashFlow = endPeriodCashFlow,_totalCashFromOperatingActivities = totalCashFromOperatingActivities,_issuanceOfCapitalStock = issuanceOfCapitalStock,_depreciation = depreciation,_otherCashflowsFromInvestingActivities = otherCashflowsFromInvestingActivities,_dividendsPaid = dividendsPaid,_changeToInventory = changeToInventory,_changeToAccountReceivables = changeToAccountReceivables,_salePurchaseOfStock = salePurchaseOfStock,_otherCashflowsFromFinancingActivities = otherCashflowsFromFinancingActivities,_changeToNetincome = changeToNetincome,_capitalExpenditures = capitalExpenditures,_changeReceivables = changeReceivables,_cashFlowsOtherOperating = cashFlowsOtherOperating,_exchangeRateChanges = exchangeRateChanges,_cashAndCashEquivalentsChanges = cashAndCashEquivalentsChanges,_changeInWorkingCapital = changeInWorkingCapital,_stockBasedCompensation = stockBasedCompensation,_otherNonCashItems = otherNonCashItems,_freeCashFlow = freeCashFlow,_researchDevelopment = researchDevelopment,_effectOfAccountingCharges = effectOfAccountingCharges,_incomeBeforeTax = incomeBeforeTax,_minorityInterest = minorityInterest,_sellingGeneralAdministrative = sellingGeneralAdministrative,_sellingAndMarketingExpenses = sellingAndMarketingExpenses,_grossProfit = grossProfit,_reconciledDepreciation = reconciledDepreciation,_ebit = ebit,_ebitda = ebitda,_depreciationAndAmortization = depreciationAndAmortization,_nonOperatingIncomeNetOther = nonOperatingIncomeNetOther,_operatingIncome = operatingIncome,_otherOperatingExpenses = otherOperatingExpenses,_interestExpense = interestExpense,_taxProvision = taxProvision,_interestIncome = interestIncome,_netInterestIncome = netInterestIncome,_extraordinaryItems = extraordinaryItems,_nonRecurring = nonRecurring,_otherItems = otherItems,_incomeTaxExpense = incomeTaxExpense,_totalRevenue = totalRevenue,_totalOperatingExpenses = totalOperatingExpenses,_costOfRevenue = costOfRevenue,_totalOtherIncomeExpenseNet = totalOtherIncomeExpenseNet,_discontinuedOperations = discontinuedOperations,_netIncomeFromContinuingOps = netIncomeFromContinuingOps,_netIncomeApplicableToCommonShares = netIncomeApplicableToCommonShares,_preferredStockAndOtherAdjustments = preferredStockAndOtherAdjustments,_type = type,_stockType = stockType;
  factory _FinancialChart.fromJson(Map<String, dynamic> json) => _$FinancialChartFromJson(json);

 final  List<FinancialDataPoint>? _totalAssets;
@override List<FinancialDataPoint>? get totalAssets {
  final value = _totalAssets;
  if (value == null) return null;
  if (_totalAssets is EqualUnmodifiableListView) return _totalAssets;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<FinancialDataPoint>? _intangibleAssets;
@override List<FinancialDataPoint>? get intangibleAssets {
  final value = _intangibleAssets;
  if (value == null) return null;
  if (_intangibleAssets is EqualUnmodifiableListView) return _intangibleAssets;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<FinancialDataPoint>? _earningAssets;
@override List<FinancialDataPoint>? get earningAssets {
  final value = _earningAssets;
  if (value == null) return null;
  if (_earningAssets is EqualUnmodifiableListView) return _earningAssets;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<FinancialDataPoint>? _otherCurrentAssets;
@override List<FinancialDataPoint>? get otherCurrentAssets {
  final value = _otherCurrentAssets;
  if (value == null) return null;
  if (_otherCurrentAssets is EqualUnmodifiableListView) return _otherCurrentAssets;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<FinancialDataPoint>? _totalLiab;
@override List<FinancialDataPoint>? get totalLiab {
  final value = _totalLiab;
  if (value == null) return null;
  if (_totalLiab is EqualUnmodifiableListView) return _totalLiab;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<FinancialDataPoint>? _totalStockholderEquity;
@override List<FinancialDataPoint>? get totalStockholderEquity {
  final value = _totalStockholderEquity;
  if (value == null) return null;
  if (_totalStockholderEquity is EqualUnmodifiableListView) return _totalStockholderEquity;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<FinancialDataPoint>? _deferredLongTermLiab;
@override List<FinancialDataPoint>? get deferredLongTermLiab {
  final value = _deferredLongTermLiab;
  if (value == null) return null;
  if (_deferredLongTermLiab is EqualUnmodifiableListView) return _deferredLongTermLiab;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<FinancialDataPoint>? _otherCurrentLiab;
@override List<FinancialDataPoint>? get otherCurrentLiab {
  final value = _otherCurrentLiab;
  if (value == null) return null;
  if (_otherCurrentLiab is EqualUnmodifiableListView) return _otherCurrentLiab;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<FinancialDataPoint>? _commonStock;
@override List<FinancialDataPoint>? get commonStock {
  final value = _commonStock;
  if (value == null) return null;
  if (_commonStock is EqualUnmodifiableListView) return _commonStock;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<FinancialDataPoint>? _capitalStock;
@override List<FinancialDataPoint>? get capitalStock {
  final value = _capitalStock;
  if (value == null) return null;
  if (_capitalStock is EqualUnmodifiableListView) return _capitalStock;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<FinancialDataPoint>? _retainedEarnings;
@override List<FinancialDataPoint>? get retainedEarnings {
  final value = _retainedEarnings;
  if (value == null) return null;
  if (_retainedEarnings is EqualUnmodifiableListView) return _retainedEarnings;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<FinancialDataPoint>? _otherLiab;
@override List<FinancialDataPoint>? get otherLiab {
  final value = _otherLiab;
  if (value == null) return null;
  if (_otherLiab is EqualUnmodifiableListView) return _otherLiab;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<FinancialDataPoint>? _goodWill;
@override List<FinancialDataPoint>? get goodWill {
  final value = _goodWill;
  if (value == null) return null;
  if (_goodWill is EqualUnmodifiableListView) return _goodWill;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<FinancialDataPoint>? _otherAssets;
@override List<FinancialDataPoint>? get otherAssets {
  final value = _otherAssets;
  if (value == null) return null;
  if (_otherAssets is EqualUnmodifiableListView) return _otherAssets;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<FinancialDataPoint>? _cash;
@override List<FinancialDataPoint>? get cash {
  final value = _cash;
  if (value == null) return null;
  if (_cash is EqualUnmodifiableListView) return _cash;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<FinancialDataPoint>? _cashAndEquivalents;
@override List<FinancialDataPoint>? get cashAndEquivalents {
  final value = _cashAndEquivalents;
  if (value == null) return null;
  if (_cashAndEquivalents is EqualUnmodifiableListView) return _cashAndEquivalents;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<FinancialDataPoint>? _totalCurrentLiabilities;
@override List<FinancialDataPoint>? get totalCurrentLiabilities {
  final value = _totalCurrentLiabilities;
  if (value == null) return null;
  if (_totalCurrentLiabilities is EqualUnmodifiableListView) return _totalCurrentLiabilities;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<FinancialDataPoint>? _currentDeferredRevenue;
@override List<FinancialDataPoint>? get currentDeferredRevenue {
  final value = _currentDeferredRevenue;
  if (value == null) return null;
  if (_currentDeferredRevenue is EqualUnmodifiableListView) return _currentDeferredRevenue;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<FinancialDataPoint>? _netDebt;
@override List<FinancialDataPoint>? get netDebt {
  final value = _netDebt;
  if (value == null) return null;
  if (_netDebt is EqualUnmodifiableListView) return _netDebt;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<FinancialDataPoint>? _shortTermDebt;
@override List<FinancialDataPoint>? get shortTermDebt {
  final value = _shortTermDebt;
  if (value == null) return null;
  if (_shortTermDebt is EqualUnmodifiableListView) return _shortTermDebt;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<FinancialDataPoint>? _shortLongTermDebt;
@override List<FinancialDataPoint>? get shortLongTermDebt {
  final value = _shortLongTermDebt;
  if (value == null) return null;
  if (_shortLongTermDebt is EqualUnmodifiableListView) return _shortLongTermDebt;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<FinancialDataPoint>? _shortLongTermDebtTotal;
@override List<FinancialDataPoint>? get shortLongTermDebtTotal {
  final value = _shortLongTermDebtTotal;
  if (value == null) return null;
  if (_shortLongTermDebtTotal is EqualUnmodifiableListView) return _shortLongTermDebtTotal;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<FinancialDataPoint>? _otherStockholderEquity;
@override List<FinancialDataPoint>? get otherStockholderEquity {
  final value = _otherStockholderEquity;
  if (value == null) return null;
  if (_otherStockholderEquity is EqualUnmodifiableListView) return _otherStockholderEquity;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<FinancialDataPoint>? _propertyPlantEquipment;
@override List<FinancialDataPoint>? get propertyPlantEquipment {
  final value = _propertyPlantEquipment;
  if (value == null) return null;
  if (_propertyPlantEquipment is EqualUnmodifiableListView) return _propertyPlantEquipment;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<FinancialDataPoint>? _totalCurrentAssets;
@override List<FinancialDataPoint>? get totalCurrentAssets {
  final value = _totalCurrentAssets;
  if (value == null) return null;
  if (_totalCurrentAssets is EqualUnmodifiableListView) return _totalCurrentAssets;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<FinancialDataPoint>? _longTermInvestments;
@override List<FinancialDataPoint>? get longTermInvestments {
  final value = _longTermInvestments;
  if (value == null) return null;
  if (_longTermInvestments is EqualUnmodifiableListView) return _longTermInvestments;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<FinancialDataPoint>? _netTangibleAssets;
@override List<FinancialDataPoint>? get netTangibleAssets {
  final value = _netTangibleAssets;
  if (value == null) return null;
  if (_netTangibleAssets is EqualUnmodifiableListView) return _netTangibleAssets;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<FinancialDataPoint>? _shortTermInvestments;
@override List<FinancialDataPoint>? get shortTermInvestments {
  final value = _shortTermInvestments;
  if (value == null) return null;
  if (_shortTermInvestments is EqualUnmodifiableListView) return _shortTermInvestments;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<FinancialDataPoint>? _netReceivables;
@override List<FinancialDataPoint>? get netReceivables {
  final value = _netReceivables;
  if (value == null) return null;
  if (_netReceivables is EqualUnmodifiableListView) return _netReceivables;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<FinancialDataPoint>? _longTermDebt;
@override List<FinancialDataPoint>? get longTermDebt {
  final value = _longTermDebt;
  if (value == null) return null;
  if (_longTermDebt is EqualUnmodifiableListView) return _longTermDebt;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<FinancialDataPoint>? _inventory;
@override List<FinancialDataPoint>? get inventory {
  final value = _inventory;
  if (value == null) return null;
  if (_inventory is EqualUnmodifiableListView) return _inventory;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<FinancialDataPoint>? _accountsPayable;
@override List<FinancialDataPoint>? get accountsPayable {
  final value = _accountsPayable;
  if (value == null) return null;
  if (_accountsPayable is EqualUnmodifiableListView) return _accountsPayable;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<FinancialDataPoint>? _totalPermanentEquity;
@override List<FinancialDataPoint>? get totalPermanentEquity {
  final value = _totalPermanentEquity;
  if (value == null) return null;
  if (_totalPermanentEquity is EqualUnmodifiableListView) return _totalPermanentEquity;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<FinancialDataPoint>? _noncontrollingInterestInConsolidatedEntity;
@override List<FinancialDataPoint>? get noncontrollingInterestInConsolidatedEntity {
  final value = _noncontrollingInterestInConsolidatedEntity;
  if (value == null) return null;
  if (_noncontrollingInterestInConsolidatedEntity is EqualUnmodifiableListView) return _noncontrollingInterestInConsolidatedEntity;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<FinancialDataPoint>? _temporaryEquityRedeemableNoncontrollingInterests;
@override List<FinancialDataPoint>? get temporaryEquityRedeemableNoncontrollingInterests {
  final value = _temporaryEquityRedeemableNoncontrollingInterests;
  if (value == null) return null;
  if (_temporaryEquityRedeemableNoncontrollingInterests is EqualUnmodifiableListView) return _temporaryEquityRedeemableNoncontrollingInterests;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<FinancialDataPoint>? _accumulatedOtherComprehensiveIncome;
@override List<FinancialDataPoint>? get accumulatedOtherComprehensiveIncome {
  final value = _accumulatedOtherComprehensiveIncome;
  if (value == null) return null;
  if (_accumulatedOtherComprehensiveIncome is EqualUnmodifiableListView) return _accumulatedOtherComprehensiveIncome;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<FinancialDataPoint>? _additionalPaidInCapital;
@override List<FinancialDataPoint>? get additionalPaidInCapital {
  final value = _additionalPaidInCapital;
  if (value == null) return null;
  if (_additionalPaidInCapital is EqualUnmodifiableListView) return _additionalPaidInCapital;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<FinancialDataPoint>? _commonStockTotalEquity;
@override List<FinancialDataPoint>? get commonStockTotalEquity {
  final value = _commonStockTotalEquity;
  if (value == null) return null;
  if (_commonStockTotalEquity is EqualUnmodifiableListView) return _commonStockTotalEquity;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<FinancialDataPoint>? _preferredStockTotalEquity;
@override List<FinancialDataPoint>? get preferredStockTotalEquity {
  final value = _preferredStockTotalEquity;
  if (value == null) return null;
  if (_preferredStockTotalEquity is EqualUnmodifiableListView) return _preferredStockTotalEquity;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<FinancialDataPoint>? _retainedEarningsTotalEquity;
@override List<FinancialDataPoint>? get retainedEarningsTotalEquity {
  final value = _retainedEarningsTotalEquity;
  if (value == null) return null;
  if (_retainedEarningsTotalEquity is EqualUnmodifiableListView) return _retainedEarningsTotalEquity;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<FinancialDataPoint>? _treasuryStock;
@override List<FinancialDataPoint>? get treasuryStock {
  final value = _treasuryStock;
  if (value == null) return null;
  if (_treasuryStock is EqualUnmodifiableListView) return _treasuryStock;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<FinancialDataPoint>? _accumulatedAmortization;
@override List<FinancialDataPoint>? get accumulatedAmortization {
  final value = _accumulatedAmortization;
  if (value == null) return null;
  if (_accumulatedAmortization is EqualUnmodifiableListView) return _accumulatedAmortization;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<FinancialDataPoint>? _nonCurrrentAssetsOther;
@override List<FinancialDataPoint>? get nonCurrrentAssetsOther {
  final value = _nonCurrrentAssetsOther;
  if (value == null) return null;
  if (_nonCurrrentAssetsOther is EqualUnmodifiableListView) return _nonCurrrentAssetsOther;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<FinancialDataPoint>? _deferredLongTermAssetCharges;
@override List<FinancialDataPoint>? get deferredLongTermAssetCharges {
  final value = _deferredLongTermAssetCharges;
  if (value == null) return null;
  if (_deferredLongTermAssetCharges is EqualUnmodifiableListView) return _deferredLongTermAssetCharges;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<FinancialDataPoint>? _nonCurrentAssetsTotal;
@override List<FinancialDataPoint>? get nonCurrentAssetsTotal {
  final value = _nonCurrentAssetsTotal;
  if (value == null) return null;
  if (_nonCurrentAssetsTotal is EqualUnmodifiableListView) return _nonCurrentAssetsTotal;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<FinancialDataPoint>? _capitalLeaseObligations;
@override List<FinancialDataPoint>? get capitalLeaseObligations {
  final value = _capitalLeaseObligations;
  if (value == null) return null;
  if (_capitalLeaseObligations is EqualUnmodifiableListView) return _capitalLeaseObligations;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<FinancialDataPoint>? _longTermDebtTotal;
@override List<FinancialDataPoint>? get longTermDebtTotal {
  final value = _longTermDebtTotal;
  if (value == null) return null;
  if (_longTermDebtTotal is EqualUnmodifiableListView) return _longTermDebtTotal;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<FinancialDataPoint>? _nonCurrentLiabilitiesOther;
@override List<FinancialDataPoint>? get nonCurrentLiabilitiesOther {
  final value = _nonCurrentLiabilitiesOther;
  if (value == null) return null;
  if (_nonCurrentLiabilitiesOther is EqualUnmodifiableListView) return _nonCurrentLiabilitiesOther;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<FinancialDataPoint>? _nonCurrentLiabilitiesTotal;
@override List<FinancialDataPoint>? get nonCurrentLiabilitiesTotal {
  final value = _nonCurrentLiabilitiesTotal;
  if (value == null) return null;
  if (_nonCurrentLiabilitiesTotal is EqualUnmodifiableListView) return _nonCurrentLiabilitiesTotal;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<FinancialDataPoint>? _negativeGoodwill;
@override List<FinancialDataPoint>? get negativeGoodwill {
  final value = _negativeGoodwill;
  if (value == null) return null;
  if (_negativeGoodwill is EqualUnmodifiableListView) return _negativeGoodwill;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<FinancialDataPoint>? _warrants;
@override List<FinancialDataPoint>? get warrants {
  final value = _warrants;
  if (value == null) return null;
  if (_warrants is EqualUnmodifiableListView) return _warrants;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<FinancialDataPoint>? _preferredStockRedeemable;
@override List<FinancialDataPoint>? get preferredStockRedeemable {
  final value = _preferredStockRedeemable;
  if (value == null) return null;
  if (_preferredStockRedeemable is EqualUnmodifiableListView) return _preferredStockRedeemable;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<FinancialDataPoint>? _capitalSurpluse;
@override List<FinancialDataPoint>? get capitalSurpluse {
  final value = _capitalSurpluse;
  if (value == null) return null;
  if (_capitalSurpluse is EqualUnmodifiableListView) return _capitalSurpluse;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<FinancialDataPoint>? _liabilitiesAndStockholdersEquity;
@override List<FinancialDataPoint>? get liabilitiesAndStockholdersEquity {
  final value = _liabilitiesAndStockholdersEquity;
  if (value == null) return null;
  if (_liabilitiesAndStockholdersEquity is EqualUnmodifiableListView) return _liabilitiesAndStockholdersEquity;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<FinancialDataPoint>? _cashAndShortTermInvestments;
@override List<FinancialDataPoint>? get cashAndShortTermInvestments {
  final value = _cashAndShortTermInvestments;
  if (value == null) return null;
  if (_cashAndShortTermInvestments is EqualUnmodifiableListView) return _cashAndShortTermInvestments;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<FinancialDataPoint>? _propertyPlantAndEquipmentGross;
@override List<FinancialDataPoint>? get propertyPlantAndEquipmentGross {
  final value = _propertyPlantAndEquipmentGross;
  if (value == null) return null;
  if (_propertyPlantAndEquipmentGross is EqualUnmodifiableListView) return _propertyPlantAndEquipmentGross;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<FinancialDataPoint>? _propertyPlantAndEquipmentNet;
@override List<FinancialDataPoint>? get propertyPlantAndEquipmentNet {
  final value = _propertyPlantAndEquipmentNet;
  if (value == null) return null;
  if (_propertyPlantAndEquipmentNet is EqualUnmodifiableListView) return _propertyPlantAndEquipmentNet;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<FinancialDataPoint>? _accumulatedDepreciation;
@override List<FinancialDataPoint>? get accumulatedDepreciation {
  final value = _accumulatedDepreciation;
  if (value == null) return null;
  if (_accumulatedDepreciation is EqualUnmodifiableListView) return _accumulatedDepreciation;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<FinancialDataPoint>? _netWorkingCapital;
@override List<FinancialDataPoint>? get netWorkingCapital {
  final value = _netWorkingCapital;
  if (value == null) return null;
  if (_netWorkingCapital is EqualUnmodifiableListView) return _netWorkingCapital;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<FinancialDataPoint>? _netInvestedCapital;
@override List<FinancialDataPoint>? get netInvestedCapital {
  final value = _netInvestedCapital;
  if (value == null) return null;
  if (_netInvestedCapital is EqualUnmodifiableListView) return _netInvestedCapital;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<FinancialDataPoint>? _commonStockSharesOutstanding;
@override List<FinancialDataPoint>? get commonStockSharesOutstanding {
  final value = _commonStockSharesOutstanding;
  if (value == null) return null;
  if (_commonStockSharesOutstanding is EqualUnmodifiableListView) return _commonStockSharesOutstanding;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

// Cash Flow specific fields
 final  List<FinancialDataPoint>? _investments;
// Cash Flow specific fields
@override List<FinancialDataPoint>? get investments {
  final value = _investments;
  if (value == null) return null;
  if (_investments is EqualUnmodifiableListView) return _investments;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<FinancialDataPoint>? _changeToLiabilities;
@override List<FinancialDataPoint>? get changeToLiabilities {
  final value = _changeToLiabilities;
  if (value == null) return null;
  if (_changeToLiabilities is EqualUnmodifiableListView) return _changeToLiabilities;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<FinancialDataPoint>? _totalCashflowsFromInvestingActivities;
@override List<FinancialDataPoint>? get totalCashflowsFromInvestingActivities {
  final value = _totalCashflowsFromInvestingActivities;
  if (value == null) return null;
  if (_totalCashflowsFromInvestingActivities is EqualUnmodifiableListView) return _totalCashflowsFromInvestingActivities;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<FinancialDataPoint>? _netBorrowings;
@override List<FinancialDataPoint>? get netBorrowings {
  final value = _netBorrowings;
  if (value == null) return null;
  if (_netBorrowings is EqualUnmodifiableListView) return _netBorrowings;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<FinancialDataPoint>? _totalCashFromFinancingActivities;
@override List<FinancialDataPoint>? get totalCashFromFinancingActivities {
  final value = _totalCashFromFinancingActivities;
  if (value == null) return null;
  if (_totalCashFromFinancingActivities is EqualUnmodifiableListView) return _totalCashFromFinancingActivities;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<FinancialDataPoint>? _changeToOperatingActivities;
@override List<FinancialDataPoint>? get changeToOperatingActivities {
  final value = _changeToOperatingActivities;
  if (value == null) return null;
  if (_changeToOperatingActivities is EqualUnmodifiableListView) return _changeToOperatingActivities;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<FinancialDataPoint>? _netIncome;
@override List<FinancialDataPoint>? get netIncome {
  final value = _netIncome;
  if (value == null) return null;
  if (_netIncome is EqualUnmodifiableListView) return _netIncome;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<FinancialDataPoint>? _changeInCash;
@override List<FinancialDataPoint>? get changeInCash {
  final value = _changeInCash;
  if (value == null) return null;
  if (_changeInCash is EqualUnmodifiableListView) return _changeInCash;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<FinancialDataPoint>? _beginPeriodCashFlow;
@override List<FinancialDataPoint>? get beginPeriodCashFlow {
  final value = _beginPeriodCashFlow;
  if (value == null) return null;
  if (_beginPeriodCashFlow is EqualUnmodifiableListView) return _beginPeriodCashFlow;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<FinancialDataPoint>? _endPeriodCashFlow;
@override List<FinancialDataPoint>? get endPeriodCashFlow {
  final value = _endPeriodCashFlow;
  if (value == null) return null;
  if (_endPeriodCashFlow is EqualUnmodifiableListView) return _endPeriodCashFlow;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<FinancialDataPoint>? _totalCashFromOperatingActivities;
@override List<FinancialDataPoint>? get totalCashFromOperatingActivities {
  final value = _totalCashFromOperatingActivities;
  if (value == null) return null;
  if (_totalCashFromOperatingActivities is EqualUnmodifiableListView) return _totalCashFromOperatingActivities;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<FinancialDataPoint>? _issuanceOfCapitalStock;
@override List<FinancialDataPoint>? get issuanceOfCapitalStock {
  final value = _issuanceOfCapitalStock;
  if (value == null) return null;
  if (_issuanceOfCapitalStock is EqualUnmodifiableListView) return _issuanceOfCapitalStock;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<FinancialDataPoint>? _depreciation;
@override List<FinancialDataPoint>? get depreciation {
  final value = _depreciation;
  if (value == null) return null;
  if (_depreciation is EqualUnmodifiableListView) return _depreciation;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<FinancialDataPoint>? _otherCashflowsFromInvestingActivities;
@override List<FinancialDataPoint>? get otherCashflowsFromInvestingActivities {
  final value = _otherCashflowsFromInvestingActivities;
  if (value == null) return null;
  if (_otherCashflowsFromInvestingActivities is EqualUnmodifiableListView) return _otherCashflowsFromInvestingActivities;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<FinancialDataPoint>? _dividendsPaid;
@override List<FinancialDataPoint>? get dividendsPaid {
  final value = _dividendsPaid;
  if (value == null) return null;
  if (_dividendsPaid is EqualUnmodifiableListView) return _dividendsPaid;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<FinancialDataPoint>? _changeToInventory;
@override List<FinancialDataPoint>? get changeToInventory {
  final value = _changeToInventory;
  if (value == null) return null;
  if (_changeToInventory is EqualUnmodifiableListView) return _changeToInventory;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<FinancialDataPoint>? _changeToAccountReceivables;
@override List<FinancialDataPoint>? get changeToAccountReceivables {
  final value = _changeToAccountReceivables;
  if (value == null) return null;
  if (_changeToAccountReceivables is EqualUnmodifiableListView) return _changeToAccountReceivables;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<FinancialDataPoint>? _salePurchaseOfStock;
@override List<FinancialDataPoint>? get salePurchaseOfStock {
  final value = _salePurchaseOfStock;
  if (value == null) return null;
  if (_salePurchaseOfStock is EqualUnmodifiableListView) return _salePurchaseOfStock;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<FinancialDataPoint>? _otherCashflowsFromFinancingActivities;
@override List<FinancialDataPoint>? get otherCashflowsFromFinancingActivities {
  final value = _otherCashflowsFromFinancingActivities;
  if (value == null) return null;
  if (_otherCashflowsFromFinancingActivities is EqualUnmodifiableListView) return _otherCashflowsFromFinancingActivities;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<FinancialDataPoint>? _changeToNetincome;
@override List<FinancialDataPoint>? get changeToNetincome {
  final value = _changeToNetincome;
  if (value == null) return null;
  if (_changeToNetincome is EqualUnmodifiableListView) return _changeToNetincome;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<FinancialDataPoint>? _capitalExpenditures;
@override List<FinancialDataPoint>? get capitalExpenditures {
  final value = _capitalExpenditures;
  if (value == null) return null;
  if (_capitalExpenditures is EqualUnmodifiableListView) return _capitalExpenditures;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<FinancialDataPoint>? _changeReceivables;
@override List<FinancialDataPoint>? get changeReceivables {
  final value = _changeReceivables;
  if (value == null) return null;
  if (_changeReceivables is EqualUnmodifiableListView) return _changeReceivables;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<FinancialDataPoint>? _cashFlowsOtherOperating;
@override List<FinancialDataPoint>? get cashFlowsOtherOperating {
  final value = _cashFlowsOtherOperating;
  if (value == null) return null;
  if (_cashFlowsOtherOperating is EqualUnmodifiableListView) return _cashFlowsOtherOperating;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<FinancialDataPoint>? _exchangeRateChanges;
@override List<FinancialDataPoint>? get exchangeRateChanges {
  final value = _exchangeRateChanges;
  if (value == null) return null;
  if (_exchangeRateChanges is EqualUnmodifiableListView) return _exchangeRateChanges;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<FinancialDataPoint>? _cashAndCashEquivalentsChanges;
@override List<FinancialDataPoint>? get cashAndCashEquivalentsChanges {
  final value = _cashAndCashEquivalentsChanges;
  if (value == null) return null;
  if (_cashAndCashEquivalentsChanges is EqualUnmodifiableListView) return _cashAndCashEquivalentsChanges;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<FinancialDataPoint>? _changeInWorkingCapital;
@override List<FinancialDataPoint>? get changeInWorkingCapital {
  final value = _changeInWorkingCapital;
  if (value == null) return null;
  if (_changeInWorkingCapital is EqualUnmodifiableListView) return _changeInWorkingCapital;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<FinancialDataPoint>? _stockBasedCompensation;
@override List<FinancialDataPoint>? get stockBasedCompensation {
  final value = _stockBasedCompensation;
  if (value == null) return null;
  if (_stockBasedCompensation is EqualUnmodifiableListView) return _stockBasedCompensation;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<FinancialDataPoint>? _otherNonCashItems;
@override List<FinancialDataPoint>? get otherNonCashItems {
  final value = _otherNonCashItems;
  if (value == null) return null;
  if (_otherNonCashItems is EqualUnmodifiableListView) return _otherNonCashItems;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<FinancialDataPoint>? _freeCashFlow;
@override List<FinancialDataPoint>? get freeCashFlow {
  final value = _freeCashFlow;
  if (value == null) return null;
  if (_freeCashFlow is EqualUnmodifiableListView) return _freeCashFlow;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

// Income Statement specific fields
 final  List<FinancialDataPoint>? _researchDevelopment;
// Income Statement specific fields
@override List<FinancialDataPoint>? get researchDevelopment {
  final value = _researchDevelopment;
  if (value == null) return null;
  if (_researchDevelopment is EqualUnmodifiableListView) return _researchDevelopment;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<FinancialDataPoint>? _effectOfAccountingCharges;
@override List<FinancialDataPoint>? get effectOfAccountingCharges {
  final value = _effectOfAccountingCharges;
  if (value == null) return null;
  if (_effectOfAccountingCharges is EqualUnmodifiableListView) return _effectOfAccountingCharges;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<FinancialDataPoint>? _incomeBeforeTax;
@override List<FinancialDataPoint>? get incomeBeforeTax {
  final value = _incomeBeforeTax;
  if (value == null) return null;
  if (_incomeBeforeTax is EqualUnmodifiableListView) return _incomeBeforeTax;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<FinancialDataPoint>? _minorityInterest;
@override List<FinancialDataPoint>? get minorityInterest {
  final value = _minorityInterest;
  if (value == null) return null;
  if (_minorityInterest is EqualUnmodifiableListView) return _minorityInterest;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<FinancialDataPoint>? _sellingGeneralAdministrative;
@override List<FinancialDataPoint>? get sellingGeneralAdministrative {
  final value = _sellingGeneralAdministrative;
  if (value == null) return null;
  if (_sellingGeneralAdministrative is EqualUnmodifiableListView) return _sellingGeneralAdministrative;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<FinancialDataPoint>? _sellingAndMarketingExpenses;
@override List<FinancialDataPoint>? get sellingAndMarketingExpenses {
  final value = _sellingAndMarketingExpenses;
  if (value == null) return null;
  if (_sellingAndMarketingExpenses is EqualUnmodifiableListView) return _sellingAndMarketingExpenses;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<FinancialDataPoint>? _grossProfit;
@override List<FinancialDataPoint>? get grossProfit {
  final value = _grossProfit;
  if (value == null) return null;
  if (_grossProfit is EqualUnmodifiableListView) return _grossProfit;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<FinancialDataPoint>? _reconciledDepreciation;
@override List<FinancialDataPoint>? get reconciledDepreciation {
  final value = _reconciledDepreciation;
  if (value == null) return null;
  if (_reconciledDepreciation is EqualUnmodifiableListView) return _reconciledDepreciation;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<FinancialDataPoint>? _ebit;
@override List<FinancialDataPoint>? get ebit {
  final value = _ebit;
  if (value == null) return null;
  if (_ebit is EqualUnmodifiableListView) return _ebit;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<FinancialDataPoint>? _ebitda;
@override List<FinancialDataPoint>? get ebitda {
  final value = _ebitda;
  if (value == null) return null;
  if (_ebitda is EqualUnmodifiableListView) return _ebitda;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<FinancialDataPoint>? _depreciationAndAmortization;
@override List<FinancialDataPoint>? get depreciationAndAmortization {
  final value = _depreciationAndAmortization;
  if (value == null) return null;
  if (_depreciationAndAmortization is EqualUnmodifiableListView) return _depreciationAndAmortization;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<FinancialDataPoint>? _nonOperatingIncomeNetOther;
@override List<FinancialDataPoint>? get nonOperatingIncomeNetOther {
  final value = _nonOperatingIncomeNetOther;
  if (value == null) return null;
  if (_nonOperatingIncomeNetOther is EqualUnmodifiableListView) return _nonOperatingIncomeNetOther;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<FinancialDataPoint>? _operatingIncome;
@override List<FinancialDataPoint>? get operatingIncome {
  final value = _operatingIncome;
  if (value == null) return null;
  if (_operatingIncome is EqualUnmodifiableListView) return _operatingIncome;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<FinancialDataPoint>? _otherOperatingExpenses;
@override List<FinancialDataPoint>? get otherOperatingExpenses {
  final value = _otherOperatingExpenses;
  if (value == null) return null;
  if (_otherOperatingExpenses is EqualUnmodifiableListView) return _otherOperatingExpenses;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<FinancialDataPoint>? _interestExpense;
@override List<FinancialDataPoint>? get interestExpense {
  final value = _interestExpense;
  if (value == null) return null;
  if (_interestExpense is EqualUnmodifiableListView) return _interestExpense;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<FinancialDataPoint>? _taxProvision;
@override List<FinancialDataPoint>? get taxProvision {
  final value = _taxProvision;
  if (value == null) return null;
  if (_taxProvision is EqualUnmodifiableListView) return _taxProvision;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<FinancialDataPoint>? _interestIncome;
@override List<FinancialDataPoint>? get interestIncome {
  final value = _interestIncome;
  if (value == null) return null;
  if (_interestIncome is EqualUnmodifiableListView) return _interestIncome;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<FinancialDataPoint>? _netInterestIncome;
@override List<FinancialDataPoint>? get netInterestIncome {
  final value = _netInterestIncome;
  if (value == null) return null;
  if (_netInterestIncome is EqualUnmodifiableListView) return _netInterestIncome;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<FinancialDataPoint>? _extraordinaryItems;
@override List<FinancialDataPoint>? get extraordinaryItems {
  final value = _extraordinaryItems;
  if (value == null) return null;
  if (_extraordinaryItems is EqualUnmodifiableListView) return _extraordinaryItems;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<FinancialDataPoint>? _nonRecurring;
@override List<FinancialDataPoint>? get nonRecurring {
  final value = _nonRecurring;
  if (value == null) return null;
  if (_nonRecurring is EqualUnmodifiableListView) return _nonRecurring;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<FinancialDataPoint>? _otherItems;
@override List<FinancialDataPoint>? get otherItems {
  final value = _otherItems;
  if (value == null) return null;
  if (_otherItems is EqualUnmodifiableListView) return _otherItems;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<FinancialDataPoint>? _incomeTaxExpense;
@override List<FinancialDataPoint>? get incomeTaxExpense {
  final value = _incomeTaxExpense;
  if (value == null) return null;
  if (_incomeTaxExpense is EqualUnmodifiableListView) return _incomeTaxExpense;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<FinancialDataPoint>? _totalRevenue;
@override List<FinancialDataPoint>? get totalRevenue {
  final value = _totalRevenue;
  if (value == null) return null;
  if (_totalRevenue is EqualUnmodifiableListView) return _totalRevenue;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<FinancialDataPoint>? _totalOperatingExpenses;
@override List<FinancialDataPoint>? get totalOperatingExpenses {
  final value = _totalOperatingExpenses;
  if (value == null) return null;
  if (_totalOperatingExpenses is EqualUnmodifiableListView) return _totalOperatingExpenses;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<FinancialDataPoint>? _costOfRevenue;
@override List<FinancialDataPoint>? get costOfRevenue {
  final value = _costOfRevenue;
  if (value == null) return null;
  if (_costOfRevenue is EqualUnmodifiableListView) return _costOfRevenue;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<FinancialDataPoint>? _totalOtherIncomeExpenseNet;
@override List<FinancialDataPoint>? get totalOtherIncomeExpenseNet {
  final value = _totalOtherIncomeExpenseNet;
  if (value == null) return null;
  if (_totalOtherIncomeExpenseNet is EqualUnmodifiableListView) return _totalOtherIncomeExpenseNet;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<FinancialDataPoint>? _discontinuedOperations;
@override List<FinancialDataPoint>? get discontinuedOperations {
  final value = _discontinuedOperations;
  if (value == null) return null;
  if (_discontinuedOperations is EqualUnmodifiableListView) return _discontinuedOperations;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<FinancialDataPoint>? _netIncomeFromContinuingOps;
@override List<FinancialDataPoint>? get netIncomeFromContinuingOps {
  final value = _netIncomeFromContinuingOps;
  if (value == null) return null;
  if (_netIncomeFromContinuingOps is EqualUnmodifiableListView) return _netIncomeFromContinuingOps;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<FinancialDataPoint>? _netIncomeApplicableToCommonShares;
@override List<FinancialDataPoint>? get netIncomeApplicableToCommonShares {
  final value = _netIncomeApplicableToCommonShares;
  if (value == null) return null;
  if (_netIncomeApplicableToCommonShares is EqualUnmodifiableListView) return _netIncomeApplicableToCommonShares;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<FinancialDataPoint>? _preferredStockAndOtherAdjustments;
@override List<FinancialDataPoint>? get preferredStockAndOtherAdjustments {
  final value = _preferredStockAndOtherAdjustments;
  if (value == null) return null;
  if (_preferredStockAndOtherAdjustments is EqualUnmodifiableListView) return _preferredStockAndOtherAdjustments;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

// Common fields
 final  List<FinancialDataPoint>? _type;
// Common fields
@override List<FinancialDataPoint>? get type {
  final value = _type;
  if (value == null) return null;
  if (_type is EqualUnmodifiableListView) return _type;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<FinancialDataPoint>? _stockType;
@override@JsonKey(name: 'stock_type') List<FinancialDataPoint>? get stockType {
  final value = _stockType;
  if (value == null) return null;
  if (_stockType is EqualUnmodifiableListView) return _stockType;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of FinancialChart
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FinancialChartCopyWith<_FinancialChart> get copyWith => __$FinancialChartCopyWithImpl<_FinancialChart>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FinancialChartToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FinancialChart&&const DeepCollectionEquality().equals(other._totalAssets, _totalAssets)&&const DeepCollectionEquality().equals(other._intangibleAssets, _intangibleAssets)&&const DeepCollectionEquality().equals(other._earningAssets, _earningAssets)&&const DeepCollectionEquality().equals(other._otherCurrentAssets, _otherCurrentAssets)&&const DeepCollectionEquality().equals(other._totalLiab, _totalLiab)&&const DeepCollectionEquality().equals(other._totalStockholderEquity, _totalStockholderEquity)&&const DeepCollectionEquality().equals(other._deferredLongTermLiab, _deferredLongTermLiab)&&const DeepCollectionEquality().equals(other._otherCurrentLiab, _otherCurrentLiab)&&const DeepCollectionEquality().equals(other._commonStock, _commonStock)&&const DeepCollectionEquality().equals(other._capitalStock, _capitalStock)&&const DeepCollectionEquality().equals(other._retainedEarnings, _retainedEarnings)&&const DeepCollectionEquality().equals(other._otherLiab, _otherLiab)&&const DeepCollectionEquality().equals(other._goodWill, _goodWill)&&const DeepCollectionEquality().equals(other._otherAssets, _otherAssets)&&const DeepCollectionEquality().equals(other._cash, _cash)&&const DeepCollectionEquality().equals(other._cashAndEquivalents, _cashAndEquivalents)&&const DeepCollectionEquality().equals(other._totalCurrentLiabilities, _totalCurrentLiabilities)&&const DeepCollectionEquality().equals(other._currentDeferredRevenue, _currentDeferredRevenue)&&const DeepCollectionEquality().equals(other._netDebt, _netDebt)&&const DeepCollectionEquality().equals(other._shortTermDebt, _shortTermDebt)&&const DeepCollectionEquality().equals(other._shortLongTermDebt, _shortLongTermDebt)&&const DeepCollectionEquality().equals(other._shortLongTermDebtTotal, _shortLongTermDebtTotal)&&const DeepCollectionEquality().equals(other._otherStockholderEquity, _otherStockholderEquity)&&const DeepCollectionEquality().equals(other._propertyPlantEquipment, _propertyPlantEquipment)&&const DeepCollectionEquality().equals(other._totalCurrentAssets, _totalCurrentAssets)&&const DeepCollectionEquality().equals(other._longTermInvestments, _longTermInvestments)&&const DeepCollectionEquality().equals(other._netTangibleAssets, _netTangibleAssets)&&const DeepCollectionEquality().equals(other._shortTermInvestments, _shortTermInvestments)&&const DeepCollectionEquality().equals(other._netReceivables, _netReceivables)&&const DeepCollectionEquality().equals(other._longTermDebt, _longTermDebt)&&const DeepCollectionEquality().equals(other._inventory, _inventory)&&const DeepCollectionEquality().equals(other._accountsPayable, _accountsPayable)&&const DeepCollectionEquality().equals(other._totalPermanentEquity, _totalPermanentEquity)&&const DeepCollectionEquality().equals(other._noncontrollingInterestInConsolidatedEntity, _noncontrollingInterestInConsolidatedEntity)&&const DeepCollectionEquality().equals(other._temporaryEquityRedeemableNoncontrollingInterests, _temporaryEquityRedeemableNoncontrollingInterests)&&const DeepCollectionEquality().equals(other._accumulatedOtherComprehensiveIncome, _accumulatedOtherComprehensiveIncome)&&const DeepCollectionEquality().equals(other._additionalPaidInCapital, _additionalPaidInCapital)&&const DeepCollectionEquality().equals(other._commonStockTotalEquity, _commonStockTotalEquity)&&const DeepCollectionEquality().equals(other._preferredStockTotalEquity, _preferredStockTotalEquity)&&const DeepCollectionEquality().equals(other._retainedEarningsTotalEquity, _retainedEarningsTotalEquity)&&const DeepCollectionEquality().equals(other._treasuryStock, _treasuryStock)&&const DeepCollectionEquality().equals(other._accumulatedAmortization, _accumulatedAmortization)&&const DeepCollectionEquality().equals(other._nonCurrrentAssetsOther, _nonCurrrentAssetsOther)&&const DeepCollectionEquality().equals(other._deferredLongTermAssetCharges, _deferredLongTermAssetCharges)&&const DeepCollectionEquality().equals(other._nonCurrentAssetsTotal, _nonCurrentAssetsTotal)&&const DeepCollectionEquality().equals(other._capitalLeaseObligations, _capitalLeaseObligations)&&const DeepCollectionEquality().equals(other._longTermDebtTotal, _longTermDebtTotal)&&const DeepCollectionEquality().equals(other._nonCurrentLiabilitiesOther, _nonCurrentLiabilitiesOther)&&const DeepCollectionEquality().equals(other._nonCurrentLiabilitiesTotal, _nonCurrentLiabilitiesTotal)&&const DeepCollectionEquality().equals(other._negativeGoodwill, _negativeGoodwill)&&const DeepCollectionEquality().equals(other._warrants, _warrants)&&const DeepCollectionEquality().equals(other._preferredStockRedeemable, _preferredStockRedeemable)&&const DeepCollectionEquality().equals(other._capitalSurpluse, _capitalSurpluse)&&const DeepCollectionEquality().equals(other._liabilitiesAndStockholdersEquity, _liabilitiesAndStockholdersEquity)&&const DeepCollectionEquality().equals(other._cashAndShortTermInvestments, _cashAndShortTermInvestments)&&const DeepCollectionEquality().equals(other._propertyPlantAndEquipmentGross, _propertyPlantAndEquipmentGross)&&const DeepCollectionEquality().equals(other._propertyPlantAndEquipmentNet, _propertyPlantAndEquipmentNet)&&const DeepCollectionEquality().equals(other._accumulatedDepreciation, _accumulatedDepreciation)&&const DeepCollectionEquality().equals(other._netWorkingCapital, _netWorkingCapital)&&const DeepCollectionEquality().equals(other._netInvestedCapital, _netInvestedCapital)&&const DeepCollectionEquality().equals(other._commonStockSharesOutstanding, _commonStockSharesOutstanding)&&const DeepCollectionEquality().equals(other._investments, _investments)&&const DeepCollectionEquality().equals(other._changeToLiabilities, _changeToLiabilities)&&const DeepCollectionEquality().equals(other._totalCashflowsFromInvestingActivities, _totalCashflowsFromInvestingActivities)&&const DeepCollectionEquality().equals(other._netBorrowings, _netBorrowings)&&const DeepCollectionEquality().equals(other._totalCashFromFinancingActivities, _totalCashFromFinancingActivities)&&const DeepCollectionEquality().equals(other._changeToOperatingActivities, _changeToOperatingActivities)&&const DeepCollectionEquality().equals(other._netIncome, _netIncome)&&const DeepCollectionEquality().equals(other._changeInCash, _changeInCash)&&const DeepCollectionEquality().equals(other._beginPeriodCashFlow, _beginPeriodCashFlow)&&const DeepCollectionEquality().equals(other._endPeriodCashFlow, _endPeriodCashFlow)&&const DeepCollectionEquality().equals(other._totalCashFromOperatingActivities, _totalCashFromOperatingActivities)&&const DeepCollectionEquality().equals(other._issuanceOfCapitalStock, _issuanceOfCapitalStock)&&const DeepCollectionEquality().equals(other._depreciation, _depreciation)&&const DeepCollectionEquality().equals(other._otherCashflowsFromInvestingActivities, _otherCashflowsFromInvestingActivities)&&const DeepCollectionEquality().equals(other._dividendsPaid, _dividendsPaid)&&const DeepCollectionEquality().equals(other._changeToInventory, _changeToInventory)&&const DeepCollectionEquality().equals(other._changeToAccountReceivables, _changeToAccountReceivables)&&const DeepCollectionEquality().equals(other._salePurchaseOfStock, _salePurchaseOfStock)&&const DeepCollectionEquality().equals(other._otherCashflowsFromFinancingActivities, _otherCashflowsFromFinancingActivities)&&const DeepCollectionEquality().equals(other._changeToNetincome, _changeToNetincome)&&const DeepCollectionEquality().equals(other._capitalExpenditures, _capitalExpenditures)&&const DeepCollectionEquality().equals(other._changeReceivables, _changeReceivables)&&const DeepCollectionEquality().equals(other._cashFlowsOtherOperating, _cashFlowsOtherOperating)&&const DeepCollectionEquality().equals(other._exchangeRateChanges, _exchangeRateChanges)&&const DeepCollectionEquality().equals(other._cashAndCashEquivalentsChanges, _cashAndCashEquivalentsChanges)&&const DeepCollectionEquality().equals(other._changeInWorkingCapital, _changeInWorkingCapital)&&const DeepCollectionEquality().equals(other._stockBasedCompensation, _stockBasedCompensation)&&const DeepCollectionEquality().equals(other._otherNonCashItems, _otherNonCashItems)&&const DeepCollectionEquality().equals(other._freeCashFlow, _freeCashFlow)&&const DeepCollectionEquality().equals(other._researchDevelopment, _researchDevelopment)&&const DeepCollectionEquality().equals(other._effectOfAccountingCharges, _effectOfAccountingCharges)&&const DeepCollectionEquality().equals(other._incomeBeforeTax, _incomeBeforeTax)&&const DeepCollectionEquality().equals(other._minorityInterest, _minorityInterest)&&const DeepCollectionEquality().equals(other._sellingGeneralAdministrative, _sellingGeneralAdministrative)&&const DeepCollectionEquality().equals(other._sellingAndMarketingExpenses, _sellingAndMarketingExpenses)&&const DeepCollectionEquality().equals(other._grossProfit, _grossProfit)&&const DeepCollectionEquality().equals(other._reconciledDepreciation, _reconciledDepreciation)&&const DeepCollectionEquality().equals(other._ebit, _ebit)&&const DeepCollectionEquality().equals(other._ebitda, _ebitda)&&const DeepCollectionEquality().equals(other._depreciationAndAmortization, _depreciationAndAmortization)&&const DeepCollectionEquality().equals(other._nonOperatingIncomeNetOther, _nonOperatingIncomeNetOther)&&const DeepCollectionEquality().equals(other._operatingIncome, _operatingIncome)&&const DeepCollectionEquality().equals(other._otherOperatingExpenses, _otherOperatingExpenses)&&const DeepCollectionEquality().equals(other._interestExpense, _interestExpense)&&const DeepCollectionEquality().equals(other._taxProvision, _taxProvision)&&const DeepCollectionEquality().equals(other._interestIncome, _interestIncome)&&const DeepCollectionEquality().equals(other._netInterestIncome, _netInterestIncome)&&const DeepCollectionEquality().equals(other._extraordinaryItems, _extraordinaryItems)&&const DeepCollectionEquality().equals(other._nonRecurring, _nonRecurring)&&const DeepCollectionEquality().equals(other._otherItems, _otherItems)&&const DeepCollectionEquality().equals(other._incomeTaxExpense, _incomeTaxExpense)&&const DeepCollectionEquality().equals(other._totalRevenue, _totalRevenue)&&const DeepCollectionEquality().equals(other._totalOperatingExpenses, _totalOperatingExpenses)&&const DeepCollectionEquality().equals(other._costOfRevenue, _costOfRevenue)&&const DeepCollectionEquality().equals(other._totalOtherIncomeExpenseNet, _totalOtherIncomeExpenseNet)&&const DeepCollectionEquality().equals(other._discontinuedOperations, _discontinuedOperations)&&const DeepCollectionEquality().equals(other._netIncomeFromContinuingOps, _netIncomeFromContinuingOps)&&const DeepCollectionEquality().equals(other._netIncomeApplicableToCommonShares, _netIncomeApplicableToCommonShares)&&const DeepCollectionEquality().equals(other._preferredStockAndOtherAdjustments, _preferredStockAndOtherAdjustments)&&const DeepCollectionEquality().equals(other._type, _type)&&const DeepCollectionEquality().equals(other._stockType, _stockType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,const DeepCollectionEquality().hash(_totalAssets),const DeepCollectionEquality().hash(_intangibleAssets),const DeepCollectionEquality().hash(_earningAssets),const DeepCollectionEquality().hash(_otherCurrentAssets),const DeepCollectionEquality().hash(_totalLiab),const DeepCollectionEquality().hash(_totalStockholderEquity),const DeepCollectionEquality().hash(_deferredLongTermLiab),const DeepCollectionEquality().hash(_otherCurrentLiab),const DeepCollectionEquality().hash(_commonStock),const DeepCollectionEquality().hash(_capitalStock),const DeepCollectionEquality().hash(_retainedEarnings),const DeepCollectionEquality().hash(_otherLiab),const DeepCollectionEquality().hash(_goodWill),const DeepCollectionEquality().hash(_otherAssets),const DeepCollectionEquality().hash(_cash),const DeepCollectionEquality().hash(_cashAndEquivalents),const DeepCollectionEquality().hash(_totalCurrentLiabilities),const DeepCollectionEquality().hash(_currentDeferredRevenue),const DeepCollectionEquality().hash(_netDebt),const DeepCollectionEquality().hash(_shortTermDebt),const DeepCollectionEquality().hash(_shortLongTermDebt),const DeepCollectionEquality().hash(_shortLongTermDebtTotal),const DeepCollectionEquality().hash(_otherStockholderEquity),const DeepCollectionEquality().hash(_propertyPlantEquipment),const DeepCollectionEquality().hash(_totalCurrentAssets),const DeepCollectionEquality().hash(_longTermInvestments),const DeepCollectionEquality().hash(_netTangibleAssets),const DeepCollectionEquality().hash(_shortTermInvestments),const DeepCollectionEquality().hash(_netReceivables),const DeepCollectionEquality().hash(_longTermDebt),const DeepCollectionEquality().hash(_inventory),const DeepCollectionEquality().hash(_accountsPayable),const DeepCollectionEquality().hash(_totalPermanentEquity),const DeepCollectionEquality().hash(_noncontrollingInterestInConsolidatedEntity),const DeepCollectionEquality().hash(_temporaryEquityRedeemableNoncontrollingInterests),const DeepCollectionEquality().hash(_accumulatedOtherComprehensiveIncome),const DeepCollectionEquality().hash(_additionalPaidInCapital),const DeepCollectionEquality().hash(_commonStockTotalEquity),const DeepCollectionEquality().hash(_preferredStockTotalEquity),const DeepCollectionEquality().hash(_retainedEarningsTotalEquity),const DeepCollectionEquality().hash(_treasuryStock),const DeepCollectionEquality().hash(_accumulatedAmortization),const DeepCollectionEquality().hash(_nonCurrrentAssetsOther),const DeepCollectionEquality().hash(_deferredLongTermAssetCharges),const DeepCollectionEquality().hash(_nonCurrentAssetsTotal),const DeepCollectionEquality().hash(_capitalLeaseObligations),const DeepCollectionEquality().hash(_longTermDebtTotal),const DeepCollectionEquality().hash(_nonCurrentLiabilitiesOther),const DeepCollectionEquality().hash(_nonCurrentLiabilitiesTotal),const DeepCollectionEquality().hash(_negativeGoodwill),const DeepCollectionEquality().hash(_warrants),const DeepCollectionEquality().hash(_preferredStockRedeemable),const DeepCollectionEquality().hash(_capitalSurpluse),const DeepCollectionEquality().hash(_liabilitiesAndStockholdersEquity),const DeepCollectionEquality().hash(_cashAndShortTermInvestments),const DeepCollectionEquality().hash(_propertyPlantAndEquipmentGross),const DeepCollectionEquality().hash(_propertyPlantAndEquipmentNet),const DeepCollectionEquality().hash(_accumulatedDepreciation),const DeepCollectionEquality().hash(_netWorkingCapital),const DeepCollectionEquality().hash(_netInvestedCapital),const DeepCollectionEquality().hash(_commonStockSharesOutstanding),const DeepCollectionEquality().hash(_investments),const DeepCollectionEquality().hash(_changeToLiabilities),const DeepCollectionEquality().hash(_totalCashflowsFromInvestingActivities),const DeepCollectionEquality().hash(_netBorrowings),const DeepCollectionEquality().hash(_totalCashFromFinancingActivities),const DeepCollectionEquality().hash(_changeToOperatingActivities),const DeepCollectionEquality().hash(_netIncome),const DeepCollectionEquality().hash(_changeInCash),const DeepCollectionEquality().hash(_beginPeriodCashFlow),const DeepCollectionEquality().hash(_endPeriodCashFlow),const DeepCollectionEquality().hash(_totalCashFromOperatingActivities),const DeepCollectionEquality().hash(_issuanceOfCapitalStock),const DeepCollectionEquality().hash(_depreciation),const DeepCollectionEquality().hash(_otherCashflowsFromInvestingActivities),const DeepCollectionEquality().hash(_dividendsPaid),const DeepCollectionEquality().hash(_changeToInventory),const DeepCollectionEquality().hash(_changeToAccountReceivables),const DeepCollectionEquality().hash(_salePurchaseOfStock),const DeepCollectionEquality().hash(_otherCashflowsFromFinancingActivities),const DeepCollectionEquality().hash(_changeToNetincome),const DeepCollectionEquality().hash(_capitalExpenditures),const DeepCollectionEquality().hash(_changeReceivables),const DeepCollectionEquality().hash(_cashFlowsOtherOperating),const DeepCollectionEquality().hash(_exchangeRateChanges),const DeepCollectionEquality().hash(_cashAndCashEquivalentsChanges),const DeepCollectionEquality().hash(_changeInWorkingCapital),const DeepCollectionEquality().hash(_stockBasedCompensation),const DeepCollectionEquality().hash(_otherNonCashItems),const DeepCollectionEquality().hash(_freeCashFlow),const DeepCollectionEquality().hash(_researchDevelopment),const DeepCollectionEquality().hash(_effectOfAccountingCharges),const DeepCollectionEquality().hash(_incomeBeforeTax),const DeepCollectionEquality().hash(_minorityInterest),const DeepCollectionEquality().hash(_sellingGeneralAdministrative),const DeepCollectionEquality().hash(_sellingAndMarketingExpenses),const DeepCollectionEquality().hash(_grossProfit),const DeepCollectionEquality().hash(_reconciledDepreciation),const DeepCollectionEquality().hash(_ebit),const DeepCollectionEquality().hash(_ebitda),const DeepCollectionEquality().hash(_depreciationAndAmortization),const DeepCollectionEquality().hash(_nonOperatingIncomeNetOther),const DeepCollectionEquality().hash(_operatingIncome),const DeepCollectionEquality().hash(_otherOperatingExpenses),const DeepCollectionEquality().hash(_interestExpense),const DeepCollectionEquality().hash(_taxProvision),const DeepCollectionEquality().hash(_interestIncome),const DeepCollectionEquality().hash(_netInterestIncome),const DeepCollectionEquality().hash(_extraordinaryItems),const DeepCollectionEquality().hash(_nonRecurring),const DeepCollectionEquality().hash(_otherItems),const DeepCollectionEquality().hash(_incomeTaxExpense),const DeepCollectionEquality().hash(_totalRevenue),const DeepCollectionEquality().hash(_totalOperatingExpenses),const DeepCollectionEquality().hash(_costOfRevenue),const DeepCollectionEquality().hash(_totalOtherIncomeExpenseNet),const DeepCollectionEquality().hash(_discontinuedOperations),const DeepCollectionEquality().hash(_netIncomeFromContinuingOps),const DeepCollectionEquality().hash(_netIncomeApplicableToCommonShares),const DeepCollectionEquality().hash(_preferredStockAndOtherAdjustments),const DeepCollectionEquality().hash(_type),const DeepCollectionEquality().hash(_stockType)]);

@override
String toString() {
  return 'FinancialChart(totalAssets: $totalAssets, intangibleAssets: $intangibleAssets, earningAssets: $earningAssets, otherCurrentAssets: $otherCurrentAssets, totalLiab: $totalLiab, totalStockholderEquity: $totalStockholderEquity, deferredLongTermLiab: $deferredLongTermLiab, otherCurrentLiab: $otherCurrentLiab, commonStock: $commonStock, capitalStock: $capitalStock, retainedEarnings: $retainedEarnings, otherLiab: $otherLiab, goodWill: $goodWill, otherAssets: $otherAssets, cash: $cash, cashAndEquivalents: $cashAndEquivalents, totalCurrentLiabilities: $totalCurrentLiabilities, currentDeferredRevenue: $currentDeferredRevenue, netDebt: $netDebt, shortTermDebt: $shortTermDebt, shortLongTermDebt: $shortLongTermDebt, shortLongTermDebtTotal: $shortLongTermDebtTotal, otherStockholderEquity: $otherStockholderEquity, propertyPlantEquipment: $propertyPlantEquipment, totalCurrentAssets: $totalCurrentAssets, longTermInvestments: $longTermInvestments, netTangibleAssets: $netTangibleAssets, shortTermInvestments: $shortTermInvestments, netReceivables: $netReceivables, longTermDebt: $longTermDebt, inventory: $inventory, accountsPayable: $accountsPayable, totalPermanentEquity: $totalPermanentEquity, noncontrollingInterestInConsolidatedEntity: $noncontrollingInterestInConsolidatedEntity, temporaryEquityRedeemableNoncontrollingInterests: $temporaryEquityRedeemableNoncontrollingInterests, accumulatedOtherComprehensiveIncome: $accumulatedOtherComprehensiveIncome, additionalPaidInCapital: $additionalPaidInCapital, commonStockTotalEquity: $commonStockTotalEquity, preferredStockTotalEquity: $preferredStockTotalEquity, retainedEarningsTotalEquity: $retainedEarningsTotalEquity, treasuryStock: $treasuryStock, accumulatedAmortization: $accumulatedAmortization, nonCurrrentAssetsOther: $nonCurrrentAssetsOther, deferredLongTermAssetCharges: $deferredLongTermAssetCharges, nonCurrentAssetsTotal: $nonCurrentAssetsTotal, capitalLeaseObligations: $capitalLeaseObligations, longTermDebtTotal: $longTermDebtTotal, nonCurrentLiabilitiesOther: $nonCurrentLiabilitiesOther, nonCurrentLiabilitiesTotal: $nonCurrentLiabilitiesTotal, negativeGoodwill: $negativeGoodwill, warrants: $warrants, preferredStockRedeemable: $preferredStockRedeemable, capitalSurpluse: $capitalSurpluse, liabilitiesAndStockholdersEquity: $liabilitiesAndStockholdersEquity, cashAndShortTermInvestments: $cashAndShortTermInvestments, propertyPlantAndEquipmentGross: $propertyPlantAndEquipmentGross, propertyPlantAndEquipmentNet: $propertyPlantAndEquipmentNet, accumulatedDepreciation: $accumulatedDepreciation, netWorkingCapital: $netWorkingCapital, netInvestedCapital: $netInvestedCapital, commonStockSharesOutstanding: $commonStockSharesOutstanding, investments: $investments, changeToLiabilities: $changeToLiabilities, totalCashflowsFromInvestingActivities: $totalCashflowsFromInvestingActivities, netBorrowings: $netBorrowings, totalCashFromFinancingActivities: $totalCashFromFinancingActivities, changeToOperatingActivities: $changeToOperatingActivities, netIncome: $netIncome, changeInCash: $changeInCash, beginPeriodCashFlow: $beginPeriodCashFlow, endPeriodCashFlow: $endPeriodCashFlow, totalCashFromOperatingActivities: $totalCashFromOperatingActivities, issuanceOfCapitalStock: $issuanceOfCapitalStock, depreciation: $depreciation, otherCashflowsFromInvestingActivities: $otherCashflowsFromInvestingActivities, dividendsPaid: $dividendsPaid, changeToInventory: $changeToInventory, changeToAccountReceivables: $changeToAccountReceivables, salePurchaseOfStock: $salePurchaseOfStock, otherCashflowsFromFinancingActivities: $otherCashflowsFromFinancingActivities, changeToNetincome: $changeToNetincome, capitalExpenditures: $capitalExpenditures, changeReceivables: $changeReceivables, cashFlowsOtherOperating: $cashFlowsOtherOperating, exchangeRateChanges: $exchangeRateChanges, cashAndCashEquivalentsChanges: $cashAndCashEquivalentsChanges, changeInWorkingCapital: $changeInWorkingCapital, stockBasedCompensation: $stockBasedCompensation, otherNonCashItems: $otherNonCashItems, freeCashFlow: $freeCashFlow, researchDevelopment: $researchDevelopment, effectOfAccountingCharges: $effectOfAccountingCharges, incomeBeforeTax: $incomeBeforeTax, minorityInterest: $minorityInterest, sellingGeneralAdministrative: $sellingGeneralAdministrative, sellingAndMarketingExpenses: $sellingAndMarketingExpenses, grossProfit: $grossProfit, reconciledDepreciation: $reconciledDepreciation, ebit: $ebit, ebitda: $ebitda, depreciationAndAmortization: $depreciationAndAmortization, nonOperatingIncomeNetOther: $nonOperatingIncomeNetOther, operatingIncome: $operatingIncome, otherOperatingExpenses: $otherOperatingExpenses, interestExpense: $interestExpense, taxProvision: $taxProvision, interestIncome: $interestIncome, netInterestIncome: $netInterestIncome, extraordinaryItems: $extraordinaryItems, nonRecurring: $nonRecurring, otherItems: $otherItems, incomeTaxExpense: $incomeTaxExpense, totalRevenue: $totalRevenue, totalOperatingExpenses: $totalOperatingExpenses, costOfRevenue: $costOfRevenue, totalOtherIncomeExpenseNet: $totalOtherIncomeExpenseNet, discontinuedOperations: $discontinuedOperations, netIncomeFromContinuingOps: $netIncomeFromContinuingOps, netIncomeApplicableToCommonShares: $netIncomeApplicableToCommonShares, preferredStockAndOtherAdjustments: $preferredStockAndOtherAdjustments, type: $type, stockType: $stockType)';
}


}

/// @nodoc
abstract mixin class _$FinancialChartCopyWith<$Res> implements $FinancialChartCopyWith<$Res> {
  factory _$FinancialChartCopyWith(_FinancialChart value, $Res Function(_FinancialChart) _then) = __$FinancialChartCopyWithImpl;
@override @useResult
$Res call({
 List<FinancialDataPoint>? totalAssets, List<FinancialDataPoint>? intangibleAssets, List<FinancialDataPoint>? earningAssets, List<FinancialDataPoint>? otherCurrentAssets, List<FinancialDataPoint>? totalLiab, List<FinancialDataPoint>? totalStockholderEquity, List<FinancialDataPoint>? deferredLongTermLiab, List<FinancialDataPoint>? otherCurrentLiab, List<FinancialDataPoint>? commonStock, List<FinancialDataPoint>? capitalStock, List<FinancialDataPoint>? retainedEarnings, List<FinancialDataPoint>? otherLiab, List<FinancialDataPoint>? goodWill, List<FinancialDataPoint>? otherAssets, List<FinancialDataPoint>? cash, List<FinancialDataPoint>? cashAndEquivalents, List<FinancialDataPoint>? totalCurrentLiabilities, List<FinancialDataPoint>? currentDeferredRevenue, List<FinancialDataPoint>? netDebt, List<FinancialDataPoint>? shortTermDebt, List<FinancialDataPoint>? shortLongTermDebt, List<FinancialDataPoint>? shortLongTermDebtTotal, List<FinancialDataPoint>? otherStockholderEquity, List<FinancialDataPoint>? propertyPlantEquipment, List<FinancialDataPoint>? totalCurrentAssets, List<FinancialDataPoint>? longTermInvestments, List<FinancialDataPoint>? netTangibleAssets, List<FinancialDataPoint>? shortTermInvestments, List<FinancialDataPoint>? netReceivables, List<FinancialDataPoint>? longTermDebt, List<FinancialDataPoint>? inventory, List<FinancialDataPoint>? accountsPayable, List<FinancialDataPoint>? totalPermanentEquity, List<FinancialDataPoint>? noncontrollingInterestInConsolidatedEntity, List<FinancialDataPoint>? temporaryEquityRedeemableNoncontrollingInterests, List<FinancialDataPoint>? accumulatedOtherComprehensiveIncome, List<FinancialDataPoint>? additionalPaidInCapital, List<FinancialDataPoint>? commonStockTotalEquity, List<FinancialDataPoint>? preferredStockTotalEquity, List<FinancialDataPoint>? retainedEarningsTotalEquity, List<FinancialDataPoint>? treasuryStock, List<FinancialDataPoint>? accumulatedAmortization, List<FinancialDataPoint>? nonCurrrentAssetsOther, List<FinancialDataPoint>? deferredLongTermAssetCharges, List<FinancialDataPoint>? nonCurrentAssetsTotal, List<FinancialDataPoint>? capitalLeaseObligations, List<FinancialDataPoint>? longTermDebtTotal, List<FinancialDataPoint>? nonCurrentLiabilitiesOther, List<FinancialDataPoint>? nonCurrentLiabilitiesTotal, List<FinancialDataPoint>? negativeGoodwill, List<FinancialDataPoint>? warrants, List<FinancialDataPoint>? preferredStockRedeemable, List<FinancialDataPoint>? capitalSurpluse, List<FinancialDataPoint>? liabilitiesAndStockholdersEquity, List<FinancialDataPoint>? cashAndShortTermInvestments, List<FinancialDataPoint>? propertyPlantAndEquipmentGross, List<FinancialDataPoint>? propertyPlantAndEquipmentNet, List<FinancialDataPoint>? accumulatedDepreciation, List<FinancialDataPoint>? netWorkingCapital, List<FinancialDataPoint>? netInvestedCapital, List<FinancialDataPoint>? commonStockSharesOutstanding, List<FinancialDataPoint>? investments, List<FinancialDataPoint>? changeToLiabilities, List<FinancialDataPoint>? totalCashflowsFromInvestingActivities, List<FinancialDataPoint>? netBorrowings, List<FinancialDataPoint>? totalCashFromFinancingActivities, List<FinancialDataPoint>? changeToOperatingActivities, List<FinancialDataPoint>? netIncome, List<FinancialDataPoint>? changeInCash, List<FinancialDataPoint>? beginPeriodCashFlow, List<FinancialDataPoint>? endPeriodCashFlow, List<FinancialDataPoint>? totalCashFromOperatingActivities, List<FinancialDataPoint>? issuanceOfCapitalStock, List<FinancialDataPoint>? depreciation, List<FinancialDataPoint>? otherCashflowsFromInvestingActivities, List<FinancialDataPoint>? dividendsPaid, List<FinancialDataPoint>? changeToInventory, List<FinancialDataPoint>? changeToAccountReceivables, List<FinancialDataPoint>? salePurchaseOfStock, List<FinancialDataPoint>? otherCashflowsFromFinancingActivities, List<FinancialDataPoint>? changeToNetincome, List<FinancialDataPoint>? capitalExpenditures, List<FinancialDataPoint>? changeReceivables, List<FinancialDataPoint>? cashFlowsOtherOperating, List<FinancialDataPoint>? exchangeRateChanges, List<FinancialDataPoint>? cashAndCashEquivalentsChanges, List<FinancialDataPoint>? changeInWorkingCapital, List<FinancialDataPoint>? stockBasedCompensation, List<FinancialDataPoint>? otherNonCashItems, List<FinancialDataPoint>? freeCashFlow, List<FinancialDataPoint>? researchDevelopment, List<FinancialDataPoint>? effectOfAccountingCharges, List<FinancialDataPoint>? incomeBeforeTax, List<FinancialDataPoint>? minorityInterest, List<FinancialDataPoint>? sellingGeneralAdministrative, List<FinancialDataPoint>? sellingAndMarketingExpenses, List<FinancialDataPoint>? grossProfit, List<FinancialDataPoint>? reconciledDepreciation, List<FinancialDataPoint>? ebit, List<FinancialDataPoint>? ebitda, List<FinancialDataPoint>? depreciationAndAmortization, List<FinancialDataPoint>? nonOperatingIncomeNetOther, List<FinancialDataPoint>? operatingIncome, List<FinancialDataPoint>? otherOperatingExpenses, List<FinancialDataPoint>? interestExpense, List<FinancialDataPoint>? taxProvision, List<FinancialDataPoint>? interestIncome, List<FinancialDataPoint>? netInterestIncome, List<FinancialDataPoint>? extraordinaryItems, List<FinancialDataPoint>? nonRecurring, List<FinancialDataPoint>? otherItems, List<FinancialDataPoint>? incomeTaxExpense, List<FinancialDataPoint>? totalRevenue, List<FinancialDataPoint>? totalOperatingExpenses, List<FinancialDataPoint>? costOfRevenue, List<FinancialDataPoint>? totalOtherIncomeExpenseNet, List<FinancialDataPoint>? discontinuedOperations, List<FinancialDataPoint>? netIncomeFromContinuingOps, List<FinancialDataPoint>? netIncomeApplicableToCommonShares, List<FinancialDataPoint>? preferredStockAndOtherAdjustments, List<FinancialDataPoint>? type,@JsonKey(name: 'stock_type') List<FinancialDataPoint>? stockType
});




}
/// @nodoc
class __$FinancialChartCopyWithImpl<$Res>
    implements _$FinancialChartCopyWith<$Res> {
  __$FinancialChartCopyWithImpl(this._self, this._then);

  final _FinancialChart _self;
  final $Res Function(_FinancialChart) _then;

/// Create a copy of FinancialChart
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? totalAssets = freezed,Object? intangibleAssets = freezed,Object? earningAssets = freezed,Object? otherCurrentAssets = freezed,Object? totalLiab = freezed,Object? totalStockholderEquity = freezed,Object? deferredLongTermLiab = freezed,Object? otherCurrentLiab = freezed,Object? commonStock = freezed,Object? capitalStock = freezed,Object? retainedEarnings = freezed,Object? otherLiab = freezed,Object? goodWill = freezed,Object? otherAssets = freezed,Object? cash = freezed,Object? cashAndEquivalents = freezed,Object? totalCurrentLiabilities = freezed,Object? currentDeferredRevenue = freezed,Object? netDebt = freezed,Object? shortTermDebt = freezed,Object? shortLongTermDebt = freezed,Object? shortLongTermDebtTotal = freezed,Object? otherStockholderEquity = freezed,Object? propertyPlantEquipment = freezed,Object? totalCurrentAssets = freezed,Object? longTermInvestments = freezed,Object? netTangibleAssets = freezed,Object? shortTermInvestments = freezed,Object? netReceivables = freezed,Object? longTermDebt = freezed,Object? inventory = freezed,Object? accountsPayable = freezed,Object? totalPermanentEquity = freezed,Object? noncontrollingInterestInConsolidatedEntity = freezed,Object? temporaryEquityRedeemableNoncontrollingInterests = freezed,Object? accumulatedOtherComprehensiveIncome = freezed,Object? additionalPaidInCapital = freezed,Object? commonStockTotalEquity = freezed,Object? preferredStockTotalEquity = freezed,Object? retainedEarningsTotalEquity = freezed,Object? treasuryStock = freezed,Object? accumulatedAmortization = freezed,Object? nonCurrrentAssetsOther = freezed,Object? deferredLongTermAssetCharges = freezed,Object? nonCurrentAssetsTotal = freezed,Object? capitalLeaseObligations = freezed,Object? longTermDebtTotal = freezed,Object? nonCurrentLiabilitiesOther = freezed,Object? nonCurrentLiabilitiesTotal = freezed,Object? negativeGoodwill = freezed,Object? warrants = freezed,Object? preferredStockRedeemable = freezed,Object? capitalSurpluse = freezed,Object? liabilitiesAndStockholdersEquity = freezed,Object? cashAndShortTermInvestments = freezed,Object? propertyPlantAndEquipmentGross = freezed,Object? propertyPlantAndEquipmentNet = freezed,Object? accumulatedDepreciation = freezed,Object? netWorkingCapital = freezed,Object? netInvestedCapital = freezed,Object? commonStockSharesOutstanding = freezed,Object? investments = freezed,Object? changeToLiabilities = freezed,Object? totalCashflowsFromInvestingActivities = freezed,Object? netBorrowings = freezed,Object? totalCashFromFinancingActivities = freezed,Object? changeToOperatingActivities = freezed,Object? netIncome = freezed,Object? changeInCash = freezed,Object? beginPeriodCashFlow = freezed,Object? endPeriodCashFlow = freezed,Object? totalCashFromOperatingActivities = freezed,Object? issuanceOfCapitalStock = freezed,Object? depreciation = freezed,Object? otherCashflowsFromInvestingActivities = freezed,Object? dividendsPaid = freezed,Object? changeToInventory = freezed,Object? changeToAccountReceivables = freezed,Object? salePurchaseOfStock = freezed,Object? otherCashflowsFromFinancingActivities = freezed,Object? changeToNetincome = freezed,Object? capitalExpenditures = freezed,Object? changeReceivables = freezed,Object? cashFlowsOtherOperating = freezed,Object? exchangeRateChanges = freezed,Object? cashAndCashEquivalentsChanges = freezed,Object? changeInWorkingCapital = freezed,Object? stockBasedCompensation = freezed,Object? otherNonCashItems = freezed,Object? freeCashFlow = freezed,Object? researchDevelopment = freezed,Object? effectOfAccountingCharges = freezed,Object? incomeBeforeTax = freezed,Object? minorityInterest = freezed,Object? sellingGeneralAdministrative = freezed,Object? sellingAndMarketingExpenses = freezed,Object? grossProfit = freezed,Object? reconciledDepreciation = freezed,Object? ebit = freezed,Object? ebitda = freezed,Object? depreciationAndAmortization = freezed,Object? nonOperatingIncomeNetOther = freezed,Object? operatingIncome = freezed,Object? otherOperatingExpenses = freezed,Object? interestExpense = freezed,Object? taxProvision = freezed,Object? interestIncome = freezed,Object? netInterestIncome = freezed,Object? extraordinaryItems = freezed,Object? nonRecurring = freezed,Object? otherItems = freezed,Object? incomeTaxExpense = freezed,Object? totalRevenue = freezed,Object? totalOperatingExpenses = freezed,Object? costOfRevenue = freezed,Object? totalOtherIncomeExpenseNet = freezed,Object? discontinuedOperations = freezed,Object? netIncomeFromContinuingOps = freezed,Object? netIncomeApplicableToCommonShares = freezed,Object? preferredStockAndOtherAdjustments = freezed,Object? type = freezed,Object? stockType = freezed,}) {
  return _then(_FinancialChart(
totalAssets: freezed == totalAssets ? _self._totalAssets : totalAssets // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,intangibleAssets: freezed == intangibleAssets ? _self._intangibleAssets : intangibleAssets // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,earningAssets: freezed == earningAssets ? _self._earningAssets : earningAssets // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,otherCurrentAssets: freezed == otherCurrentAssets ? _self._otherCurrentAssets : otherCurrentAssets // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,totalLiab: freezed == totalLiab ? _self._totalLiab : totalLiab // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,totalStockholderEquity: freezed == totalStockholderEquity ? _self._totalStockholderEquity : totalStockholderEquity // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,deferredLongTermLiab: freezed == deferredLongTermLiab ? _self._deferredLongTermLiab : deferredLongTermLiab // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,otherCurrentLiab: freezed == otherCurrentLiab ? _self._otherCurrentLiab : otherCurrentLiab // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,commonStock: freezed == commonStock ? _self._commonStock : commonStock // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,capitalStock: freezed == capitalStock ? _self._capitalStock : capitalStock // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,retainedEarnings: freezed == retainedEarnings ? _self._retainedEarnings : retainedEarnings // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,otherLiab: freezed == otherLiab ? _self._otherLiab : otherLiab // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,goodWill: freezed == goodWill ? _self._goodWill : goodWill // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,otherAssets: freezed == otherAssets ? _self._otherAssets : otherAssets // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,cash: freezed == cash ? _self._cash : cash // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,cashAndEquivalents: freezed == cashAndEquivalents ? _self._cashAndEquivalents : cashAndEquivalents // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,totalCurrentLiabilities: freezed == totalCurrentLiabilities ? _self._totalCurrentLiabilities : totalCurrentLiabilities // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,currentDeferredRevenue: freezed == currentDeferredRevenue ? _self._currentDeferredRevenue : currentDeferredRevenue // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,netDebt: freezed == netDebt ? _self._netDebt : netDebt // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,shortTermDebt: freezed == shortTermDebt ? _self._shortTermDebt : shortTermDebt // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,shortLongTermDebt: freezed == shortLongTermDebt ? _self._shortLongTermDebt : shortLongTermDebt // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,shortLongTermDebtTotal: freezed == shortLongTermDebtTotal ? _self._shortLongTermDebtTotal : shortLongTermDebtTotal // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,otherStockholderEquity: freezed == otherStockholderEquity ? _self._otherStockholderEquity : otherStockholderEquity // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,propertyPlantEquipment: freezed == propertyPlantEquipment ? _self._propertyPlantEquipment : propertyPlantEquipment // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,totalCurrentAssets: freezed == totalCurrentAssets ? _self._totalCurrentAssets : totalCurrentAssets // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,longTermInvestments: freezed == longTermInvestments ? _self._longTermInvestments : longTermInvestments // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,netTangibleAssets: freezed == netTangibleAssets ? _self._netTangibleAssets : netTangibleAssets // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,shortTermInvestments: freezed == shortTermInvestments ? _self._shortTermInvestments : shortTermInvestments // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,netReceivables: freezed == netReceivables ? _self._netReceivables : netReceivables // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,longTermDebt: freezed == longTermDebt ? _self._longTermDebt : longTermDebt // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,inventory: freezed == inventory ? _self._inventory : inventory // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,accountsPayable: freezed == accountsPayable ? _self._accountsPayable : accountsPayable // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,totalPermanentEquity: freezed == totalPermanentEquity ? _self._totalPermanentEquity : totalPermanentEquity // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,noncontrollingInterestInConsolidatedEntity: freezed == noncontrollingInterestInConsolidatedEntity ? _self._noncontrollingInterestInConsolidatedEntity : noncontrollingInterestInConsolidatedEntity // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,temporaryEquityRedeemableNoncontrollingInterests: freezed == temporaryEquityRedeemableNoncontrollingInterests ? _self._temporaryEquityRedeemableNoncontrollingInterests : temporaryEquityRedeemableNoncontrollingInterests // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,accumulatedOtherComprehensiveIncome: freezed == accumulatedOtherComprehensiveIncome ? _self._accumulatedOtherComprehensiveIncome : accumulatedOtherComprehensiveIncome // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,additionalPaidInCapital: freezed == additionalPaidInCapital ? _self._additionalPaidInCapital : additionalPaidInCapital // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,commonStockTotalEquity: freezed == commonStockTotalEquity ? _self._commonStockTotalEquity : commonStockTotalEquity // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,preferredStockTotalEquity: freezed == preferredStockTotalEquity ? _self._preferredStockTotalEquity : preferredStockTotalEquity // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,retainedEarningsTotalEquity: freezed == retainedEarningsTotalEquity ? _self._retainedEarningsTotalEquity : retainedEarningsTotalEquity // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,treasuryStock: freezed == treasuryStock ? _self._treasuryStock : treasuryStock // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,accumulatedAmortization: freezed == accumulatedAmortization ? _self._accumulatedAmortization : accumulatedAmortization // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,nonCurrrentAssetsOther: freezed == nonCurrrentAssetsOther ? _self._nonCurrrentAssetsOther : nonCurrrentAssetsOther // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,deferredLongTermAssetCharges: freezed == deferredLongTermAssetCharges ? _self._deferredLongTermAssetCharges : deferredLongTermAssetCharges // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,nonCurrentAssetsTotal: freezed == nonCurrentAssetsTotal ? _self._nonCurrentAssetsTotal : nonCurrentAssetsTotal // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,capitalLeaseObligations: freezed == capitalLeaseObligations ? _self._capitalLeaseObligations : capitalLeaseObligations // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,longTermDebtTotal: freezed == longTermDebtTotal ? _self._longTermDebtTotal : longTermDebtTotal // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,nonCurrentLiabilitiesOther: freezed == nonCurrentLiabilitiesOther ? _self._nonCurrentLiabilitiesOther : nonCurrentLiabilitiesOther // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,nonCurrentLiabilitiesTotal: freezed == nonCurrentLiabilitiesTotal ? _self._nonCurrentLiabilitiesTotal : nonCurrentLiabilitiesTotal // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,negativeGoodwill: freezed == negativeGoodwill ? _self._negativeGoodwill : negativeGoodwill // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,warrants: freezed == warrants ? _self._warrants : warrants // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,preferredStockRedeemable: freezed == preferredStockRedeemable ? _self._preferredStockRedeemable : preferredStockRedeemable // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,capitalSurpluse: freezed == capitalSurpluse ? _self._capitalSurpluse : capitalSurpluse // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,liabilitiesAndStockholdersEquity: freezed == liabilitiesAndStockholdersEquity ? _self._liabilitiesAndStockholdersEquity : liabilitiesAndStockholdersEquity // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,cashAndShortTermInvestments: freezed == cashAndShortTermInvestments ? _self._cashAndShortTermInvestments : cashAndShortTermInvestments // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,propertyPlantAndEquipmentGross: freezed == propertyPlantAndEquipmentGross ? _self._propertyPlantAndEquipmentGross : propertyPlantAndEquipmentGross // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,propertyPlantAndEquipmentNet: freezed == propertyPlantAndEquipmentNet ? _self._propertyPlantAndEquipmentNet : propertyPlantAndEquipmentNet // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,accumulatedDepreciation: freezed == accumulatedDepreciation ? _self._accumulatedDepreciation : accumulatedDepreciation // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,netWorkingCapital: freezed == netWorkingCapital ? _self._netWorkingCapital : netWorkingCapital // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,netInvestedCapital: freezed == netInvestedCapital ? _self._netInvestedCapital : netInvestedCapital // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,commonStockSharesOutstanding: freezed == commonStockSharesOutstanding ? _self._commonStockSharesOutstanding : commonStockSharesOutstanding // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,investments: freezed == investments ? _self._investments : investments // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,changeToLiabilities: freezed == changeToLiabilities ? _self._changeToLiabilities : changeToLiabilities // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,totalCashflowsFromInvestingActivities: freezed == totalCashflowsFromInvestingActivities ? _self._totalCashflowsFromInvestingActivities : totalCashflowsFromInvestingActivities // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,netBorrowings: freezed == netBorrowings ? _self._netBorrowings : netBorrowings // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,totalCashFromFinancingActivities: freezed == totalCashFromFinancingActivities ? _self._totalCashFromFinancingActivities : totalCashFromFinancingActivities // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,changeToOperatingActivities: freezed == changeToOperatingActivities ? _self._changeToOperatingActivities : changeToOperatingActivities // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,netIncome: freezed == netIncome ? _self._netIncome : netIncome // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,changeInCash: freezed == changeInCash ? _self._changeInCash : changeInCash // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,beginPeriodCashFlow: freezed == beginPeriodCashFlow ? _self._beginPeriodCashFlow : beginPeriodCashFlow // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,endPeriodCashFlow: freezed == endPeriodCashFlow ? _self._endPeriodCashFlow : endPeriodCashFlow // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,totalCashFromOperatingActivities: freezed == totalCashFromOperatingActivities ? _self._totalCashFromOperatingActivities : totalCashFromOperatingActivities // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,issuanceOfCapitalStock: freezed == issuanceOfCapitalStock ? _self._issuanceOfCapitalStock : issuanceOfCapitalStock // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,depreciation: freezed == depreciation ? _self._depreciation : depreciation // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,otherCashflowsFromInvestingActivities: freezed == otherCashflowsFromInvestingActivities ? _self._otherCashflowsFromInvestingActivities : otherCashflowsFromInvestingActivities // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,dividendsPaid: freezed == dividendsPaid ? _self._dividendsPaid : dividendsPaid // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,changeToInventory: freezed == changeToInventory ? _self._changeToInventory : changeToInventory // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,changeToAccountReceivables: freezed == changeToAccountReceivables ? _self._changeToAccountReceivables : changeToAccountReceivables // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,salePurchaseOfStock: freezed == salePurchaseOfStock ? _self._salePurchaseOfStock : salePurchaseOfStock // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,otherCashflowsFromFinancingActivities: freezed == otherCashflowsFromFinancingActivities ? _self._otherCashflowsFromFinancingActivities : otherCashflowsFromFinancingActivities // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,changeToNetincome: freezed == changeToNetincome ? _self._changeToNetincome : changeToNetincome // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,capitalExpenditures: freezed == capitalExpenditures ? _self._capitalExpenditures : capitalExpenditures // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,changeReceivables: freezed == changeReceivables ? _self._changeReceivables : changeReceivables // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,cashFlowsOtherOperating: freezed == cashFlowsOtherOperating ? _self._cashFlowsOtherOperating : cashFlowsOtherOperating // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,exchangeRateChanges: freezed == exchangeRateChanges ? _self._exchangeRateChanges : exchangeRateChanges // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,cashAndCashEquivalentsChanges: freezed == cashAndCashEquivalentsChanges ? _self._cashAndCashEquivalentsChanges : cashAndCashEquivalentsChanges // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,changeInWorkingCapital: freezed == changeInWorkingCapital ? _self._changeInWorkingCapital : changeInWorkingCapital // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,stockBasedCompensation: freezed == stockBasedCompensation ? _self._stockBasedCompensation : stockBasedCompensation // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,otherNonCashItems: freezed == otherNonCashItems ? _self._otherNonCashItems : otherNonCashItems // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,freeCashFlow: freezed == freeCashFlow ? _self._freeCashFlow : freeCashFlow // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,researchDevelopment: freezed == researchDevelopment ? _self._researchDevelopment : researchDevelopment // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,effectOfAccountingCharges: freezed == effectOfAccountingCharges ? _self._effectOfAccountingCharges : effectOfAccountingCharges // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,incomeBeforeTax: freezed == incomeBeforeTax ? _self._incomeBeforeTax : incomeBeforeTax // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,minorityInterest: freezed == minorityInterest ? _self._minorityInterest : minorityInterest // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,sellingGeneralAdministrative: freezed == sellingGeneralAdministrative ? _self._sellingGeneralAdministrative : sellingGeneralAdministrative // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,sellingAndMarketingExpenses: freezed == sellingAndMarketingExpenses ? _self._sellingAndMarketingExpenses : sellingAndMarketingExpenses // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,grossProfit: freezed == grossProfit ? _self._grossProfit : grossProfit // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,reconciledDepreciation: freezed == reconciledDepreciation ? _self._reconciledDepreciation : reconciledDepreciation // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,ebit: freezed == ebit ? _self._ebit : ebit // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,ebitda: freezed == ebitda ? _self._ebitda : ebitda // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,depreciationAndAmortization: freezed == depreciationAndAmortization ? _self._depreciationAndAmortization : depreciationAndAmortization // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,nonOperatingIncomeNetOther: freezed == nonOperatingIncomeNetOther ? _self._nonOperatingIncomeNetOther : nonOperatingIncomeNetOther // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,operatingIncome: freezed == operatingIncome ? _self._operatingIncome : operatingIncome // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,otherOperatingExpenses: freezed == otherOperatingExpenses ? _self._otherOperatingExpenses : otherOperatingExpenses // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,interestExpense: freezed == interestExpense ? _self._interestExpense : interestExpense // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,taxProvision: freezed == taxProvision ? _self._taxProvision : taxProvision // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,interestIncome: freezed == interestIncome ? _self._interestIncome : interestIncome // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,netInterestIncome: freezed == netInterestIncome ? _self._netInterestIncome : netInterestIncome // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,extraordinaryItems: freezed == extraordinaryItems ? _self._extraordinaryItems : extraordinaryItems // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,nonRecurring: freezed == nonRecurring ? _self._nonRecurring : nonRecurring // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,otherItems: freezed == otherItems ? _self._otherItems : otherItems // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,incomeTaxExpense: freezed == incomeTaxExpense ? _self._incomeTaxExpense : incomeTaxExpense // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,totalRevenue: freezed == totalRevenue ? _self._totalRevenue : totalRevenue // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,totalOperatingExpenses: freezed == totalOperatingExpenses ? _self._totalOperatingExpenses : totalOperatingExpenses // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,costOfRevenue: freezed == costOfRevenue ? _self._costOfRevenue : costOfRevenue // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,totalOtherIncomeExpenseNet: freezed == totalOtherIncomeExpenseNet ? _self._totalOtherIncomeExpenseNet : totalOtherIncomeExpenseNet // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,discontinuedOperations: freezed == discontinuedOperations ? _self._discontinuedOperations : discontinuedOperations // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,netIncomeFromContinuingOps: freezed == netIncomeFromContinuingOps ? _self._netIncomeFromContinuingOps : netIncomeFromContinuingOps // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,netIncomeApplicableToCommonShares: freezed == netIncomeApplicableToCommonShares ? _self._netIncomeApplicableToCommonShares : netIncomeApplicableToCommonShares // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,preferredStockAndOtherAdjustments: freezed == preferredStockAndOtherAdjustments ? _self._preferredStockAndOtherAdjustments : preferredStockAndOtherAdjustments // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,type: freezed == type ? _self._type : type // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,stockType: freezed == stockType ? _self._stockType : stockType // ignore: cast_nullable_to_non_nullable
as List<FinancialDataPoint>?,
  ));
}


}


/// @nodoc
mixin _$FinancialDataPoint {

 String get x; dynamic get y;
/// Create a copy of FinancialDataPoint
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FinancialDataPointCopyWith<FinancialDataPoint> get copyWith => _$FinancialDataPointCopyWithImpl<FinancialDataPoint>(this as FinancialDataPoint, _$identity);

  /// Serializes this FinancialDataPoint to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FinancialDataPoint&&(identical(other.x, x) || other.x == x)&&const DeepCollectionEquality().equals(other.y, y));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,x,const DeepCollectionEquality().hash(y));

@override
String toString() {
  return 'FinancialDataPoint(x: $x, y: $y)';
}


}

/// @nodoc
abstract mixin class $FinancialDataPointCopyWith<$Res>  {
  factory $FinancialDataPointCopyWith(FinancialDataPoint value, $Res Function(FinancialDataPoint) _then) = _$FinancialDataPointCopyWithImpl;
@useResult
$Res call({
 String x, dynamic y
});




}
/// @nodoc
class _$FinancialDataPointCopyWithImpl<$Res>
    implements $FinancialDataPointCopyWith<$Res> {
  _$FinancialDataPointCopyWithImpl(this._self, this._then);

  final FinancialDataPoint _self;
  final $Res Function(FinancialDataPoint) _then;

/// Create a copy of FinancialDataPoint
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? x = null,Object? y = freezed,}) {
  return _then(_self.copyWith(
x: null == x ? _self.x : x // ignore: cast_nullable_to_non_nullable
as String,y: freezed == y ? _self.y : y // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

}


/// Adds pattern-matching-related methods to [FinancialDataPoint].
extension FinancialDataPointPatterns on FinancialDataPoint {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FinancialDataPoint value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FinancialDataPoint() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FinancialDataPoint value)  $default,){
final _that = this;
switch (_that) {
case _FinancialDataPoint():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FinancialDataPoint value)?  $default,){
final _that = this;
switch (_that) {
case _FinancialDataPoint() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String x,  dynamic y)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FinancialDataPoint() when $default != null:
return $default(_that.x,_that.y);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String x,  dynamic y)  $default,) {final _that = this;
switch (_that) {
case _FinancialDataPoint():
return $default(_that.x,_that.y);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String x,  dynamic y)?  $default,) {final _that = this;
switch (_that) {
case _FinancialDataPoint() when $default != null:
return $default(_that.x,_that.y);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FinancialDataPoint implements FinancialDataPoint {
  const _FinancialDataPoint({required this.x, required this.y});
  factory _FinancialDataPoint.fromJson(Map<String, dynamic> json) => _$FinancialDataPointFromJson(json);

@override final  String x;
@override final  dynamic y;

/// Create a copy of FinancialDataPoint
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FinancialDataPointCopyWith<_FinancialDataPoint> get copyWith => __$FinancialDataPointCopyWithImpl<_FinancialDataPoint>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FinancialDataPointToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FinancialDataPoint&&(identical(other.x, x) || other.x == x)&&const DeepCollectionEquality().equals(other.y, y));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,x,const DeepCollectionEquality().hash(y));

@override
String toString() {
  return 'FinancialDataPoint(x: $x, y: $y)';
}


}

/// @nodoc
abstract mixin class _$FinancialDataPointCopyWith<$Res> implements $FinancialDataPointCopyWith<$Res> {
  factory _$FinancialDataPointCopyWith(_FinancialDataPoint value, $Res Function(_FinancialDataPoint) _then) = __$FinancialDataPointCopyWithImpl;
@override @useResult
$Res call({
 String x, dynamic y
});




}
/// @nodoc
class __$FinancialDataPointCopyWithImpl<$Res>
    implements _$FinancialDataPointCopyWith<$Res> {
  __$FinancialDataPointCopyWithImpl(this._self, this._then);

  final _FinancialDataPoint _self;
  final $Res Function(_FinancialDataPoint) _then;

/// Create a copy of FinancialDataPoint
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? x = null,Object? y = freezed,}) {
  return _then(_FinancialDataPoint(
x: null == x ? _self.x : x // ignore: cast_nullable_to_non_nullable
as String,y: freezed == y ? _self.y : y // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}


}


/// @nodoc
mixin _$YearlyFinancialData {

 List<dynamic>? get totalAssets; List<dynamic>? get intangibleAssets; List<dynamic>? get earningAssets; List<dynamic>? get otherCurrentAssets; List<dynamic>? get totalLiab; List<dynamic>? get totalStockholderEquity; List<dynamic>? get deferredLongTermLiab; List<dynamic>? get otherCurrentLiab; List<dynamic>? get commonStock; List<dynamic>? get capitalStock; List<dynamic>? get retainedEarnings; List<dynamic>? get otherLiab; List<dynamic>? get goodWill; List<dynamic>? get otherAssets; List<dynamic>? get cash; List<dynamic>? get cashAndEquivalents; List<dynamic>? get totalCurrentLiabilities; List<dynamic>? get currentDeferredRevenue; List<dynamic>? get netDebt; List<dynamic>? get shortTermDebt; List<dynamic>? get shortLongTermDebt; List<dynamic>? get shortLongTermDebtTotal; List<dynamic>? get otherStockholderEquity; List<dynamic>? get propertyPlantEquipment; List<dynamic>? get totalCurrentAssets; List<dynamic>? get longTermInvestments; List<dynamic>? get netTangibleAssets; List<dynamic>? get shortTermInvestments; List<dynamic>? get netReceivables; List<dynamic>? get longTermDebt; List<dynamic>? get inventory; List<dynamic>? get accountsPayable; List<dynamic>? get totalPermanentEquity; List<dynamic>? get noncontrollingInterestInConsolidatedEntity; List<dynamic>? get temporaryEquityRedeemableNoncontrollingInterests; List<dynamic>? get accumulatedOtherComprehensiveIncome; List<dynamic>? get additionalPaidInCapital; List<dynamic>? get commonStockTotalEquity; List<dynamic>? get preferredStockTotalEquity; List<dynamic>? get retainedEarningsTotalEquity; List<dynamic>? get treasuryStock; List<dynamic>? get accumulatedAmortization; List<dynamic>? get nonCurrrentAssetsOther; List<dynamic>? get deferredLongTermAssetCharges; List<dynamic>? get nonCurrentAssetsTotal; List<dynamic>? get capitalLeaseObligations; List<dynamic>? get longTermDebtTotal; List<dynamic>? get nonCurrentLiabilitiesOther; List<dynamic>? get nonCurrentLiabilitiesTotal; List<dynamic>? get negativeGoodwill; List<dynamic>? get warrants; List<dynamic>? get preferredStockRedeemable; List<dynamic>? get capitalSurpluse; List<dynamic>? get liabilitiesAndStockholdersEquity; List<dynamic>? get cashAndShortTermInvestments; List<dynamic>? get propertyPlantAndEquipmentGross; List<dynamic>? get propertyPlantAndEquipmentNet; List<dynamic>? get accumulatedDepreciation; List<dynamic>? get netWorkingCapital; List<dynamic>? get netInvestedCapital; List<dynamic>? get commonStockSharesOutstanding;// Cash Flow specific fields
 List<dynamic>? get investments; List<dynamic>? get changeToLiabilities; List<dynamic>? get totalCashflowsFromInvestingActivities; List<dynamic>? get netBorrowings; List<dynamic>? get totalCashFromFinancingActivities; List<dynamic>? get changeToOperatingActivities; List<dynamic>? get netIncome; List<dynamic>? get changeInCash; List<dynamic>? get beginPeriodCashFlow; List<dynamic>? get endPeriodCashFlow; List<dynamic>? get totalCashFromOperatingActivities; List<dynamic>? get issuanceOfCapitalStock; List<dynamic>? get depreciation; List<dynamic>? get otherCashflowsFromInvestingActivities; List<dynamic>? get dividendsPaid; List<dynamic>? get changeToInventory; List<dynamic>? get changeToAccountReceivables; List<dynamic>? get salePurchaseOfStock; List<dynamic>? get otherCashflowsFromFinancingActivities; List<dynamic>? get changeToNetincome; List<dynamic>? get capitalExpenditures; List<dynamic>? get changeReceivables; List<dynamic>? get cashFlowsOtherOperating; List<dynamic>? get exchangeRateChanges; List<dynamic>? get cashAndCashEquivalentsChanges; List<dynamic>? get changeInWorkingCapital; List<dynamic>? get stockBasedCompensation; List<dynamic>? get otherNonCashItems; List<dynamic>? get freeCashFlow;// Income Statement specific fields
 List<dynamic>? get researchDevelopment; List<dynamic>? get effectOfAccountingCharges; List<dynamic>? get incomeBeforeTax; List<dynamic>? get minorityInterest; List<dynamic>? get sellingGeneralAdministrative; List<dynamic>? get sellingAndMarketingExpenses; List<dynamic>? get grossProfit; List<dynamic>? get reconciledDepreciation; List<dynamic>? get ebit; List<dynamic>? get ebitda; List<dynamic>? get depreciationAndAmortization; List<dynamic>? get nonOperatingIncomeNetOther; List<dynamic>? get operatingIncome; List<dynamic>? get otherOperatingExpenses; List<dynamic>? get interestExpense; List<dynamic>? get taxProvision; List<dynamic>? get interestIncome; List<dynamic>? get netInterestIncome; List<dynamic>? get extraordinaryItems; List<dynamic>? get nonRecurring; List<dynamic>? get otherItems; List<dynamic>? get incomeTaxExpense; List<dynamic>? get totalRevenue; List<dynamic>? get totalOperatingExpenses; List<dynamic>? get costOfRevenue; List<dynamic>? get totalOtherIncomeExpenseNet; List<dynamic>? get discontinuedOperations; List<dynamic>? get netIncomeFromContinuingOps; List<dynamic>? get netIncomeApplicableToCommonShares; List<dynamic>? get preferredStockAndOtherAdjustments;// Common fields
 List<dynamic>? get type;@JsonKey(name: 'stock_type') List<dynamic>? get stockType;
/// Create a copy of YearlyFinancialData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$YearlyFinancialDataCopyWith<YearlyFinancialData> get copyWith => _$YearlyFinancialDataCopyWithImpl<YearlyFinancialData>(this as YearlyFinancialData, _$identity);

  /// Serializes this YearlyFinancialData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is YearlyFinancialData&&const DeepCollectionEquality().equals(other.totalAssets, totalAssets)&&const DeepCollectionEquality().equals(other.intangibleAssets, intangibleAssets)&&const DeepCollectionEquality().equals(other.earningAssets, earningAssets)&&const DeepCollectionEquality().equals(other.otherCurrentAssets, otherCurrentAssets)&&const DeepCollectionEquality().equals(other.totalLiab, totalLiab)&&const DeepCollectionEquality().equals(other.totalStockholderEquity, totalStockholderEquity)&&const DeepCollectionEquality().equals(other.deferredLongTermLiab, deferredLongTermLiab)&&const DeepCollectionEquality().equals(other.otherCurrentLiab, otherCurrentLiab)&&const DeepCollectionEquality().equals(other.commonStock, commonStock)&&const DeepCollectionEquality().equals(other.capitalStock, capitalStock)&&const DeepCollectionEquality().equals(other.retainedEarnings, retainedEarnings)&&const DeepCollectionEquality().equals(other.otherLiab, otherLiab)&&const DeepCollectionEquality().equals(other.goodWill, goodWill)&&const DeepCollectionEquality().equals(other.otherAssets, otherAssets)&&const DeepCollectionEquality().equals(other.cash, cash)&&const DeepCollectionEquality().equals(other.cashAndEquivalents, cashAndEquivalents)&&const DeepCollectionEquality().equals(other.totalCurrentLiabilities, totalCurrentLiabilities)&&const DeepCollectionEquality().equals(other.currentDeferredRevenue, currentDeferredRevenue)&&const DeepCollectionEquality().equals(other.netDebt, netDebt)&&const DeepCollectionEquality().equals(other.shortTermDebt, shortTermDebt)&&const DeepCollectionEquality().equals(other.shortLongTermDebt, shortLongTermDebt)&&const DeepCollectionEquality().equals(other.shortLongTermDebtTotal, shortLongTermDebtTotal)&&const DeepCollectionEquality().equals(other.otherStockholderEquity, otherStockholderEquity)&&const DeepCollectionEquality().equals(other.propertyPlantEquipment, propertyPlantEquipment)&&const DeepCollectionEquality().equals(other.totalCurrentAssets, totalCurrentAssets)&&const DeepCollectionEquality().equals(other.longTermInvestments, longTermInvestments)&&const DeepCollectionEquality().equals(other.netTangibleAssets, netTangibleAssets)&&const DeepCollectionEquality().equals(other.shortTermInvestments, shortTermInvestments)&&const DeepCollectionEquality().equals(other.netReceivables, netReceivables)&&const DeepCollectionEquality().equals(other.longTermDebt, longTermDebt)&&const DeepCollectionEquality().equals(other.inventory, inventory)&&const DeepCollectionEquality().equals(other.accountsPayable, accountsPayable)&&const DeepCollectionEquality().equals(other.totalPermanentEquity, totalPermanentEquity)&&const DeepCollectionEquality().equals(other.noncontrollingInterestInConsolidatedEntity, noncontrollingInterestInConsolidatedEntity)&&const DeepCollectionEquality().equals(other.temporaryEquityRedeemableNoncontrollingInterests, temporaryEquityRedeemableNoncontrollingInterests)&&const DeepCollectionEquality().equals(other.accumulatedOtherComprehensiveIncome, accumulatedOtherComprehensiveIncome)&&const DeepCollectionEquality().equals(other.additionalPaidInCapital, additionalPaidInCapital)&&const DeepCollectionEquality().equals(other.commonStockTotalEquity, commonStockTotalEquity)&&const DeepCollectionEquality().equals(other.preferredStockTotalEquity, preferredStockTotalEquity)&&const DeepCollectionEquality().equals(other.retainedEarningsTotalEquity, retainedEarningsTotalEquity)&&const DeepCollectionEquality().equals(other.treasuryStock, treasuryStock)&&const DeepCollectionEquality().equals(other.accumulatedAmortization, accumulatedAmortization)&&const DeepCollectionEquality().equals(other.nonCurrrentAssetsOther, nonCurrrentAssetsOther)&&const DeepCollectionEquality().equals(other.deferredLongTermAssetCharges, deferredLongTermAssetCharges)&&const DeepCollectionEquality().equals(other.nonCurrentAssetsTotal, nonCurrentAssetsTotal)&&const DeepCollectionEquality().equals(other.capitalLeaseObligations, capitalLeaseObligations)&&const DeepCollectionEquality().equals(other.longTermDebtTotal, longTermDebtTotal)&&const DeepCollectionEquality().equals(other.nonCurrentLiabilitiesOther, nonCurrentLiabilitiesOther)&&const DeepCollectionEquality().equals(other.nonCurrentLiabilitiesTotal, nonCurrentLiabilitiesTotal)&&const DeepCollectionEquality().equals(other.negativeGoodwill, negativeGoodwill)&&const DeepCollectionEquality().equals(other.warrants, warrants)&&const DeepCollectionEquality().equals(other.preferredStockRedeemable, preferredStockRedeemable)&&const DeepCollectionEquality().equals(other.capitalSurpluse, capitalSurpluse)&&const DeepCollectionEquality().equals(other.liabilitiesAndStockholdersEquity, liabilitiesAndStockholdersEquity)&&const DeepCollectionEquality().equals(other.cashAndShortTermInvestments, cashAndShortTermInvestments)&&const DeepCollectionEquality().equals(other.propertyPlantAndEquipmentGross, propertyPlantAndEquipmentGross)&&const DeepCollectionEquality().equals(other.propertyPlantAndEquipmentNet, propertyPlantAndEquipmentNet)&&const DeepCollectionEquality().equals(other.accumulatedDepreciation, accumulatedDepreciation)&&const DeepCollectionEquality().equals(other.netWorkingCapital, netWorkingCapital)&&const DeepCollectionEquality().equals(other.netInvestedCapital, netInvestedCapital)&&const DeepCollectionEquality().equals(other.commonStockSharesOutstanding, commonStockSharesOutstanding)&&const DeepCollectionEquality().equals(other.investments, investments)&&const DeepCollectionEquality().equals(other.changeToLiabilities, changeToLiabilities)&&const DeepCollectionEquality().equals(other.totalCashflowsFromInvestingActivities, totalCashflowsFromInvestingActivities)&&const DeepCollectionEquality().equals(other.netBorrowings, netBorrowings)&&const DeepCollectionEquality().equals(other.totalCashFromFinancingActivities, totalCashFromFinancingActivities)&&const DeepCollectionEquality().equals(other.changeToOperatingActivities, changeToOperatingActivities)&&const DeepCollectionEquality().equals(other.netIncome, netIncome)&&const DeepCollectionEquality().equals(other.changeInCash, changeInCash)&&const DeepCollectionEquality().equals(other.beginPeriodCashFlow, beginPeriodCashFlow)&&const DeepCollectionEquality().equals(other.endPeriodCashFlow, endPeriodCashFlow)&&const DeepCollectionEquality().equals(other.totalCashFromOperatingActivities, totalCashFromOperatingActivities)&&const DeepCollectionEquality().equals(other.issuanceOfCapitalStock, issuanceOfCapitalStock)&&const DeepCollectionEquality().equals(other.depreciation, depreciation)&&const DeepCollectionEquality().equals(other.otherCashflowsFromInvestingActivities, otherCashflowsFromInvestingActivities)&&const DeepCollectionEquality().equals(other.dividendsPaid, dividendsPaid)&&const DeepCollectionEquality().equals(other.changeToInventory, changeToInventory)&&const DeepCollectionEquality().equals(other.changeToAccountReceivables, changeToAccountReceivables)&&const DeepCollectionEquality().equals(other.salePurchaseOfStock, salePurchaseOfStock)&&const DeepCollectionEquality().equals(other.otherCashflowsFromFinancingActivities, otherCashflowsFromFinancingActivities)&&const DeepCollectionEquality().equals(other.changeToNetincome, changeToNetincome)&&const DeepCollectionEquality().equals(other.capitalExpenditures, capitalExpenditures)&&const DeepCollectionEquality().equals(other.changeReceivables, changeReceivables)&&const DeepCollectionEquality().equals(other.cashFlowsOtherOperating, cashFlowsOtherOperating)&&const DeepCollectionEquality().equals(other.exchangeRateChanges, exchangeRateChanges)&&const DeepCollectionEquality().equals(other.cashAndCashEquivalentsChanges, cashAndCashEquivalentsChanges)&&const DeepCollectionEquality().equals(other.changeInWorkingCapital, changeInWorkingCapital)&&const DeepCollectionEquality().equals(other.stockBasedCompensation, stockBasedCompensation)&&const DeepCollectionEquality().equals(other.otherNonCashItems, otherNonCashItems)&&const DeepCollectionEquality().equals(other.freeCashFlow, freeCashFlow)&&const DeepCollectionEquality().equals(other.researchDevelopment, researchDevelopment)&&const DeepCollectionEquality().equals(other.effectOfAccountingCharges, effectOfAccountingCharges)&&const DeepCollectionEquality().equals(other.incomeBeforeTax, incomeBeforeTax)&&const DeepCollectionEquality().equals(other.minorityInterest, minorityInterest)&&const DeepCollectionEquality().equals(other.sellingGeneralAdministrative, sellingGeneralAdministrative)&&const DeepCollectionEquality().equals(other.sellingAndMarketingExpenses, sellingAndMarketingExpenses)&&const DeepCollectionEquality().equals(other.grossProfit, grossProfit)&&const DeepCollectionEquality().equals(other.reconciledDepreciation, reconciledDepreciation)&&const DeepCollectionEquality().equals(other.ebit, ebit)&&const DeepCollectionEquality().equals(other.ebitda, ebitda)&&const DeepCollectionEquality().equals(other.depreciationAndAmortization, depreciationAndAmortization)&&const DeepCollectionEquality().equals(other.nonOperatingIncomeNetOther, nonOperatingIncomeNetOther)&&const DeepCollectionEquality().equals(other.operatingIncome, operatingIncome)&&const DeepCollectionEquality().equals(other.otherOperatingExpenses, otherOperatingExpenses)&&const DeepCollectionEquality().equals(other.interestExpense, interestExpense)&&const DeepCollectionEquality().equals(other.taxProvision, taxProvision)&&const DeepCollectionEquality().equals(other.interestIncome, interestIncome)&&const DeepCollectionEquality().equals(other.netInterestIncome, netInterestIncome)&&const DeepCollectionEquality().equals(other.extraordinaryItems, extraordinaryItems)&&const DeepCollectionEquality().equals(other.nonRecurring, nonRecurring)&&const DeepCollectionEquality().equals(other.otherItems, otherItems)&&const DeepCollectionEquality().equals(other.incomeTaxExpense, incomeTaxExpense)&&const DeepCollectionEquality().equals(other.totalRevenue, totalRevenue)&&const DeepCollectionEquality().equals(other.totalOperatingExpenses, totalOperatingExpenses)&&const DeepCollectionEquality().equals(other.costOfRevenue, costOfRevenue)&&const DeepCollectionEquality().equals(other.totalOtherIncomeExpenseNet, totalOtherIncomeExpenseNet)&&const DeepCollectionEquality().equals(other.discontinuedOperations, discontinuedOperations)&&const DeepCollectionEquality().equals(other.netIncomeFromContinuingOps, netIncomeFromContinuingOps)&&const DeepCollectionEquality().equals(other.netIncomeApplicableToCommonShares, netIncomeApplicableToCommonShares)&&const DeepCollectionEquality().equals(other.preferredStockAndOtherAdjustments, preferredStockAndOtherAdjustments)&&const DeepCollectionEquality().equals(other.type, type)&&const DeepCollectionEquality().equals(other.stockType, stockType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,const DeepCollectionEquality().hash(totalAssets),const DeepCollectionEquality().hash(intangibleAssets),const DeepCollectionEquality().hash(earningAssets),const DeepCollectionEquality().hash(otherCurrentAssets),const DeepCollectionEquality().hash(totalLiab),const DeepCollectionEquality().hash(totalStockholderEquity),const DeepCollectionEquality().hash(deferredLongTermLiab),const DeepCollectionEquality().hash(otherCurrentLiab),const DeepCollectionEquality().hash(commonStock),const DeepCollectionEquality().hash(capitalStock),const DeepCollectionEquality().hash(retainedEarnings),const DeepCollectionEquality().hash(otherLiab),const DeepCollectionEquality().hash(goodWill),const DeepCollectionEquality().hash(otherAssets),const DeepCollectionEquality().hash(cash),const DeepCollectionEquality().hash(cashAndEquivalents),const DeepCollectionEquality().hash(totalCurrentLiabilities),const DeepCollectionEquality().hash(currentDeferredRevenue),const DeepCollectionEquality().hash(netDebt),const DeepCollectionEquality().hash(shortTermDebt),const DeepCollectionEquality().hash(shortLongTermDebt),const DeepCollectionEquality().hash(shortLongTermDebtTotal),const DeepCollectionEquality().hash(otherStockholderEquity),const DeepCollectionEquality().hash(propertyPlantEquipment),const DeepCollectionEquality().hash(totalCurrentAssets),const DeepCollectionEquality().hash(longTermInvestments),const DeepCollectionEquality().hash(netTangibleAssets),const DeepCollectionEquality().hash(shortTermInvestments),const DeepCollectionEquality().hash(netReceivables),const DeepCollectionEquality().hash(longTermDebt),const DeepCollectionEquality().hash(inventory),const DeepCollectionEquality().hash(accountsPayable),const DeepCollectionEquality().hash(totalPermanentEquity),const DeepCollectionEquality().hash(noncontrollingInterestInConsolidatedEntity),const DeepCollectionEquality().hash(temporaryEquityRedeemableNoncontrollingInterests),const DeepCollectionEquality().hash(accumulatedOtherComprehensiveIncome),const DeepCollectionEquality().hash(additionalPaidInCapital),const DeepCollectionEquality().hash(commonStockTotalEquity),const DeepCollectionEquality().hash(preferredStockTotalEquity),const DeepCollectionEquality().hash(retainedEarningsTotalEquity),const DeepCollectionEquality().hash(treasuryStock),const DeepCollectionEquality().hash(accumulatedAmortization),const DeepCollectionEquality().hash(nonCurrrentAssetsOther),const DeepCollectionEquality().hash(deferredLongTermAssetCharges),const DeepCollectionEquality().hash(nonCurrentAssetsTotal),const DeepCollectionEquality().hash(capitalLeaseObligations),const DeepCollectionEquality().hash(longTermDebtTotal),const DeepCollectionEquality().hash(nonCurrentLiabilitiesOther),const DeepCollectionEquality().hash(nonCurrentLiabilitiesTotal),const DeepCollectionEquality().hash(negativeGoodwill),const DeepCollectionEquality().hash(warrants),const DeepCollectionEquality().hash(preferredStockRedeemable),const DeepCollectionEquality().hash(capitalSurpluse),const DeepCollectionEquality().hash(liabilitiesAndStockholdersEquity),const DeepCollectionEquality().hash(cashAndShortTermInvestments),const DeepCollectionEquality().hash(propertyPlantAndEquipmentGross),const DeepCollectionEquality().hash(propertyPlantAndEquipmentNet),const DeepCollectionEquality().hash(accumulatedDepreciation),const DeepCollectionEquality().hash(netWorkingCapital),const DeepCollectionEquality().hash(netInvestedCapital),const DeepCollectionEquality().hash(commonStockSharesOutstanding),const DeepCollectionEquality().hash(investments),const DeepCollectionEquality().hash(changeToLiabilities),const DeepCollectionEquality().hash(totalCashflowsFromInvestingActivities),const DeepCollectionEquality().hash(netBorrowings),const DeepCollectionEquality().hash(totalCashFromFinancingActivities),const DeepCollectionEquality().hash(changeToOperatingActivities),const DeepCollectionEquality().hash(netIncome),const DeepCollectionEquality().hash(changeInCash),const DeepCollectionEquality().hash(beginPeriodCashFlow),const DeepCollectionEquality().hash(endPeriodCashFlow),const DeepCollectionEquality().hash(totalCashFromOperatingActivities),const DeepCollectionEquality().hash(issuanceOfCapitalStock),const DeepCollectionEquality().hash(depreciation),const DeepCollectionEquality().hash(otherCashflowsFromInvestingActivities),const DeepCollectionEquality().hash(dividendsPaid),const DeepCollectionEquality().hash(changeToInventory),const DeepCollectionEquality().hash(changeToAccountReceivables),const DeepCollectionEquality().hash(salePurchaseOfStock),const DeepCollectionEquality().hash(otherCashflowsFromFinancingActivities),const DeepCollectionEquality().hash(changeToNetincome),const DeepCollectionEquality().hash(capitalExpenditures),const DeepCollectionEquality().hash(changeReceivables),const DeepCollectionEquality().hash(cashFlowsOtherOperating),const DeepCollectionEquality().hash(exchangeRateChanges),const DeepCollectionEquality().hash(cashAndCashEquivalentsChanges),const DeepCollectionEquality().hash(changeInWorkingCapital),const DeepCollectionEquality().hash(stockBasedCompensation),const DeepCollectionEquality().hash(otherNonCashItems),const DeepCollectionEquality().hash(freeCashFlow),const DeepCollectionEquality().hash(researchDevelopment),const DeepCollectionEquality().hash(effectOfAccountingCharges),const DeepCollectionEquality().hash(incomeBeforeTax),const DeepCollectionEquality().hash(minorityInterest),const DeepCollectionEquality().hash(sellingGeneralAdministrative),const DeepCollectionEquality().hash(sellingAndMarketingExpenses),const DeepCollectionEquality().hash(grossProfit),const DeepCollectionEquality().hash(reconciledDepreciation),const DeepCollectionEquality().hash(ebit),const DeepCollectionEquality().hash(ebitda),const DeepCollectionEquality().hash(depreciationAndAmortization),const DeepCollectionEquality().hash(nonOperatingIncomeNetOther),const DeepCollectionEquality().hash(operatingIncome),const DeepCollectionEquality().hash(otherOperatingExpenses),const DeepCollectionEquality().hash(interestExpense),const DeepCollectionEquality().hash(taxProvision),const DeepCollectionEquality().hash(interestIncome),const DeepCollectionEquality().hash(netInterestIncome),const DeepCollectionEquality().hash(extraordinaryItems),const DeepCollectionEquality().hash(nonRecurring),const DeepCollectionEquality().hash(otherItems),const DeepCollectionEquality().hash(incomeTaxExpense),const DeepCollectionEquality().hash(totalRevenue),const DeepCollectionEquality().hash(totalOperatingExpenses),const DeepCollectionEquality().hash(costOfRevenue),const DeepCollectionEquality().hash(totalOtherIncomeExpenseNet),const DeepCollectionEquality().hash(discontinuedOperations),const DeepCollectionEquality().hash(netIncomeFromContinuingOps),const DeepCollectionEquality().hash(netIncomeApplicableToCommonShares),const DeepCollectionEquality().hash(preferredStockAndOtherAdjustments),const DeepCollectionEquality().hash(type),const DeepCollectionEquality().hash(stockType)]);

@override
String toString() {
  return 'YearlyFinancialData(totalAssets: $totalAssets, intangibleAssets: $intangibleAssets, earningAssets: $earningAssets, otherCurrentAssets: $otherCurrentAssets, totalLiab: $totalLiab, totalStockholderEquity: $totalStockholderEquity, deferredLongTermLiab: $deferredLongTermLiab, otherCurrentLiab: $otherCurrentLiab, commonStock: $commonStock, capitalStock: $capitalStock, retainedEarnings: $retainedEarnings, otherLiab: $otherLiab, goodWill: $goodWill, otherAssets: $otherAssets, cash: $cash, cashAndEquivalents: $cashAndEquivalents, totalCurrentLiabilities: $totalCurrentLiabilities, currentDeferredRevenue: $currentDeferredRevenue, netDebt: $netDebt, shortTermDebt: $shortTermDebt, shortLongTermDebt: $shortLongTermDebt, shortLongTermDebtTotal: $shortLongTermDebtTotal, otherStockholderEquity: $otherStockholderEquity, propertyPlantEquipment: $propertyPlantEquipment, totalCurrentAssets: $totalCurrentAssets, longTermInvestments: $longTermInvestments, netTangibleAssets: $netTangibleAssets, shortTermInvestments: $shortTermInvestments, netReceivables: $netReceivables, longTermDebt: $longTermDebt, inventory: $inventory, accountsPayable: $accountsPayable, totalPermanentEquity: $totalPermanentEquity, noncontrollingInterestInConsolidatedEntity: $noncontrollingInterestInConsolidatedEntity, temporaryEquityRedeemableNoncontrollingInterests: $temporaryEquityRedeemableNoncontrollingInterests, accumulatedOtherComprehensiveIncome: $accumulatedOtherComprehensiveIncome, additionalPaidInCapital: $additionalPaidInCapital, commonStockTotalEquity: $commonStockTotalEquity, preferredStockTotalEquity: $preferredStockTotalEquity, retainedEarningsTotalEquity: $retainedEarningsTotalEquity, treasuryStock: $treasuryStock, accumulatedAmortization: $accumulatedAmortization, nonCurrrentAssetsOther: $nonCurrrentAssetsOther, deferredLongTermAssetCharges: $deferredLongTermAssetCharges, nonCurrentAssetsTotal: $nonCurrentAssetsTotal, capitalLeaseObligations: $capitalLeaseObligations, longTermDebtTotal: $longTermDebtTotal, nonCurrentLiabilitiesOther: $nonCurrentLiabilitiesOther, nonCurrentLiabilitiesTotal: $nonCurrentLiabilitiesTotal, negativeGoodwill: $negativeGoodwill, warrants: $warrants, preferredStockRedeemable: $preferredStockRedeemable, capitalSurpluse: $capitalSurpluse, liabilitiesAndStockholdersEquity: $liabilitiesAndStockholdersEquity, cashAndShortTermInvestments: $cashAndShortTermInvestments, propertyPlantAndEquipmentGross: $propertyPlantAndEquipmentGross, propertyPlantAndEquipmentNet: $propertyPlantAndEquipmentNet, accumulatedDepreciation: $accumulatedDepreciation, netWorkingCapital: $netWorkingCapital, netInvestedCapital: $netInvestedCapital, commonStockSharesOutstanding: $commonStockSharesOutstanding, investments: $investments, changeToLiabilities: $changeToLiabilities, totalCashflowsFromInvestingActivities: $totalCashflowsFromInvestingActivities, netBorrowings: $netBorrowings, totalCashFromFinancingActivities: $totalCashFromFinancingActivities, changeToOperatingActivities: $changeToOperatingActivities, netIncome: $netIncome, changeInCash: $changeInCash, beginPeriodCashFlow: $beginPeriodCashFlow, endPeriodCashFlow: $endPeriodCashFlow, totalCashFromOperatingActivities: $totalCashFromOperatingActivities, issuanceOfCapitalStock: $issuanceOfCapitalStock, depreciation: $depreciation, otherCashflowsFromInvestingActivities: $otherCashflowsFromInvestingActivities, dividendsPaid: $dividendsPaid, changeToInventory: $changeToInventory, changeToAccountReceivables: $changeToAccountReceivables, salePurchaseOfStock: $salePurchaseOfStock, otherCashflowsFromFinancingActivities: $otherCashflowsFromFinancingActivities, changeToNetincome: $changeToNetincome, capitalExpenditures: $capitalExpenditures, changeReceivables: $changeReceivables, cashFlowsOtherOperating: $cashFlowsOtherOperating, exchangeRateChanges: $exchangeRateChanges, cashAndCashEquivalentsChanges: $cashAndCashEquivalentsChanges, changeInWorkingCapital: $changeInWorkingCapital, stockBasedCompensation: $stockBasedCompensation, otherNonCashItems: $otherNonCashItems, freeCashFlow: $freeCashFlow, researchDevelopment: $researchDevelopment, effectOfAccountingCharges: $effectOfAccountingCharges, incomeBeforeTax: $incomeBeforeTax, minorityInterest: $minorityInterest, sellingGeneralAdministrative: $sellingGeneralAdministrative, sellingAndMarketingExpenses: $sellingAndMarketingExpenses, grossProfit: $grossProfit, reconciledDepreciation: $reconciledDepreciation, ebit: $ebit, ebitda: $ebitda, depreciationAndAmortization: $depreciationAndAmortization, nonOperatingIncomeNetOther: $nonOperatingIncomeNetOther, operatingIncome: $operatingIncome, otherOperatingExpenses: $otherOperatingExpenses, interestExpense: $interestExpense, taxProvision: $taxProvision, interestIncome: $interestIncome, netInterestIncome: $netInterestIncome, extraordinaryItems: $extraordinaryItems, nonRecurring: $nonRecurring, otherItems: $otherItems, incomeTaxExpense: $incomeTaxExpense, totalRevenue: $totalRevenue, totalOperatingExpenses: $totalOperatingExpenses, costOfRevenue: $costOfRevenue, totalOtherIncomeExpenseNet: $totalOtherIncomeExpenseNet, discontinuedOperations: $discontinuedOperations, netIncomeFromContinuingOps: $netIncomeFromContinuingOps, netIncomeApplicableToCommonShares: $netIncomeApplicableToCommonShares, preferredStockAndOtherAdjustments: $preferredStockAndOtherAdjustments, type: $type, stockType: $stockType)';
}


}

/// @nodoc
abstract mixin class $YearlyFinancialDataCopyWith<$Res>  {
  factory $YearlyFinancialDataCopyWith(YearlyFinancialData value, $Res Function(YearlyFinancialData) _then) = _$YearlyFinancialDataCopyWithImpl;
@useResult
$Res call({
 List<dynamic>? totalAssets, List<dynamic>? intangibleAssets, List<dynamic>? earningAssets, List<dynamic>? otherCurrentAssets, List<dynamic>? totalLiab, List<dynamic>? totalStockholderEquity, List<dynamic>? deferredLongTermLiab, List<dynamic>? otherCurrentLiab, List<dynamic>? commonStock, List<dynamic>? capitalStock, List<dynamic>? retainedEarnings, List<dynamic>? otherLiab, List<dynamic>? goodWill, List<dynamic>? otherAssets, List<dynamic>? cash, List<dynamic>? cashAndEquivalents, List<dynamic>? totalCurrentLiabilities, List<dynamic>? currentDeferredRevenue, List<dynamic>? netDebt, List<dynamic>? shortTermDebt, List<dynamic>? shortLongTermDebt, List<dynamic>? shortLongTermDebtTotal, List<dynamic>? otherStockholderEquity, List<dynamic>? propertyPlantEquipment, List<dynamic>? totalCurrentAssets, List<dynamic>? longTermInvestments, List<dynamic>? netTangibleAssets, List<dynamic>? shortTermInvestments, List<dynamic>? netReceivables, List<dynamic>? longTermDebt, List<dynamic>? inventory, List<dynamic>? accountsPayable, List<dynamic>? totalPermanentEquity, List<dynamic>? noncontrollingInterestInConsolidatedEntity, List<dynamic>? temporaryEquityRedeemableNoncontrollingInterests, List<dynamic>? accumulatedOtherComprehensiveIncome, List<dynamic>? additionalPaidInCapital, List<dynamic>? commonStockTotalEquity, List<dynamic>? preferredStockTotalEquity, List<dynamic>? retainedEarningsTotalEquity, List<dynamic>? treasuryStock, List<dynamic>? accumulatedAmortization, List<dynamic>? nonCurrrentAssetsOther, List<dynamic>? deferredLongTermAssetCharges, List<dynamic>? nonCurrentAssetsTotal, List<dynamic>? capitalLeaseObligations, List<dynamic>? longTermDebtTotal, List<dynamic>? nonCurrentLiabilitiesOther, List<dynamic>? nonCurrentLiabilitiesTotal, List<dynamic>? negativeGoodwill, List<dynamic>? warrants, List<dynamic>? preferredStockRedeemable, List<dynamic>? capitalSurpluse, List<dynamic>? liabilitiesAndStockholdersEquity, List<dynamic>? cashAndShortTermInvestments, List<dynamic>? propertyPlantAndEquipmentGross, List<dynamic>? propertyPlantAndEquipmentNet, List<dynamic>? accumulatedDepreciation, List<dynamic>? netWorkingCapital, List<dynamic>? netInvestedCapital, List<dynamic>? commonStockSharesOutstanding, List<dynamic>? investments, List<dynamic>? changeToLiabilities, List<dynamic>? totalCashflowsFromInvestingActivities, List<dynamic>? netBorrowings, List<dynamic>? totalCashFromFinancingActivities, List<dynamic>? changeToOperatingActivities, List<dynamic>? netIncome, List<dynamic>? changeInCash, List<dynamic>? beginPeriodCashFlow, List<dynamic>? endPeriodCashFlow, List<dynamic>? totalCashFromOperatingActivities, List<dynamic>? issuanceOfCapitalStock, List<dynamic>? depreciation, List<dynamic>? otherCashflowsFromInvestingActivities, List<dynamic>? dividendsPaid, List<dynamic>? changeToInventory, List<dynamic>? changeToAccountReceivables, List<dynamic>? salePurchaseOfStock, List<dynamic>? otherCashflowsFromFinancingActivities, List<dynamic>? changeToNetincome, List<dynamic>? capitalExpenditures, List<dynamic>? changeReceivables, List<dynamic>? cashFlowsOtherOperating, List<dynamic>? exchangeRateChanges, List<dynamic>? cashAndCashEquivalentsChanges, List<dynamic>? changeInWorkingCapital, List<dynamic>? stockBasedCompensation, List<dynamic>? otherNonCashItems, List<dynamic>? freeCashFlow, List<dynamic>? researchDevelopment, List<dynamic>? effectOfAccountingCharges, List<dynamic>? incomeBeforeTax, List<dynamic>? minorityInterest, List<dynamic>? sellingGeneralAdministrative, List<dynamic>? sellingAndMarketingExpenses, List<dynamic>? grossProfit, List<dynamic>? reconciledDepreciation, List<dynamic>? ebit, List<dynamic>? ebitda, List<dynamic>? depreciationAndAmortization, List<dynamic>? nonOperatingIncomeNetOther, List<dynamic>? operatingIncome, List<dynamic>? otherOperatingExpenses, List<dynamic>? interestExpense, List<dynamic>? taxProvision, List<dynamic>? interestIncome, List<dynamic>? netInterestIncome, List<dynamic>? extraordinaryItems, List<dynamic>? nonRecurring, List<dynamic>? otherItems, List<dynamic>? incomeTaxExpense, List<dynamic>? totalRevenue, List<dynamic>? totalOperatingExpenses, List<dynamic>? costOfRevenue, List<dynamic>? totalOtherIncomeExpenseNet, List<dynamic>? discontinuedOperations, List<dynamic>? netIncomeFromContinuingOps, List<dynamic>? netIncomeApplicableToCommonShares, List<dynamic>? preferredStockAndOtherAdjustments, List<dynamic>? type,@JsonKey(name: 'stock_type') List<dynamic>? stockType
});




}
/// @nodoc
class _$YearlyFinancialDataCopyWithImpl<$Res>
    implements $YearlyFinancialDataCopyWith<$Res> {
  _$YearlyFinancialDataCopyWithImpl(this._self, this._then);

  final YearlyFinancialData _self;
  final $Res Function(YearlyFinancialData) _then;

/// Create a copy of YearlyFinancialData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? totalAssets = freezed,Object? intangibleAssets = freezed,Object? earningAssets = freezed,Object? otherCurrentAssets = freezed,Object? totalLiab = freezed,Object? totalStockholderEquity = freezed,Object? deferredLongTermLiab = freezed,Object? otherCurrentLiab = freezed,Object? commonStock = freezed,Object? capitalStock = freezed,Object? retainedEarnings = freezed,Object? otherLiab = freezed,Object? goodWill = freezed,Object? otherAssets = freezed,Object? cash = freezed,Object? cashAndEquivalents = freezed,Object? totalCurrentLiabilities = freezed,Object? currentDeferredRevenue = freezed,Object? netDebt = freezed,Object? shortTermDebt = freezed,Object? shortLongTermDebt = freezed,Object? shortLongTermDebtTotal = freezed,Object? otherStockholderEquity = freezed,Object? propertyPlantEquipment = freezed,Object? totalCurrentAssets = freezed,Object? longTermInvestments = freezed,Object? netTangibleAssets = freezed,Object? shortTermInvestments = freezed,Object? netReceivables = freezed,Object? longTermDebt = freezed,Object? inventory = freezed,Object? accountsPayable = freezed,Object? totalPermanentEquity = freezed,Object? noncontrollingInterestInConsolidatedEntity = freezed,Object? temporaryEquityRedeemableNoncontrollingInterests = freezed,Object? accumulatedOtherComprehensiveIncome = freezed,Object? additionalPaidInCapital = freezed,Object? commonStockTotalEquity = freezed,Object? preferredStockTotalEquity = freezed,Object? retainedEarningsTotalEquity = freezed,Object? treasuryStock = freezed,Object? accumulatedAmortization = freezed,Object? nonCurrrentAssetsOther = freezed,Object? deferredLongTermAssetCharges = freezed,Object? nonCurrentAssetsTotal = freezed,Object? capitalLeaseObligations = freezed,Object? longTermDebtTotal = freezed,Object? nonCurrentLiabilitiesOther = freezed,Object? nonCurrentLiabilitiesTotal = freezed,Object? negativeGoodwill = freezed,Object? warrants = freezed,Object? preferredStockRedeemable = freezed,Object? capitalSurpluse = freezed,Object? liabilitiesAndStockholdersEquity = freezed,Object? cashAndShortTermInvestments = freezed,Object? propertyPlantAndEquipmentGross = freezed,Object? propertyPlantAndEquipmentNet = freezed,Object? accumulatedDepreciation = freezed,Object? netWorkingCapital = freezed,Object? netInvestedCapital = freezed,Object? commonStockSharesOutstanding = freezed,Object? investments = freezed,Object? changeToLiabilities = freezed,Object? totalCashflowsFromInvestingActivities = freezed,Object? netBorrowings = freezed,Object? totalCashFromFinancingActivities = freezed,Object? changeToOperatingActivities = freezed,Object? netIncome = freezed,Object? changeInCash = freezed,Object? beginPeriodCashFlow = freezed,Object? endPeriodCashFlow = freezed,Object? totalCashFromOperatingActivities = freezed,Object? issuanceOfCapitalStock = freezed,Object? depreciation = freezed,Object? otherCashflowsFromInvestingActivities = freezed,Object? dividendsPaid = freezed,Object? changeToInventory = freezed,Object? changeToAccountReceivables = freezed,Object? salePurchaseOfStock = freezed,Object? otherCashflowsFromFinancingActivities = freezed,Object? changeToNetincome = freezed,Object? capitalExpenditures = freezed,Object? changeReceivables = freezed,Object? cashFlowsOtherOperating = freezed,Object? exchangeRateChanges = freezed,Object? cashAndCashEquivalentsChanges = freezed,Object? changeInWorkingCapital = freezed,Object? stockBasedCompensation = freezed,Object? otherNonCashItems = freezed,Object? freeCashFlow = freezed,Object? researchDevelopment = freezed,Object? effectOfAccountingCharges = freezed,Object? incomeBeforeTax = freezed,Object? minorityInterest = freezed,Object? sellingGeneralAdministrative = freezed,Object? sellingAndMarketingExpenses = freezed,Object? grossProfit = freezed,Object? reconciledDepreciation = freezed,Object? ebit = freezed,Object? ebitda = freezed,Object? depreciationAndAmortization = freezed,Object? nonOperatingIncomeNetOther = freezed,Object? operatingIncome = freezed,Object? otherOperatingExpenses = freezed,Object? interestExpense = freezed,Object? taxProvision = freezed,Object? interestIncome = freezed,Object? netInterestIncome = freezed,Object? extraordinaryItems = freezed,Object? nonRecurring = freezed,Object? otherItems = freezed,Object? incomeTaxExpense = freezed,Object? totalRevenue = freezed,Object? totalOperatingExpenses = freezed,Object? costOfRevenue = freezed,Object? totalOtherIncomeExpenseNet = freezed,Object? discontinuedOperations = freezed,Object? netIncomeFromContinuingOps = freezed,Object? netIncomeApplicableToCommonShares = freezed,Object? preferredStockAndOtherAdjustments = freezed,Object? type = freezed,Object? stockType = freezed,}) {
  return _then(_self.copyWith(
totalAssets: freezed == totalAssets ? _self.totalAssets : totalAssets // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,intangibleAssets: freezed == intangibleAssets ? _self.intangibleAssets : intangibleAssets // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,earningAssets: freezed == earningAssets ? _self.earningAssets : earningAssets // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,otherCurrentAssets: freezed == otherCurrentAssets ? _self.otherCurrentAssets : otherCurrentAssets // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,totalLiab: freezed == totalLiab ? _self.totalLiab : totalLiab // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,totalStockholderEquity: freezed == totalStockholderEquity ? _self.totalStockholderEquity : totalStockholderEquity // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,deferredLongTermLiab: freezed == deferredLongTermLiab ? _self.deferredLongTermLiab : deferredLongTermLiab // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,otherCurrentLiab: freezed == otherCurrentLiab ? _self.otherCurrentLiab : otherCurrentLiab // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,commonStock: freezed == commonStock ? _self.commonStock : commonStock // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,capitalStock: freezed == capitalStock ? _self.capitalStock : capitalStock // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,retainedEarnings: freezed == retainedEarnings ? _self.retainedEarnings : retainedEarnings // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,otherLiab: freezed == otherLiab ? _self.otherLiab : otherLiab // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,goodWill: freezed == goodWill ? _self.goodWill : goodWill // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,otherAssets: freezed == otherAssets ? _self.otherAssets : otherAssets // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,cash: freezed == cash ? _self.cash : cash // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,cashAndEquivalents: freezed == cashAndEquivalents ? _self.cashAndEquivalents : cashAndEquivalents // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,totalCurrentLiabilities: freezed == totalCurrentLiabilities ? _self.totalCurrentLiabilities : totalCurrentLiabilities // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,currentDeferredRevenue: freezed == currentDeferredRevenue ? _self.currentDeferredRevenue : currentDeferredRevenue // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,netDebt: freezed == netDebt ? _self.netDebt : netDebt // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,shortTermDebt: freezed == shortTermDebt ? _self.shortTermDebt : shortTermDebt // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,shortLongTermDebt: freezed == shortLongTermDebt ? _self.shortLongTermDebt : shortLongTermDebt // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,shortLongTermDebtTotal: freezed == shortLongTermDebtTotal ? _self.shortLongTermDebtTotal : shortLongTermDebtTotal // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,otherStockholderEquity: freezed == otherStockholderEquity ? _self.otherStockholderEquity : otherStockholderEquity // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,propertyPlantEquipment: freezed == propertyPlantEquipment ? _self.propertyPlantEquipment : propertyPlantEquipment // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,totalCurrentAssets: freezed == totalCurrentAssets ? _self.totalCurrentAssets : totalCurrentAssets // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,longTermInvestments: freezed == longTermInvestments ? _self.longTermInvestments : longTermInvestments // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,netTangibleAssets: freezed == netTangibleAssets ? _self.netTangibleAssets : netTangibleAssets // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,shortTermInvestments: freezed == shortTermInvestments ? _self.shortTermInvestments : shortTermInvestments // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,netReceivables: freezed == netReceivables ? _self.netReceivables : netReceivables // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,longTermDebt: freezed == longTermDebt ? _self.longTermDebt : longTermDebt // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,inventory: freezed == inventory ? _self.inventory : inventory // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,accountsPayable: freezed == accountsPayable ? _self.accountsPayable : accountsPayable // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,totalPermanentEquity: freezed == totalPermanentEquity ? _self.totalPermanentEquity : totalPermanentEquity // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,noncontrollingInterestInConsolidatedEntity: freezed == noncontrollingInterestInConsolidatedEntity ? _self.noncontrollingInterestInConsolidatedEntity : noncontrollingInterestInConsolidatedEntity // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,temporaryEquityRedeemableNoncontrollingInterests: freezed == temporaryEquityRedeemableNoncontrollingInterests ? _self.temporaryEquityRedeemableNoncontrollingInterests : temporaryEquityRedeemableNoncontrollingInterests // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,accumulatedOtherComprehensiveIncome: freezed == accumulatedOtherComprehensiveIncome ? _self.accumulatedOtherComprehensiveIncome : accumulatedOtherComprehensiveIncome // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,additionalPaidInCapital: freezed == additionalPaidInCapital ? _self.additionalPaidInCapital : additionalPaidInCapital // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,commonStockTotalEquity: freezed == commonStockTotalEquity ? _self.commonStockTotalEquity : commonStockTotalEquity // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,preferredStockTotalEquity: freezed == preferredStockTotalEquity ? _self.preferredStockTotalEquity : preferredStockTotalEquity // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,retainedEarningsTotalEquity: freezed == retainedEarningsTotalEquity ? _self.retainedEarningsTotalEquity : retainedEarningsTotalEquity // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,treasuryStock: freezed == treasuryStock ? _self.treasuryStock : treasuryStock // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,accumulatedAmortization: freezed == accumulatedAmortization ? _self.accumulatedAmortization : accumulatedAmortization // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,nonCurrrentAssetsOther: freezed == nonCurrrentAssetsOther ? _self.nonCurrrentAssetsOther : nonCurrrentAssetsOther // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,deferredLongTermAssetCharges: freezed == deferredLongTermAssetCharges ? _self.deferredLongTermAssetCharges : deferredLongTermAssetCharges // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,nonCurrentAssetsTotal: freezed == nonCurrentAssetsTotal ? _self.nonCurrentAssetsTotal : nonCurrentAssetsTotal // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,capitalLeaseObligations: freezed == capitalLeaseObligations ? _self.capitalLeaseObligations : capitalLeaseObligations // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,longTermDebtTotal: freezed == longTermDebtTotal ? _self.longTermDebtTotal : longTermDebtTotal // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,nonCurrentLiabilitiesOther: freezed == nonCurrentLiabilitiesOther ? _self.nonCurrentLiabilitiesOther : nonCurrentLiabilitiesOther // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,nonCurrentLiabilitiesTotal: freezed == nonCurrentLiabilitiesTotal ? _self.nonCurrentLiabilitiesTotal : nonCurrentLiabilitiesTotal // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,negativeGoodwill: freezed == negativeGoodwill ? _self.negativeGoodwill : negativeGoodwill // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,warrants: freezed == warrants ? _self.warrants : warrants // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,preferredStockRedeemable: freezed == preferredStockRedeemable ? _self.preferredStockRedeemable : preferredStockRedeemable // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,capitalSurpluse: freezed == capitalSurpluse ? _self.capitalSurpluse : capitalSurpluse // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,liabilitiesAndStockholdersEquity: freezed == liabilitiesAndStockholdersEquity ? _self.liabilitiesAndStockholdersEquity : liabilitiesAndStockholdersEquity // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,cashAndShortTermInvestments: freezed == cashAndShortTermInvestments ? _self.cashAndShortTermInvestments : cashAndShortTermInvestments // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,propertyPlantAndEquipmentGross: freezed == propertyPlantAndEquipmentGross ? _self.propertyPlantAndEquipmentGross : propertyPlantAndEquipmentGross // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,propertyPlantAndEquipmentNet: freezed == propertyPlantAndEquipmentNet ? _self.propertyPlantAndEquipmentNet : propertyPlantAndEquipmentNet // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,accumulatedDepreciation: freezed == accumulatedDepreciation ? _self.accumulatedDepreciation : accumulatedDepreciation // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,netWorkingCapital: freezed == netWorkingCapital ? _self.netWorkingCapital : netWorkingCapital // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,netInvestedCapital: freezed == netInvestedCapital ? _self.netInvestedCapital : netInvestedCapital // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,commonStockSharesOutstanding: freezed == commonStockSharesOutstanding ? _self.commonStockSharesOutstanding : commonStockSharesOutstanding // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,investments: freezed == investments ? _self.investments : investments // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,changeToLiabilities: freezed == changeToLiabilities ? _self.changeToLiabilities : changeToLiabilities // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,totalCashflowsFromInvestingActivities: freezed == totalCashflowsFromInvestingActivities ? _self.totalCashflowsFromInvestingActivities : totalCashflowsFromInvestingActivities // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,netBorrowings: freezed == netBorrowings ? _self.netBorrowings : netBorrowings // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,totalCashFromFinancingActivities: freezed == totalCashFromFinancingActivities ? _self.totalCashFromFinancingActivities : totalCashFromFinancingActivities // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,changeToOperatingActivities: freezed == changeToOperatingActivities ? _self.changeToOperatingActivities : changeToOperatingActivities // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,netIncome: freezed == netIncome ? _self.netIncome : netIncome // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,changeInCash: freezed == changeInCash ? _self.changeInCash : changeInCash // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,beginPeriodCashFlow: freezed == beginPeriodCashFlow ? _self.beginPeriodCashFlow : beginPeriodCashFlow // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,endPeriodCashFlow: freezed == endPeriodCashFlow ? _self.endPeriodCashFlow : endPeriodCashFlow // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,totalCashFromOperatingActivities: freezed == totalCashFromOperatingActivities ? _self.totalCashFromOperatingActivities : totalCashFromOperatingActivities // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,issuanceOfCapitalStock: freezed == issuanceOfCapitalStock ? _self.issuanceOfCapitalStock : issuanceOfCapitalStock // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,depreciation: freezed == depreciation ? _self.depreciation : depreciation // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,otherCashflowsFromInvestingActivities: freezed == otherCashflowsFromInvestingActivities ? _self.otherCashflowsFromInvestingActivities : otherCashflowsFromInvestingActivities // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,dividendsPaid: freezed == dividendsPaid ? _self.dividendsPaid : dividendsPaid // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,changeToInventory: freezed == changeToInventory ? _self.changeToInventory : changeToInventory // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,changeToAccountReceivables: freezed == changeToAccountReceivables ? _self.changeToAccountReceivables : changeToAccountReceivables // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,salePurchaseOfStock: freezed == salePurchaseOfStock ? _self.salePurchaseOfStock : salePurchaseOfStock // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,otherCashflowsFromFinancingActivities: freezed == otherCashflowsFromFinancingActivities ? _self.otherCashflowsFromFinancingActivities : otherCashflowsFromFinancingActivities // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,changeToNetincome: freezed == changeToNetincome ? _self.changeToNetincome : changeToNetincome // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,capitalExpenditures: freezed == capitalExpenditures ? _self.capitalExpenditures : capitalExpenditures // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,changeReceivables: freezed == changeReceivables ? _self.changeReceivables : changeReceivables // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,cashFlowsOtherOperating: freezed == cashFlowsOtherOperating ? _self.cashFlowsOtherOperating : cashFlowsOtherOperating // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,exchangeRateChanges: freezed == exchangeRateChanges ? _self.exchangeRateChanges : exchangeRateChanges // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,cashAndCashEquivalentsChanges: freezed == cashAndCashEquivalentsChanges ? _self.cashAndCashEquivalentsChanges : cashAndCashEquivalentsChanges // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,changeInWorkingCapital: freezed == changeInWorkingCapital ? _self.changeInWorkingCapital : changeInWorkingCapital // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,stockBasedCompensation: freezed == stockBasedCompensation ? _self.stockBasedCompensation : stockBasedCompensation // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,otherNonCashItems: freezed == otherNonCashItems ? _self.otherNonCashItems : otherNonCashItems // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,freeCashFlow: freezed == freeCashFlow ? _self.freeCashFlow : freeCashFlow // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,researchDevelopment: freezed == researchDevelopment ? _self.researchDevelopment : researchDevelopment // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,effectOfAccountingCharges: freezed == effectOfAccountingCharges ? _self.effectOfAccountingCharges : effectOfAccountingCharges // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,incomeBeforeTax: freezed == incomeBeforeTax ? _self.incomeBeforeTax : incomeBeforeTax // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,minorityInterest: freezed == minorityInterest ? _self.minorityInterest : minorityInterest // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,sellingGeneralAdministrative: freezed == sellingGeneralAdministrative ? _self.sellingGeneralAdministrative : sellingGeneralAdministrative // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,sellingAndMarketingExpenses: freezed == sellingAndMarketingExpenses ? _self.sellingAndMarketingExpenses : sellingAndMarketingExpenses // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,grossProfit: freezed == grossProfit ? _self.grossProfit : grossProfit // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,reconciledDepreciation: freezed == reconciledDepreciation ? _self.reconciledDepreciation : reconciledDepreciation // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,ebit: freezed == ebit ? _self.ebit : ebit // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,ebitda: freezed == ebitda ? _self.ebitda : ebitda // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,depreciationAndAmortization: freezed == depreciationAndAmortization ? _self.depreciationAndAmortization : depreciationAndAmortization // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,nonOperatingIncomeNetOther: freezed == nonOperatingIncomeNetOther ? _self.nonOperatingIncomeNetOther : nonOperatingIncomeNetOther // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,operatingIncome: freezed == operatingIncome ? _self.operatingIncome : operatingIncome // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,otherOperatingExpenses: freezed == otherOperatingExpenses ? _self.otherOperatingExpenses : otherOperatingExpenses // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,interestExpense: freezed == interestExpense ? _self.interestExpense : interestExpense // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,taxProvision: freezed == taxProvision ? _self.taxProvision : taxProvision // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,interestIncome: freezed == interestIncome ? _self.interestIncome : interestIncome // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,netInterestIncome: freezed == netInterestIncome ? _self.netInterestIncome : netInterestIncome // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,extraordinaryItems: freezed == extraordinaryItems ? _self.extraordinaryItems : extraordinaryItems // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,nonRecurring: freezed == nonRecurring ? _self.nonRecurring : nonRecurring // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,otherItems: freezed == otherItems ? _self.otherItems : otherItems // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,incomeTaxExpense: freezed == incomeTaxExpense ? _self.incomeTaxExpense : incomeTaxExpense // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,totalRevenue: freezed == totalRevenue ? _self.totalRevenue : totalRevenue // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,totalOperatingExpenses: freezed == totalOperatingExpenses ? _self.totalOperatingExpenses : totalOperatingExpenses // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,costOfRevenue: freezed == costOfRevenue ? _self.costOfRevenue : costOfRevenue // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,totalOtherIncomeExpenseNet: freezed == totalOtherIncomeExpenseNet ? _self.totalOtherIncomeExpenseNet : totalOtherIncomeExpenseNet // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,discontinuedOperations: freezed == discontinuedOperations ? _self.discontinuedOperations : discontinuedOperations // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,netIncomeFromContinuingOps: freezed == netIncomeFromContinuingOps ? _self.netIncomeFromContinuingOps : netIncomeFromContinuingOps // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,netIncomeApplicableToCommonShares: freezed == netIncomeApplicableToCommonShares ? _self.netIncomeApplicableToCommonShares : netIncomeApplicableToCommonShares // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,preferredStockAndOtherAdjustments: freezed == preferredStockAndOtherAdjustments ? _self.preferredStockAndOtherAdjustments : preferredStockAndOtherAdjustments // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,stockType: freezed == stockType ? _self.stockType : stockType // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,
  ));
}

}


/// Adds pattern-matching-related methods to [YearlyFinancialData].
extension YearlyFinancialDataPatterns on YearlyFinancialData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _YearlyFinancialData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _YearlyFinancialData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _YearlyFinancialData value)  $default,){
final _that = this;
switch (_that) {
case _YearlyFinancialData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _YearlyFinancialData value)?  $default,){
final _that = this;
switch (_that) {
case _YearlyFinancialData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<dynamic>? totalAssets,  List<dynamic>? intangibleAssets,  List<dynamic>? earningAssets,  List<dynamic>? otherCurrentAssets,  List<dynamic>? totalLiab,  List<dynamic>? totalStockholderEquity,  List<dynamic>? deferredLongTermLiab,  List<dynamic>? otherCurrentLiab,  List<dynamic>? commonStock,  List<dynamic>? capitalStock,  List<dynamic>? retainedEarnings,  List<dynamic>? otherLiab,  List<dynamic>? goodWill,  List<dynamic>? otherAssets,  List<dynamic>? cash,  List<dynamic>? cashAndEquivalents,  List<dynamic>? totalCurrentLiabilities,  List<dynamic>? currentDeferredRevenue,  List<dynamic>? netDebt,  List<dynamic>? shortTermDebt,  List<dynamic>? shortLongTermDebt,  List<dynamic>? shortLongTermDebtTotal,  List<dynamic>? otherStockholderEquity,  List<dynamic>? propertyPlantEquipment,  List<dynamic>? totalCurrentAssets,  List<dynamic>? longTermInvestments,  List<dynamic>? netTangibleAssets,  List<dynamic>? shortTermInvestments,  List<dynamic>? netReceivables,  List<dynamic>? longTermDebt,  List<dynamic>? inventory,  List<dynamic>? accountsPayable,  List<dynamic>? totalPermanentEquity,  List<dynamic>? noncontrollingInterestInConsolidatedEntity,  List<dynamic>? temporaryEquityRedeemableNoncontrollingInterests,  List<dynamic>? accumulatedOtherComprehensiveIncome,  List<dynamic>? additionalPaidInCapital,  List<dynamic>? commonStockTotalEquity,  List<dynamic>? preferredStockTotalEquity,  List<dynamic>? retainedEarningsTotalEquity,  List<dynamic>? treasuryStock,  List<dynamic>? accumulatedAmortization,  List<dynamic>? nonCurrrentAssetsOther,  List<dynamic>? deferredLongTermAssetCharges,  List<dynamic>? nonCurrentAssetsTotal,  List<dynamic>? capitalLeaseObligations,  List<dynamic>? longTermDebtTotal,  List<dynamic>? nonCurrentLiabilitiesOther,  List<dynamic>? nonCurrentLiabilitiesTotal,  List<dynamic>? negativeGoodwill,  List<dynamic>? warrants,  List<dynamic>? preferredStockRedeemable,  List<dynamic>? capitalSurpluse,  List<dynamic>? liabilitiesAndStockholdersEquity,  List<dynamic>? cashAndShortTermInvestments,  List<dynamic>? propertyPlantAndEquipmentGross,  List<dynamic>? propertyPlantAndEquipmentNet,  List<dynamic>? accumulatedDepreciation,  List<dynamic>? netWorkingCapital,  List<dynamic>? netInvestedCapital,  List<dynamic>? commonStockSharesOutstanding,  List<dynamic>? investments,  List<dynamic>? changeToLiabilities,  List<dynamic>? totalCashflowsFromInvestingActivities,  List<dynamic>? netBorrowings,  List<dynamic>? totalCashFromFinancingActivities,  List<dynamic>? changeToOperatingActivities,  List<dynamic>? netIncome,  List<dynamic>? changeInCash,  List<dynamic>? beginPeriodCashFlow,  List<dynamic>? endPeriodCashFlow,  List<dynamic>? totalCashFromOperatingActivities,  List<dynamic>? issuanceOfCapitalStock,  List<dynamic>? depreciation,  List<dynamic>? otherCashflowsFromInvestingActivities,  List<dynamic>? dividendsPaid,  List<dynamic>? changeToInventory,  List<dynamic>? changeToAccountReceivables,  List<dynamic>? salePurchaseOfStock,  List<dynamic>? otherCashflowsFromFinancingActivities,  List<dynamic>? changeToNetincome,  List<dynamic>? capitalExpenditures,  List<dynamic>? changeReceivables,  List<dynamic>? cashFlowsOtherOperating,  List<dynamic>? exchangeRateChanges,  List<dynamic>? cashAndCashEquivalentsChanges,  List<dynamic>? changeInWorkingCapital,  List<dynamic>? stockBasedCompensation,  List<dynamic>? otherNonCashItems,  List<dynamic>? freeCashFlow,  List<dynamic>? researchDevelopment,  List<dynamic>? effectOfAccountingCharges,  List<dynamic>? incomeBeforeTax,  List<dynamic>? minorityInterest,  List<dynamic>? sellingGeneralAdministrative,  List<dynamic>? sellingAndMarketingExpenses,  List<dynamic>? grossProfit,  List<dynamic>? reconciledDepreciation,  List<dynamic>? ebit,  List<dynamic>? ebitda,  List<dynamic>? depreciationAndAmortization,  List<dynamic>? nonOperatingIncomeNetOther,  List<dynamic>? operatingIncome,  List<dynamic>? otherOperatingExpenses,  List<dynamic>? interestExpense,  List<dynamic>? taxProvision,  List<dynamic>? interestIncome,  List<dynamic>? netInterestIncome,  List<dynamic>? extraordinaryItems,  List<dynamic>? nonRecurring,  List<dynamic>? otherItems,  List<dynamic>? incomeTaxExpense,  List<dynamic>? totalRevenue,  List<dynamic>? totalOperatingExpenses,  List<dynamic>? costOfRevenue,  List<dynamic>? totalOtherIncomeExpenseNet,  List<dynamic>? discontinuedOperations,  List<dynamic>? netIncomeFromContinuingOps,  List<dynamic>? netIncomeApplicableToCommonShares,  List<dynamic>? preferredStockAndOtherAdjustments,  List<dynamic>? type, @JsonKey(name: 'stock_type')  List<dynamic>? stockType)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _YearlyFinancialData() when $default != null:
return $default(_that.totalAssets,_that.intangibleAssets,_that.earningAssets,_that.otherCurrentAssets,_that.totalLiab,_that.totalStockholderEquity,_that.deferredLongTermLiab,_that.otherCurrentLiab,_that.commonStock,_that.capitalStock,_that.retainedEarnings,_that.otherLiab,_that.goodWill,_that.otherAssets,_that.cash,_that.cashAndEquivalents,_that.totalCurrentLiabilities,_that.currentDeferredRevenue,_that.netDebt,_that.shortTermDebt,_that.shortLongTermDebt,_that.shortLongTermDebtTotal,_that.otherStockholderEquity,_that.propertyPlantEquipment,_that.totalCurrentAssets,_that.longTermInvestments,_that.netTangibleAssets,_that.shortTermInvestments,_that.netReceivables,_that.longTermDebt,_that.inventory,_that.accountsPayable,_that.totalPermanentEquity,_that.noncontrollingInterestInConsolidatedEntity,_that.temporaryEquityRedeemableNoncontrollingInterests,_that.accumulatedOtherComprehensiveIncome,_that.additionalPaidInCapital,_that.commonStockTotalEquity,_that.preferredStockTotalEquity,_that.retainedEarningsTotalEquity,_that.treasuryStock,_that.accumulatedAmortization,_that.nonCurrrentAssetsOther,_that.deferredLongTermAssetCharges,_that.nonCurrentAssetsTotal,_that.capitalLeaseObligations,_that.longTermDebtTotal,_that.nonCurrentLiabilitiesOther,_that.nonCurrentLiabilitiesTotal,_that.negativeGoodwill,_that.warrants,_that.preferredStockRedeemable,_that.capitalSurpluse,_that.liabilitiesAndStockholdersEquity,_that.cashAndShortTermInvestments,_that.propertyPlantAndEquipmentGross,_that.propertyPlantAndEquipmentNet,_that.accumulatedDepreciation,_that.netWorkingCapital,_that.netInvestedCapital,_that.commonStockSharesOutstanding,_that.investments,_that.changeToLiabilities,_that.totalCashflowsFromInvestingActivities,_that.netBorrowings,_that.totalCashFromFinancingActivities,_that.changeToOperatingActivities,_that.netIncome,_that.changeInCash,_that.beginPeriodCashFlow,_that.endPeriodCashFlow,_that.totalCashFromOperatingActivities,_that.issuanceOfCapitalStock,_that.depreciation,_that.otherCashflowsFromInvestingActivities,_that.dividendsPaid,_that.changeToInventory,_that.changeToAccountReceivables,_that.salePurchaseOfStock,_that.otherCashflowsFromFinancingActivities,_that.changeToNetincome,_that.capitalExpenditures,_that.changeReceivables,_that.cashFlowsOtherOperating,_that.exchangeRateChanges,_that.cashAndCashEquivalentsChanges,_that.changeInWorkingCapital,_that.stockBasedCompensation,_that.otherNonCashItems,_that.freeCashFlow,_that.researchDevelopment,_that.effectOfAccountingCharges,_that.incomeBeforeTax,_that.minorityInterest,_that.sellingGeneralAdministrative,_that.sellingAndMarketingExpenses,_that.grossProfit,_that.reconciledDepreciation,_that.ebit,_that.ebitda,_that.depreciationAndAmortization,_that.nonOperatingIncomeNetOther,_that.operatingIncome,_that.otherOperatingExpenses,_that.interestExpense,_that.taxProvision,_that.interestIncome,_that.netInterestIncome,_that.extraordinaryItems,_that.nonRecurring,_that.otherItems,_that.incomeTaxExpense,_that.totalRevenue,_that.totalOperatingExpenses,_that.costOfRevenue,_that.totalOtherIncomeExpenseNet,_that.discontinuedOperations,_that.netIncomeFromContinuingOps,_that.netIncomeApplicableToCommonShares,_that.preferredStockAndOtherAdjustments,_that.type,_that.stockType);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<dynamic>? totalAssets,  List<dynamic>? intangibleAssets,  List<dynamic>? earningAssets,  List<dynamic>? otherCurrentAssets,  List<dynamic>? totalLiab,  List<dynamic>? totalStockholderEquity,  List<dynamic>? deferredLongTermLiab,  List<dynamic>? otherCurrentLiab,  List<dynamic>? commonStock,  List<dynamic>? capitalStock,  List<dynamic>? retainedEarnings,  List<dynamic>? otherLiab,  List<dynamic>? goodWill,  List<dynamic>? otherAssets,  List<dynamic>? cash,  List<dynamic>? cashAndEquivalents,  List<dynamic>? totalCurrentLiabilities,  List<dynamic>? currentDeferredRevenue,  List<dynamic>? netDebt,  List<dynamic>? shortTermDebt,  List<dynamic>? shortLongTermDebt,  List<dynamic>? shortLongTermDebtTotal,  List<dynamic>? otherStockholderEquity,  List<dynamic>? propertyPlantEquipment,  List<dynamic>? totalCurrentAssets,  List<dynamic>? longTermInvestments,  List<dynamic>? netTangibleAssets,  List<dynamic>? shortTermInvestments,  List<dynamic>? netReceivables,  List<dynamic>? longTermDebt,  List<dynamic>? inventory,  List<dynamic>? accountsPayable,  List<dynamic>? totalPermanentEquity,  List<dynamic>? noncontrollingInterestInConsolidatedEntity,  List<dynamic>? temporaryEquityRedeemableNoncontrollingInterests,  List<dynamic>? accumulatedOtherComprehensiveIncome,  List<dynamic>? additionalPaidInCapital,  List<dynamic>? commonStockTotalEquity,  List<dynamic>? preferredStockTotalEquity,  List<dynamic>? retainedEarningsTotalEquity,  List<dynamic>? treasuryStock,  List<dynamic>? accumulatedAmortization,  List<dynamic>? nonCurrrentAssetsOther,  List<dynamic>? deferredLongTermAssetCharges,  List<dynamic>? nonCurrentAssetsTotal,  List<dynamic>? capitalLeaseObligations,  List<dynamic>? longTermDebtTotal,  List<dynamic>? nonCurrentLiabilitiesOther,  List<dynamic>? nonCurrentLiabilitiesTotal,  List<dynamic>? negativeGoodwill,  List<dynamic>? warrants,  List<dynamic>? preferredStockRedeemable,  List<dynamic>? capitalSurpluse,  List<dynamic>? liabilitiesAndStockholdersEquity,  List<dynamic>? cashAndShortTermInvestments,  List<dynamic>? propertyPlantAndEquipmentGross,  List<dynamic>? propertyPlantAndEquipmentNet,  List<dynamic>? accumulatedDepreciation,  List<dynamic>? netWorkingCapital,  List<dynamic>? netInvestedCapital,  List<dynamic>? commonStockSharesOutstanding,  List<dynamic>? investments,  List<dynamic>? changeToLiabilities,  List<dynamic>? totalCashflowsFromInvestingActivities,  List<dynamic>? netBorrowings,  List<dynamic>? totalCashFromFinancingActivities,  List<dynamic>? changeToOperatingActivities,  List<dynamic>? netIncome,  List<dynamic>? changeInCash,  List<dynamic>? beginPeriodCashFlow,  List<dynamic>? endPeriodCashFlow,  List<dynamic>? totalCashFromOperatingActivities,  List<dynamic>? issuanceOfCapitalStock,  List<dynamic>? depreciation,  List<dynamic>? otherCashflowsFromInvestingActivities,  List<dynamic>? dividendsPaid,  List<dynamic>? changeToInventory,  List<dynamic>? changeToAccountReceivables,  List<dynamic>? salePurchaseOfStock,  List<dynamic>? otherCashflowsFromFinancingActivities,  List<dynamic>? changeToNetincome,  List<dynamic>? capitalExpenditures,  List<dynamic>? changeReceivables,  List<dynamic>? cashFlowsOtherOperating,  List<dynamic>? exchangeRateChanges,  List<dynamic>? cashAndCashEquivalentsChanges,  List<dynamic>? changeInWorkingCapital,  List<dynamic>? stockBasedCompensation,  List<dynamic>? otherNonCashItems,  List<dynamic>? freeCashFlow,  List<dynamic>? researchDevelopment,  List<dynamic>? effectOfAccountingCharges,  List<dynamic>? incomeBeforeTax,  List<dynamic>? minorityInterest,  List<dynamic>? sellingGeneralAdministrative,  List<dynamic>? sellingAndMarketingExpenses,  List<dynamic>? grossProfit,  List<dynamic>? reconciledDepreciation,  List<dynamic>? ebit,  List<dynamic>? ebitda,  List<dynamic>? depreciationAndAmortization,  List<dynamic>? nonOperatingIncomeNetOther,  List<dynamic>? operatingIncome,  List<dynamic>? otherOperatingExpenses,  List<dynamic>? interestExpense,  List<dynamic>? taxProvision,  List<dynamic>? interestIncome,  List<dynamic>? netInterestIncome,  List<dynamic>? extraordinaryItems,  List<dynamic>? nonRecurring,  List<dynamic>? otherItems,  List<dynamic>? incomeTaxExpense,  List<dynamic>? totalRevenue,  List<dynamic>? totalOperatingExpenses,  List<dynamic>? costOfRevenue,  List<dynamic>? totalOtherIncomeExpenseNet,  List<dynamic>? discontinuedOperations,  List<dynamic>? netIncomeFromContinuingOps,  List<dynamic>? netIncomeApplicableToCommonShares,  List<dynamic>? preferredStockAndOtherAdjustments,  List<dynamic>? type, @JsonKey(name: 'stock_type')  List<dynamic>? stockType)  $default,) {final _that = this;
switch (_that) {
case _YearlyFinancialData():
return $default(_that.totalAssets,_that.intangibleAssets,_that.earningAssets,_that.otherCurrentAssets,_that.totalLiab,_that.totalStockholderEquity,_that.deferredLongTermLiab,_that.otherCurrentLiab,_that.commonStock,_that.capitalStock,_that.retainedEarnings,_that.otherLiab,_that.goodWill,_that.otherAssets,_that.cash,_that.cashAndEquivalents,_that.totalCurrentLiabilities,_that.currentDeferredRevenue,_that.netDebt,_that.shortTermDebt,_that.shortLongTermDebt,_that.shortLongTermDebtTotal,_that.otherStockholderEquity,_that.propertyPlantEquipment,_that.totalCurrentAssets,_that.longTermInvestments,_that.netTangibleAssets,_that.shortTermInvestments,_that.netReceivables,_that.longTermDebt,_that.inventory,_that.accountsPayable,_that.totalPermanentEquity,_that.noncontrollingInterestInConsolidatedEntity,_that.temporaryEquityRedeemableNoncontrollingInterests,_that.accumulatedOtherComprehensiveIncome,_that.additionalPaidInCapital,_that.commonStockTotalEquity,_that.preferredStockTotalEquity,_that.retainedEarningsTotalEquity,_that.treasuryStock,_that.accumulatedAmortization,_that.nonCurrrentAssetsOther,_that.deferredLongTermAssetCharges,_that.nonCurrentAssetsTotal,_that.capitalLeaseObligations,_that.longTermDebtTotal,_that.nonCurrentLiabilitiesOther,_that.nonCurrentLiabilitiesTotal,_that.negativeGoodwill,_that.warrants,_that.preferredStockRedeemable,_that.capitalSurpluse,_that.liabilitiesAndStockholdersEquity,_that.cashAndShortTermInvestments,_that.propertyPlantAndEquipmentGross,_that.propertyPlantAndEquipmentNet,_that.accumulatedDepreciation,_that.netWorkingCapital,_that.netInvestedCapital,_that.commonStockSharesOutstanding,_that.investments,_that.changeToLiabilities,_that.totalCashflowsFromInvestingActivities,_that.netBorrowings,_that.totalCashFromFinancingActivities,_that.changeToOperatingActivities,_that.netIncome,_that.changeInCash,_that.beginPeriodCashFlow,_that.endPeriodCashFlow,_that.totalCashFromOperatingActivities,_that.issuanceOfCapitalStock,_that.depreciation,_that.otherCashflowsFromInvestingActivities,_that.dividendsPaid,_that.changeToInventory,_that.changeToAccountReceivables,_that.salePurchaseOfStock,_that.otherCashflowsFromFinancingActivities,_that.changeToNetincome,_that.capitalExpenditures,_that.changeReceivables,_that.cashFlowsOtherOperating,_that.exchangeRateChanges,_that.cashAndCashEquivalentsChanges,_that.changeInWorkingCapital,_that.stockBasedCompensation,_that.otherNonCashItems,_that.freeCashFlow,_that.researchDevelopment,_that.effectOfAccountingCharges,_that.incomeBeforeTax,_that.minorityInterest,_that.sellingGeneralAdministrative,_that.sellingAndMarketingExpenses,_that.grossProfit,_that.reconciledDepreciation,_that.ebit,_that.ebitda,_that.depreciationAndAmortization,_that.nonOperatingIncomeNetOther,_that.operatingIncome,_that.otherOperatingExpenses,_that.interestExpense,_that.taxProvision,_that.interestIncome,_that.netInterestIncome,_that.extraordinaryItems,_that.nonRecurring,_that.otherItems,_that.incomeTaxExpense,_that.totalRevenue,_that.totalOperatingExpenses,_that.costOfRevenue,_that.totalOtherIncomeExpenseNet,_that.discontinuedOperations,_that.netIncomeFromContinuingOps,_that.netIncomeApplicableToCommonShares,_that.preferredStockAndOtherAdjustments,_that.type,_that.stockType);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<dynamic>? totalAssets,  List<dynamic>? intangibleAssets,  List<dynamic>? earningAssets,  List<dynamic>? otherCurrentAssets,  List<dynamic>? totalLiab,  List<dynamic>? totalStockholderEquity,  List<dynamic>? deferredLongTermLiab,  List<dynamic>? otherCurrentLiab,  List<dynamic>? commonStock,  List<dynamic>? capitalStock,  List<dynamic>? retainedEarnings,  List<dynamic>? otherLiab,  List<dynamic>? goodWill,  List<dynamic>? otherAssets,  List<dynamic>? cash,  List<dynamic>? cashAndEquivalents,  List<dynamic>? totalCurrentLiabilities,  List<dynamic>? currentDeferredRevenue,  List<dynamic>? netDebt,  List<dynamic>? shortTermDebt,  List<dynamic>? shortLongTermDebt,  List<dynamic>? shortLongTermDebtTotal,  List<dynamic>? otherStockholderEquity,  List<dynamic>? propertyPlantEquipment,  List<dynamic>? totalCurrentAssets,  List<dynamic>? longTermInvestments,  List<dynamic>? netTangibleAssets,  List<dynamic>? shortTermInvestments,  List<dynamic>? netReceivables,  List<dynamic>? longTermDebt,  List<dynamic>? inventory,  List<dynamic>? accountsPayable,  List<dynamic>? totalPermanentEquity,  List<dynamic>? noncontrollingInterestInConsolidatedEntity,  List<dynamic>? temporaryEquityRedeemableNoncontrollingInterests,  List<dynamic>? accumulatedOtherComprehensiveIncome,  List<dynamic>? additionalPaidInCapital,  List<dynamic>? commonStockTotalEquity,  List<dynamic>? preferredStockTotalEquity,  List<dynamic>? retainedEarningsTotalEquity,  List<dynamic>? treasuryStock,  List<dynamic>? accumulatedAmortization,  List<dynamic>? nonCurrrentAssetsOther,  List<dynamic>? deferredLongTermAssetCharges,  List<dynamic>? nonCurrentAssetsTotal,  List<dynamic>? capitalLeaseObligations,  List<dynamic>? longTermDebtTotal,  List<dynamic>? nonCurrentLiabilitiesOther,  List<dynamic>? nonCurrentLiabilitiesTotal,  List<dynamic>? negativeGoodwill,  List<dynamic>? warrants,  List<dynamic>? preferredStockRedeemable,  List<dynamic>? capitalSurpluse,  List<dynamic>? liabilitiesAndStockholdersEquity,  List<dynamic>? cashAndShortTermInvestments,  List<dynamic>? propertyPlantAndEquipmentGross,  List<dynamic>? propertyPlantAndEquipmentNet,  List<dynamic>? accumulatedDepreciation,  List<dynamic>? netWorkingCapital,  List<dynamic>? netInvestedCapital,  List<dynamic>? commonStockSharesOutstanding,  List<dynamic>? investments,  List<dynamic>? changeToLiabilities,  List<dynamic>? totalCashflowsFromInvestingActivities,  List<dynamic>? netBorrowings,  List<dynamic>? totalCashFromFinancingActivities,  List<dynamic>? changeToOperatingActivities,  List<dynamic>? netIncome,  List<dynamic>? changeInCash,  List<dynamic>? beginPeriodCashFlow,  List<dynamic>? endPeriodCashFlow,  List<dynamic>? totalCashFromOperatingActivities,  List<dynamic>? issuanceOfCapitalStock,  List<dynamic>? depreciation,  List<dynamic>? otherCashflowsFromInvestingActivities,  List<dynamic>? dividendsPaid,  List<dynamic>? changeToInventory,  List<dynamic>? changeToAccountReceivables,  List<dynamic>? salePurchaseOfStock,  List<dynamic>? otherCashflowsFromFinancingActivities,  List<dynamic>? changeToNetincome,  List<dynamic>? capitalExpenditures,  List<dynamic>? changeReceivables,  List<dynamic>? cashFlowsOtherOperating,  List<dynamic>? exchangeRateChanges,  List<dynamic>? cashAndCashEquivalentsChanges,  List<dynamic>? changeInWorkingCapital,  List<dynamic>? stockBasedCompensation,  List<dynamic>? otherNonCashItems,  List<dynamic>? freeCashFlow,  List<dynamic>? researchDevelopment,  List<dynamic>? effectOfAccountingCharges,  List<dynamic>? incomeBeforeTax,  List<dynamic>? minorityInterest,  List<dynamic>? sellingGeneralAdministrative,  List<dynamic>? sellingAndMarketingExpenses,  List<dynamic>? grossProfit,  List<dynamic>? reconciledDepreciation,  List<dynamic>? ebit,  List<dynamic>? ebitda,  List<dynamic>? depreciationAndAmortization,  List<dynamic>? nonOperatingIncomeNetOther,  List<dynamic>? operatingIncome,  List<dynamic>? otherOperatingExpenses,  List<dynamic>? interestExpense,  List<dynamic>? taxProvision,  List<dynamic>? interestIncome,  List<dynamic>? netInterestIncome,  List<dynamic>? extraordinaryItems,  List<dynamic>? nonRecurring,  List<dynamic>? otherItems,  List<dynamic>? incomeTaxExpense,  List<dynamic>? totalRevenue,  List<dynamic>? totalOperatingExpenses,  List<dynamic>? costOfRevenue,  List<dynamic>? totalOtherIncomeExpenseNet,  List<dynamic>? discontinuedOperations,  List<dynamic>? netIncomeFromContinuingOps,  List<dynamic>? netIncomeApplicableToCommonShares,  List<dynamic>? preferredStockAndOtherAdjustments,  List<dynamic>? type, @JsonKey(name: 'stock_type')  List<dynamic>? stockType)?  $default,) {final _that = this;
switch (_that) {
case _YearlyFinancialData() when $default != null:
return $default(_that.totalAssets,_that.intangibleAssets,_that.earningAssets,_that.otherCurrentAssets,_that.totalLiab,_that.totalStockholderEquity,_that.deferredLongTermLiab,_that.otherCurrentLiab,_that.commonStock,_that.capitalStock,_that.retainedEarnings,_that.otherLiab,_that.goodWill,_that.otherAssets,_that.cash,_that.cashAndEquivalents,_that.totalCurrentLiabilities,_that.currentDeferredRevenue,_that.netDebt,_that.shortTermDebt,_that.shortLongTermDebt,_that.shortLongTermDebtTotal,_that.otherStockholderEquity,_that.propertyPlantEquipment,_that.totalCurrentAssets,_that.longTermInvestments,_that.netTangibleAssets,_that.shortTermInvestments,_that.netReceivables,_that.longTermDebt,_that.inventory,_that.accountsPayable,_that.totalPermanentEquity,_that.noncontrollingInterestInConsolidatedEntity,_that.temporaryEquityRedeemableNoncontrollingInterests,_that.accumulatedOtherComprehensiveIncome,_that.additionalPaidInCapital,_that.commonStockTotalEquity,_that.preferredStockTotalEquity,_that.retainedEarningsTotalEquity,_that.treasuryStock,_that.accumulatedAmortization,_that.nonCurrrentAssetsOther,_that.deferredLongTermAssetCharges,_that.nonCurrentAssetsTotal,_that.capitalLeaseObligations,_that.longTermDebtTotal,_that.nonCurrentLiabilitiesOther,_that.nonCurrentLiabilitiesTotal,_that.negativeGoodwill,_that.warrants,_that.preferredStockRedeemable,_that.capitalSurpluse,_that.liabilitiesAndStockholdersEquity,_that.cashAndShortTermInvestments,_that.propertyPlantAndEquipmentGross,_that.propertyPlantAndEquipmentNet,_that.accumulatedDepreciation,_that.netWorkingCapital,_that.netInvestedCapital,_that.commonStockSharesOutstanding,_that.investments,_that.changeToLiabilities,_that.totalCashflowsFromInvestingActivities,_that.netBorrowings,_that.totalCashFromFinancingActivities,_that.changeToOperatingActivities,_that.netIncome,_that.changeInCash,_that.beginPeriodCashFlow,_that.endPeriodCashFlow,_that.totalCashFromOperatingActivities,_that.issuanceOfCapitalStock,_that.depreciation,_that.otherCashflowsFromInvestingActivities,_that.dividendsPaid,_that.changeToInventory,_that.changeToAccountReceivables,_that.salePurchaseOfStock,_that.otherCashflowsFromFinancingActivities,_that.changeToNetincome,_that.capitalExpenditures,_that.changeReceivables,_that.cashFlowsOtherOperating,_that.exchangeRateChanges,_that.cashAndCashEquivalentsChanges,_that.changeInWorkingCapital,_that.stockBasedCompensation,_that.otherNonCashItems,_that.freeCashFlow,_that.researchDevelopment,_that.effectOfAccountingCharges,_that.incomeBeforeTax,_that.minorityInterest,_that.sellingGeneralAdministrative,_that.sellingAndMarketingExpenses,_that.grossProfit,_that.reconciledDepreciation,_that.ebit,_that.ebitda,_that.depreciationAndAmortization,_that.nonOperatingIncomeNetOther,_that.operatingIncome,_that.otherOperatingExpenses,_that.interestExpense,_that.taxProvision,_that.interestIncome,_that.netInterestIncome,_that.extraordinaryItems,_that.nonRecurring,_that.otherItems,_that.incomeTaxExpense,_that.totalRevenue,_that.totalOperatingExpenses,_that.costOfRevenue,_that.totalOtherIncomeExpenseNet,_that.discontinuedOperations,_that.netIncomeFromContinuingOps,_that.netIncomeApplicableToCommonShares,_that.preferredStockAndOtherAdjustments,_that.type,_that.stockType);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _YearlyFinancialData implements YearlyFinancialData {
  const _YearlyFinancialData({final  List<dynamic>? totalAssets, final  List<dynamic>? intangibleAssets, final  List<dynamic>? earningAssets, final  List<dynamic>? otherCurrentAssets, final  List<dynamic>? totalLiab, final  List<dynamic>? totalStockholderEquity, final  List<dynamic>? deferredLongTermLiab, final  List<dynamic>? otherCurrentLiab, final  List<dynamic>? commonStock, final  List<dynamic>? capitalStock, final  List<dynamic>? retainedEarnings, final  List<dynamic>? otherLiab, final  List<dynamic>? goodWill, final  List<dynamic>? otherAssets, final  List<dynamic>? cash, final  List<dynamic>? cashAndEquivalents, final  List<dynamic>? totalCurrentLiabilities, final  List<dynamic>? currentDeferredRevenue, final  List<dynamic>? netDebt, final  List<dynamic>? shortTermDebt, final  List<dynamic>? shortLongTermDebt, final  List<dynamic>? shortLongTermDebtTotal, final  List<dynamic>? otherStockholderEquity, final  List<dynamic>? propertyPlantEquipment, final  List<dynamic>? totalCurrentAssets, final  List<dynamic>? longTermInvestments, final  List<dynamic>? netTangibleAssets, final  List<dynamic>? shortTermInvestments, final  List<dynamic>? netReceivables, final  List<dynamic>? longTermDebt, final  List<dynamic>? inventory, final  List<dynamic>? accountsPayable, final  List<dynamic>? totalPermanentEquity, final  List<dynamic>? noncontrollingInterestInConsolidatedEntity, final  List<dynamic>? temporaryEquityRedeemableNoncontrollingInterests, final  List<dynamic>? accumulatedOtherComprehensiveIncome, final  List<dynamic>? additionalPaidInCapital, final  List<dynamic>? commonStockTotalEquity, final  List<dynamic>? preferredStockTotalEquity, final  List<dynamic>? retainedEarningsTotalEquity, final  List<dynamic>? treasuryStock, final  List<dynamic>? accumulatedAmortization, final  List<dynamic>? nonCurrrentAssetsOther, final  List<dynamic>? deferredLongTermAssetCharges, final  List<dynamic>? nonCurrentAssetsTotal, final  List<dynamic>? capitalLeaseObligations, final  List<dynamic>? longTermDebtTotal, final  List<dynamic>? nonCurrentLiabilitiesOther, final  List<dynamic>? nonCurrentLiabilitiesTotal, final  List<dynamic>? negativeGoodwill, final  List<dynamic>? warrants, final  List<dynamic>? preferredStockRedeemable, final  List<dynamic>? capitalSurpluse, final  List<dynamic>? liabilitiesAndStockholdersEquity, final  List<dynamic>? cashAndShortTermInvestments, final  List<dynamic>? propertyPlantAndEquipmentGross, final  List<dynamic>? propertyPlantAndEquipmentNet, final  List<dynamic>? accumulatedDepreciation, final  List<dynamic>? netWorkingCapital, final  List<dynamic>? netInvestedCapital, final  List<dynamic>? commonStockSharesOutstanding, final  List<dynamic>? investments, final  List<dynamic>? changeToLiabilities, final  List<dynamic>? totalCashflowsFromInvestingActivities, final  List<dynamic>? netBorrowings, final  List<dynamic>? totalCashFromFinancingActivities, final  List<dynamic>? changeToOperatingActivities, final  List<dynamic>? netIncome, final  List<dynamic>? changeInCash, final  List<dynamic>? beginPeriodCashFlow, final  List<dynamic>? endPeriodCashFlow, final  List<dynamic>? totalCashFromOperatingActivities, final  List<dynamic>? issuanceOfCapitalStock, final  List<dynamic>? depreciation, final  List<dynamic>? otherCashflowsFromInvestingActivities, final  List<dynamic>? dividendsPaid, final  List<dynamic>? changeToInventory, final  List<dynamic>? changeToAccountReceivables, final  List<dynamic>? salePurchaseOfStock, final  List<dynamic>? otherCashflowsFromFinancingActivities, final  List<dynamic>? changeToNetincome, final  List<dynamic>? capitalExpenditures, final  List<dynamic>? changeReceivables, final  List<dynamic>? cashFlowsOtherOperating, final  List<dynamic>? exchangeRateChanges, final  List<dynamic>? cashAndCashEquivalentsChanges, final  List<dynamic>? changeInWorkingCapital, final  List<dynamic>? stockBasedCompensation, final  List<dynamic>? otherNonCashItems, final  List<dynamic>? freeCashFlow, final  List<dynamic>? researchDevelopment, final  List<dynamic>? effectOfAccountingCharges, final  List<dynamic>? incomeBeforeTax, final  List<dynamic>? minorityInterest, final  List<dynamic>? sellingGeneralAdministrative, final  List<dynamic>? sellingAndMarketingExpenses, final  List<dynamic>? grossProfit, final  List<dynamic>? reconciledDepreciation, final  List<dynamic>? ebit, final  List<dynamic>? ebitda, final  List<dynamic>? depreciationAndAmortization, final  List<dynamic>? nonOperatingIncomeNetOther, final  List<dynamic>? operatingIncome, final  List<dynamic>? otherOperatingExpenses, final  List<dynamic>? interestExpense, final  List<dynamic>? taxProvision, final  List<dynamic>? interestIncome, final  List<dynamic>? netInterestIncome, final  List<dynamic>? extraordinaryItems, final  List<dynamic>? nonRecurring, final  List<dynamic>? otherItems, final  List<dynamic>? incomeTaxExpense, final  List<dynamic>? totalRevenue, final  List<dynamic>? totalOperatingExpenses, final  List<dynamic>? costOfRevenue, final  List<dynamic>? totalOtherIncomeExpenseNet, final  List<dynamic>? discontinuedOperations, final  List<dynamic>? netIncomeFromContinuingOps, final  List<dynamic>? netIncomeApplicableToCommonShares, final  List<dynamic>? preferredStockAndOtherAdjustments, final  List<dynamic>? type, @JsonKey(name: 'stock_type') final  List<dynamic>? stockType}): _totalAssets = totalAssets,_intangibleAssets = intangibleAssets,_earningAssets = earningAssets,_otherCurrentAssets = otherCurrentAssets,_totalLiab = totalLiab,_totalStockholderEquity = totalStockholderEquity,_deferredLongTermLiab = deferredLongTermLiab,_otherCurrentLiab = otherCurrentLiab,_commonStock = commonStock,_capitalStock = capitalStock,_retainedEarnings = retainedEarnings,_otherLiab = otherLiab,_goodWill = goodWill,_otherAssets = otherAssets,_cash = cash,_cashAndEquivalents = cashAndEquivalents,_totalCurrentLiabilities = totalCurrentLiabilities,_currentDeferredRevenue = currentDeferredRevenue,_netDebt = netDebt,_shortTermDebt = shortTermDebt,_shortLongTermDebt = shortLongTermDebt,_shortLongTermDebtTotal = shortLongTermDebtTotal,_otherStockholderEquity = otherStockholderEquity,_propertyPlantEquipment = propertyPlantEquipment,_totalCurrentAssets = totalCurrentAssets,_longTermInvestments = longTermInvestments,_netTangibleAssets = netTangibleAssets,_shortTermInvestments = shortTermInvestments,_netReceivables = netReceivables,_longTermDebt = longTermDebt,_inventory = inventory,_accountsPayable = accountsPayable,_totalPermanentEquity = totalPermanentEquity,_noncontrollingInterestInConsolidatedEntity = noncontrollingInterestInConsolidatedEntity,_temporaryEquityRedeemableNoncontrollingInterests = temporaryEquityRedeemableNoncontrollingInterests,_accumulatedOtherComprehensiveIncome = accumulatedOtherComprehensiveIncome,_additionalPaidInCapital = additionalPaidInCapital,_commonStockTotalEquity = commonStockTotalEquity,_preferredStockTotalEquity = preferredStockTotalEquity,_retainedEarningsTotalEquity = retainedEarningsTotalEquity,_treasuryStock = treasuryStock,_accumulatedAmortization = accumulatedAmortization,_nonCurrrentAssetsOther = nonCurrrentAssetsOther,_deferredLongTermAssetCharges = deferredLongTermAssetCharges,_nonCurrentAssetsTotal = nonCurrentAssetsTotal,_capitalLeaseObligations = capitalLeaseObligations,_longTermDebtTotal = longTermDebtTotal,_nonCurrentLiabilitiesOther = nonCurrentLiabilitiesOther,_nonCurrentLiabilitiesTotal = nonCurrentLiabilitiesTotal,_negativeGoodwill = negativeGoodwill,_warrants = warrants,_preferredStockRedeemable = preferredStockRedeemable,_capitalSurpluse = capitalSurpluse,_liabilitiesAndStockholdersEquity = liabilitiesAndStockholdersEquity,_cashAndShortTermInvestments = cashAndShortTermInvestments,_propertyPlantAndEquipmentGross = propertyPlantAndEquipmentGross,_propertyPlantAndEquipmentNet = propertyPlantAndEquipmentNet,_accumulatedDepreciation = accumulatedDepreciation,_netWorkingCapital = netWorkingCapital,_netInvestedCapital = netInvestedCapital,_commonStockSharesOutstanding = commonStockSharesOutstanding,_investments = investments,_changeToLiabilities = changeToLiabilities,_totalCashflowsFromInvestingActivities = totalCashflowsFromInvestingActivities,_netBorrowings = netBorrowings,_totalCashFromFinancingActivities = totalCashFromFinancingActivities,_changeToOperatingActivities = changeToOperatingActivities,_netIncome = netIncome,_changeInCash = changeInCash,_beginPeriodCashFlow = beginPeriodCashFlow,_endPeriodCashFlow = endPeriodCashFlow,_totalCashFromOperatingActivities = totalCashFromOperatingActivities,_issuanceOfCapitalStock = issuanceOfCapitalStock,_depreciation = depreciation,_otherCashflowsFromInvestingActivities = otherCashflowsFromInvestingActivities,_dividendsPaid = dividendsPaid,_changeToInventory = changeToInventory,_changeToAccountReceivables = changeToAccountReceivables,_salePurchaseOfStock = salePurchaseOfStock,_otherCashflowsFromFinancingActivities = otherCashflowsFromFinancingActivities,_changeToNetincome = changeToNetincome,_capitalExpenditures = capitalExpenditures,_changeReceivables = changeReceivables,_cashFlowsOtherOperating = cashFlowsOtherOperating,_exchangeRateChanges = exchangeRateChanges,_cashAndCashEquivalentsChanges = cashAndCashEquivalentsChanges,_changeInWorkingCapital = changeInWorkingCapital,_stockBasedCompensation = stockBasedCompensation,_otherNonCashItems = otherNonCashItems,_freeCashFlow = freeCashFlow,_researchDevelopment = researchDevelopment,_effectOfAccountingCharges = effectOfAccountingCharges,_incomeBeforeTax = incomeBeforeTax,_minorityInterest = minorityInterest,_sellingGeneralAdministrative = sellingGeneralAdministrative,_sellingAndMarketingExpenses = sellingAndMarketingExpenses,_grossProfit = grossProfit,_reconciledDepreciation = reconciledDepreciation,_ebit = ebit,_ebitda = ebitda,_depreciationAndAmortization = depreciationAndAmortization,_nonOperatingIncomeNetOther = nonOperatingIncomeNetOther,_operatingIncome = operatingIncome,_otherOperatingExpenses = otherOperatingExpenses,_interestExpense = interestExpense,_taxProvision = taxProvision,_interestIncome = interestIncome,_netInterestIncome = netInterestIncome,_extraordinaryItems = extraordinaryItems,_nonRecurring = nonRecurring,_otherItems = otherItems,_incomeTaxExpense = incomeTaxExpense,_totalRevenue = totalRevenue,_totalOperatingExpenses = totalOperatingExpenses,_costOfRevenue = costOfRevenue,_totalOtherIncomeExpenseNet = totalOtherIncomeExpenseNet,_discontinuedOperations = discontinuedOperations,_netIncomeFromContinuingOps = netIncomeFromContinuingOps,_netIncomeApplicableToCommonShares = netIncomeApplicableToCommonShares,_preferredStockAndOtherAdjustments = preferredStockAndOtherAdjustments,_type = type,_stockType = stockType;
  factory _YearlyFinancialData.fromJson(Map<String, dynamic> json) => _$YearlyFinancialDataFromJson(json);

 final  List<dynamic>? _totalAssets;
@override List<dynamic>? get totalAssets {
  final value = _totalAssets;
  if (value == null) return null;
  if (_totalAssets is EqualUnmodifiableListView) return _totalAssets;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<dynamic>? _intangibleAssets;
@override List<dynamic>? get intangibleAssets {
  final value = _intangibleAssets;
  if (value == null) return null;
  if (_intangibleAssets is EqualUnmodifiableListView) return _intangibleAssets;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<dynamic>? _earningAssets;
@override List<dynamic>? get earningAssets {
  final value = _earningAssets;
  if (value == null) return null;
  if (_earningAssets is EqualUnmodifiableListView) return _earningAssets;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<dynamic>? _otherCurrentAssets;
@override List<dynamic>? get otherCurrentAssets {
  final value = _otherCurrentAssets;
  if (value == null) return null;
  if (_otherCurrentAssets is EqualUnmodifiableListView) return _otherCurrentAssets;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<dynamic>? _totalLiab;
@override List<dynamic>? get totalLiab {
  final value = _totalLiab;
  if (value == null) return null;
  if (_totalLiab is EqualUnmodifiableListView) return _totalLiab;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<dynamic>? _totalStockholderEquity;
@override List<dynamic>? get totalStockholderEquity {
  final value = _totalStockholderEquity;
  if (value == null) return null;
  if (_totalStockholderEquity is EqualUnmodifiableListView) return _totalStockholderEquity;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<dynamic>? _deferredLongTermLiab;
@override List<dynamic>? get deferredLongTermLiab {
  final value = _deferredLongTermLiab;
  if (value == null) return null;
  if (_deferredLongTermLiab is EqualUnmodifiableListView) return _deferredLongTermLiab;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<dynamic>? _otherCurrentLiab;
@override List<dynamic>? get otherCurrentLiab {
  final value = _otherCurrentLiab;
  if (value == null) return null;
  if (_otherCurrentLiab is EqualUnmodifiableListView) return _otherCurrentLiab;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<dynamic>? _commonStock;
@override List<dynamic>? get commonStock {
  final value = _commonStock;
  if (value == null) return null;
  if (_commonStock is EqualUnmodifiableListView) return _commonStock;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<dynamic>? _capitalStock;
@override List<dynamic>? get capitalStock {
  final value = _capitalStock;
  if (value == null) return null;
  if (_capitalStock is EqualUnmodifiableListView) return _capitalStock;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<dynamic>? _retainedEarnings;
@override List<dynamic>? get retainedEarnings {
  final value = _retainedEarnings;
  if (value == null) return null;
  if (_retainedEarnings is EqualUnmodifiableListView) return _retainedEarnings;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<dynamic>? _otherLiab;
@override List<dynamic>? get otherLiab {
  final value = _otherLiab;
  if (value == null) return null;
  if (_otherLiab is EqualUnmodifiableListView) return _otherLiab;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<dynamic>? _goodWill;
@override List<dynamic>? get goodWill {
  final value = _goodWill;
  if (value == null) return null;
  if (_goodWill is EqualUnmodifiableListView) return _goodWill;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<dynamic>? _otherAssets;
@override List<dynamic>? get otherAssets {
  final value = _otherAssets;
  if (value == null) return null;
  if (_otherAssets is EqualUnmodifiableListView) return _otherAssets;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<dynamic>? _cash;
@override List<dynamic>? get cash {
  final value = _cash;
  if (value == null) return null;
  if (_cash is EqualUnmodifiableListView) return _cash;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<dynamic>? _cashAndEquivalents;
@override List<dynamic>? get cashAndEquivalents {
  final value = _cashAndEquivalents;
  if (value == null) return null;
  if (_cashAndEquivalents is EqualUnmodifiableListView) return _cashAndEquivalents;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<dynamic>? _totalCurrentLiabilities;
@override List<dynamic>? get totalCurrentLiabilities {
  final value = _totalCurrentLiabilities;
  if (value == null) return null;
  if (_totalCurrentLiabilities is EqualUnmodifiableListView) return _totalCurrentLiabilities;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<dynamic>? _currentDeferredRevenue;
@override List<dynamic>? get currentDeferredRevenue {
  final value = _currentDeferredRevenue;
  if (value == null) return null;
  if (_currentDeferredRevenue is EqualUnmodifiableListView) return _currentDeferredRevenue;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<dynamic>? _netDebt;
@override List<dynamic>? get netDebt {
  final value = _netDebt;
  if (value == null) return null;
  if (_netDebt is EqualUnmodifiableListView) return _netDebt;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<dynamic>? _shortTermDebt;
@override List<dynamic>? get shortTermDebt {
  final value = _shortTermDebt;
  if (value == null) return null;
  if (_shortTermDebt is EqualUnmodifiableListView) return _shortTermDebt;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<dynamic>? _shortLongTermDebt;
@override List<dynamic>? get shortLongTermDebt {
  final value = _shortLongTermDebt;
  if (value == null) return null;
  if (_shortLongTermDebt is EqualUnmodifiableListView) return _shortLongTermDebt;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<dynamic>? _shortLongTermDebtTotal;
@override List<dynamic>? get shortLongTermDebtTotal {
  final value = _shortLongTermDebtTotal;
  if (value == null) return null;
  if (_shortLongTermDebtTotal is EqualUnmodifiableListView) return _shortLongTermDebtTotal;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<dynamic>? _otherStockholderEquity;
@override List<dynamic>? get otherStockholderEquity {
  final value = _otherStockholderEquity;
  if (value == null) return null;
  if (_otherStockholderEquity is EqualUnmodifiableListView) return _otherStockholderEquity;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<dynamic>? _propertyPlantEquipment;
@override List<dynamic>? get propertyPlantEquipment {
  final value = _propertyPlantEquipment;
  if (value == null) return null;
  if (_propertyPlantEquipment is EqualUnmodifiableListView) return _propertyPlantEquipment;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<dynamic>? _totalCurrentAssets;
@override List<dynamic>? get totalCurrentAssets {
  final value = _totalCurrentAssets;
  if (value == null) return null;
  if (_totalCurrentAssets is EqualUnmodifiableListView) return _totalCurrentAssets;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<dynamic>? _longTermInvestments;
@override List<dynamic>? get longTermInvestments {
  final value = _longTermInvestments;
  if (value == null) return null;
  if (_longTermInvestments is EqualUnmodifiableListView) return _longTermInvestments;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<dynamic>? _netTangibleAssets;
@override List<dynamic>? get netTangibleAssets {
  final value = _netTangibleAssets;
  if (value == null) return null;
  if (_netTangibleAssets is EqualUnmodifiableListView) return _netTangibleAssets;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<dynamic>? _shortTermInvestments;
@override List<dynamic>? get shortTermInvestments {
  final value = _shortTermInvestments;
  if (value == null) return null;
  if (_shortTermInvestments is EqualUnmodifiableListView) return _shortTermInvestments;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<dynamic>? _netReceivables;
@override List<dynamic>? get netReceivables {
  final value = _netReceivables;
  if (value == null) return null;
  if (_netReceivables is EqualUnmodifiableListView) return _netReceivables;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<dynamic>? _longTermDebt;
@override List<dynamic>? get longTermDebt {
  final value = _longTermDebt;
  if (value == null) return null;
  if (_longTermDebt is EqualUnmodifiableListView) return _longTermDebt;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<dynamic>? _inventory;
@override List<dynamic>? get inventory {
  final value = _inventory;
  if (value == null) return null;
  if (_inventory is EqualUnmodifiableListView) return _inventory;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<dynamic>? _accountsPayable;
@override List<dynamic>? get accountsPayable {
  final value = _accountsPayable;
  if (value == null) return null;
  if (_accountsPayable is EqualUnmodifiableListView) return _accountsPayable;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<dynamic>? _totalPermanentEquity;
@override List<dynamic>? get totalPermanentEquity {
  final value = _totalPermanentEquity;
  if (value == null) return null;
  if (_totalPermanentEquity is EqualUnmodifiableListView) return _totalPermanentEquity;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<dynamic>? _noncontrollingInterestInConsolidatedEntity;
@override List<dynamic>? get noncontrollingInterestInConsolidatedEntity {
  final value = _noncontrollingInterestInConsolidatedEntity;
  if (value == null) return null;
  if (_noncontrollingInterestInConsolidatedEntity is EqualUnmodifiableListView) return _noncontrollingInterestInConsolidatedEntity;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<dynamic>? _temporaryEquityRedeemableNoncontrollingInterests;
@override List<dynamic>? get temporaryEquityRedeemableNoncontrollingInterests {
  final value = _temporaryEquityRedeemableNoncontrollingInterests;
  if (value == null) return null;
  if (_temporaryEquityRedeemableNoncontrollingInterests is EqualUnmodifiableListView) return _temporaryEquityRedeemableNoncontrollingInterests;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<dynamic>? _accumulatedOtherComprehensiveIncome;
@override List<dynamic>? get accumulatedOtherComprehensiveIncome {
  final value = _accumulatedOtherComprehensiveIncome;
  if (value == null) return null;
  if (_accumulatedOtherComprehensiveIncome is EqualUnmodifiableListView) return _accumulatedOtherComprehensiveIncome;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<dynamic>? _additionalPaidInCapital;
@override List<dynamic>? get additionalPaidInCapital {
  final value = _additionalPaidInCapital;
  if (value == null) return null;
  if (_additionalPaidInCapital is EqualUnmodifiableListView) return _additionalPaidInCapital;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<dynamic>? _commonStockTotalEquity;
@override List<dynamic>? get commonStockTotalEquity {
  final value = _commonStockTotalEquity;
  if (value == null) return null;
  if (_commonStockTotalEquity is EqualUnmodifiableListView) return _commonStockTotalEquity;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<dynamic>? _preferredStockTotalEquity;
@override List<dynamic>? get preferredStockTotalEquity {
  final value = _preferredStockTotalEquity;
  if (value == null) return null;
  if (_preferredStockTotalEquity is EqualUnmodifiableListView) return _preferredStockTotalEquity;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<dynamic>? _retainedEarningsTotalEquity;
@override List<dynamic>? get retainedEarningsTotalEquity {
  final value = _retainedEarningsTotalEquity;
  if (value == null) return null;
  if (_retainedEarningsTotalEquity is EqualUnmodifiableListView) return _retainedEarningsTotalEquity;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<dynamic>? _treasuryStock;
@override List<dynamic>? get treasuryStock {
  final value = _treasuryStock;
  if (value == null) return null;
  if (_treasuryStock is EqualUnmodifiableListView) return _treasuryStock;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<dynamic>? _accumulatedAmortization;
@override List<dynamic>? get accumulatedAmortization {
  final value = _accumulatedAmortization;
  if (value == null) return null;
  if (_accumulatedAmortization is EqualUnmodifiableListView) return _accumulatedAmortization;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<dynamic>? _nonCurrrentAssetsOther;
@override List<dynamic>? get nonCurrrentAssetsOther {
  final value = _nonCurrrentAssetsOther;
  if (value == null) return null;
  if (_nonCurrrentAssetsOther is EqualUnmodifiableListView) return _nonCurrrentAssetsOther;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<dynamic>? _deferredLongTermAssetCharges;
@override List<dynamic>? get deferredLongTermAssetCharges {
  final value = _deferredLongTermAssetCharges;
  if (value == null) return null;
  if (_deferredLongTermAssetCharges is EqualUnmodifiableListView) return _deferredLongTermAssetCharges;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<dynamic>? _nonCurrentAssetsTotal;
@override List<dynamic>? get nonCurrentAssetsTotal {
  final value = _nonCurrentAssetsTotal;
  if (value == null) return null;
  if (_nonCurrentAssetsTotal is EqualUnmodifiableListView) return _nonCurrentAssetsTotal;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<dynamic>? _capitalLeaseObligations;
@override List<dynamic>? get capitalLeaseObligations {
  final value = _capitalLeaseObligations;
  if (value == null) return null;
  if (_capitalLeaseObligations is EqualUnmodifiableListView) return _capitalLeaseObligations;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<dynamic>? _longTermDebtTotal;
@override List<dynamic>? get longTermDebtTotal {
  final value = _longTermDebtTotal;
  if (value == null) return null;
  if (_longTermDebtTotal is EqualUnmodifiableListView) return _longTermDebtTotal;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<dynamic>? _nonCurrentLiabilitiesOther;
@override List<dynamic>? get nonCurrentLiabilitiesOther {
  final value = _nonCurrentLiabilitiesOther;
  if (value == null) return null;
  if (_nonCurrentLiabilitiesOther is EqualUnmodifiableListView) return _nonCurrentLiabilitiesOther;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<dynamic>? _nonCurrentLiabilitiesTotal;
@override List<dynamic>? get nonCurrentLiabilitiesTotal {
  final value = _nonCurrentLiabilitiesTotal;
  if (value == null) return null;
  if (_nonCurrentLiabilitiesTotal is EqualUnmodifiableListView) return _nonCurrentLiabilitiesTotal;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<dynamic>? _negativeGoodwill;
@override List<dynamic>? get negativeGoodwill {
  final value = _negativeGoodwill;
  if (value == null) return null;
  if (_negativeGoodwill is EqualUnmodifiableListView) return _negativeGoodwill;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<dynamic>? _warrants;
@override List<dynamic>? get warrants {
  final value = _warrants;
  if (value == null) return null;
  if (_warrants is EqualUnmodifiableListView) return _warrants;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<dynamic>? _preferredStockRedeemable;
@override List<dynamic>? get preferredStockRedeemable {
  final value = _preferredStockRedeemable;
  if (value == null) return null;
  if (_preferredStockRedeemable is EqualUnmodifiableListView) return _preferredStockRedeemable;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<dynamic>? _capitalSurpluse;
@override List<dynamic>? get capitalSurpluse {
  final value = _capitalSurpluse;
  if (value == null) return null;
  if (_capitalSurpluse is EqualUnmodifiableListView) return _capitalSurpluse;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<dynamic>? _liabilitiesAndStockholdersEquity;
@override List<dynamic>? get liabilitiesAndStockholdersEquity {
  final value = _liabilitiesAndStockholdersEquity;
  if (value == null) return null;
  if (_liabilitiesAndStockholdersEquity is EqualUnmodifiableListView) return _liabilitiesAndStockholdersEquity;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<dynamic>? _cashAndShortTermInvestments;
@override List<dynamic>? get cashAndShortTermInvestments {
  final value = _cashAndShortTermInvestments;
  if (value == null) return null;
  if (_cashAndShortTermInvestments is EqualUnmodifiableListView) return _cashAndShortTermInvestments;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<dynamic>? _propertyPlantAndEquipmentGross;
@override List<dynamic>? get propertyPlantAndEquipmentGross {
  final value = _propertyPlantAndEquipmentGross;
  if (value == null) return null;
  if (_propertyPlantAndEquipmentGross is EqualUnmodifiableListView) return _propertyPlantAndEquipmentGross;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<dynamic>? _propertyPlantAndEquipmentNet;
@override List<dynamic>? get propertyPlantAndEquipmentNet {
  final value = _propertyPlantAndEquipmentNet;
  if (value == null) return null;
  if (_propertyPlantAndEquipmentNet is EqualUnmodifiableListView) return _propertyPlantAndEquipmentNet;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<dynamic>? _accumulatedDepreciation;
@override List<dynamic>? get accumulatedDepreciation {
  final value = _accumulatedDepreciation;
  if (value == null) return null;
  if (_accumulatedDepreciation is EqualUnmodifiableListView) return _accumulatedDepreciation;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<dynamic>? _netWorkingCapital;
@override List<dynamic>? get netWorkingCapital {
  final value = _netWorkingCapital;
  if (value == null) return null;
  if (_netWorkingCapital is EqualUnmodifiableListView) return _netWorkingCapital;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<dynamic>? _netInvestedCapital;
@override List<dynamic>? get netInvestedCapital {
  final value = _netInvestedCapital;
  if (value == null) return null;
  if (_netInvestedCapital is EqualUnmodifiableListView) return _netInvestedCapital;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<dynamic>? _commonStockSharesOutstanding;
@override List<dynamic>? get commonStockSharesOutstanding {
  final value = _commonStockSharesOutstanding;
  if (value == null) return null;
  if (_commonStockSharesOutstanding is EqualUnmodifiableListView) return _commonStockSharesOutstanding;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

// Cash Flow specific fields
 final  List<dynamic>? _investments;
// Cash Flow specific fields
@override List<dynamic>? get investments {
  final value = _investments;
  if (value == null) return null;
  if (_investments is EqualUnmodifiableListView) return _investments;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<dynamic>? _changeToLiabilities;
@override List<dynamic>? get changeToLiabilities {
  final value = _changeToLiabilities;
  if (value == null) return null;
  if (_changeToLiabilities is EqualUnmodifiableListView) return _changeToLiabilities;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<dynamic>? _totalCashflowsFromInvestingActivities;
@override List<dynamic>? get totalCashflowsFromInvestingActivities {
  final value = _totalCashflowsFromInvestingActivities;
  if (value == null) return null;
  if (_totalCashflowsFromInvestingActivities is EqualUnmodifiableListView) return _totalCashflowsFromInvestingActivities;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<dynamic>? _netBorrowings;
@override List<dynamic>? get netBorrowings {
  final value = _netBorrowings;
  if (value == null) return null;
  if (_netBorrowings is EqualUnmodifiableListView) return _netBorrowings;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<dynamic>? _totalCashFromFinancingActivities;
@override List<dynamic>? get totalCashFromFinancingActivities {
  final value = _totalCashFromFinancingActivities;
  if (value == null) return null;
  if (_totalCashFromFinancingActivities is EqualUnmodifiableListView) return _totalCashFromFinancingActivities;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<dynamic>? _changeToOperatingActivities;
@override List<dynamic>? get changeToOperatingActivities {
  final value = _changeToOperatingActivities;
  if (value == null) return null;
  if (_changeToOperatingActivities is EqualUnmodifiableListView) return _changeToOperatingActivities;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<dynamic>? _netIncome;
@override List<dynamic>? get netIncome {
  final value = _netIncome;
  if (value == null) return null;
  if (_netIncome is EqualUnmodifiableListView) return _netIncome;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<dynamic>? _changeInCash;
@override List<dynamic>? get changeInCash {
  final value = _changeInCash;
  if (value == null) return null;
  if (_changeInCash is EqualUnmodifiableListView) return _changeInCash;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<dynamic>? _beginPeriodCashFlow;
@override List<dynamic>? get beginPeriodCashFlow {
  final value = _beginPeriodCashFlow;
  if (value == null) return null;
  if (_beginPeriodCashFlow is EqualUnmodifiableListView) return _beginPeriodCashFlow;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<dynamic>? _endPeriodCashFlow;
@override List<dynamic>? get endPeriodCashFlow {
  final value = _endPeriodCashFlow;
  if (value == null) return null;
  if (_endPeriodCashFlow is EqualUnmodifiableListView) return _endPeriodCashFlow;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<dynamic>? _totalCashFromOperatingActivities;
@override List<dynamic>? get totalCashFromOperatingActivities {
  final value = _totalCashFromOperatingActivities;
  if (value == null) return null;
  if (_totalCashFromOperatingActivities is EqualUnmodifiableListView) return _totalCashFromOperatingActivities;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<dynamic>? _issuanceOfCapitalStock;
@override List<dynamic>? get issuanceOfCapitalStock {
  final value = _issuanceOfCapitalStock;
  if (value == null) return null;
  if (_issuanceOfCapitalStock is EqualUnmodifiableListView) return _issuanceOfCapitalStock;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<dynamic>? _depreciation;
@override List<dynamic>? get depreciation {
  final value = _depreciation;
  if (value == null) return null;
  if (_depreciation is EqualUnmodifiableListView) return _depreciation;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<dynamic>? _otherCashflowsFromInvestingActivities;
@override List<dynamic>? get otherCashflowsFromInvestingActivities {
  final value = _otherCashflowsFromInvestingActivities;
  if (value == null) return null;
  if (_otherCashflowsFromInvestingActivities is EqualUnmodifiableListView) return _otherCashflowsFromInvestingActivities;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<dynamic>? _dividendsPaid;
@override List<dynamic>? get dividendsPaid {
  final value = _dividendsPaid;
  if (value == null) return null;
  if (_dividendsPaid is EqualUnmodifiableListView) return _dividendsPaid;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<dynamic>? _changeToInventory;
@override List<dynamic>? get changeToInventory {
  final value = _changeToInventory;
  if (value == null) return null;
  if (_changeToInventory is EqualUnmodifiableListView) return _changeToInventory;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<dynamic>? _changeToAccountReceivables;
@override List<dynamic>? get changeToAccountReceivables {
  final value = _changeToAccountReceivables;
  if (value == null) return null;
  if (_changeToAccountReceivables is EqualUnmodifiableListView) return _changeToAccountReceivables;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<dynamic>? _salePurchaseOfStock;
@override List<dynamic>? get salePurchaseOfStock {
  final value = _salePurchaseOfStock;
  if (value == null) return null;
  if (_salePurchaseOfStock is EqualUnmodifiableListView) return _salePurchaseOfStock;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<dynamic>? _otherCashflowsFromFinancingActivities;
@override List<dynamic>? get otherCashflowsFromFinancingActivities {
  final value = _otherCashflowsFromFinancingActivities;
  if (value == null) return null;
  if (_otherCashflowsFromFinancingActivities is EqualUnmodifiableListView) return _otherCashflowsFromFinancingActivities;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<dynamic>? _changeToNetincome;
@override List<dynamic>? get changeToNetincome {
  final value = _changeToNetincome;
  if (value == null) return null;
  if (_changeToNetincome is EqualUnmodifiableListView) return _changeToNetincome;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<dynamic>? _capitalExpenditures;
@override List<dynamic>? get capitalExpenditures {
  final value = _capitalExpenditures;
  if (value == null) return null;
  if (_capitalExpenditures is EqualUnmodifiableListView) return _capitalExpenditures;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<dynamic>? _changeReceivables;
@override List<dynamic>? get changeReceivables {
  final value = _changeReceivables;
  if (value == null) return null;
  if (_changeReceivables is EqualUnmodifiableListView) return _changeReceivables;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<dynamic>? _cashFlowsOtherOperating;
@override List<dynamic>? get cashFlowsOtherOperating {
  final value = _cashFlowsOtherOperating;
  if (value == null) return null;
  if (_cashFlowsOtherOperating is EqualUnmodifiableListView) return _cashFlowsOtherOperating;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<dynamic>? _exchangeRateChanges;
@override List<dynamic>? get exchangeRateChanges {
  final value = _exchangeRateChanges;
  if (value == null) return null;
  if (_exchangeRateChanges is EqualUnmodifiableListView) return _exchangeRateChanges;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<dynamic>? _cashAndCashEquivalentsChanges;
@override List<dynamic>? get cashAndCashEquivalentsChanges {
  final value = _cashAndCashEquivalentsChanges;
  if (value == null) return null;
  if (_cashAndCashEquivalentsChanges is EqualUnmodifiableListView) return _cashAndCashEquivalentsChanges;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<dynamic>? _changeInWorkingCapital;
@override List<dynamic>? get changeInWorkingCapital {
  final value = _changeInWorkingCapital;
  if (value == null) return null;
  if (_changeInWorkingCapital is EqualUnmodifiableListView) return _changeInWorkingCapital;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<dynamic>? _stockBasedCompensation;
@override List<dynamic>? get stockBasedCompensation {
  final value = _stockBasedCompensation;
  if (value == null) return null;
  if (_stockBasedCompensation is EqualUnmodifiableListView) return _stockBasedCompensation;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<dynamic>? _otherNonCashItems;
@override List<dynamic>? get otherNonCashItems {
  final value = _otherNonCashItems;
  if (value == null) return null;
  if (_otherNonCashItems is EqualUnmodifiableListView) return _otherNonCashItems;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<dynamic>? _freeCashFlow;
@override List<dynamic>? get freeCashFlow {
  final value = _freeCashFlow;
  if (value == null) return null;
  if (_freeCashFlow is EqualUnmodifiableListView) return _freeCashFlow;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

// Income Statement specific fields
 final  List<dynamic>? _researchDevelopment;
// Income Statement specific fields
@override List<dynamic>? get researchDevelopment {
  final value = _researchDevelopment;
  if (value == null) return null;
  if (_researchDevelopment is EqualUnmodifiableListView) return _researchDevelopment;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<dynamic>? _effectOfAccountingCharges;
@override List<dynamic>? get effectOfAccountingCharges {
  final value = _effectOfAccountingCharges;
  if (value == null) return null;
  if (_effectOfAccountingCharges is EqualUnmodifiableListView) return _effectOfAccountingCharges;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<dynamic>? _incomeBeforeTax;
@override List<dynamic>? get incomeBeforeTax {
  final value = _incomeBeforeTax;
  if (value == null) return null;
  if (_incomeBeforeTax is EqualUnmodifiableListView) return _incomeBeforeTax;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<dynamic>? _minorityInterest;
@override List<dynamic>? get minorityInterest {
  final value = _minorityInterest;
  if (value == null) return null;
  if (_minorityInterest is EqualUnmodifiableListView) return _minorityInterest;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<dynamic>? _sellingGeneralAdministrative;
@override List<dynamic>? get sellingGeneralAdministrative {
  final value = _sellingGeneralAdministrative;
  if (value == null) return null;
  if (_sellingGeneralAdministrative is EqualUnmodifiableListView) return _sellingGeneralAdministrative;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<dynamic>? _sellingAndMarketingExpenses;
@override List<dynamic>? get sellingAndMarketingExpenses {
  final value = _sellingAndMarketingExpenses;
  if (value == null) return null;
  if (_sellingAndMarketingExpenses is EqualUnmodifiableListView) return _sellingAndMarketingExpenses;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<dynamic>? _grossProfit;
@override List<dynamic>? get grossProfit {
  final value = _grossProfit;
  if (value == null) return null;
  if (_grossProfit is EqualUnmodifiableListView) return _grossProfit;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<dynamic>? _reconciledDepreciation;
@override List<dynamic>? get reconciledDepreciation {
  final value = _reconciledDepreciation;
  if (value == null) return null;
  if (_reconciledDepreciation is EqualUnmodifiableListView) return _reconciledDepreciation;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<dynamic>? _ebit;
@override List<dynamic>? get ebit {
  final value = _ebit;
  if (value == null) return null;
  if (_ebit is EqualUnmodifiableListView) return _ebit;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<dynamic>? _ebitda;
@override List<dynamic>? get ebitda {
  final value = _ebitda;
  if (value == null) return null;
  if (_ebitda is EqualUnmodifiableListView) return _ebitda;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<dynamic>? _depreciationAndAmortization;
@override List<dynamic>? get depreciationAndAmortization {
  final value = _depreciationAndAmortization;
  if (value == null) return null;
  if (_depreciationAndAmortization is EqualUnmodifiableListView) return _depreciationAndAmortization;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<dynamic>? _nonOperatingIncomeNetOther;
@override List<dynamic>? get nonOperatingIncomeNetOther {
  final value = _nonOperatingIncomeNetOther;
  if (value == null) return null;
  if (_nonOperatingIncomeNetOther is EqualUnmodifiableListView) return _nonOperatingIncomeNetOther;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<dynamic>? _operatingIncome;
@override List<dynamic>? get operatingIncome {
  final value = _operatingIncome;
  if (value == null) return null;
  if (_operatingIncome is EqualUnmodifiableListView) return _operatingIncome;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<dynamic>? _otherOperatingExpenses;
@override List<dynamic>? get otherOperatingExpenses {
  final value = _otherOperatingExpenses;
  if (value == null) return null;
  if (_otherOperatingExpenses is EqualUnmodifiableListView) return _otherOperatingExpenses;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<dynamic>? _interestExpense;
@override List<dynamic>? get interestExpense {
  final value = _interestExpense;
  if (value == null) return null;
  if (_interestExpense is EqualUnmodifiableListView) return _interestExpense;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<dynamic>? _taxProvision;
@override List<dynamic>? get taxProvision {
  final value = _taxProvision;
  if (value == null) return null;
  if (_taxProvision is EqualUnmodifiableListView) return _taxProvision;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<dynamic>? _interestIncome;
@override List<dynamic>? get interestIncome {
  final value = _interestIncome;
  if (value == null) return null;
  if (_interestIncome is EqualUnmodifiableListView) return _interestIncome;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<dynamic>? _netInterestIncome;
@override List<dynamic>? get netInterestIncome {
  final value = _netInterestIncome;
  if (value == null) return null;
  if (_netInterestIncome is EqualUnmodifiableListView) return _netInterestIncome;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<dynamic>? _extraordinaryItems;
@override List<dynamic>? get extraordinaryItems {
  final value = _extraordinaryItems;
  if (value == null) return null;
  if (_extraordinaryItems is EqualUnmodifiableListView) return _extraordinaryItems;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<dynamic>? _nonRecurring;
@override List<dynamic>? get nonRecurring {
  final value = _nonRecurring;
  if (value == null) return null;
  if (_nonRecurring is EqualUnmodifiableListView) return _nonRecurring;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<dynamic>? _otherItems;
@override List<dynamic>? get otherItems {
  final value = _otherItems;
  if (value == null) return null;
  if (_otherItems is EqualUnmodifiableListView) return _otherItems;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<dynamic>? _incomeTaxExpense;
@override List<dynamic>? get incomeTaxExpense {
  final value = _incomeTaxExpense;
  if (value == null) return null;
  if (_incomeTaxExpense is EqualUnmodifiableListView) return _incomeTaxExpense;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<dynamic>? _totalRevenue;
@override List<dynamic>? get totalRevenue {
  final value = _totalRevenue;
  if (value == null) return null;
  if (_totalRevenue is EqualUnmodifiableListView) return _totalRevenue;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<dynamic>? _totalOperatingExpenses;
@override List<dynamic>? get totalOperatingExpenses {
  final value = _totalOperatingExpenses;
  if (value == null) return null;
  if (_totalOperatingExpenses is EqualUnmodifiableListView) return _totalOperatingExpenses;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<dynamic>? _costOfRevenue;
@override List<dynamic>? get costOfRevenue {
  final value = _costOfRevenue;
  if (value == null) return null;
  if (_costOfRevenue is EqualUnmodifiableListView) return _costOfRevenue;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<dynamic>? _totalOtherIncomeExpenseNet;
@override List<dynamic>? get totalOtherIncomeExpenseNet {
  final value = _totalOtherIncomeExpenseNet;
  if (value == null) return null;
  if (_totalOtherIncomeExpenseNet is EqualUnmodifiableListView) return _totalOtherIncomeExpenseNet;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<dynamic>? _discontinuedOperations;
@override List<dynamic>? get discontinuedOperations {
  final value = _discontinuedOperations;
  if (value == null) return null;
  if (_discontinuedOperations is EqualUnmodifiableListView) return _discontinuedOperations;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<dynamic>? _netIncomeFromContinuingOps;
@override List<dynamic>? get netIncomeFromContinuingOps {
  final value = _netIncomeFromContinuingOps;
  if (value == null) return null;
  if (_netIncomeFromContinuingOps is EqualUnmodifiableListView) return _netIncomeFromContinuingOps;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<dynamic>? _netIncomeApplicableToCommonShares;
@override List<dynamic>? get netIncomeApplicableToCommonShares {
  final value = _netIncomeApplicableToCommonShares;
  if (value == null) return null;
  if (_netIncomeApplicableToCommonShares is EqualUnmodifiableListView) return _netIncomeApplicableToCommonShares;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<dynamic>? _preferredStockAndOtherAdjustments;
@override List<dynamic>? get preferredStockAndOtherAdjustments {
  final value = _preferredStockAndOtherAdjustments;
  if (value == null) return null;
  if (_preferredStockAndOtherAdjustments is EqualUnmodifiableListView) return _preferredStockAndOtherAdjustments;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

// Common fields
 final  List<dynamic>? _type;
// Common fields
@override List<dynamic>? get type {
  final value = _type;
  if (value == null) return null;
  if (_type is EqualUnmodifiableListView) return _type;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<dynamic>? _stockType;
@override@JsonKey(name: 'stock_type') List<dynamic>? get stockType {
  final value = _stockType;
  if (value == null) return null;
  if (_stockType is EqualUnmodifiableListView) return _stockType;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of YearlyFinancialData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$YearlyFinancialDataCopyWith<_YearlyFinancialData> get copyWith => __$YearlyFinancialDataCopyWithImpl<_YearlyFinancialData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$YearlyFinancialDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _YearlyFinancialData&&const DeepCollectionEquality().equals(other._totalAssets, _totalAssets)&&const DeepCollectionEquality().equals(other._intangibleAssets, _intangibleAssets)&&const DeepCollectionEquality().equals(other._earningAssets, _earningAssets)&&const DeepCollectionEquality().equals(other._otherCurrentAssets, _otherCurrentAssets)&&const DeepCollectionEquality().equals(other._totalLiab, _totalLiab)&&const DeepCollectionEquality().equals(other._totalStockholderEquity, _totalStockholderEquity)&&const DeepCollectionEquality().equals(other._deferredLongTermLiab, _deferredLongTermLiab)&&const DeepCollectionEquality().equals(other._otherCurrentLiab, _otherCurrentLiab)&&const DeepCollectionEquality().equals(other._commonStock, _commonStock)&&const DeepCollectionEquality().equals(other._capitalStock, _capitalStock)&&const DeepCollectionEquality().equals(other._retainedEarnings, _retainedEarnings)&&const DeepCollectionEquality().equals(other._otherLiab, _otherLiab)&&const DeepCollectionEquality().equals(other._goodWill, _goodWill)&&const DeepCollectionEquality().equals(other._otherAssets, _otherAssets)&&const DeepCollectionEquality().equals(other._cash, _cash)&&const DeepCollectionEquality().equals(other._cashAndEquivalents, _cashAndEquivalents)&&const DeepCollectionEquality().equals(other._totalCurrentLiabilities, _totalCurrentLiabilities)&&const DeepCollectionEquality().equals(other._currentDeferredRevenue, _currentDeferredRevenue)&&const DeepCollectionEquality().equals(other._netDebt, _netDebt)&&const DeepCollectionEquality().equals(other._shortTermDebt, _shortTermDebt)&&const DeepCollectionEquality().equals(other._shortLongTermDebt, _shortLongTermDebt)&&const DeepCollectionEquality().equals(other._shortLongTermDebtTotal, _shortLongTermDebtTotal)&&const DeepCollectionEquality().equals(other._otherStockholderEquity, _otherStockholderEquity)&&const DeepCollectionEquality().equals(other._propertyPlantEquipment, _propertyPlantEquipment)&&const DeepCollectionEquality().equals(other._totalCurrentAssets, _totalCurrentAssets)&&const DeepCollectionEquality().equals(other._longTermInvestments, _longTermInvestments)&&const DeepCollectionEquality().equals(other._netTangibleAssets, _netTangibleAssets)&&const DeepCollectionEquality().equals(other._shortTermInvestments, _shortTermInvestments)&&const DeepCollectionEquality().equals(other._netReceivables, _netReceivables)&&const DeepCollectionEquality().equals(other._longTermDebt, _longTermDebt)&&const DeepCollectionEquality().equals(other._inventory, _inventory)&&const DeepCollectionEquality().equals(other._accountsPayable, _accountsPayable)&&const DeepCollectionEquality().equals(other._totalPermanentEquity, _totalPermanentEquity)&&const DeepCollectionEquality().equals(other._noncontrollingInterestInConsolidatedEntity, _noncontrollingInterestInConsolidatedEntity)&&const DeepCollectionEquality().equals(other._temporaryEquityRedeemableNoncontrollingInterests, _temporaryEquityRedeemableNoncontrollingInterests)&&const DeepCollectionEquality().equals(other._accumulatedOtherComprehensiveIncome, _accumulatedOtherComprehensiveIncome)&&const DeepCollectionEquality().equals(other._additionalPaidInCapital, _additionalPaidInCapital)&&const DeepCollectionEquality().equals(other._commonStockTotalEquity, _commonStockTotalEquity)&&const DeepCollectionEquality().equals(other._preferredStockTotalEquity, _preferredStockTotalEquity)&&const DeepCollectionEquality().equals(other._retainedEarningsTotalEquity, _retainedEarningsTotalEquity)&&const DeepCollectionEquality().equals(other._treasuryStock, _treasuryStock)&&const DeepCollectionEquality().equals(other._accumulatedAmortization, _accumulatedAmortization)&&const DeepCollectionEquality().equals(other._nonCurrrentAssetsOther, _nonCurrrentAssetsOther)&&const DeepCollectionEquality().equals(other._deferredLongTermAssetCharges, _deferredLongTermAssetCharges)&&const DeepCollectionEquality().equals(other._nonCurrentAssetsTotal, _nonCurrentAssetsTotal)&&const DeepCollectionEquality().equals(other._capitalLeaseObligations, _capitalLeaseObligations)&&const DeepCollectionEquality().equals(other._longTermDebtTotal, _longTermDebtTotal)&&const DeepCollectionEquality().equals(other._nonCurrentLiabilitiesOther, _nonCurrentLiabilitiesOther)&&const DeepCollectionEquality().equals(other._nonCurrentLiabilitiesTotal, _nonCurrentLiabilitiesTotal)&&const DeepCollectionEquality().equals(other._negativeGoodwill, _negativeGoodwill)&&const DeepCollectionEquality().equals(other._warrants, _warrants)&&const DeepCollectionEquality().equals(other._preferredStockRedeemable, _preferredStockRedeemable)&&const DeepCollectionEquality().equals(other._capitalSurpluse, _capitalSurpluse)&&const DeepCollectionEquality().equals(other._liabilitiesAndStockholdersEquity, _liabilitiesAndStockholdersEquity)&&const DeepCollectionEquality().equals(other._cashAndShortTermInvestments, _cashAndShortTermInvestments)&&const DeepCollectionEquality().equals(other._propertyPlantAndEquipmentGross, _propertyPlantAndEquipmentGross)&&const DeepCollectionEquality().equals(other._propertyPlantAndEquipmentNet, _propertyPlantAndEquipmentNet)&&const DeepCollectionEquality().equals(other._accumulatedDepreciation, _accumulatedDepreciation)&&const DeepCollectionEquality().equals(other._netWorkingCapital, _netWorkingCapital)&&const DeepCollectionEquality().equals(other._netInvestedCapital, _netInvestedCapital)&&const DeepCollectionEquality().equals(other._commonStockSharesOutstanding, _commonStockSharesOutstanding)&&const DeepCollectionEquality().equals(other._investments, _investments)&&const DeepCollectionEquality().equals(other._changeToLiabilities, _changeToLiabilities)&&const DeepCollectionEquality().equals(other._totalCashflowsFromInvestingActivities, _totalCashflowsFromInvestingActivities)&&const DeepCollectionEquality().equals(other._netBorrowings, _netBorrowings)&&const DeepCollectionEquality().equals(other._totalCashFromFinancingActivities, _totalCashFromFinancingActivities)&&const DeepCollectionEquality().equals(other._changeToOperatingActivities, _changeToOperatingActivities)&&const DeepCollectionEquality().equals(other._netIncome, _netIncome)&&const DeepCollectionEquality().equals(other._changeInCash, _changeInCash)&&const DeepCollectionEquality().equals(other._beginPeriodCashFlow, _beginPeriodCashFlow)&&const DeepCollectionEquality().equals(other._endPeriodCashFlow, _endPeriodCashFlow)&&const DeepCollectionEquality().equals(other._totalCashFromOperatingActivities, _totalCashFromOperatingActivities)&&const DeepCollectionEquality().equals(other._issuanceOfCapitalStock, _issuanceOfCapitalStock)&&const DeepCollectionEquality().equals(other._depreciation, _depreciation)&&const DeepCollectionEquality().equals(other._otherCashflowsFromInvestingActivities, _otherCashflowsFromInvestingActivities)&&const DeepCollectionEquality().equals(other._dividendsPaid, _dividendsPaid)&&const DeepCollectionEquality().equals(other._changeToInventory, _changeToInventory)&&const DeepCollectionEquality().equals(other._changeToAccountReceivables, _changeToAccountReceivables)&&const DeepCollectionEquality().equals(other._salePurchaseOfStock, _salePurchaseOfStock)&&const DeepCollectionEquality().equals(other._otherCashflowsFromFinancingActivities, _otherCashflowsFromFinancingActivities)&&const DeepCollectionEquality().equals(other._changeToNetincome, _changeToNetincome)&&const DeepCollectionEquality().equals(other._capitalExpenditures, _capitalExpenditures)&&const DeepCollectionEquality().equals(other._changeReceivables, _changeReceivables)&&const DeepCollectionEquality().equals(other._cashFlowsOtherOperating, _cashFlowsOtherOperating)&&const DeepCollectionEquality().equals(other._exchangeRateChanges, _exchangeRateChanges)&&const DeepCollectionEquality().equals(other._cashAndCashEquivalentsChanges, _cashAndCashEquivalentsChanges)&&const DeepCollectionEquality().equals(other._changeInWorkingCapital, _changeInWorkingCapital)&&const DeepCollectionEquality().equals(other._stockBasedCompensation, _stockBasedCompensation)&&const DeepCollectionEquality().equals(other._otherNonCashItems, _otherNonCashItems)&&const DeepCollectionEquality().equals(other._freeCashFlow, _freeCashFlow)&&const DeepCollectionEquality().equals(other._researchDevelopment, _researchDevelopment)&&const DeepCollectionEquality().equals(other._effectOfAccountingCharges, _effectOfAccountingCharges)&&const DeepCollectionEquality().equals(other._incomeBeforeTax, _incomeBeforeTax)&&const DeepCollectionEquality().equals(other._minorityInterest, _minorityInterest)&&const DeepCollectionEquality().equals(other._sellingGeneralAdministrative, _sellingGeneralAdministrative)&&const DeepCollectionEquality().equals(other._sellingAndMarketingExpenses, _sellingAndMarketingExpenses)&&const DeepCollectionEquality().equals(other._grossProfit, _grossProfit)&&const DeepCollectionEquality().equals(other._reconciledDepreciation, _reconciledDepreciation)&&const DeepCollectionEquality().equals(other._ebit, _ebit)&&const DeepCollectionEquality().equals(other._ebitda, _ebitda)&&const DeepCollectionEquality().equals(other._depreciationAndAmortization, _depreciationAndAmortization)&&const DeepCollectionEquality().equals(other._nonOperatingIncomeNetOther, _nonOperatingIncomeNetOther)&&const DeepCollectionEquality().equals(other._operatingIncome, _operatingIncome)&&const DeepCollectionEquality().equals(other._otherOperatingExpenses, _otherOperatingExpenses)&&const DeepCollectionEquality().equals(other._interestExpense, _interestExpense)&&const DeepCollectionEquality().equals(other._taxProvision, _taxProvision)&&const DeepCollectionEquality().equals(other._interestIncome, _interestIncome)&&const DeepCollectionEquality().equals(other._netInterestIncome, _netInterestIncome)&&const DeepCollectionEquality().equals(other._extraordinaryItems, _extraordinaryItems)&&const DeepCollectionEquality().equals(other._nonRecurring, _nonRecurring)&&const DeepCollectionEquality().equals(other._otherItems, _otherItems)&&const DeepCollectionEquality().equals(other._incomeTaxExpense, _incomeTaxExpense)&&const DeepCollectionEquality().equals(other._totalRevenue, _totalRevenue)&&const DeepCollectionEquality().equals(other._totalOperatingExpenses, _totalOperatingExpenses)&&const DeepCollectionEquality().equals(other._costOfRevenue, _costOfRevenue)&&const DeepCollectionEquality().equals(other._totalOtherIncomeExpenseNet, _totalOtherIncomeExpenseNet)&&const DeepCollectionEquality().equals(other._discontinuedOperations, _discontinuedOperations)&&const DeepCollectionEquality().equals(other._netIncomeFromContinuingOps, _netIncomeFromContinuingOps)&&const DeepCollectionEquality().equals(other._netIncomeApplicableToCommonShares, _netIncomeApplicableToCommonShares)&&const DeepCollectionEquality().equals(other._preferredStockAndOtherAdjustments, _preferredStockAndOtherAdjustments)&&const DeepCollectionEquality().equals(other._type, _type)&&const DeepCollectionEquality().equals(other._stockType, _stockType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,const DeepCollectionEquality().hash(_totalAssets),const DeepCollectionEquality().hash(_intangibleAssets),const DeepCollectionEquality().hash(_earningAssets),const DeepCollectionEquality().hash(_otherCurrentAssets),const DeepCollectionEquality().hash(_totalLiab),const DeepCollectionEquality().hash(_totalStockholderEquity),const DeepCollectionEquality().hash(_deferredLongTermLiab),const DeepCollectionEquality().hash(_otherCurrentLiab),const DeepCollectionEquality().hash(_commonStock),const DeepCollectionEquality().hash(_capitalStock),const DeepCollectionEquality().hash(_retainedEarnings),const DeepCollectionEquality().hash(_otherLiab),const DeepCollectionEquality().hash(_goodWill),const DeepCollectionEquality().hash(_otherAssets),const DeepCollectionEquality().hash(_cash),const DeepCollectionEquality().hash(_cashAndEquivalents),const DeepCollectionEquality().hash(_totalCurrentLiabilities),const DeepCollectionEquality().hash(_currentDeferredRevenue),const DeepCollectionEquality().hash(_netDebt),const DeepCollectionEquality().hash(_shortTermDebt),const DeepCollectionEquality().hash(_shortLongTermDebt),const DeepCollectionEquality().hash(_shortLongTermDebtTotal),const DeepCollectionEquality().hash(_otherStockholderEquity),const DeepCollectionEquality().hash(_propertyPlantEquipment),const DeepCollectionEquality().hash(_totalCurrentAssets),const DeepCollectionEquality().hash(_longTermInvestments),const DeepCollectionEquality().hash(_netTangibleAssets),const DeepCollectionEquality().hash(_shortTermInvestments),const DeepCollectionEquality().hash(_netReceivables),const DeepCollectionEquality().hash(_longTermDebt),const DeepCollectionEquality().hash(_inventory),const DeepCollectionEquality().hash(_accountsPayable),const DeepCollectionEquality().hash(_totalPermanentEquity),const DeepCollectionEquality().hash(_noncontrollingInterestInConsolidatedEntity),const DeepCollectionEquality().hash(_temporaryEquityRedeemableNoncontrollingInterests),const DeepCollectionEquality().hash(_accumulatedOtherComprehensiveIncome),const DeepCollectionEquality().hash(_additionalPaidInCapital),const DeepCollectionEquality().hash(_commonStockTotalEquity),const DeepCollectionEquality().hash(_preferredStockTotalEquity),const DeepCollectionEquality().hash(_retainedEarningsTotalEquity),const DeepCollectionEquality().hash(_treasuryStock),const DeepCollectionEquality().hash(_accumulatedAmortization),const DeepCollectionEquality().hash(_nonCurrrentAssetsOther),const DeepCollectionEquality().hash(_deferredLongTermAssetCharges),const DeepCollectionEquality().hash(_nonCurrentAssetsTotal),const DeepCollectionEquality().hash(_capitalLeaseObligations),const DeepCollectionEquality().hash(_longTermDebtTotal),const DeepCollectionEquality().hash(_nonCurrentLiabilitiesOther),const DeepCollectionEquality().hash(_nonCurrentLiabilitiesTotal),const DeepCollectionEquality().hash(_negativeGoodwill),const DeepCollectionEquality().hash(_warrants),const DeepCollectionEquality().hash(_preferredStockRedeemable),const DeepCollectionEquality().hash(_capitalSurpluse),const DeepCollectionEquality().hash(_liabilitiesAndStockholdersEquity),const DeepCollectionEquality().hash(_cashAndShortTermInvestments),const DeepCollectionEquality().hash(_propertyPlantAndEquipmentGross),const DeepCollectionEquality().hash(_propertyPlantAndEquipmentNet),const DeepCollectionEquality().hash(_accumulatedDepreciation),const DeepCollectionEquality().hash(_netWorkingCapital),const DeepCollectionEquality().hash(_netInvestedCapital),const DeepCollectionEquality().hash(_commonStockSharesOutstanding),const DeepCollectionEquality().hash(_investments),const DeepCollectionEquality().hash(_changeToLiabilities),const DeepCollectionEquality().hash(_totalCashflowsFromInvestingActivities),const DeepCollectionEquality().hash(_netBorrowings),const DeepCollectionEquality().hash(_totalCashFromFinancingActivities),const DeepCollectionEquality().hash(_changeToOperatingActivities),const DeepCollectionEquality().hash(_netIncome),const DeepCollectionEquality().hash(_changeInCash),const DeepCollectionEquality().hash(_beginPeriodCashFlow),const DeepCollectionEquality().hash(_endPeriodCashFlow),const DeepCollectionEquality().hash(_totalCashFromOperatingActivities),const DeepCollectionEquality().hash(_issuanceOfCapitalStock),const DeepCollectionEquality().hash(_depreciation),const DeepCollectionEquality().hash(_otherCashflowsFromInvestingActivities),const DeepCollectionEquality().hash(_dividendsPaid),const DeepCollectionEquality().hash(_changeToInventory),const DeepCollectionEquality().hash(_changeToAccountReceivables),const DeepCollectionEquality().hash(_salePurchaseOfStock),const DeepCollectionEquality().hash(_otherCashflowsFromFinancingActivities),const DeepCollectionEquality().hash(_changeToNetincome),const DeepCollectionEquality().hash(_capitalExpenditures),const DeepCollectionEquality().hash(_changeReceivables),const DeepCollectionEquality().hash(_cashFlowsOtherOperating),const DeepCollectionEquality().hash(_exchangeRateChanges),const DeepCollectionEquality().hash(_cashAndCashEquivalentsChanges),const DeepCollectionEquality().hash(_changeInWorkingCapital),const DeepCollectionEquality().hash(_stockBasedCompensation),const DeepCollectionEquality().hash(_otherNonCashItems),const DeepCollectionEquality().hash(_freeCashFlow),const DeepCollectionEquality().hash(_researchDevelopment),const DeepCollectionEquality().hash(_effectOfAccountingCharges),const DeepCollectionEquality().hash(_incomeBeforeTax),const DeepCollectionEquality().hash(_minorityInterest),const DeepCollectionEquality().hash(_sellingGeneralAdministrative),const DeepCollectionEquality().hash(_sellingAndMarketingExpenses),const DeepCollectionEquality().hash(_grossProfit),const DeepCollectionEquality().hash(_reconciledDepreciation),const DeepCollectionEquality().hash(_ebit),const DeepCollectionEquality().hash(_ebitda),const DeepCollectionEquality().hash(_depreciationAndAmortization),const DeepCollectionEquality().hash(_nonOperatingIncomeNetOther),const DeepCollectionEquality().hash(_operatingIncome),const DeepCollectionEquality().hash(_otherOperatingExpenses),const DeepCollectionEquality().hash(_interestExpense),const DeepCollectionEquality().hash(_taxProvision),const DeepCollectionEquality().hash(_interestIncome),const DeepCollectionEquality().hash(_netInterestIncome),const DeepCollectionEquality().hash(_extraordinaryItems),const DeepCollectionEquality().hash(_nonRecurring),const DeepCollectionEquality().hash(_otherItems),const DeepCollectionEquality().hash(_incomeTaxExpense),const DeepCollectionEquality().hash(_totalRevenue),const DeepCollectionEquality().hash(_totalOperatingExpenses),const DeepCollectionEquality().hash(_costOfRevenue),const DeepCollectionEquality().hash(_totalOtherIncomeExpenseNet),const DeepCollectionEquality().hash(_discontinuedOperations),const DeepCollectionEquality().hash(_netIncomeFromContinuingOps),const DeepCollectionEquality().hash(_netIncomeApplicableToCommonShares),const DeepCollectionEquality().hash(_preferredStockAndOtherAdjustments),const DeepCollectionEquality().hash(_type),const DeepCollectionEquality().hash(_stockType)]);

@override
String toString() {
  return 'YearlyFinancialData(totalAssets: $totalAssets, intangibleAssets: $intangibleAssets, earningAssets: $earningAssets, otherCurrentAssets: $otherCurrentAssets, totalLiab: $totalLiab, totalStockholderEquity: $totalStockholderEquity, deferredLongTermLiab: $deferredLongTermLiab, otherCurrentLiab: $otherCurrentLiab, commonStock: $commonStock, capitalStock: $capitalStock, retainedEarnings: $retainedEarnings, otherLiab: $otherLiab, goodWill: $goodWill, otherAssets: $otherAssets, cash: $cash, cashAndEquivalents: $cashAndEquivalents, totalCurrentLiabilities: $totalCurrentLiabilities, currentDeferredRevenue: $currentDeferredRevenue, netDebt: $netDebt, shortTermDebt: $shortTermDebt, shortLongTermDebt: $shortLongTermDebt, shortLongTermDebtTotal: $shortLongTermDebtTotal, otherStockholderEquity: $otherStockholderEquity, propertyPlantEquipment: $propertyPlantEquipment, totalCurrentAssets: $totalCurrentAssets, longTermInvestments: $longTermInvestments, netTangibleAssets: $netTangibleAssets, shortTermInvestments: $shortTermInvestments, netReceivables: $netReceivables, longTermDebt: $longTermDebt, inventory: $inventory, accountsPayable: $accountsPayable, totalPermanentEquity: $totalPermanentEquity, noncontrollingInterestInConsolidatedEntity: $noncontrollingInterestInConsolidatedEntity, temporaryEquityRedeemableNoncontrollingInterests: $temporaryEquityRedeemableNoncontrollingInterests, accumulatedOtherComprehensiveIncome: $accumulatedOtherComprehensiveIncome, additionalPaidInCapital: $additionalPaidInCapital, commonStockTotalEquity: $commonStockTotalEquity, preferredStockTotalEquity: $preferredStockTotalEquity, retainedEarningsTotalEquity: $retainedEarningsTotalEquity, treasuryStock: $treasuryStock, accumulatedAmortization: $accumulatedAmortization, nonCurrrentAssetsOther: $nonCurrrentAssetsOther, deferredLongTermAssetCharges: $deferredLongTermAssetCharges, nonCurrentAssetsTotal: $nonCurrentAssetsTotal, capitalLeaseObligations: $capitalLeaseObligations, longTermDebtTotal: $longTermDebtTotal, nonCurrentLiabilitiesOther: $nonCurrentLiabilitiesOther, nonCurrentLiabilitiesTotal: $nonCurrentLiabilitiesTotal, negativeGoodwill: $negativeGoodwill, warrants: $warrants, preferredStockRedeemable: $preferredStockRedeemable, capitalSurpluse: $capitalSurpluse, liabilitiesAndStockholdersEquity: $liabilitiesAndStockholdersEquity, cashAndShortTermInvestments: $cashAndShortTermInvestments, propertyPlantAndEquipmentGross: $propertyPlantAndEquipmentGross, propertyPlantAndEquipmentNet: $propertyPlantAndEquipmentNet, accumulatedDepreciation: $accumulatedDepreciation, netWorkingCapital: $netWorkingCapital, netInvestedCapital: $netInvestedCapital, commonStockSharesOutstanding: $commonStockSharesOutstanding, investments: $investments, changeToLiabilities: $changeToLiabilities, totalCashflowsFromInvestingActivities: $totalCashflowsFromInvestingActivities, netBorrowings: $netBorrowings, totalCashFromFinancingActivities: $totalCashFromFinancingActivities, changeToOperatingActivities: $changeToOperatingActivities, netIncome: $netIncome, changeInCash: $changeInCash, beginPeriodCashFlow: $beginPeriodCashFlow, endPeriodCashFlow: $endPeriodCashFlow, totalCashFromOperatingActivities: $totalCashFromOperatingActivities, issuanceOfCapitalStock: $issuanceOfCapitalStock, depreciation: $depreciation, otherCashflowsFromInvestingActivities: $otherCashflowsFromInvestingActivities, dividendsPaid: $dividendsPaid, changeToInventory: $changeToInventory, changeToAccountReceivables: $changeToAccountReceivables, salePurchaseOfStock: $salePurchaseOfStock, otherCashflowsFromFinancingActivities: $otherCashflowsFromFinancingActivities, changeToNetincome: $changeToNetincome, capitalExpenditures: $capitalExpenditures, changeReceivables: $changeReceivables, cashFlowsOtherOperating: $cashFlowsOtherOperating, exchangeRateChanges: $exchangeRateChanges, cashAndCashEquivalentsChanges: $cashAndCashEquivalentsChanges, changeInWorkingCapital: $changeInWorkingCapital, stockBasedCompensation: $stockBasedCompensation, otherNonCashItems: $otherNonCashItems, freeCashFlow: $freeCashFlow, researchDevelopment: $researchDevelopment, effectOfAccountingCharges: $effectOfAccountingCharges, incomeBeforeTax: $incomeBeforeTax, minorityInterest: $minorityInterest, sellingGeneralAdministrative: $sellingGeneralAdministrative, sellingAndMarketingExpenses: $sellingAndMarketingExpenses, grossProfit: $grossProfit, reconciledDepreciation: $reconciledDepreciation, ebit: $ebit, ebitda: $ebitda, depreciationAndAmortization: $depreciationAndAmortization, nonOperatingIncomeNetOther: $nonOperatingIncomeNetOther, operatingIncome: $operatingIncome, otherOperatingExpenses: $otherOperatingExpenses, interestExpense: $interestExpense, taxProvision: $taxProvision, interestIncome: $interestIncome, netInterestIncome: $netInterestIncome, extraordinaryItems: $extraordinaryItems, nonRecurring: $nonRecurring, otherItems: $otherItems, incomeTaxExpense: $incomeTaxExpense, totalRevenue: $totalRevenue, totalOperatingExpenses: $totalOperatingExpenses, costOfRevenue: $costOfRevenue, totalOtherIncomeExpenseNet: $totalOtherIncomeExpenseNet, discontinuedOperations: $discontinuedOperations, netIncomeFromContinuingOps: $netIncomeFromContinuingOps, netIncomeApplicableToCommonShares: $netIncomeApplicableToCommonShares, preferredStockAndOtherAdjustments: $preferredStockAndOtherAdjustments, type: $type, stockType: $stockType)';
}


}

/// @nodoc
abstract mixin class _$YearlyFinancialDataCopyWith<$Res> implements $YearlyFinancialDataCopyWith<$Res> {
  factory _$YearlyFinancialDataCopyWith(_YearlyFinancialData value, $Res Function(_YearlyFinancialData) _then) = __$YearlyFinancialDataCopyWithImpl;
@override @useResult
$Res call({
 List<dynamic>? totalAssets, List<dynamic>? intangibleAssets, List<dynamic>? earningAssets, List<dynamic>? otherCurrentAssets, List<dynamic>? totalLiab, List<dynamic>? totalStockholderEquity, List<dynamic>? deferredLongTermLiab, List<dynamic>? otherCurrentLiab, List<dynamic>? commonStock, List<dynamic>? capitalStock, List<dynamic>? retainedEarnings, List<dynamic>? otherLiab, List<dynamic>? goodWill, List<dynamic>? otherAssets, List<dynamic>? cash, List<dynamic>? cashAndEquivalents, List<dynamic>? totalCurrentLiabilities, List<dynamic>? currentDeferredRevenue, List<dynamic>? netDebt, List<dynamic>? shortTermDebt, List<dynamic>? shortLongTermDebt, List<dynamic>? shortLongTermDebtTotal, List<dynamic>? otherStockholderEquity, List<dynamic>? propertyPlantEquipment, List<dynamic>? totalCurrentAssets, List<dynamic>? longTermInvestments, List<dynamic>? netTangibleAssets, List<dynamic>? shortTermInvestments, List<dynamic>? netReceivables, List<dynamic>? longTermDebt, List<dynamic>? inventory, List<dynamic>? accountsPayable, List<dynamic>? totalPermanentEquity, List<dynamic>? noncontrollingInterestInConsolidatedEntity, List<dynamic>? temporaryEquityRedeemableNoncontrollingInterests, List<dynamic>? accumulatedOtherComprehensiveIncome, List<dynamic>? additionalPaidInCapital, List<dynamic>? commonStockTotalEquity, List<dynamic>? preferredStockTotalEquity, List<dynamic>? retainedEarningsTotalEquity, List<dynamic>? treasuryStock, List<dynamic>? accumulatedAmortization, List<dynamic>? nonCurrrentAssetsOther, List<dynamic>? deferredLongTermAssetCharges, List<dynamic>? nonCurrentAssetsTotal, List<dynamic>? capitalLeaseObligations, List<dynamic>? longTermDebtTotal, List<dynamic>? nonCurrentLiabilitiesOther, List<dynamic>? nonCurrentLiabilitiesTotal, List<dynamic>? negativeGoodwill, List<dynamic>? warrants, List<dynamic>? preferredStockRedeemable, List<dynamic>? capitalSurpluse, List<dynamic>? liabilitiesAndStockholdersEquity, List<dynamic>? cashAndShortTermInvestments, List<dynamic>? propertyPlantAndEquipmentGross, List<dynamic>? propertyPlantAndEquipmentNet, List<dynamic>? accumulatedDepreciation, List<dynamic>? netWorkingCapital, List<dynamic>? netInvestedCapital, List<dynamic>? commonStockSharesOutstanding, List<dynamic>? investments, List<dynamic>? changeToLiabilities, List<dynamic>? totalCashflowsFromInvestingActivities, List<dynamic>? netBorrowings, List<dynamic>? totalCashFromFinancingActivities, List<dynamic>? changeToOperatingActivities, List<dynamic>? netIncome, List<dynamic>? changeInCash, List<dynamic>? beginPeriodCashFlow, List<dynamic>? endPeriodCashFlow, List<dynamic>? totalCashFromOperatingActivities, List<dynamic>? issuanceOfCapitalStock, List<dynamic>? depreciation, List<dynamic>? otherCashflowsFromInvestingActivities, List<dynamic>? dividendsPaid, List<dynamic>? changeToInventory, List<dynamic>? changeToAccountReceivables, List<dynamic>? salePurchaseOfStock, List<dynamic>? otherCashflowsFromFinancingActivities, List<dynamic>? changeToNetincome, List<dynamic>? capitalExpenditures, List<dynamic>? changeReceivables, List<dynamic>? cashFlowsOtherOperating, List<dynamic>? exchangeRateChanges, List<dynamic>? cashAndCashEquivalentsChanges, List<dynamic>? changeInWorkingCapital, List<dynamic>? stockBasedCompensation, List<dynamic>? otherNonCashItems, List<dynamic>? freeCashFlow, List<dynamic>? researchDevelopment, List<dynamic>? effectOfAccountingCharges, List<dynamic>? incomeBeforeTax, List<dynamic>? minorityInterest, List<dynamic>? sellingGeneralAdministrative, List<dynamic>? sellingAndMarketingExpenses, List<dynamic>? grossProfit, List<dynamic>? reconciledDepreciation, List<dynamic>? ebit, List<dynamic>? ebitda, List<dynamic>? depreciationAndAmortization, List<dynamic>? nonOperatingIncomeNetOther, List<dynamic>? operatingIncome, List<dynamic>? otherOperatingExpenses, List<dynamic>? interestExpense, List<dynamic>? taxProvision, List<dynamic>? interestIncome, List<dynamic>? netInterestIncome, List<dynamic>? extraordinaryItems, List<dynamic>? nonRecurring, List<dynamic>? otherItems, List<dynamic>? incomeTaxExpense, List<dynamic>? totalRevenue, List<dynamic>? totalOperatingExpenses, List<dynamic>? costOfRevenue, List<dynamic>? totalOtherIncomeExpenseNet, List<dynamic>? discontinuedOperations, List<dynamic>? netIncomeFromContinuingOps, List<dynamic>? netIncomeApplicableToCommonShares, List<dynamic>? preferredStockAndOtherAdjustments, List<dynamic>? type,@JsonKey(name: 'stock_type') List<dynamic>? stockType
});




}
/// @nodoc
class __$YearlyFinancialDataCopyWithImpl<$Res>
    implements _$YearlyFinancialDataCopyWith<$Res> {
  __$YearlyFinancialDataCopyWithImpl(this._self, this._then);

  final _YearlyFinancialData _self;
  final $Res Function(_YearlyFinancialData) _then;

/// Create a copy of YearlyFinancialData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? totalAssets = freezed,Object? intangibleAssets = freezed,Object? earningAssets = freezed,Object? otherCurrentAssets = freezed,Object? totalLiab = freezed,Object? totalStockholderEquity = freezed,Object? deferredLongTermLiab = freezed,Object? otherCurrentLiab = freezed,Object? commonStock = freezed,Object? capitalStock = freezed,Object? retainedEarnings = freezed,Object? otherLiab = freezed,Object? goodWill = freezed,Object? otherAssets = freezed,Object? cash = freezed,Object? cashAndEquivalents = freezed,Object? totalCurrentLiabilities = freezed,Object? currentDeferredRevenue = freezed,Object? netDebt = freezed,Object? shortTermDebt = freezed,Object? shortLongTermDebt = freezed,Object? shortLongTermDebtTotal = freezed,Object? otherStockholderEquity = freezed,Object? propertyPlantEquipment = freezed,Object? totalCurrentAssets = freezed,Object? longTermInvestments = freezed,Object? netTangibleAssets = freezed,Object? shortTermInvestments = freezed,Object? netReceivables = freezed,Object? longTermDebt = freezed,Object? inventory = freezed,Object? accountsPayable = freezed,Object? totalPermanentEquity = freezed,Object? noncontrollingInterestInConsolidatedEntity = freezed,Object? temporaryEquityRedeemableNoncontrollingInterests = freezed,Object? accumulatedOtherComprehensiveIncome = freezed,Object? additionalPaidInCapital = freezed,Object? commonStockTotalEquity = freezed,Object? preferredStockTotalEquity = freezed,Object? retainedEarningsTotalEquity = freezed,Object? treasuryStock = freezed,Object? accumulatedAmortization = freezed,Object? nonCurrrentAssetsOther = freezed,Object? deferredLongTermAssetCharges = freezed,Object? nonCurrentAssetsTotal = freezed,Object? capitalLeaseObligations = freezed,Object? longTermDebtTotal = freezed,Object? nonCurrentLiabilitiesOther = freezed,Object? nonCurrentLiabilitiesTotal = freezed,Object? negativeGoodwill = freezed,Object? warrants = freezed,Object? preferredStockRedeemable = freezed,Object? capitalSurpluse = freezed,Object? liabilitiesAndStockholdersEquity = freezed,Object? cashAndShortTermInvestments = freezed,Object? propertyPlantAndEquipmentGross = freezed,Object? propertyPlantAndEquipmentNet = freezed,Object? accumulatedDepreciation = freezed,Object? netWorkingCapital = freezed,Object? netInvestedCapital = freezed,Object? commonStockSharesOutstanding = freezed,Object? investments = freezed,Object? changeToLiabilities = freezed,Object? totalCashflowsFromInvestingActivities = freezed,Object? netBorrowings = freezed,Object? totalCashFromFinancingActivities = freezed,Object? changeToOperatingActivities = freezed,Object? netIncome = freezed,Object? changeInCash = freezed,Object? beginPeriodCashFlow = freezed,Object? endPeriodCashFlow = freezed,Object? totalCashFromOperatingActivities = freezed,Object? issuanceOfCapitalStock = freezed,Object? depreciation = freezed,Object? otherCashflowsFromInvestingActivities = freezed,Object? dividendsPaid = freezed,Object? changeToInventory = freezed,Object? changeToAccountReceivables = freezed,Object? salePurchaseOfStock = freezed,Object? otherCashflowsFromFinancingActivities = freezed,Object? changeToNetincome = freezed,Object? capitalExpenditures = freezed,Object? changeReceivables = freezed,Object? cashFlowsOtherOperating = freezed,Object? exchangeRateChanges = freezed,Object? cashAndCashEquivalentsChanges = freezed,Object? changeInWorkingCapital = freezed,Object? stockBasedCompensation = freezed,Object? otherNonCashItems = freezed,Object? freeCashFlow = freezed,Object? researchDevelopment = freezed,Object? effectOfAccountingCharges = freezed,Object? incomeBeforeTax = freezed,Object? minorityInterest = freezed,Object? sellingGeneralAdministrative = freezed,Object? sellingAndMarketingExpenses = freezed,Object? grossProfit = freezed,Object? reconciledDepreciation = freezed,Object? ebit = freezed,Object? ebitda = freezed,Object? depreciationAndAmortization = freezed,Object? nonOperatingIncomeNetOther = freezed,Object? operatingIncome = freezed,Object? otherOperatingExpenses = freezed,Object? interestExpense = freezed,Object? taxProvision = freezed,Object? interestIncome = freezed,Object? netInterestIncome = freezed,Object? extraordinaryItems = freezed,Object? nonRecurring = freezed,Object? otherItems = freezed,Object? incomeTaxExpense = freezed,Object? totalRevenue = freezed,Object? totalOperatingExpenses = freezed,Object? costOfRevenue = freezed,Object? totalOtherIncomeExpenseNet = freezed,Object? discontinuedOperations = freezed,Object? netIncomeFromContinuingOps = freezed,Object? netIncomeApplicableToCommonShares = freezed,Object? preferredStockAndOtherAdjustments = freezed,Object? type = freezed,Object? stockType = freezed,}) {
  return _then(_YearlyFinancialData(
totalAssets: freezed == totalAssets ? _self._totalAssets : totalAssets // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,intangibleAssets: freezed == intangibleAssets ? _self._intangibleAssets : intangibleAssets // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,earningAssets: freezed == earningAssets ? _self._earningAssets : earningAssets // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,otherCurrentAssets: freezed == otherCurrentAssets ? _self._otherCurrentAssets : otherCurrentAssets // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,totalLiab: freezed == totalLiab ? _self._totalLiab : totalLiab // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,totalStockholderEquity: freezed == totalStockholderEquity ? _self._totalStockholderEquity : totalStockholderEquity // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,deferredLongTermLiab: freezed == deferredLongTermLiab ? _self._deferredLongTermLiab : deferredLongTermLiab // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,otherCurrentLiab: freezed == otherCurrentLiab ? _self._otherCurrentLiab : otherCurrentLiab // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,commonStock: freezed == commonStock ? _self._commonStock : commonStock // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,capitalStock: freezed == capitalStock ? _self._capitalStock : capitalStock // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,retainedEarnings: freezed == retainedEarnings ? _self._retainedEarnings : retainedEarnings // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,otherLiab: freezed == otherLiab ? _self._otherLiab : otherLiab // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,goodWill: freezed == goodWill ? _self._goodWill : goodWill // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,otherAssets: freezed == otherAssets ? _self._otherAssets : otherAssets // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,cash: freezed == cash ? _self._cash : cash // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,cashAndEquivalents: freezed == cashAndEquivalents ? _self._cashAndEquivalents : cashAndEquivalents // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,totalCurrentLiabilities: freezed == totalCurrentLiabilities ? _self._totalCurrentLiabilities : totalCurrentLiabilities // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,currentDeferredRevenue: freezed == currentDeferredRevenue ? _self._currentDeferredRevenue : currentDeferredRevenue // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,netDebt: freezed == netDebt ? _self._netDebt : netDebt // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,shortTermDebt: freezed == shortTermDebt ? _self._shortTermDebt : shortTermDebt // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,shortLongTermDebt: freezed == shortLongTermDebt ? _self._shortLongTermDebt : shortLongTermDebt // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,shortLongTermDebtTotal: freezed == shortLongTermDebtTotal ? _self._shortLongTermDebtTotal : shortLongTermDebtTotal // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,otherStockholderEquity: freezed == otherStockholderEquity ? _self._otherStockholderEquity : otherStockholderEquity // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,propertyPlantEquipment: freezed == propertyPlantEquipment ? _self._propertyPlantEquipment : propertyPlantEquipment // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,totalCurrentAssets: freezed == totalCurrentAssets ? _self._totalCurrentAssets : totalCurrentAssets // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,longTermInvestments: freezed == longTermInvestments ? _self._longTermInvestments : longTermInvestments // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,netTangibleAssets: freezed == netTangibleAssets ? _self._netTangibleAssets : netTangibleAssets // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,shortTermInvestments: freezed == shortTermInvestments ? _self._shortTermInvestments : shortTermInvestments // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,netReceivables: freezed == netReceivables ? _self._netReceivables : netReceivables // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,longTermDebt: freezed == longTermDebt ? _self._longTermDebt : longTermDebt // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,inventory: freezed == inventory ? _self._inventory : inventory // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,accountsPayable: freezed == accountsPayable ? _self._accountsPayable : accountsPayable // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,totalPermanentEquity: freezed == totalPermanentEquity ? _self._totalPermanentEquity : totalPermanentEquity // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,noncontrollingInterestInConsolidatedEntity: freezed == noncontrollingInterestInConsolidatedEntity ? _self._noncontrollingInterestInConsolidatedEntity : noncontrollingInterestInConsolidatedEntity // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,temporaryEquityRedeemableNoncontrollingInterests: freezed == temporaryEquityRedeemableNoncontrollingInterests ? _self._temporaryEquityRedeemableNoncontrollingInterests : temporaryEquityRedeemableNoncontrollingInterests // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,accumulatedOtherComprehensiveIncome: freezed == accumulatedOtherComprehensiveIncome ? _self._accumulatedOtherComprehensiveIncome : accumulatedOtherComprehensiveIncome // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,additionalPaidInCapital: freezed == additionalPaidInCapital ? _self._additionalPaidInCapital : additionalPaidInCapital // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,commonStockTotalEquity: freezed == commonStockTotalEquity ? _self._commonStockTotalEquity : commonStockTotalEquity // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,preferredStockTotalEquity: freezed == preferredStockTotalEquity ? _self._preferredStockTotalEquity : preferredStockTotalEquity // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,retainedEarningsTotalEquity: freezed == retainedEarningsTotalEquity ? _self._retainedEarningsTotalEquity : retainedEarningsTotalEquity // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,treasuryStock: freezed == treasuryStock ? _self._treasuryStock : treasuryStock // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,accumulatedAmortization: freezed == accumulatedAmortization ? _self._accumulatedAmortization : accumulatedAmortization // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,nonCurrrentAssetsOther: freezed == nonCurrrentAssetsOther ? _self._nonCurrrentAssetsOther : nonCurrrentAssetsOther // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,deferredLongTermAssetCharges: freezed == deferredLongTermAssetCharges ? _self._deferredLongTermAssetCharges : deferredLongTermAssetCharges // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,nonCurrentAssetsTotal: freezed == nonCurrentAssetsTotal ? _self._nonCurrentAssetsTotal : nonCurrentAssetsTotal // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,capitalLeaseObligations: freezed == capitalLeaseObligations ? _self._capitalLeaseObligations : capitalLeaseObligations // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,longTermDebtTotal: freezed == longTermDebtTotal ? _self._longTermDebtTotal : longTermDebtTotal // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,nonCurrentLiabilitiesOther: freezed == nonCurrentLiabilitiesOther ? _self._nonCurrentLiabilitiesOther : nonCurrentLiabilitiesOther // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,nonCurrentLiabilitiesTotal: freezed == nonCurrentLiabilitiesTotal ? _self._nonCurrentLiabilitiesTotal : nonCurrentLiabilitiesTotal // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,negativeGoodwill: freezed == negativeGoodwill ? _self._negativeGoodwill : negativeGoodwill // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,warrants: freezed == warrants ? _self._warrants : warrants // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,preferredStockRedeemable: freezed == preferredStockRedeemable ? _self._preferredStockRedeemable : preferredStockRedeemable // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,capitalSurpluse: freezed == capitalSurpluse ? _self._capitalSurpluse : capitalSurpluse // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,liabilitiesAndStockholdersEquity: freezed == liabilitiesAndStockholdersEquity ? _self._liabilitiesAndStockholdersEquity : liabilitiesAndStockholdersEquity // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,cashAndShortTermInvestments: freezed == cashAndShortTermInvestments ? _self._cashAndShortTermInvestments : cashAndShortTermInvestments // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,propertyPlantAndEquipmentGross: freezed == propertyPlantAndEquipmentGross ? _self._propertyPlantAndEquipmentGross : propertyPlantAndEquipmentGross // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,propertyPlantAndEquipmentNet: freezed == propertyPlantAndEquipmentNet ? _self._propertyPlantAndEquipmentNet : propertyPlantAndEquipmentNet // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,accumulatedDepreciation: freezed == accumulatedDepreciation ? _self._accumulatedDepreciation : accumulatedDepreciation // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,netWorkingCapital: freezed == netWorkingCapital ? _self._netWorkingCapital : netWorkingCapital // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,netInvestedCapital: freezed == netInvestedCapital ? _self._netInvestedCapital : netInvestedCapital // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,commonStockSharesOutstanding: freezed == commonStockSharesOutstanding ? _self._commonStockSharesOutstanding : commonStockSharesOutstanding // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,investments: freezed == investments ? _self._investments : investments // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,changeToLiabilities: freezed == changeToLiabilities ? _self._changeToLiabilities : changeToLiabilities // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,totalCashflowsFromInvestingActivities: freezed == totalCashflowsFromInvestingActivities ? _self._totalCashflowsFromInvestingActivities : totalCashflowsFromInvestingActivities // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,netBorrowings: freezed == netBorrowings ? _self._netBorrowings : netBorrowings // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,totalCashFromFinancingActivities: freezed == totalCashFromFinancingActivities ? _self._totalCashFromFinancingActivities : totalCashFromFinancingActivities // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,changeToOperatingActivities: freezed == changeToOperatingActivities ? _self._changeToOperatingActivities : changeToOperatingActivities // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,netIncome: freezed == netIncome ? _self._netIncome : netIncome // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,changeInCash: freezed == changeInCash ? _self._changeInCash : changeInCash // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,beginPeriodCashFlow: freezed == beginPeriodCashFlow ? _self._beginPeriodCashFlow : beginPeriodCashFlow // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,endPeriodCashFlow: freezed == endPeriodCashFlow ? _self._endPeriodCashFlow : endPeriodCashFlow // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,totalCashFromOperatingActivities: freezed == totalCashFromOperatingActivities ? _self._totalCashFromOperatingActivities : totalCashFromOperatingActivities // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,issuanceOfCapitalStock: freezed == issuanceOfCapitalStock ? _self._issuanceOfCapitalStock : issuanceOfCapitalStock // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,depreciation: freezed == depreciation ? _self._depreciation : depreciation // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,otherCashflowsFromInvestingActivities: freezed == otherCashflowsFromInvestingActivities ? _self._otherCashflowsFromInvestingActivities : otherCashflowsFromInvestingActivities // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,dividendsPaid: freezed == dividendsPaid ? _self._dividendsPaid : dividendsPaid // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,changeToInventory: freezed == changeToInventory ? _self._changeToInventory : changeToInventory // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,changeToAccountReceivables: freezed == changeToAccountReceivables ? _self._changeToAccountReceivables : changeToAccountReceivables // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,salePurchaseOfStock: freezed == salePurchaseOfStock ? _self._salePurchaseOfStock : salePurchaseOfStock // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,otherCashflowsFromFinancingActivities: freezed == otherCashflowsFromFinancingActivities ? _self._otherCashflowsFromFinancingActivities : otherCashflowsFromFinancingActivities // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,changeToNetincome: freezed == changeToNetincome ? _self._changeToNetincome : changeToNetincome // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,capitalExpenditures: freezed == capitalExpenditures ? _self._capitalExpenditures : capitalExpenditures // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,changeReceivables: freezed == changeReceivables ? _self._changeReceivables : changeReceivables // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,cashFlowsOtherOperating: freezed == cashFlowsOtherOperating ? _self._cashFlowsOtherOperating : cashFlowsOtherOperating // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,exchangeRateChanges: freezed == exchangeRateChanges ? _self._exchangeRateChanges : exchangeRateChanges // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,cashAndCashEquivalentsChanges: freezed == cashAndCashEquivalentsChanges ? _self._cashAndCashEquivalentsChanges : cashAndCashEquivalentsChanges // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,changeInWorkingCapital: freezed == changeInWorkingCapital ? _self._changeInWorkingCapital : changeInWorkingCapital // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,stockBasedCompensation: freezed == stockBasedCompensation ? _self._stockBasedCompensation : stockBasedCompensation // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,otherNonCashItems: freezed == otherNonCashItems ? _self._otherNonCashItems : otherNonCashItems // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,freeCashFlow: freezed == freeCashFlow ? _self._freeCashFlow : freeCashFlow // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,researchDevelopment: freezed == researchDevelopment ? _self._researchDevelopment : researchDevelopment // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,effectOfAccountingCharges: freezed == effectOfAccountingCharges ? _self._effectOfAccountingCharges : effectOfAccountingCharges // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,incomeBeforeTax: freezed == incomeBeforeTax ? _self._incomeBeforeTax : incomeBeforeTax // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,minorityInterest: freezed == minorityInterest ? _self._minorityInterest : minorityInterest // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,sellingGeneralAdministrative: freezed == sellingGeneralAdministrative ? _self._sellingGeneralAdministrative : sellingGeneralAdministrative // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,sellingAndMarketingExpenses: freezed == sellingAndMarketingExpenses ? _self._sellingAndMarketingExpenses : sellingAndMarketingExpenses // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,grossProfit: freezed == grossProfit ? _self._grossProfit : grossProfit // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,reconciledDepreciation: freezed == reconciledDepreciation ? _self._reconciledDepreciation : reconciledDepreciation // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,ebit: freezed == ebit ? _self._ebit : ebit // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,ebitda: freezed == ebitda ? _self._ebitda : ebitda // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,depreciationAndAmortization: freezed == depreciationAndAmortization ? _self._depreciationAndAmortization : depreciationAndAmortization // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,nonOperatingIncomeNetOther: freezed == nonOperatingIncomeNetOther ? _self._nonOperatingIncomeNetOther : nonOperatingIncomeNetOther // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,operatingIncome: freezed == operatingIncome ? _self._operatingIncome : operatingIncome // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,otherOperatingExpenses: freezed == otherOperatingExpenses ? _self._otherOperatingExpenses : otherOperatingExpenses // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,interestExpense: freezed == interestExpense ? _self._interestExpense : interestExpense // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,taxProvision: freezed == taxProvision ? _self._taxProvision : taxProvision // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,interestIncome: freezed == interestIncome ? _self._interestIncome : interestIncome // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,netInterestIncome: freezed == netInterestIncome ? _self._netInterestIncome : netInterestIncome // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,extraordinaryItems: freezed == extraordinaryItems ? _self._extraordinaryItems : extraordinaryItems // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,nonRecurring: freezed == nonRecurring ? _self._nonRecurring : nonRecurring // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,otherItems: freezed == otherItems ? _self._otherItems : otherItems // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,incomeTaxExpense: freezed == incomeTaxExpense ? _self._incomeTaxExpense : incomeTaxExpense // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,totalRevenue: freezed == totalRevenue ? _self._totalRevenue : totalRevenue // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,totalOperatingExpenses: freezed == totalOperatingExpenses ? _self._totalOperatingExpenses : totalOperatingExpenses // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,costOfRevenue: freezed == costOfRevenue ? _self._costOfRevenue : costOfRevenue // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,totalOtherIncomeExpenseNet: freezed == totalOtherIncomeExpenseNet ? _self._totalOtherIncomeExpenseNet : totalOtherIncomeExpenseNet // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,discontinuedOperations: freezed == discontinuedOperations ? _self._discontinuedOperations : discontinuedOperations // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,netIncomeFromContinuingOps: freezed == netIncomeFromContinuingOps ? _self._netIncomeFromContinuingOps : netIncomeFromContinuingOps // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,netIncomeApplicableToCommonShares: freezed == netIncomeApplicableToCommonShares ? _self._netIncomeApplicableToCommonShares : netIncomeApplicableToCommonShares // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,preferredStockAndOtherAdjustments: freezed == preferredStockAndOtherAdjustments ? _self._preferredStockAndOtherAdjustments : preferredStockAndOtherAdjustments // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,type: freezed == type ? _self._type : type // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,stockType: freezed == stockType ? _self._stockType : stockType // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,
  ));
}


}

// dart format on
