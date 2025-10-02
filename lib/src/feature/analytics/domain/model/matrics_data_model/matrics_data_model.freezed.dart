// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'matrics_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MatricsResponse {

 List<MatricsData>? get data; String? get msg; int? get status; dynamic get errors;
/// Create a copy of MatricsResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MatricsResponseCopyWith<MatricsResponse> get copyWith => _$MatricsResponseCopyWithImpl<MatricsResponse>(this as MatricsResponse, _$identity);

  /// Serializes this MatricsResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MatricsResponse&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.msg, msg) || other.msg == msg)&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.errors, errors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data),msg,status,const DeepCollectionEquality().hash(errors));

@override
String toString() {
  return 'MatricsResponse(data: $data, msg: $msg, status: $status, errors: $errors)';
}


}

/// @nodoc
abstract mixin class $MatricsResponseCopyWith<$Res>  {
  factory $MatricsResponseCopyWith(MatricsResponse value, $Res Function(MatricsResponse) _then) = _$MatricsResponseCopyWithImpl;
@useResult
$Res call({
 List<MatricsData>? data, String? msg, int? status, dynamic errors
});




}
/// @nodoc
class _$MatricsResponseCopyWithImpl<$Res>
    implements $MatricsResponseCopyWith<$Res> {
  _$MatricsResponseCopyWithImpl(this._self, this._then);

  final MatricsResponse _self;
  final $Res Function(MatricsResponse) _then;

/// Create a copy of MatricsResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = freezed,Object? msg = freezed,Object? status = freezed,Object? errors = freezed,}) {
  return _then(_self.copyWith(
data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<MatricsData>?,msg: freezed == msg ? _self.msg : msg // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int?,errors: freezed == errors ? _self.errors : errors // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

}


/// Adds pattern-matching-related methods to [MatricsResponse].
extension MatricsResponsePatterns on MatricsResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MatricsResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MatricsResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MatricsResponse value)  $default,){
final _that = this;
switch (_that) {
case _MatricsResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MatricsResponse value)?  $default,){
final _that = this;
switch (_that) {
case _MatricsResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<MatricsData>? data,  String? msg,  int? status,  dynamic errors)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MatricsResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<MatricsData>? data,  String? msg,  int? status,  dynamic errors)  $default,) {final _that = this;
switch (_that) {
case _MatricsResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<MatricsData>? data,  String? msg,  int? status,  dynamic errors)?  $default,) {final _that = this;
switch (_that) {
case _MatricsResponse() when $default != null:
return $default(_that.data,_that.msg,_that.status,_that.errors);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MatricsResponse implements MatricsResponse {
  const _MatricsResponse({final  List<MatricsData>? data, this.msg, this.status, this.errors}): _data = data;
  factory _MatricsResponse.fromJson(Map<String, dynamic> json) => _$MatricsResponseFromJson(json);

 final  List<MatricsData>? _data;
@override List<MatricsData>? get data {
  final value = _data;
  if (value == null) return null;
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  String? msg;
@override final  int? status;
@override final  dynamic errors;

/// Create a copy of MatricsResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MatricsResponseCopyWith<_MatricsResponse> get copyWith => __$MatricsResponseCopyWithImpl<_MatricsResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MatricsResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MatricsResponse&&const DeepCollectionEquality().equals(other._data, _data)&&(identical(other.msg, msg) || other.msg == msg)&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.errors, errors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_data),msg,status,const DeepCollectionEquality().hash(errors));

@override
String toString() {
  return 'MatricsResponse(data: $data, msg: $msg, status: $status, errors: $errors)';
}


}

/// @nodoc
abstract mixin class _$MatricsResponseCopyWith<$Res> implements $MatricsResponseCopyWith<$Res> {
  factory _$MatricsResponseCopyWith(_MatricsResponse value, $Res Function(_MatricsResponse) _then) = __$MatricsResponseCopyWithImpl;
@override @useResult
$Res call({
 List<MatricsData>? data, String? msg, int? status, dynamic errors
});




}
/// @nodoc
class __$MatricsResponseCopyWithImpl<$Res>
    implements _$MatricsResponseCopyWith<$Res> {
  __$MatricsResponseCopyWithImpl(this._self, this._then);

  final _MatricsResponse _self;
  final $Res Function(_MatricsResponse) _then;

/// Create a copy of MatricsResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = freezed,Object? msg = freezed,Object? status = freezed,Object? errors = freezed,}) {
  return _then(_MatricsResponse(
data: freezed == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<MatricsData>?,msg: freezed == msg ? _self.msg : msg // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int?,errors: freezed == errors ? _self.errors : errors // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}


}


/// @nodoc
mixin _$MatricsData {

@JsonKey(name: "revenue_per_share") double? get revenuePerShare;@JsonKey(name: "net_income_per_share") double? get netIncomePerShare;@JsonKey(name: "operating_cash_flow_per_share") double? get operatingCashFlowPerShare;@JsonKey(name: "free_cash_flow_per_share") double? get freeCashFlowPerShare;@JsonKey(name: "cash_per_share") double? get cashPerShare;@JsonKey(name: "book_value_per_share") double? get bookValuePerShare;@JsonKey(name: "tangible_book_value_per_share") double? get tangibleBookValuePerShare;@JsonKey(name: "shareholders_equity_per_share") double? get shareholdersEquityPerShare;@JsonKey(name: "interest_debt_per_share") double? get interestDebtPerShare;@JsonKey(name: "market_cap") double? get marketCap;@JsonKey(name: "enterprise_value") double? get enterpriseValue;@JsonKey(name: "pe_ratio") double? get peRatio;@JsonKey(name: "price_to_sales_ratio") double? get priceToSalesRatio;@JsonKey(name: "pocfratio") double? get pocfRatio;@JsonKey(name: "pfcf_ratio") double? get pfcfRatio;@JsonKey(name: "pb_ratio") double? get pbRatio;@JsonKey(name: "ptb_ratio") double? get ptbRatio;@JsonKey(name: "ev_to_sales") double? get evToSales;@JsonKey(name: "enterprise_value_over_ebitda") double? get enterpriseValueOverEbitda;@JsonKey(name: "ev_to_operating_cash_flow") double? get evToOperatingCashFlow;@JsonKey(name: "ev_to_free_cash_flow") double? get evToFreeCashFlow;@JsonKey(name: "earnings_yield") double? get earningsYield;@JsonKey(name: "free_cash_flow_yield") double? get freeCashFlowYield;@JsonKey(name: "debt_to_equity") double? get debtToEquity;@JsonKey(name: "debt_to_assets") double? get debtToAssets;@JsonKey(name: "net_debt_to_ebitda") double? get netDebtToEbitda;@JsonKey(name: "current_ratio") double? get currentRatio;@JsonKey(name: "interest_coverage") double? get interestCoverage;@JsonKey(name: "income_quality") double? get incomeQuality;@JsonKey(name: "dividend_yield") double? get dividendYield;@JsonKey(name: "payout_ratio") double? get payoutRatio;@JsonKey(name: "sales_general_and_administrative_to_revenue") double? get salesGeneralAndAdministrativeToRevenue;@JsonKey(name: "research_and_developement_to_revenue") double? get researchAndDevelopementToRevenue;@JsonKey(name: "intangibles_to_total_assets") double? get intangiblesToTotalAssets;@JsonKey(name: "capex_to_operating_cash_flow") double? get capexToOperatingCashFlow;@JsonKey(name: "capex_to_revenue") double? get capexToRevenue;@JsonKey(name: "capex_to_depreciation") double? get capexToDepreciation;@JsonKey(name: "stock_based_compensation_to_revenue") double? get stockBasedCompensationToRevenue;@JsonKey(name: "graham_number") double? get grahamNumber;@JsonKey(name: "roic") double? get roic;@JsonKey(name: "return_on_tangible_assets") double? get returnOnTangibleAssets;@JsonKey(name: "graham_net_net") double? get grahamNetNet;@JsonKey(name: "working_capital") double? get workingCapital;@JsonKey(name: "tangible_asset_value") double? get tangibleAssetValue;@JsonKey(name: "net_current_asset_value") double? get netCurrentAssetValue;@JsonKey(name: "invested_capital") double? get investedCapital;@JsonKey(name: "average_receivables") double? get averageReceivables;@JsonKey(name: "average_payables") double? get averagePayables;@JsonKey(name: "average_inventory") double? get averageInventory;@JsonKey(name: "days_sales_outstanding") double? get daysSalesOutstanding;@JsonKey(name: "days_payables_outstanding") double? get daysPayablesOutstanding;@JsonKey(name: "days_of_inventory_on_hand") double? get daysOfInventoryOnHand;@JsonKey(name: "receivables_turnover") double? get receivablesTurnover;@JsonKey(name: "payables_turnover") double? get payablesTurnover;@JsonKey(name: "inventory_turnover") double? get inventoryTurnover;@JsonKey(name: "roe") double? get roe;@JsonKey(name: "capex_per_share") double? get capexPerShare;
/// Create a copy of MatricsData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MatricsDataCopyWith<MatricsData> get copyWith => _$MatricsDataCopyWithImpl<MatricsData>(this as MatricsData, _$identity);

  /// Serializes this MatricsData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MatricsData&&(identical(other.revenuePerShare, revenuePerShare) || other.revenuePerShare == revenuePerShare)&&(identical(other.netIncomePerShare, netIncomePerShare) || other.netIncomePerShare == netIncomePerShare)&&(identical(other.operatingCashFlowPerShare, operatingCashFlowPerShare) || other.operatingCashFlowPerShare == operatingCashFlowPerShare)&&(identical(other.freeCashFlowPerShare, freeCashFlowPerShare) || other.freeCashFlowPerShare == freeCashFlowPerShare)&&(identical(other.cashPerShare, cashPerShare) || other.cashPerShare == cashPerShare)&&(identical(other.bookValuePerShare, bookValuePerShare) || other.bookValuePerShare == bookValuePerShare)&&(identical(other.tangibleBookValuePerShare, tangibleBookValuePerShare) || other.tangibleBookValuePerShare == tangibleBookValuePerShare)&&(identical(other.shareholdersEquityPerShare, shareholdersEquityPerShare) || other.shareholdersEquityPerShare == shareholdersEquityPerShare)&&(identical(other.interestDebtPerShare, interestDebtPerShare) || other.interestDebtPerShare == interestDebtPerShare)&&(identical(other.marketCap, marketCap) || other.marketCap == marketCap)&&(identical(other.enterpriseValue, enterpriseValue) || other.enterpriseValue == enterpriseValue)&&(identical(other.peRatio, peRatio) || other.peRatio == peRatio)&&(identical(other.priceToSalesRatio, priceToSalesRatio) || other.priceToSalesRatio == priceToSalesRatio)&&(identical(other.pocfRatio, pocfRatio) || other.pocfRatio == pocfRatio)&&(identical(other.pfcfRatio, pfcfRatio) || other.pfcfRatio == pfcfRatio)&&(identical(other.pbRatio, pbRatio) || other.pbRatio == pbRatio)&&(identical(other.ptbRatio, ptbRatio) || other.ptbRatio == ptbRatio)&&(identical(other.evToSales, evToSales) || other.evToSales == evToSales)&&(identical(other.enterpriseValueOverEbitda, enterpriseValueOverEbitda) || other.enterpriseValueOverEbitda == enterpriseValueOverEbitda)&&(identical(other.evToOperatingCashFlow, evToOperatingCashFlow) || other.evToOperatingCashFlow == evToOperatingCashFlow)&&(identical(other.evToFreeCashFlow, evToFreeCashFlow) || other.evToFreeCashFlow == evToFreeCashFlow)&&(identical(other.earningsYield, earningsYield) || other.earningsYield == earningsYield)&&(identical(other.freeCashFlowYield, freeCashFlowYield) || other.freeCashFlowYield == freeCashFlowYield)&&(identical(other.debtToEquity, debtToEquity) || other.debtToEquity == debtToEquity)&&(identical(other.debtToAssets, debtToAssets) || other.debtToAssets == debtToAssets)&&(identical(other.netDebtToEbitda, netDebtToEbitda) || other.netDebtToEbitda == netDebtToEbitda)&&(identical(other.currentRatio, currentRatio) || other.currentRatio == currentRatio)&&(identical(other.interestCoverage, interestCoverage) || other.interestCoverage == interestCoverage)&&(identical(other.incomeQuality, incomeQuality) || other.incomeQuality == incomeQuality)&&(identical(other.dividendYield, dividendYield) || other.dividendYield == dividendYield)&&(identical(other.payoutRatio, payoutRatio) || other.payoutRatio == payoutRatio)&&(identical(other.salesGeneralAndAdministrativeToRevenue, salesGeneralAndAdministrativeToRevenue) || other.salesGeneralAndAdministrativeToRevenue == salesGeneralAndAdministrativeToRevenue)&&(identical(other.researchAndDevelopementToRevenue, researchAndDevelopementToRevenue) || other.researchAndDevelopementToRevenue == researchAndDevelopementToRevenue)&&(identical(other.intangiblesToTotalAssets, intangiblesToTotalAssets) || other.intangiblesToTotalAssets == intangiblesToTotalAssets)&&(identical(other.capexToOperatingCashFlow, capexToOperatingCashFlow) || other.capexToOperatingCashFlow == capexToOperatingCashFlow)&&(identical(other.capexToRevenue, capexToRevenue) || other.capexToRevenue == capexToRevenue)&&(identical(other.capexToDepreciation, capexToDepreciation) || other.capexToDepreciation == capexToDepreciation)&&(identical(other.stockBasedCompensationToRevenue, stockBasedCompensationToRevenue) || other.stockBasedCompensationToRevenue == stockBasedCompensationToRevenue)&&(identical(other.grahamNumber, grahamNumber) || other.grahamNumber == grahamNumber)&&(identical(other.roic, roic) || other.roic == roic)&&(identical(other.returnOnTangibleAssets, returnOnTangibleAssets) || other.returnOnTangibleAssets == returnOnTangibleAssets)&&(identical(other.grahamNetNet, grahamNetNet) || other.grahamNetNet == grahamNetNet)&&(identical(other.workingCapital, workingCapital) || other.workingCapital == workingCapital)&&(identical(other.tangibleAssetValue, tangibleAssetValue) || other.tangibleAssetValue == tangibleAssetValue)&&(identical(other.netCurrentAssetValue, netCurrentAssetValue) || other.netCurrentAssetValue == netCurrentAssetValue)&&(identical(other.investedCapital, investedCapital) || other.investedCapital == investedCapital)&&(identical(other.averageReceivables, averageReceivables) || other.averageReceivables == averageReceivables)&&(identical(other.averagePayables, averagePayables) || other.averagePayables == averagePayables)&&(identical(other.averageInventory, averageInventory) || other.averageInventory == averageInventory)&&(identical(other.daysSalesOutstanding, daysSalesOutstanding) || other.daysSalesOutstanding == daysSalesOutstanding)&&(identical(other.daysPayablesOutstanding, daysPayablesOutstanding) || other.daysPayablesOutstanding == daysPayablesOutstanding)&&(identical(other.daysOfInventoryOnHand, daysOfInventoryOnHand) || other.daysOfInventoryOnHand == daysOfInventoryOnHand)&&(identical(other.receivablesTurnover, receivablesTurnover) || other.receivablesTurnover == receivablesTurnover)&&(identical(other.payablesTurnover, payablesTurnover) || other.payablesTurnover == payablesTurnover)&&(identical(other.inventoryTurnover, inventoryTurnover) || other.inventoryTurnover == inventoryTurnover)&&(identical(other.roe, roe) || other.roe == roe)&&(identical(other.capexPerShare, capexPerShare) || other.capexPerShare == capexPerShare));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,revenuePerShare,netIncomePerShare,operatingCashFlowPerShare,freeCashFlowPerShare,cashPerShare,bookValuePerShare,tangibleBookValuePerShare,shareholdersEquityPerShare,interestDebtPerShare,marketCap,enterpriseValue,peRatio,priceToSalesRatio,pocfRatio,pfcfRatio,pbRatio,ptbRatio,evToSales,enterpriseValueOverEbitda,evToOperatingCashFlow,evToFreeCashFlow,earningsYield,freeCashFlowYield,debtToEquity,debtToAssets,netDebtToEbitda,currentRatio,interestCoverage,incomeQuality,dividendYield,payoutRatio,salesGeneralAndAdministrativeToRevenue,researchAndDevelopementToRevenue,intangiblesToTotalAssets,capexToOperatingCashFlow,capexToRevenue,capexToDepreciation,stockBasedCompensationToRevenue,grahamNumber,roic,returnOnTangibleAssets,grahamNetNet,workingCapital,tangibleAssetValue,netCurrentAssetValue,investedCapital,averageReceivables,averagePayables,averageInventory,daysSalesOutstanding,daysPayablesOutstanding,daysOfInventoryOnHand,receivablesTurnover,payablesTurnover,inventoryTurnover,roe,capexPerShare]);

@override
String toString() {
  return 'MatricsData(revenuePerShare: $revenuePerShare, netIncomePerShare: $netIncomePerShare, operatingCashFlowPerShare: $operatingCashFlowPerShare, freeCashFlowPerShare: $freeCashFlowPerShare, cashPerShare: $cashPerShare, bookValuePerShare: $bookValuePerShare, tangibleBookValuePerShare: $tangibleBookValuePerShare, shareholdersEquityPerShare: $shareholdersEquityPerShare, interestDebtPerShare: $interestDebtPerShare, marketCap: $marketCap, enterpriseValue: $enterpriseValue, peRatio: $peRatio, priceToSalesRatio: $priceToSalesRatio, pocfRatio: $pocfRatio, pfcfRatio: $pfcfRatio, pbRatio: $pbRatio, ptbRatio: $ptbRatio, evToSales: $evToSales, enterpriseValueOverEbitda: $enterpriseValueOverEbitda, evToOperatingCashFlow: $evToOperatingCashFlow, evToFreeCashFlow: $evToFreeCashFlow, earningsYield: $earningsYield, freeCashFlowYield: $freeCashFlowYield, debtToEquity: $debtToEquity, debtToAssets: $debtToAssets, netDebtToEbitda: $netDebtToEbitda, currentRatio: $currentRatio, interestCoverage: $interestCoverage, incomeQuality: $incomeQuality, dividendYield: $dividendYield, payoutRatio: $payoutRatio, salesGeneralAndAdministrativeToRevenue: $salesGeneralAndAdministrativeToRevenue, researchAndDevelopementToRevenue: $researchAndDevelopementToRevenue, intangiblesToTotalAssets: $intangiblesToTotalAssets, capexToOperatingCashFlow: $capexToOperatingCashFlow, capexToRevenue: $capexToRevenue, capexToDepreciation: $capexToDepreciation, stockBasedCompensationToRevenue: $stockBasedCompensationToRevenue, grahamNumber: $grahamNumber, roic: $roic, returnOnTangibleAssets: $returnOnTangibleAssets, grahamNetNet: $grahamNetNet, workingCapital: $workingCapital, tangibleAssetValue: $tangibleAssetValue, netCurrentAssetValue: $netCurrentAssetValue, investedCapital: $investedCapital, averageReceivables: $averageReceivables, averagePayables: $averagePayables, averageInventory: $averageInventory, daysSalesOutstanding: $daysSalesOutstanding, daysPayablesOutstanding: $daysPayablesOutstanding, daysOfInventoryOnHand: $daysOfInventoryOnHand, receivablesTurnover: $receivablesTurnover, payablesTurnover: $payablesTurnover, inventoryTurnover: $inventoryTurnover, roe: $roe, capexPerShare: $capexPerShare)';
}


}

/// @nodoc
abstract mixin class $MatricsDataCopyWith<$Res>  {
  factory $MatricsDataCopyWith(MatricsData value, $Res Function(MatricsData) _then) = _$MatricsDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "revenue_per_share") double? revenuePerShare,@JsonKey(name: "net_income_per_share") double? netIncomePerShare,@JsonKey(name: "operating_cash_flow_per_share") double? operatingCashFlowPerShare,@JsonKey(name: "free_cash_flow_per_share") double? freeCashFlowPerShare,@JsonKey(name: "cash_per_share") double? cashPerShare,@JsonKey(name: "book_value_per_share") double? bookValuePerShare,@JsonKey(name: "tangible_book_value_per_share") double? tangibleBookValuePerShare,@JsonKey(name: "shareholders_equity_per_share") double? shareholdersEquityPerShare,@JsonKey(name: "interest_debt_per_share") double? interestDebtPerShare,@JsonKey(name: "market_cap") double? marketCap,@JsonKey(name: "enterprise_value") double? enterpriseValue,@JsonKey(name: "pe_ratio") double? peRatio,@JsonKey(name: "price_to_sales_ratio") double? priceToSalesRatio,@JsonKey(name: "pocfratio") double? pocfRatio,@JsonKey(name: "pfcf_ratio") double? pfcfRatio,@JsonKey(name: "pb_ratio") double? pbRatio,@JsonKey(name: "ptb_ratio") double? ptbRatio,@JsonKey(name: "ev_to_sales") double? evToSales,@JsonKey(name: "enterprise_value_over_ebitda") double? enterpriseValueOverEbitda,@JsonKey(name: "ev_to_operating_cash_flow") double? evToOperatingCashFlow,@JsonKey(name: "ev_to_free_cash_flow") double? evToFreeCashFlow,@JsonKey(name: "earnings_yield") double? earningsYield,@JsonKey(name: "free_cash_flow_yield") double? freeCashFlowYield,@JsonKey(name: "debt_to_equity") double? debtToEquity,@JsonKey(name: "debt_to_assets") double? debtToAssets,@JsonKey(name: "net_debt_to_ebitda") double? netDebtToEbitda,@JsonKey(name: "current_ratio") double? currentRatio,@JsonKey(name: "interest_coverage") double? interestCoverage,@JsonKey(name: "income_quality") double? incomeQuality,@JsonKey(name: "dividend_yield") double? dividendYield,@JsonKey(name: "payout_ratio") double? payoutRatio,@JsonKey(name: "sales_general_and_administrative_to_revenue") double? salesGeneralAndAdministrativeToRevenue,@JsonKey(name: "research_and_developement_to_revenue") double? researchAndDevelopementToRevenue,@JsonKey(name: "intangibles_to_total_assets") double? intangiblesToTotalAssets,@JsonKey(name: "capex_to_operating_cash_flow") double? capexToOperatingCashFlow,@JsonKey(name: "capex_to_revenue") double? capexToRevenue,@JsonKey(name: "capex_to_depreciation") double? capexToDepreciation,@JsonKey(name: "stock_based_compensation_to_revenue") double? stockBasedCompensationToRevenue,@JsonKey(name: "graham_number") double? grahamNumber,@JsonKey(name: "roic") double? roic,@JsonKey(name: "return_on_tangible_assets") double? returnOnTangibleAssets,@JsonKey(name: "graham_net_net") double? grahamNetNet,@JsonKey(name: "working_capital") double? workingCapital,@JsonKey(name: "tangible_asset_value") double? tangibleAssetValue,@JsonKey(name: "net_current_asset_value") double? netCurrentAssetValue,@JsonKey(name: "invested_capital") double? investedCapital,@JsonKey(name: "average_receivables") double? averageReceivables,@JsonKey(name: "average_payables") double? averagePayables,@JsonKey(name: "average_inventory") double? averageInventory,@JsonKey(name: "days_sales_outstanding") double? daysSalesOutstanding,@JsonKey(name: "days_payables_outstanding") double? daysPayablesOutstanding,@JsonKey(name: "days_of_inventory_on_hand") double? daysOfInventoryOnHand,@JsonKey(name: "receivables_turnover") double? receivablesTurnover,@JsonKey(name: "payables_turnover") double? payablesTurnover,@JsonKey(name: "inventory_turnover") double? inventoryTurnover,@JsonKey(name: "roe") double? roe,@JsonKey(name: "capex_per_share") double? capexPerShare
});




}
/// @nodoc
class _$MatricsDataCopyWithImpl<$Res>
    implements $MatricsDataCopyWith<$Res> {
  _$MatricsDataCopyWithImpl(this._self, this._then);

  final MatricsData _self;
  final $Res Function(MatricsData) _then;

/// Create a copy of MatricsData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? revenuePerShare = freezed,Object? netIncomePerShare = freezed,Object? operatingCashFlowPerShare = freezed,Object? freeCashFlowPerShare = freezed,Object? cashPerShare = freezed,Object? bookValuePerShare = freezed,Object? tangibleBookValuePerShare = freezed,Object? shareholdersEquityPerShare = freezed,Object? interestDebtPerShare = freezed,Object? marketCap = freezed,Object? enterpriseValue = freezed,Object? peRatio = freezed,Object? priceToSalesRatio = freezed,Object? pocfRatio = freezed,Object? pfcfRatio = freezed,Object? pbRatio = freezed,Object? ptbRatio = freezed,Object? evToSales = freezed,Object? enterpriseValueOverEbitda = freezed,Object? evToOperatingCashFlow = freezed,Object? evToFreeCashFlow = freezed,Object? earningsYield = freezed,Object? freeCashFlowYield = freezed,Object? debtToEquity = freezed,Object? debtToAssets = freezed,Object? netDebtToEbitda = freezed,Object? currentRatio = freezed,Object? interestCoverage = freezed,Object? incomeQuality = freezed,Object? dividendYield = freezed,Object? payoutRatio = freezed,Object? salesGeneralAndAdministrativeToRevenue = freezed,Object? researchAndDevelopementToRevenue = freezed,Object? intangiblesToTotalAssets = freezed,Object? capexToOperatingCashFlow = freezed,Object? capexToRevenue = freezed,Object? capexToDepreciation = freezed,Object? stockBasedCompensationToRevenue = freezed,Object? grahamNumber = freezed,Object? roic = freezed,Object? returnOnTangibleAssets = freezed,Object? grahamNetNet = freezed,Object? workingCapital = freezed,Object? tangibleAssetValue = freezed,Object? netCurrentAssetValue = freezed,Object? investedCapital = freezed,Object? averageReceivables = freezed,Object? averagePayables = freezed,Object? averageInventory = freezed,Object? daysSalesOutstanding = freezed,Object? daysPayablesOutstanding = freezed,Object? daysOfInventoryOnHand = freezed,Object? receivablesTurnover = freezed,Object? payablesTurnover = freezed,Object? inventoryTurnover = freezed,Object? roe = freezed,Object? capexPerShare = freezed,}) {
  return _then(_self.copyWith(
revenuePerShare: freezed == revenuePerShare ? _self.revenuePerShare : revenuePerShare // ignore: cast_nullable_to_non_nullable
as double?,netIncomePerShare: freezed == netIncomePerShare ? _self.netIncomePerShare : netIncomePerShare // ignore: cast_nullable_to_non_nullable
as double?,operatingCashFlowPerShare: freezed == operatingCashFlowPerShare ? _self.operatingCashFlowPerShare : operatingCashFlowPerShare // ignore: cast_nullable_to_non_nullable
as double?,freeCashFlowPerShare: freezed == freeCashFlowPerShare ? _self.freeCashFlowPerShare : freeCashFlowPerShare // ignore: cast_nullable_to_non_nullable
as double?,cashPerShare: freezed == cashPerShare ? _self.cashPerShare : cashPerShare // ignore: cast_nullable_to_non_nullable
as double?,bookValuePerShare: freezed == bookValuePerShare ? _self.bookValuePerShare : bookValuePerShare // ignore: cast_nullable_to_non_nullable
as double?,tangibleBookValuePerShare: freezed == tangibleBookValuePerShare ? _self.tangibleBookValuePerShare : tangibleBookValuePerShare // ignore: cast_nullable_to_non_nullable
as double?,shareholdersEquityPerShare: freezed == shareholdersEquityPerShare ? _self.shareholdersEquityPerShare : shareholdersEquityPerShare // ignore: cast_nullable_to_non_nullable
as double?,interestDebtPerShare: freezed == interestDebtPerShare ? _self.interestDebtPerShare : interestDebtPerShare // ignore: cast_nullable_to_non_nullable
as double?,marketCap: freezed == marketCap ? _self.marketCap : marketCap // ignore: cast_nullable_to_non_nullable
as double?,enterpriseValue: freezed == enterpriseValue ? _self.enterpriseValue : enterpriseValue // ignore: cast_nullable_to_non_nullable
as double?,peRatio: freezed == peRatio ? _self.peRatio : peRatio // ignore: cast_nullable_to_non_nullable
as double?,priceToSalesRatio: freezed == priceToSalesRatio ? _self.priceToSalesRatio : priceToSalesRatio // ignore: cast_nullable_to_non_nullable
as double?,pocfRatio: freezed == pocfRatio ? _self.pocfRatio : pocfRatio // ignore: cast_nullable_to_non_nullable
as double?,pfcfRatio: freezed == pfcfRatio ? _self.pfcfRatio : pfcfRatio // ignore: cast_nullable_to_non_nullable
as double?,pbRatio: freezed == pbRatio ? _self.pbRatio : pbRatio // ignore: cast_nullable_to_non_nullable
as double?,ptbRatio: freezed == ptbRatio ? _self.ptbRatio : ptbRatio // ignore: cast_nullable_to_non_nullable
as double?,evToSales: freezed == evToSales ? _self.evToSales : evToSales // ignore: cast_nullable_to_non_nullable
as double?,enterpriseValueOverEbitda: freezed == enterpriseValueOverEbitda ? _self.enterpriseValueOverEbitda : enterpriseValueOverEbitda // ignore: cast_nullable_to_non_nullable
as double?,evToOperatingCashFlow: freezed == evToOperatingCashFlow ? _self.evToOperatingCashFlow : evToOperatingCashFlow // ignore: cast_nullable_to_non_nullable
as double?,evToFreeCashFlow: freezed == evToFreeCashFlow ? _self.evToFreeCashFlow : evToFreeCashFlow // ignore: cast_nullable_to_non_nullable
as double?,earningsYield: freezed == earningsYield ? _self.earningsYield : earningsYield // ignore: cast_nullable_to_non_nullable
as double?,freeCashFlowYield: freezed == freeCashFlowYield ? _self.freeCashFlowYield : freeCashFlowYield // ignore: cast_nullable_to_non_nullable
as double?,debtToEquity: freezed == debtToEquity ? _self.debtToEquity : debtToEquity // ignore: cast_nullable_to_non_nullable
as double?,debtToAssets: freezed == debtToAssets ? _self.debtToAssets : debtToAssets // ignore: cast_nullable_to_non_nullable
as double?,netDebtToEbitda: freezed == netDebtToEbitda ? _self.netDebtToEbitda : netDebtToEbitda // ignore: cast_nullable_to_non_nullable
as double?,currentRatio: freezed == currentRatio ? _self.currentRatio : currentRatio // ignore: cast_nullable_to_non_nullable
as double?,interestCoverage: freezed == interestCoverage ? _self.interestCoverage : interestCoverage // ignore: cast_nullable_to_non_nullable
as double?,incomeQuality: freezed == incomeQuality ? _self.incomeQuality : incomeQuality // ignore: cast_nullable_to_non_nullable
as double?,dividendYield: freezed == dividendYield ? _self.dividendYield : dividendYield // ignore: cast_nullable_to_non_nullable
as double?,payoutRatio: freezed == payoutRatio ? _self.payoutRatio : payoutRatio // ignore: cast_nullable_to_non_nullable
as double?,salesGeneralAndAdministrativeToRevenue: freezed == salesGeneralAndAdministrativeToRevenue ? _self.salesGeneralAndAdministrativeToRevenue : salesGeneralAndAdministrativeToRevenue // ignore: cast_nullable_to_non_nullable
as double?,researchAndDevelopementToRevenue: freezed == researchAndDevelopementToRevenue ? _self.researchAndDevelopementToRevenue : researchAndDevelopementToRevenue // ignore: cast_nullable_to_non_nullable
as double?,intangiblesToTotalAssets: freezed == intangiblesToTotalAssets ? _self.intangiblesToTotalAssets : intangiblesToTotalAssets // ignore: cast_nullable_to_non_nullable
as double?,capexToOperatingCashFlow: freezed == capexToOperatingCashFlow ? _self.capexToOperatingCashFlow : capexToOperatingCashFlow // ignore: cast_nullable_to_non_nullable
as double?,capexToRevenue: freezed == capexToRevenue ? _self.capexToRevenue : capexToRevenue // ignore: cast_nullable_to_non_nullable
as double?,capexToDepreciation: freezed == capexToDepreciation ? _self.capexToDepreciation : capexToDepreciation // ignore: cast_nullable_to_non_nullable
as double?,stockBasedCompensationToRevenue: freezed == stockBasedCompensationToRevenue ? _self.stockBasedCompensationToRevenue : stockBasedCompensationToRevenue // ignore: cast_nullable_to_non_nullable
as double?,grahamNumber: freezed == grahamNumber ? _self.grahamNumber : grahamNumber // ignore: cast_nullable_to_non_nullable
as double?,roic: freezed == roic ? _self.roic : roic // ignore: cast_nullable_to_non_nullable
as double?,returnOnTangibleAssets: freezed == returnOnTangibleAssets ? _self.returnOnTangibleAssets : returnOnTangibleAssets // ignore: cast_nullable_to_non_nullable
as double?,grahamNetNet: freezed == grahamNetNet ? _self.grahamNetNet : grahamNetNet // ignore: cast_nullable_to_non_nullable
as double?,workingCapital: freezed == workingCapital ? _self.workingCapital : workingCapital // ignore: cast_nullable_to_non_nullable
as double?,tangibleAssetValue: freezed == tangibleAssetValue ? _self.tangibleAssetValue : tangibleAssetValue // ignore: cast_nullable_to_non_nullable
as double?,netCurrentAssetValue: freezed == netCurrentAssetValue ? _self.netCurrentAssetValue : netCurrentAssetValue // ignore: cast_nullable_to_non_nullable
as double?,investedCapital: freezed == investedCapital ? _self.investedCapital : investedCapital // ignore: cast_nullable_to_non_nullable
as double?,averageReceivables: freezed == averageReceivables ? _self.averageReceivables : averageReceivables // ignore: cast_nullable_to_non_nullable
as double?,averagePayables: freezed == averagePayables ? _self.averagePayables : averagePayables // ignore: cast_nullable_to_non_nullable
as double?,averageInventory: freezed == averageInventory ? _self.averageInventory : averageInventory // ignore: cast_nullable_to_non_nullable
as double?,daysSalesOutstanding: freezed == daysSalesOutstanding ? _self.daysSalesOutstanding : daysSalesOutstanding // ignore: cast_nullable_to_non_nullable
as double?,daysPayablesOutstanding: freezed == daysPayablesOutstanding ? _self.daysPayablesOutstanding : daysPayablesOutstanding // ignore: cast_nullable_to_non_nullable
as double?,daysOfInventoryOnHand: freezed == daysOfInventoryOnHand ? _self.daysOfInventoryOnHand : daysOfInventoryOnHand // ignore: cast_nullable_to_non_nullable
as double?,receivablesTurnover: freezed == receivablesTurnover ? _self.receivablesTurnover : receivablesTurnover // ignore: cast_nullable_to_non_nullable
as double?,payablesTurnover: freezed == payablesTurnover ? _self.payablesTurnover : payablesTurnover // ignore: cast_nullable_to_non_nullable
as double?,inventoryTurnover: freezed == inventoryTurnover ? _self.inventoryTurnover : inventoryTurnover // ignore: cast_nullable_to_non_nullable
as double?,roe: freezed == roe ? _self.roe : roe // ignore: cast_nullable_to_non_nullable
as double?,capexPerShare: freezed == capexPerShare ? _self.capexPerShare : capexPerShare // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

}


/// Adds pattern-matching-related methods to [MatricsData].
extension MatricsDataPatterns on MatricsData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MatricsData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MatricsData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MatricsData value)  $default,){
final _that = this;
switch (_that) {
case _MatricsData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MatricsData value)?  $default,){
final _that = this;
switch (_that) {
case _MatricsData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "revenue_per_share")  double? revenuePerShare, @JsonKey(name: "net_income_per_share")  double? netIncomePerShare, @JsonKey(name: "operating_cash_flow_per_share")  double? operatingCashFlowPerShare, @JsonKey(name: "free_cash_flow_per_share")  double? freeCashFlowPerShare, @JsonKey(name: "cash_per_share")  double? cashPerShare, @JsonKey(name: "book_value_per_share")  double? bookValuePerShare, @JsonKey(name: "tangible_book_value_per_share")  double? tangibleBookValuePerShare, @JsonKey(name: "shareholders_equity_per_share")  double? shareholdersEquityPerShare, @JsonKey(name: "interest_debt_per_share")  double? interestDebtPerShare, @JsonKey(name: "market_cap")  double? marketCap, @JsonKey(name: "enterprise_value")  double? enterpriseValue, @JsonKey(name: "pe_ratio")  double? peRatio, @JsonKey(name: "price_to_sales_ratio")  double? priceToSalesRatio, @JsonKey(name: "pocfratio")  double? pocfRatio, @JsonKey(name: "pfcf_ratio")  double? pfcfRatio, @JsonKey(name: "pb_ratio")  double? pbRatio, @JsonKey(name: "ptb_ratio")  double? ptbRatio, @JsonKey(name: "ev_to_sales")  double? evToSales, @JsonKey(name: "enterprise_value_over_ebitda")  double? enterpriseValueOverEbitda, @JsonKey(name: "ev_to_operating_cash_flow")  double? evToOperatingCashFlow, @JsonKey(name: "ev_to_free_cash_flow")  double? evToFreeCashFlow, @JsonKey(name: "earnings_yield")  double? earningsYield, @JsonKey(name: "free_cash_flow_yield")  double? freeCashFlowYield, @JsonKey(name: "debt_to_equity")  double? debtToEquity, @JsonKey(name: "debt_to_assets")  double? debtToAssets, @JsonKey(name: "net_debt_to_ebitda")  double? netDebtToEbitda, @JsonKey(name: "current_ratio")  double? currentRatio, @JsonKey(name: "interest_coverage")  double? interestCoverage, @JsonKey(name: "income_quality")  double? incomeQuality, @JsonKey(name: "dividend_yield")  double? dividendYield, @JsonKey(name: "payout_ratio")  double? payoutRatio, @JsonKey(name: "sales_general_and_administrative_to_revenue")  double? salesGeneralAndAdministrativeToRevenue, @JsonKey(name: "research_and_developement_to_revenue")  double? researchAndDevelopementToRevenue, @JsonKey(name: "intangibles_to_total_assets")  double? intangiblesToTotalAssets, @JsonKey(name: "capex_to_operating_cash_flow")  double? capexToOperatingCashFlow, @JsonKey(name: "capex_to_revenue")  double? capexToRevenue, @JsonKey(name: "capex_to_depreciation")  double? capexToDepreciation, @JsonKey(name: "stock_based_compensation_to_revenue")  double? stockBasedCompensationToRevenue, @JsonKey(name: "graham_number")  double? grahamNumber, @JsonKey(name: "roic")  double? roic, @JsonKey(name: "return_on_tangible_assets")  double? returnOnTangibleAssets, @JsonKey(name: "graham_net_net")  double? grahamNetNet, @JsonKey(name: "working_capital")  double? workingCapital, @JsonKey(name: "tangible_asset_value")  double? tangibleAssetValue, @JsonKey(name: "net_current_asset_value")  double? netCurrentAssetValue, @JsonKey(name: "invested_capital")  double? investedCapital, @JsonKey(name: "average_receivables")  double? averageReceivables, @JsonKey(name: "average_payables")  double? averagePayables, @JsonKey(name: "average_inventory")  double? averageInventory, @JsonKey(name: "days_sales_outstanding")  double? daysSalesOutstanding, @JsonKey(name: "days_payables_outstanding")  double? daysPayablesOutstanding, @JsonKey(name: "days_of_inventory_on_hand")  double? daysOfInventoryOnHand, @JsonKey(name: "receivables_turnover")  double? receivablesTurnover, @JsonKey(name: "payables_turnover")  double? payablesTurnover, @JsonKey(name: "inventory_turnover")  double? inventoryTurnover, @JsonKey(name: "roe")  double? roe, @JsonKey(name: "capex_per_share")  double? capexPerShare)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MatricsData() when $default != null:
return $default(_that.revenuePerShare,_that.netIncomePerShare,_that.operatingCashFlowPerShare,_that.freeCashFlowPerShare,_that.cashPerShare,_that.bookValuePerShare,_that.tangibleBookValuePerShare,_that.shareholdersEquityPerShare,_that.interestDebtPerShare,_that.marketCap,_that.enterpriseValue,_that.peRatio,_that.priceToSalesRatio,_that.pocfRatio,_that.pfcfRatio,_that.pbRatio,_that.ptbRatio,_that.evToSales,_that.enterpriseValueOverEbitda,_that.evToOperatingCashFlow,_that.evToFreeCashFlow,_that.earningsYield,_that.freeCashFlowYield,_that.debtToEquity,_that.debtToAssets,_that.netDebtToEbitda,_that.currentRatio,_that.interestCoverage,_that.incomeQuality,_that.dividendYield,_that.payoutRatio,_that.salesGeneralAndAdministrativeToRevenue,_that.researchAndDevelopementToRevenue,_that.intangiblesToTotalAssets,_that.capexToOperatingCashFlow,_that.capexToRevenue,_that.capexToDepreciation,_that.stockBasedCompensationToRevenue,_that.grahamNumber,_that.roic,_that.returnOnTangibleAssets,_that.grahamNetNet,_that.workingCapital,_that.tangibleAssetValue,_that.netCurrentAssetValue,_that.investedCapital,_that.averageReceivables,_that.averagePayables,_that.averageInventory,_that.daysSalesOutstanding,_that.daysPayablesOutstanding,_that.daysOfInventoryOnHand,_that.receivablesTurnover,_that.payablesTurnover,_that.inventoryTurnover,_that.roe,_that.capexPerShare);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "revenue_per_share")  double? revenuePerShare, @JsonKey(name: "net_income_per_share")  double? netIncomePerShare, @JsonKey(name: "operating_cash_flow_per_share")  double? operatingCashFlowPerShare, @JsonKey(name: "free_cash_flow_per_share")  double? freeCashFlowPerShare, @JsonKey(name: "cash_per_share")  double? cashPerShare, @JsonKey(name: "book_value_per_share")  double? bookValuePerShare, @JsonKey(name: "tangible_book_value_per_share")  double? tangibleBookValuePerShare, @JsonKey(name: "shareholders_equity_per_share")  double? shareholdersEquityPerShare, @JsonKey(name: "interest_debt_per_share")  double? interestDebtPerShare, @JsonKey(name: "market_cap")  double? marketCap, @JsonKey(name: "enterprise_value")  double? enterpriseValue, @JsonKey(name: "pe_ratio")  double? peRatio, @JsonKey(name: "price_to_sales_ratio")  double? priceToSalesRatio, @JsonKey(name: "pocfratio")  double? pocfRatio, @JsonKey(name: "pfcf_ratio")  double? pfcfRatio, @JsonKey(name: "pb_ratio")  double? pbRatio, @JsonKey(name: "ptb_ratio")  double? ptbRatio, @JsonKey(name: "ev_to_sales")  double? evToSales, @JsonKey(name: "enterprise_value_over_ebitda")  double? enterpriseValueOverEbitda, @JsonKey(name: "ev_to_operating_cash_flow")  double? evToOperatingCashFlow, @JsonKey(name: "ev_to_free_cash_flow")  double? evToFreeCashFlow, @JsonKey(name: "earnings_yield")  double? earningsYield, @JsonKey(name: "free_cash_flow_yield")  double? freeCashFlowYield, @JsonKey(name: "debt_to_equity")  double? debtToEquity, @JsonKey(name: "debt_to_assets")  double? debtToAssets, @JsonKey(name: "net_debt_to_ebitda")  double? netDebtToEbitda, @JsonKey(name: "current_ratio")  double? currentRatio, @JsonKey(name: "interest_coverage")  double? interestCoverage, @JsonKey(name: "income_quality")  double? incomeQuality, @JsonKey(name: "dividend_yield")  double? dividendYield, @JsonKey(name: "payout_ratio")  double? payoutRatio, @JsonKey(name: "sales_general_and_administrative_to_revenue")  double? salesGeneralAndAdministrativeToRevenue, @JsonKey(name: "research_and_developement_to_revenue")  double? researchAndDevelopementToRevenue, @JsonKey(name: "intangibles_to_total_assets")  double? intangiblesToTotalAssets, @JsonKey(name: "capex_to_operating_cash_flow")  double? capexToOperatingCashFlow, @JsonKey(name: "capex_to_revenue")  double? capexToRevenue, @JsonKey(name: "capex_to_depreciation")  double? capexToDepreciation, @JsonKey(name: "stock_based_compensation_to_revenue")  double? stockBasedCompensationToRevenue, @JsonKey(name: "graham_number")  double? grahamNumber, @JsonKey(name: "roic")  double? roic, @JsonKey(name: "return_on_tangible_assets")  double? returnOnTangibleAssets, @JsonKey(name: "graham_net_net")  double? grahamNetNet, @JsonKey(name: "working_capital")  double? workingCapital, @JsonKey(name: "tangible_asset_value")  double? tangibleAssetValue, @JsonKey(name: "net_current_asset_value")  double? netCurrentAssetValue, @JsonKey(name: "invested_capital")  double? investedCapital, @JsonKey(name: "average_receivables")  double? averageReceivables, @JsonKey(name: "average_payables")  double? averagePayables, @JsonKey(name: "average_inventory")  double? averageInventory, @JsonKey(name: "days_sales_outstanding")  double? daysSalesOutstanding, @JsonKey(name: "days_payables_outstanding")  double? daysPayablesOutstanding, @JsonKey(name: "days_of_inventory_on_hand")  double? daysOfInventoryOnHand, @JsonKey(name: "receivables_turnover")  double? receivablesTurnover, @JsonKey(name: "payables_turnover")  double? payablesTurnover, @JsonKey(name: "inventory_turnover")  double? inventoryTurnover, @JsonKey(name: "roe")  double? roe, @JsonKey(name: "capex_per_share")  double? capexPerShare)  $default,) {final _that = this;
switch (_that) {
case _MatricsData():
return $default(_that.revenuePerShare,_that.netIncomePerShare,_that.operatingCashFlowPerShare,_that.freeCashFlowPerShare,_that.cashPerShare,_that.bookValuePerShare,_that.tangibleBookValuePerShare,_that.shareholdersEquityPerShare,_that.interestDebtPerShare,_that.marketCap,_that.enterpriseValue,_that.peRatio,_that.priceToSalesRatio,_that.pocfRatio,_that.pfcfRatio,_that.pbRatio,_that.ptbRatio,_that.evToSales,_that.enterpriseValueOverEbitda,_that.evToOperatingCashFlow,_that.evToFreeCashFlow,_that.earningsYield,_that.freeCashFlowYield,_that.debtToEquity,_that.debtToAssets,_that.netDebtToEbitda,_that.currentRatio,_that.interestCoverage,_that.incomeQuality,_that.dividendYield,_that.payoutRatio,_that.salesGeneralAndAdministrativeToRevenue,_that.researchAndDevelopementToRevenue,_that.intangiblesToTotalAssets,_that.capexToOperatingCashFlow,_that.capexToRevenue,_that.capexToDepreciation,_that.stockBasedCompensationToRevenue,_that.grahamNumber,_that.roic,_that.returnOnTangibleAssets,_that.grahamNetNet,_that.workingCapital,_that.tangibleAssetValue,_that.netCurrentAssetValue,_that.investedCapital,_that.averageReceivables,_that.averagePayables,_that.averageInventory,_that.daysSalesOutstanding,_that.daysPayablesOutstanding,_that.daysOfInventoryOnHand,_that.receivablesTurnover,_that.payablesTurnover,_that.inventoryTurnover,_that.roe,_that.capexPerShare);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "revenue_per_share")  double? revenuePerShare, @JsonKey(name: "net_income_per_share")  double? netIncomePerShare, @JsonKey(name: "operating_cash_flow_per_share")  double? operatingCashFlowPerShare, @JsonKey(name: "free_cash_flow_per_share")  double? freeCashFlowPerShare, @JsonKey(name: "cash_per_share")  double? cashPerShare, @JsonKey(name: "book_value_per_share")  double? bookValuePerShare, @JsonKey(name: "tangible_book_value_per_share")  double? tangibleBookValuePerShare, @JsonKey(name: "shareholders_equity_per_share")  double? shareholdersEquityPerShare, @JsonKey(name: "interest_debt_per_share")  double? interestDebtPerShare, @JsonKey(name: "market_cap")  double? marketCap, @JsonKey(name: "enterprise_value")  double? enterpriseValue, @JsonKey(name: "pe_ratio")  double? peRatio, @JsonKey(name: "price_to_sales_ratio")  double? priceToSalesRatio, @JsonKey(name: "pocfratio")  double? pocfRatio, @JsonKey(name: "pfcf_ratio")  double? pfcfRatio, @JsonKey(name: "pb_ratio")  double? pbRatio, @JsonKey(name: "ptb_ratio")  double? ptbRatio, @JsonKey(name: "ev_to_sales")  double? evToSales, @JsonKey(name: "enterprise_value_over_ebitda")  double? enterpriseValueOverEbitda, @JsonKey(name: "ev_to_operating_cash_flow")  double? evToOperatingCashFlow, @JsonKey(name: "ev_to_free_cash_flow")  double? evToFreeCashFlow, @JsonKey(name: "earnings_yield")  double? earningsYield, @JsonKey(name: "free_cash_flow_yield")  double? freeCashFlowYield, @JsonKey(name: "debt_to_equity")  double? debtToEquity, @JsonKey(name: "debt_to_assets")  double? debtToAssets, @JsonKey(name: "net_debt_to_ebitda")  double? netDebtToEbitda, @JsonKey(name: "current_ratio")  double? currentRatio, @JsonKey(name: "interest_coverage")  double? interestCoverage, @JsonKey(name: "income_quality")  double? incomeQuality, @JsonKey(name: "dividend_yield")  double? dividendYield, @JsonKey(name: "payout_ratio")  double? payoutRatio, @JsonKey(name: "sales_general_and_administrative_to_revenue")  double? salesGeneralAndAdministrativeToRevenue, @JsonKey(name: "research_and_developement_to_revenue")  double? researchAndDevelopementToRevenue, @JsonKey(name: "intangibles_to_total_assets")  double? intangiblesToTotalAssets, @JsonKey(name: "capex_to_operating_cash_flow")  double? capexToOperatingCashFlow, @JsonKey(name: "capex_to_revenue")  double? capexToRevenue, @JsonKey(name: "capex_to_depreciation")  double? capexToDepreciation, @JsonKey(name: "stock_based_compensation_to_revenue")  double? stockBasedCompensationToRevenue, @JsonKey(name: "graham_number")  double? grahamNumber, @JsonKey(name: "roic")  double? roic, @JsonKey(name: "return_on_tangible_assets")  double? returnOnTangibleAssets, @JsonKey(name: "graham_net_net")  double? grahamNetNet, @JsonKey(name: "working_capital")  double? workingCapital, @JsonKey(name: "tangible_asset_value")  double? tangibleAssetValue, @JsonKey(name: "net_current_asset_value")  double? netCurrentAssetValue, @JsonKey(name: "invested_capital")  double? investedCapital, @JsonKey(name: "average_receivables")  double? averageReceivables, @JsonKey(name: "average_payables")  double? averagePayables, @JsonKey(name: "average_inventory")  double? averageInventory, @JsonKey(name: "days_sales_outstanding")  double? daysSalesOutstanding, @JsonKey(name: "days_payables_outstanding")  double? daysPayablesOutstanding, @JsonKey(name: "days_of_inventory_on_hand")  double? daysOfInventoryOnHand, @JsonKey(name: "receivables_turnover")  double? receivablesTurnover, @JsonKey(name: "payables_turnover")  double? payablesTurnover, @JsonKey(name: "inventory_turnover")  double? inventoryTurnover, @JsonKey(name: "roe")  double? roe, @JsonKey(name: "capex_per_share")  double? capexPerShare)?  $default,) {final _that = this;
switch (_that) {
case _MatricsData() when $default != null:
return $default(_that.revenuePerShare,_that.netIncomePerShare,_that.operatingCashFlowPerShare,_that.freeCashFlowPerShare,_that.cashPerShare,_that.bookValuePerShare,_that.tangibleBookValuePerShare,_that.shareholdersEquityPerShare,_that.interestDebtPerShare,_that.marketCap,_that.enterpriseValue,_that.peRatio,_that.priceToSalesRatio,_that.pocfRatio,_that.pfcfRatio,_that.pbRatio,_that.ptbRatio,_that.evToSales,_that.enterpriseValueOverEbitda,_that.evToOperatingCashFlow,_that.evToFreeCashFlow,_that.earningsYield,_that.freeCashFlowYield,_that.debtToEquity,_that.debtToAssets,_that.netDebtToEbitda,_that.currentRatio,_that.interestCoverage,_that.incomeQuality,_that.dividendYield,_that.payoutRatio,_that.salesGeneralAndAdministrativeToRevenue,_that.researchAndDevelopementToRevenue,_that.intangiblesToTotalAssets,_that.capexToOperatingCashFlow,_that.capexToRevenue,_that.capexToDepreciation,_that.stockBasedCompensationToRevenue,_that.grahamNumber,_that.roic,_that.returnOnTangibleAssets,_that.grahamNetNet,_that.workingCapital,_that.tangibleAssetValue,_that.netCurrentAssetValue,_that.investedCapital,_that.averageReceivables,_that.averagePayables,_that.averageInventory,_that.daysSalesOutstanding,_that.daysPayablesOutstanding,_that.daysOfInventoryOnHand,_that.receivablesTurnover,_that.payablesTurnover,_that.inventoryTurnover,_that.roe,_that.capexPerShare);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MatricsData implements MatricsData {
  const _MatricsData({@JsonKey(name: "revenue_per_share") this.revenuePerShare, @JsonKey(name: "net_income_per_share") this.netIncomePerShare, @JsonKey(name: "operating_cash_flow_per_share") this.operatingCashFlowPerShare, @JsonKey(name: "free_cash_flow_per_share") this.freeCashFlowPerShare, @JsonKey(name: "cash_per_share") this.cashPerShare, @JsonKey(name: "book_value_per_share") this.bookValuePerShare, @JsonKey(name: "tangible_book_value_per_share") this.tangibleBookValuePerShare, @JsonKey(name: "shareholders_equity_per_share") this.shareholdersEquityPerShare, @JsonKey(name: "interest_debt_per_share") this.interestDebtPerShare, @JsonKey(name: "market_cap") this.marketCap, @JsonKey(name: "enterprise_value") this.enterpriseValue, @JsonKey(name: "pe_ratio") this.peRatio, @JsonKey(name: "price_to_sales_ratio") this.priceToSalesRatio, @JsonKey(name: "pocfratio") this.pocfRatio, @JsonKey(name: "pfcf_ratio") this.pfcfRatio, @JsonKey(name: "pb_ratio") this.pbRatio, @JsonKey(name: "ptb_ratio") this.ptbRatio, @JsonKey(name: "ev_to_sales") this.evToSales, @JsonKey(name: "enterprise_value_over_ebitda") this.enterpriseValueOverEbitda, @JsonKey(name: "ev_to_operating_cash_flow") this.evToOperatingCashFlow, @JsonKey(name: "ev_to_free_cash_flow") this.evToFreeCashFlow, @JsonKey(name: "earnings_yield") this.earningsYield, @JsonKey(name: "free_cash_flow_yield") this.freeCashFlowYield, @JsonKey(name: "debt_to_equity") this.debtToEquity, @JsonKey(name: "debt_to_assets") this.debtToAssets, @JsonKey(name: "net_debt_to_ebitda") this.netDebtToEbitda, @JsonKey(name: "current_ratio") this.currentRatio, @JsonKey(name: "interest_coverage") this.interestCoverage, @JsonKey(name: "income_quality") this.incomeQuality, @JsonKey(name: "dividend_yield") this.dividendYield, @JsonKey(name: "payout_ratio") this.payoutRatio, @JsonKey(name: "sales_general_and_administrative_to_revenue") this.salesGeneralAndAdministrativeToRevenue, @JsonKey(name: "research_and_developement_to_revenue") this.researchAndDevelopementToRevenue, @JsonKey(name: "intangibles_to_total_assets") this.intangiblesToTotalAssets, @JsonKey(name: "capex_to_operating_cash_flow") this.capexToOperatingCashFlow, @JsonKey(name: "capex_to_revenue") this.capexToRevenue, @JsonKey(name: "capex_to_depreciation") this.capexToDepreciation, @JsonKey(name: "stock_based_compensation_to_revenue") this.stockBasedCompensationToRevenue, @JsonKey(name: "graham_number") this.grahamNumber, @JsonKey(name: "roic") this.roic, @JsonKey(name: "return_on_tangible_assets") this.returnOnTangibleAssets, @JsonKey(name: "graham_net_net") this.grahamNetNet, @JsonKey(name: "working_capital") this.workingCapital, @JsonKey(name: "tangible_asset_value") this.tangibleAssetValue, @JsonKey(name: "net_current_asset_value") this.netCurrentAssetValue, @JsonKey(name: "invested_capital") this.investedCapital, @JsonKey(name: "average_receivables") this.averageReceivables, @JsonKey(name: "average_payables") this.averagePayables, @JsonKey(name: "average_inventory") this.averageInventory, @JsonKey(name: "days_sales_outstanding") this.daysSalesOutstanding, @JsonKey(name: "days_payables_outstanding") this.daysPayablesOutstanding, @JsonKey(name: "days_of_inventory_on_hand") this.daysOfInventoryOnHand, @JsonKey(name: "receivables_turnover") this.receivablesTurnover, @JsonKey(name: "payables_turnover") this.payablesTurnover, @JsonKey(name: "inventory_turnover") this.inventoryTurnover, @JsonKey(name: "roe") this.roe, @JsonKey(name: "capex_per_share") this.capexPerShare});
  factory _MatricsData.fromJson(Map<String, dynamic> json) => _$MatricsDataFromJson(json);

@override@JsonKey(name: "revenue_per_share") final  double? revenuePerShare;
@override@JsonKey(name: "net_income_per_share") final  double? netIncomePerShare;
@override@JsonKey(name: "operating_cash_flow_per_share") final  double? operatingCashFlowPerShare;
@override@JsonKey(name: "free_cash_flow_per_share") final  double? freeCashFlowPerShare;
@override@JsonKey(name: "cash_per_share") final  double? cashPerShare;
@override@JsonKey(name: "book_value_per_share") final  double? bookValuePerShare;
@override@JsonKey(name: "tangible_book_value_per_share") final  double? tangibleBookValuePerShare;
@override@JsonKey(name: "shareholders_equity_per_share") final  double? shareholdersEquityPerShare;
@override@JsonKey(name: "interest_debt_per_share") final  double? interestDebtPerShare;
@override@JsonKey(name: "market_cap") final  double? marketCap;
@override@JsonKey(name: "enterprise_value") final  double? enterpriseValue;
@override@JsonKey(name: "pe_ratio") final  double? peRatio;
@override@JsonKey(name: "price_to_sales_ratio") final  double? priceToSalesRatio;
@override@JsonKey(name: "pocfratio") final  double? pocfRatio;
@override@JsonKey(name: "pfcf_ratio") final  double? pfcfRatio;
@override@JsonKey(name: "pb_ratio") final  double? pbRatio;
@override@JsonKey(name: "ptb_ratio") final  double? ptbRatio;
@override@JsonKey(name: "ev_to_sales") final  double? evToSales;
@override@JsonKey(name: "enterprise_value_over_ebitda") final  double? enterpriseValueOverEbitda;
@override@JsonKey(name: "ev_to_operating_cash_flow") final  double? evToOperatingCashFlow;
@override@JsonKey(name: "ev_to_free_cash_flow") final  double? evToFreeCashFlow;
@override@JsonKey(name: "earnings_yield") final  double? earningsYield;
@override@JsonKey(name: "free_cash_flow_yield") final  double? freeCashFlowYield;
@override@JsonKey(name: "debt_to_equity") final  double? debtToEquity;
@override@JsonKey(name: "debt_to_assets") final  double? debtToAssets;
@override@JsonKey(name: "net_debt_to_ebitda") final  double? netDebtToEbitda;
@override@JsonKey(name: "current_ratio") final  double? currentRatio;
@override@JsonKey(name: "interest_coverage") final  double? interestCoverage;
@override@JsonKey(name: "income_quality") final  double? incomeQuality;
@override@JsonKey(name: "dividend_yield") final  double? dividendYield;
@override@JsonKey(name: "payout_ratio") final  double? payoutRatio;
@override@JsonKey(name: "sales_general_and_administrative_to_revenue") final  double? salesGeneralAndAdministrativeToRevenue;
@override@JsonKey(name: "research_and_developement_to_revenue") final  double? researchAndDevelopementToRevenue;
@override@JsonKey(name: "intangibles_to_total_assets") final  double? intangiblesToTotalAssets;
@override@JsonKey(name: "capex_to_operating_cash_flow") final  double? capexToOperatingCashFlow;
@override@JsonKey(name: "capex_to_revenue") final  double? capexToRevenue;
@override@JsonKey(name: "capex_to_depreciation") final  double? capexToDepreciation;
@override@JsonKey(name: "stock_based_compensation_to_revenue") final  double? stockBasedCompensationToRevenue;
@override@JsonKey(name: "graham_number") final  double? grahamNumber;
@override@JsonKey(name: "roic") final  double? roic;
@override@JsonKey(name: "return_on_tangible_assets") final  double? returnOnTangibleAssets;
@override@JsonKey(name: "graham_net_net") final  double? grahamNetNet;
@override@JsonKey(name: "working_capital") final  double? workingCapital;
@override@JsonKey(name: "tangible_asset_value") final  double? tangibleAssetValue;
@override@JsonKey(name: "net_current_asset_value") final  double? netCurrentAssetValue;
@override@JsonKey(name: "invested_capital") final  double? investedCapital;
@override@JsonKey(name: "average_receivables") final  double? averageReceivables;
@override@JsonKey(name: "average_payables") final  double? averagePayables;
@override@JsonKey(name: "average_inventory") final  double? averageInventory;
@override@JsonKey(name: "days_sales_outstanding") final  double? daysSalesOutstanding;
@override@JsonKey(name: "days_payables_outstanding") final  double? daysPayablesOutstanding;
@override@JsonKey(name: "days_of_inventory_on_hand") final  double? daysOfInventoryOnHand;
@override@JsonKey(name: "receivables_turnover") final  double? receivablesTurnover;
@override@JsonKey(name: "payables_turnover") final  double? payablesTurnover;
@override@JsonKey(name: "inventory_turnover") final  double? inventoryTurnover;
@override@JsonKey(name: "roe") final  double? roe;
@override@JsonKey(name: "capex_per_share") final  double? capexPerShare;

/// Create a copy of MatricsData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MatricsDataCopyWith<_MatricsData> get copyWith => __$MatricsDataCopyWithImpl<_MatricsData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MatricsDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MatricsData&&(identical(other.revenuePerShare, revenuePerShare) || other.revenuePerShare == revenuePerShare)&&(identical(other.netIncomePerShare, netIncomePerShare) || other.netIncomePerShare == netIncomePerShare)&&(identical(other.operatingCashFlowPerShare, operatingCashFlowPerShare) || other.operatingCashFlowPerShare == operatingCashFlowPerShare)&&(identical(other.freeCashFlowPerShare, freeCashFlowPerShare) || other.freeCashFlowPerShare == freeCashFlowPerShare)&&(identical(other.cashPerShare, cashPerShare) || other.cashPerShare == cashPerShare)&&(identical(other.bookValuePerShare, bookValuePerShare) || other.bookValuePerShare == bookValuePerShare)&&(identical(other.tangibleBookValuePerShare, tangibleBookValuePerShare) || other.tangibleBookValuePerShare == tangibleBookValuePerShare)&&(identical(other.shareholdersEquityPerShare, shareholdersEquityPerShare) || other.shareholdersEquityPerShare == shareholdersEquityPerShare)&&(identical(other.interestDebtPerShare, interestDebtPerShare) || other.interestDebtPerShare == interestDebtPerShare)&&(identical(other.marketCap, marketCap) || other.marketCap == marketCap)&&(identical(other.enterpriseValue, enterpriseValue) || other.enterpriseValue == enterpriseValue)&&(identical(other.peRatio, peRatio) || other.peRatio == peRatio)&&(identical(other.priceToSalesRatio, priceToSalesRatio) || other.priceToSalesRatio == priceToSalesRatio)&&(identical(other.pocfRatio, pocfRatio) || other.pocfRatio == pocfRatio)&&(identical(other.pfcfRatio, pfcfRatio) || other.pfcfRatio == pfcfRatio)&&(identical(other.pbRatio, pbRatio) || other.pbRatio == pbRatio)&&(identical(other.ptbRatio, ptbRatio) || other.ptbRatio == ptbRatio)&&(identical(other.evToSales, evToSales) || other.evToSales == evToSales)&&(identical(other.enterpriseValueOverEbitda, enterpriseValueOverEbitda) || other.enterpriseValueOverEbitda == enterpriseValueOverEbitda)&&(identical(other.evToOperatingCashFlow, evToOperatingCashFlow) || other.evToOperatingCashFlow == evToOperatingCashFlow)&&(identical(other.evToFreeCashFlow, evToFreeCashFlow) || other.evToFreeCashFlow == evToFreeCashFlow)&&(identical(other.earningsYield, earningsYield) || other.earningsYield == earningsYield)&&(identical(other.freeCashFlowYield, freeCashFlowYield) || other.freeCashFlowYield == freeCashFlowYield)&&(identical(other.debtToEquity, debtToEquity) || other.debtToEquity == debtToEquity)&&(identical(other.debtToAssets, debtToAssets) || other.debtToAssets == debtToAssets)&&(identical(other.netDebtToEbitda, netDebtToEbitda) || other.netDebtToEbitda == netDebtToEbitda)&&(identical(other.currentRatio, currentRatio) || other.currentRatio == currentRatio)&&(identical(other.interestCoverage, interestCoverage) || other.interestCoverage == interestCoverage)&&(identical(other.incomeQuality, incomeQuality) || other.incomeQuality == incomeQuality)&&(identical(other.dividendYield, dividendYield) || other.dividendYield == dividendYield)&&(identical(other.payoutRatio, payoutRatio) || other.payoutRatio == payoutRatio)&&(identical(other.salesGeneralAndAdministrativeToRevenue, salesGeneralAndAdministrativeToRevenue) || other.salesGeneralAndAdministrativeToRevenue == salesGeneralAndAdministrativeToRevenue)&&(identical(other.researchAndDevelopementToRevenue, researchAndDevelopementToRevenue) || other.researchAndDevelopementToRevenue == researchAndDevelopementToRevenue)&&(identical(other.intangiblesToTotalAssets, intangiblesToTotalAssets) || other.intangiblesToTotalAssets == intangiblesToTotalAssets)&&(identical(other.capexToOperatingCashFlow, capexToOperatingCashFlow) || other.capexToOperatingCashFlow == capexToOperatingCashFlow)&&(identical(other.capexToRevenue, capexToRevenue) || other.capexToRevenue == capexToRevenue)&&(identical(other.capexToDepreciation, capexToDepreciation) || other.capexToDepreciation == capexToDepreciation)&&(identical(other.stockBasedCompensationToRevenue, stockBasedCompensationToRevenue) || other.stockBasedCompensationToRevenue == stockBasedCompensationToRevenue)&&(identical(other.grahamNumber, grahamNumber) || other.grahamNumber == grahamNumber)&&(identical(other.roic, roic) || other.roic == roic)&&(identical(other.returnOnTangibleAssets, returnOnTangibleAssets) || other.returnOnTangibleAssets == returnOnTangibleAssets)&&(identical(other.grahamNetNet, grahamNetNet) || other.grahamNetNet == grahamNetNet)&&(identical(other.workingCapital, workingCapital) || other.workingCapital == workingCapital)&&(identical(other.tangibleAssetValue, tangibleAssetValue) || other.tangibleAssetValue == tangibleAssetValue)&&(identical(other.netCurrentAssetValue, netCurrentAssetValue) || other.netCurrentAssetValue == netCurrentAssetValue)&&(identical(other.investedCapital, investedCapital) || other.investedCapital == investedCapital)&&(identical(other.averageReceivables, averageReceivables) || other.averageReceivables == averageReceivables)&&(identical(other.averagePayables, averagePayables) || other.averagePayables == averagePayables)&&(identical(other.averageInventory, averageInventory) || other.averageInventory == averageInventory)&&(identical(other.daysSalesOutstanding, daysSalesOutstanding) || other.daysSalesOutstanding == daysSalesOutstanding)&&(identical(other.daysPayablesOutstanding, daysPayablesOutstanding) || other.daysPayablesOutstanding == daysPayablesOutstanding)&&(identical(other.daysOfInventoryOnHand, daysOfInventoryOnHand) || other.daysOfInventoryOnHand == daysOfInventoryOnHand)&&(identical(other.receivablesTurnover, receivablesTurnover) || other.receivablesTurnover == receivablesTurnover)&&(identical(other.payablesTurnover, payablesTurnover) || other.payablesTurnover == payablesTurnover)&&(identical(other.inventoryTurnover, inventoryTurnover) || other.inventoryTurnover == inventoryTurnover)&&(identical(other.roe, roe) || other.roe == roe)&&(identical(other.capexPerShare, capexPerShare) || other.capexPerShare == capexPerShare));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,revenuePerShare,netIncomePerShare,operatingCashFlowPerShare,freeCashFlowPerShare,cashPerShare,bookValuePerShare,tangibleBookValuePerShare,shareholdersEquityPerShare,interestDebtPerShare,marketCap,enterpriseValue,peRatio,priceToSalesRatio,pocfRatio,pfcfRatio,pbRatio,ptbRatio,evToSales,enterpriseValueOverEbitda,evToOperatingCashFlow,evToFreeCashFlow,earningsYield,freeCashFlowYield,debtToEquity,debtToAssets,netDebtToEbitda,currentRatio,interestCoverage,incomeQuality,dividendYield,payoutRatio,salesGeneralAndAdministrativeToRevenue,researchAndDevelopementToRevenue,intangiblesToTotalAssets,capexToOperatingCashFlow,capexToRevenue,capexToDepreciation,stockBasedCompensationToRevenue,grahamNumber,roic,returnOnTangibleAssets,grahamNetNet,workingCapital,tangibleAssetValue,netCurrentAssetValue,investedCapital,averageReceivables,averagePayables,averageInventory,daysSalesOutstanding,daysPayablesOutstanding,daysOfInventoryOnHand,receivablesTurnover,payablesTurnover,inventoryTurnover,roe,capexPerShare]);

@override
String toString() {
  return 'MatricsData(revenuePerShare: $revenuePerShare, netIncomePerShare: $netIncomePerShare, operatingCashFlowPerShare: $operatingCashFlowPerShare, freeCashFlowPerShare: $freeCashFlowPerShare, cashPerShare: $cashPerShare, bookValuePerShare: $bookValuePerShare, tangibleBookValuePerShare: $tangibleBookValuePerShare, shareholdersEquityPerShare: $shareholdersEquityPerShare, interestDebtPerShare: $interestDebtPerShare, marketCap: $marketCap, enterpriseValue: $enterpriseValue, peRatio: $peRatio, priceToSalesRatio: $priceToSalesRatio, pocfRatio: $pocfRatio, pfcfRatio: $pfcfRatio, pbRatio: $pbRatio, ptbRatio: $ptbRatio, evToSales: $evToSales, enterpriseValueOverEbitda: $enterpriseValueOverEbitda, evToOperatingCashFlow: $evToOperatingCashFlow, evToFreeCashFlow: $evToFreeCashFlow, earningsYield: $earningsYield, freeCashFlowYield: $freeCashFlowYield, debtToEquity: $debtToEquity, debtToAssets: $debtToAssets, netDebtToEbitda: $netDebtToEbitda, currentRatio: $currentRatio, interestCoverage: $interestCoverage, incomeQuality: $incomeQuality, dividendYield: $dividendYield, payoutRatio: $payoutRatio, salesGeneralAndAdministrativeToRevenue: $salesGeneralAndAdministrativeToRevenue, researchAndDevelopementToRevenue: $researchAndDevelopementToRevenue, intangiblesToTotalAssets: $intangiblesToTotalAssets, capexToOperatingCashFlow: $capexToOperatingCashFlow, capexToRevenue: $capexToRevenue, capexToDepreciation: $capexToDepreciation, stockBasedCompensationToRevenue: $stockBasedCompensationToRevenue, grahamNumber: $grahamNumber, roic: $roic, returnOnTangibleAssets: $returnOnTangibleAssets, grahamNetNet: $grahamNetNet, workingCapital: $workingCapital, tangibleAssetValue: $tangibleAssetValue, netCurrentAssetValue: $netCurrentAssetValue, investedCapital: $investedCapital, averageReceivables: $averageReceivables, averagePayables: $averagePayables, averageInventory: $averageInventory, daysSalesOutstanding: $daysSalesOutstanding, daysPayablesOutstanding: $daysPayablesOutstanding, daysOfInventoryOnHand: $daysOfInventoryOnHand, receivablesTurnover: $receivablesTurnover, payablesTurnover: $payablesTurnover, inventoryTurnover: $inventoryTurnover, roe: $roe, capexPerShare: $capexPerShare)';
}


}

/// @nodoc
abstract mixin class _$MatricsDataCopyWith<$Res> implements $MatricsDataCopyWith<$Res> {
  factory _$MatricsDataCopyWith(_MatricsData value, $Res Function(_MatricsData) _then) = __$MatricsDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "revenue_per_share") double? revenuePerShare,@JsonKey(name: "net_income_per_share") double? netIncomePerShare,@JsonKey(name: "operating_cash_flow_per_share") double? operatingCashFlowPerShare,@JsonKey(name: "free_cash_flow_per_share") double? freeCashFlowPerShare,@JsonKey(name: "cash_per_share") double? cashPerShare,@JsonKey(name: "book_value_per_share") double? bookValuePerShare,@JsonKey(name: "tangible_book_value_per_share") double? tangibleBookValuePerShare,@JsonKey(name: "shareholders_equity_per_share") double? shareholdersEquityPerShare,@JsonKey(name: "interest_debt_per_share") double? interestDebtPerShare,@JsonKey(name: "market_cap") double? marketCap,@JsonKey(name: "enterprise_value") double? enterpriseValue,@JsonKey(name: "pe_ratio") double? peRatio,@JsonKey(name: "price_to_sales_ratio") double? priceToSalesRatio,@JsonKey(name: "pocfratio") double? pocfRatio,@JsonKey(name: "pfcf_ratio") double? pfcfRatio,@JsonKey(name: "pb_ratio") double? pbRatio,@JsonKey(name: "ptb_ratio") double? ptbRatio,@JsonKey(name: "ev_to_sales") double? evToSales,@JsonKey(name: "enterprise_value_over_ebitda") double? enterpriseValueOverEbitda,@JsonKey(name: "ev_to_operating_cash_flow") double? evToOperatingCashFlow,@JsonKey(name: "ev_to_free_cash_flow") double? evToFreeCashFlow,@JsonKey(name: "earnings_yield") double? earningsYield,@JsonKey(name: "free_cash_flow_yield") double? freeCashFlowYield,@JsonKey(name: "debt_to_equity") double? debtToEquity,@JsonKey(name: "debt_to_assets") double? debtToAssets,@JsonKey(name: "net_debt_to_ebitda") double? netDebtToEbitda,@JsonKey(name: "current_ratio") double? currentRatio,@JsonKey(name: "interest_coverage") double? interestCoverage,@JsonKey(name: "income_quality") double? incomeQuality,@JsonKey(name: "dividend_yield") double? dividendYield,@JsonKey(name: "payout_ratio") double? payoutRatio,@JsonKey(name: "sales_general_and_administrative_to_revenue") double? salesGeneralAndAdministrativeToRevenue,@JsonKey(name: "research_and_developement_to_revenue") double? researchAndDevelopementToRevenue,@JsonKey(name: "intangibles_to_total_assets") double? intangiblesToTotalAssets,@JsonKey(name: "capex_to_operating_cash_flow") double? capexToOperatingCashFlow,@JsonKey(name: "capex_to_revenue") double? capexToRevenue,@JsonKey(name: "capex_to_depreciation") double? capexToDepreciation,@JsonKey(name: "stock_based_compensation_to_revenue") double? stockBasedCompensationToRevenue,@JsonKey(name: "graham_number") double? grahamNumber,@JsonKey(name: "roic") double? roic,@JsonKey(name: "return_on_tangible_assets") double? returnOnTangibleAssets,@JsonKey(name: "graham_net_net") double? grahamNetNet,@JsonKey(name: "working_capital") double? workingCapital,@JsonKey(name: "tangible_asset_value") double? tangibleAssetValue,@JsonKey(name: "net_current_asset_value") double? netCurrentAssetValue,@JsonKey(name: "invested_capital") double? investedCapital,@JsonKey(name: "average_receivables") double? averageReceivables,@JsonKey(name: "average_payables") double? averagePayables,@JsonKey(name: "average_inventory") double? averageInventory,@JsonKey(name: "days_sales_outstanding") double? daysSalesOutstanding,@JsonKey(name: "days_payables_outstanding") double? daysPayablesOutstanding,@JsonKey(name: "days_of_inventory_on_hand") double? daysOfInventoryOnHand,@JsonKey(name: "receivables_turnover") double? receivablesTurnover,@JsonKey(name: "payables_turnover") double? payablesTurnover,@JsonKey(name: "inventory_turnover") double? inventoryTurnover,@JsonKey(name: "roe") double? roe,@JsonKey(name: "capex_per_share") double? capexPerShare
});




}
/// @nodoc
class __$MatricsDataCopyWithImpl<$Res>
    implements _$MatricsDataCopyWith<$Res> {
  __$MatricsDataCopyWithImpl(this._self, this._then);

  final _MatricsData _self;
  final $Res Function(_MatricsData) _then;

/// Create a copy of MatricsData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? revenuePerShare = freezed,Object? netIncomePerShare = freezed,Object? operatingCashFlowPerShare = freezed,Object? freeCashFlowPerShare = freezed,Object? cashPerShare = freezed,Object? bookValuePerShare = freezed,Object? tangibleBookValuePerShare = freezed,Object? shareholdersEquityPerShare = freezed,Object? interestDebtPerShare = freezed,Object? marketCap = freezed,Object? enterpriseValue = freezed,Object? peRatio = freezed,Object? priceToSalesRatio = freezed,Object? pocfRatio = freezed,Object? pfcfRatio = freezed,Object? pbRatio = freezed,Object? ptbRatio = freezed,Object? evToSales = freezed,Object? enterpriseValueOverEbitda = freezed,Object? evToOperatingCashFlow = freezed,Object? evToFreeCashFlow = freezed,Object? earningsYield = freezed,Object? freeCashFlowYield = freezed,Object? debtToEquity = freezed,Object? debtToAssets = freezed,Object? netDebtToEbitda = freezed,Object? currentRatio = freezed,Object? interestCoverage = freezed,Object? incomeQuality = freezed,Object? dividendYield = freezed,Object? payoutRatio = freezed,Object? salesGeneralAndAdministrativeToRevenue = freezed,Object? researchAndDevelopementToRevenue = freezed,Object? intangiblesToTotalAssets = freezed,Object? capexToOperatingCashFlow = freezed,Object? capexToRevenue = freezed,Object? capexToDepreciation = freezed,Object? stockBasedCompensationToRevenue = freezed,Object? grahamNumber = freezed,Object? roic = freezed,Object? returnOnTangibleAssets = freezed,Object? grahamNetNet = freezed,Object? workingCapital = freezed,Object? tangibleAssetValue = freezed,Object? netCurrentAssetValue = freezed,Object? investedCapital = freezed,Object? averageReceivables = freezed,Object? averagePayables = freezed,Object? averageInventory = freezed,Object? daysSalesOutstanding = freezed,Object? daysPayablesOutstanding = freezed,Object? daysOfInventoryOnHand = freezed,Object? receivablesTurnover = freezed,Object? payablesTurnover = freezed,Object? inventoryTurnover = freezed,Object? roe = freezed,Object? capexPerShare = freezed,}) {
  return _then(_MatricsData(
revenuePerShare: freezed == revenuePerShare ? _self.revenuePerShare : revenuePerShare // ignore: cast_nullable_to_non_nullable
as double?,netIncomePerShare: freezed == netIncomePerShare ? _self.netIncomePerShare : netIncomePerShare // ignore: cast_nullable_to_non_nullable
as double?,operatingCashFlowPerShare: freezed == operatingCashFlowPerShare ? _self.operatingCashFlowPerShare : operatingCashFlowPerShare // ignore: cast_nullable_to_non_nullable
as double?,freeCashFlowPerShare: freezed == freeCashFlowPerShare ? _self.freeCashFlowPerShare : freeCashFlowPerShare // ignore: cast_nullable_to_non_nullable
as double?,cashPerShare: freezed == cashPerShare ? _self.cashPerShare : cashPerShare // ignore: cast_nullable_to_non_nullable
as double?,bookValuePerShare: freezed == bookValuePerShare ? _self.bookValuePerShare : bookValuePerShare // ignore: cast_nullable_to_non_nullable
as double?,tangibleBookValuePerShare: freezed == tangibleBookValuePerShare ? _self.tangibleBookValuePerShare : tangibleBookValuePerShare // ignore: cast_nullable_to_non_nullable
as double?,shareholdersEquityPerShare: freezed == shareholdersEquityPerShare ? _self.shareholdersEquityPerShare : shareholdersEquityPerShare // ignore: cast_nullable_to_non_nullable
as double?,interestDebtPerShare: freezed == interestDebtPerShare ? _self.interestDebtPerShare : interestDebtPerShare // ignore: cast_nullable_to_non_nullable
as double?,marketCap: freezed == marketCap ? _self.marketCap : marketCap // ignore: cast_nullable_to_non_nullable
as double?,enterpriseValue: freezed == enterpriseValue ? _self.enterpriseValue : enterpriseValue // ignore: cast_nullable_to_non_nullable
as double?,peRatio: freezed == peRatio ? _self.peRatio : peRatio // ignore: cast_nullable_to_non_nullable
as double?,priceToSalesRatio: freezed == priceToSalesRatio ? _self.priceToSalesRatio : priceToSalesRatio // ignore: cast_nullable_to_non_nullable
as double?,pocfRatio: freezed == pocfRatio ? _self.pocfRatio : pocfRatio // ignore: cast_nullable_to_non_nullable
as double?,pfcfRatio: freezed == pfcfRatio ? _self.pfcfRatio : pfcfRatio // ignore: cast_nullable_to_non_nullable
as double?,pbRatio: freezed == pbRatio ? _self.pbRatio : pbRatio // ignore: cast_nullable_to_non_nullable
as double?,ptbRatio: freezed == ptbRatio ? _self.ptbRatio : ptbRatio // ignore: cast_nullable_to_non_nullable
as double?,evToSales: freezed == evToSales ? _self.evToSales : evToSales // ignore: cast_nullable_to_non_nullable
as double?,enterpriseValueOverEbitda: freezed == enterpriseValueOverEbitda ? _self.enterpriseValueOverEbitda : enterpriseValueOverEbitda // ignore: cast_nullable_to_non_nullable
as double?,evToOperatingCashFlow: freezed == evToOperatingCashFlow ? _self.evToOperatingCashFlow : evToOperatingCashFlow // ignore: cast_nullable_to_non_nullable
as double?,evToFreeCashFlow: freezed == evToFreeCashFlow ? _self.evToFreeCashFlow : evToFreeCashFlow // ignore: cast_nullable_to_non_nullable
as double?,earningsYield: freezed == earningsYield ? _self.earningsYield : earningsYield // ignore: cast_nullable_to_non_nullable
as double?,freeCashFlowYield: freezed == freeCashFlowYield ? _self.freeCashFlowYield : freeCashFlowYield // ignore: cast_nullable_to_non_nullable
as double?,debtToEquity: freezed == debtToEquity ? _self.debtToEquity : debtToEquity // ignore: cast_nullable_to_non_nullable
as double?,debtToAssets: freezed == debtToAssets ? _self.debtToAssets : debtToAssets // ignore: cast_nullable_to_non_nullable
as double?,netDebtToEbitda: freezed == netDebtToEbitda ? _self.netDebtToEbitda : netDebtToEbitda // ignore: cast_nullable_to_non_nullable
as double?,currentRatio: freezed == currentRatio ? _self.currentRatio : currentRatio // ignore: cast_nullable_to_non_nullable
as double?,interestCoverage: freezed == interestCoverage ? _self.interestCoverage : interestCoverage // ignore: cast_nullable_to_non_nullable
as double?,incomeQuality: freezed == incomeQuality ? _self.incomeQuality : incomeQuality // ignore: cast_nullable_to_non_nullable
as double?,dividendYield: freezed == dividendYield ? _self.dividendYield : dividendYield // ignore: cast_nullable_to_non_nullable
as double?,payoutRatio: freezed == payoutRatio ? _self.payoutRatio : payoutRatio // ignore: cast_nullable_to_non_nullable
as double?,salesGeneralAndAdministrativeToRevenue: freezed == salesGeneralAndAdministrativeToRevenue ? _self.salesGeneralAndAdministrativeToRevenue : salesGeneralAndAdministrativeToRevenue // ignore: cast_nullable_to_non_nullable
as double?,researchAndDevelopementToRevenue: freezed == researchAndDevelopementToRevenue ? _self.researchAndDevelopementToRevenue : researchAndDevelopementToRevenue // ignore: cast_nullable_to_non_nullable
as double?,intangiblesToTotalAssets: freezed == intangiblesToTotalAssets ? _self.intangiblesToTotalAssets : intangiblesToTotalAssets // ignore: cast_nullable_to_non_nullable
as double?,capexToOperatingCashFlow: freezed == capexToOperatingCashFlow ? _self.capexToOperatingCashFlow : capexToOperatingCashFlow // ignore: cast_nullable_to_non_nullable
as double?,capexToRevenue: freezed == capexToRevenue ? _self.capexToRevenue : capexToRevenue // ignore: cast_nullable_to_non_nullable
as double?,capexToDepreciation: freezed == capexToDepreciation ? _self.capexToDepreciation : capexToDepreciation // ignore: cast_nullable_to_non_nullable
as double?,stockBasedCompensationToRevenue: freezed == stockBasedCompensationToRevenue ? _self.stockBasedCompensationToRevenue : stockBasedCompensationToRevenue // ignore: cast_nullable_to_non_nullable
as double?,grahamNumber: freezed == grahamNumber ? _self.grahamNumber : grahamNumber // ignore: cast_nullable_to_non_nullable
as double?,roic: freezed == roic ? _self.roic : roic // ignore: cast_nullable_to_non_nullable
as double?,returnOnTangibleAssets: freezed == returnOnTangibleAssets ? _self.returnOnTangibleAssets : returnOnTangibleAssets // ignore: cast_nullable_to_non_nullable
as double?,grahamNetNet: freezed == grahamNetNet ? _self.grahamNetNet : grahamNetNet // ignore: cast_nullable_to_non_nullable
as double?,workingCapital: freezed == workingCapital ? _self.workingCapital : workingCapital // ignore: cast_nullable_to_non_nullable
as double?,tangibleAssetValue: freezed == tangibleAssetValue ? _self.tangibleAssetValue : tangibleAssetValue // ignore: cast_nullable_to_non_nullable
as double?,netCurrentAssetValue: freezed == netCurrentAssetValue ? _self.netCurrentAssetValue : netCurrentAssetValue // ignore: cast_nullable_to_non_nullable
as double?,investedCapital: freezed == investedCapital ? _self.investedCapital : investedCapital // ignore: cast_nullable_to_non_nullable
as double?,averageReceivables: freezed == averageReceivables ? _self.averageReceivables : averageReceivables // ignore: cast_nullable_to_non_nullable
as double?,averagePayables: freezed == averagePayables ? _self.averagePayables : averagePayables // ignore: cast_nullable_to_non_nullable
as double?,averageInventory: freezed == averageInventory ? _self.averageInventory : averageInventory // ignore: cast_nullable_to_non_nullable
as double?,daysSalesOutstanding: freezed == daysSalesOutstanding ? _self.daysSalesOutstanding : daysSalesOutstanding // ignore: cast_nullable_to_non_nullable
as double?,daysPayablesOutstanding: freezed == daysPayablesOutstanding ? _self.daysPayablesOutstanding : daysPayablesOutstanding // ignore: cast_nullable_to_non_nullable
as double?,daysOfInventoryOnHand: freezed == daysOfInventoryOnHand ? _self.daysOfInventoryOnHand : daysOfInventoryOnHand // ignore: cast_nullable_to_non_nullable
as double?,receivablesTurnover: freezed == receivablesTurnover ? _self.receivablesTurnover : receivablesTurnover // ignore: cast_nullable_to_non_nullable
as double?,payablesTurnover: freezed == payablesTurnover ? _self.payablesTurnover : payablesTurnover // ignore: cast_nullable_to_non_nullable
as double?,inventoryTurnover: freezed == inventoryTurnover ? _self.inventoryTurnover : inventoryTurnover // ignore: cast_nullable_to_non_nullable
as double?,roe: freezed == roe ? _self.roe : roe // ignore: cast_nullable_to_non_nullable
as double?,capexPerShare: freezed == capexPerShare ? _self.capexPerShare : capexPerShare // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}

// dart format on
