// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'company_detail_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CompanyDetailModel {

 int get status; String get msg; CompanyDetailData get data; dynamic get errors;
/// Create a copy of CompanyDetailModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CompanyDetailModelCopyWith<CompanyDetailModel> get copyWith => _$CompanyDetailModelCopyWithImpl<CompanyDetailModel>(this as CompanyDetailModel, _$identity);

  /// Serializes this CompanyDetailModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CompanyDetailModel&&(identical(other.status, status) || other.status == status)&&(identical(other.msg, msg) || other.msg == msg)&&(identical(other.data, data) || other.data == data)&&const DeepCollectionEquality().equals(other.errors, errors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,msg,data,const DeepCollectionEquality().hash(errors));

@override
String toString() {
  return 'CompanyDetailModel(status: $status, msg: $msg, data: $data, errors: $errors)';
}


}

/// @nodoc
abstract mixin class $CompanyDetailModelCopyWith<$Res>  {
  factory $CompanyDetailModelCopyWith(CompanyDetailModel value, $Res Function(CompanyDetailModel) _then) = _$CompanyDetailModelCopyWithImpl;
@useResult
$Res call({
 int status, String msg, CompanyDetailData data, dynamic errors
});


$CompanyDetailDataCopyWith<$Res> get data;

}
/// @nodoc
class _$CompanyDetailModelCopyWithImpl<$Res>
    implements $CompanyDetailModelCopyWith<$Res> {
  _$CompanyDetailModelCopyWithImpl(this._self, this._then);

  final CompanyDetailModel _self;
  final $Res Function(CompanyDetailModel) _then;

/// Create a copy of CompanyDetailModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? msg = null,Object? data = null,Object? errors = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int,msg: null == msg ? _self.msg : msg // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as CompanyDetailData,errors: freezed == errors ? _self.errors : errors // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}
/// Create a copy of CompanyDetailModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CompanyDetailDataCopyWith<$Res> get data {
  
  return $CompanyDetailDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [CompanyDetailModel].
extension CompanyDetailModelPatterns on CompanyDetailModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CompanyDetailModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CompanyDetailModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CompanyDetailModel value)  $default,){
final _that = this;
switch (_that) {
case _CompanyDetailModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CompanyDetailModel value)?  $default,){
final _that = this;
switch (_that) {
case _CompanyDetailModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int status,  String msg,  CompanyDetailData data,  dynamic errors)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CompanyDetailModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int status,  String msg,  CompanyDetailData data,  dynamic errors)  $default,) {final _that = this;
switch (_that) {
case _CompanyDetailModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int status,  String msg,  CompanyDetailData data,  dynamic errors)?  $default,) {final _that = this;
switch (_that) {
case _CompanyDetailModel() when $default != null:
return $default(_that.status,_that.msg,_that.data,_that.errors);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CompanyDetailModel implements CompanyDetailModel {
  const _CompanyDetailModel({required this.status, required this.msg, required this.data, this.errors});
  factory _CompanyDetailModel.fromJson(Map<String, dynamic> json) => _$CompanyDetailModelFromJson(json);

@override final  int status;
@override final  String msg;
@override final  CompanyDetailData data;
@override final  dynamic errors;

/// Create a copy of CompanyDetailModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CompanyDetailModelCopyWith<_CompanyDetailModel> get copyWith => __$CompanyDetailModelCopyWithImpl<_CompanyDetailModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CompanyDetailModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CompanyDetailModel&&(identical(other.status, status) || other.status == status)&&(identical(other.msg, msg) || other.msg == msg)&&(identical(other.data, data) || other.data == data)&&const DeepCollectionEquality().equals(other.errors, errors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,msg,data,const DeepCollectionEquality().hash(errors));

@override
String toString() {
  return 'CompanyDetailModel(status: $status, msg: $msg, data: $data, errors: $errors)';
}


}

/// @nodoc
abstract mixin class _$CompanyDetailModelCopyWith<$Res> implements $CompanyDetailModelCopyWith<$Res> {
  factory _$CompanyDetailModelCopyWith(_CompanyDetailModel value, $Res Function(_CompanyDetailModel) _then) = __$CompanyDetailModelCopyWithImpl;
@override @useResult
$Res call({
 int status, String msg, CompanyDetailData data, dynamic errors
});


@override $CompanyDetailDataCopyWith<$Res> get data;

}
/// @nodoc
class __$CompanyDetailModelCopyWithImpl<$Res>
    implements _$CompanyDetailModelCopyWith<$Res> {
  __$CompanyDetailModelCopyWithImpl(this._self, this._then);

  final _CompanyDetailModel _self;
  final $Res Function(_CompanyDetailModel) _then;

/// Create a copy of CompanyDetailModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? msg = null,Object? data = null,Object? errors = freezed,}) {
  return _then(_CompanyDetailModel(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int,msg: null == msg ? _self.msg : msg // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as CompanyDetailData,errors: freezed == errors ? _self.errors : errors // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

/// Create a copy of CompanyDetailModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CompanyDetailDataCopyWith<$Res> get data {
  
  return $CompanyDetailDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$CompanyDetailData {

@JsonKey(name: 'fundamentals_SplitsDividends') List<FundamentalsSplitsDividends>? get fundamentalsSplitsDividends;@JsonKey(name: 'fundamentals_InsiderTransactions') List<FundamentalsInsiderTransactions>? get fundamentalsInsiderTransactions;@JsonKey(name: 'fundamentals_Holders') List<FundamentalsHolders>? get fundamentalsHolders;@JsonKey(name: 'fundamentals_ESGScores') List<FundamentalsEsgScores>? get fundamentalsEsgScores;@JsonKey(name: 'fundamentals_outstandingShares_quarter') List<FundamentalsOutstandingSharesQuarter>? get fundamentalsOutstandingSharesQuarter;@JsonKey(name: 'fundamentals_outstandingShares') List<FundamentalsOutstandingShares>? get fundamentalsOutstandingShares;@JsonKey(name: 'fundamentals_InsiderTransactions_insights') List<FundamentalsInsiderTransactionsInsights>? get fundamentalsInsiderTransactionsInsights;@JsonKey(name: 'fundamentals_Earnings_Trend') List<FundamentalsEarningsTrend>? get fundamentalsEarningsTrend;@JsonKey(name: 'get_analytics_holders_summary') List<GetAnalyticsHoldersSummary>? get getAnalyticsHoldersSummary;@JsonKey(name: 'fundamentals_insider_transactions_insights_summary') String? get fundamentalsInsiderTransactionsInsightsSummary;@JsonKey(name: 'holder_summary') List<String>? get holderSummary;@JsonKey(name: 'fundamentals_InsiderTransactions_summary') String? get fundamentalsInsiderTransactionsSummary;@JsonKey(name: 'outstandingShares_Summary') String? get outstandingSharesSummary;
/// Create a copy of CompanyDetailData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CompanyDetailDataCopyWith<CompanyDetailData> get copyWith => _$CompanyDetailDataCopyWithImpl<CompanyDetailData>(this as CompanyDetailData, _$identity);

  /// Serializes this CompanyDetailData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CompanyDetailData&&const DeepCollectionEquality().equals(other.fundamentalsSplitsDividends, fundamentalsSplitsDividends)&&const DeepCollectionEquality().equals(other.fundamentalsInsiderTransactions, fundamentalsInsiderTransactions)&&const DeepCollectionEquality().equals(other.fundamentalsHolders, fundamentalsHolders)&&const DeepCollectionEquality().equals(other.fundamentalsEsgScores, fundamentalsEsgScores)&&const DeepCollectionEquality().equals(other.fundamentalsOutstandingSharesQuarter, fundamentalsOutstandingSharesQuarter)&&const DeepCollectionEquality().equals(other.fundamentalsOutstandingShares, fundamentalsOutstandingShares)&&const DeepCollectionEquality().equals(other.fundamentalsInsiderTransactionsInsights, fundamentalsInsiderTransactionsInsights)&&const DeepCollectionEquality().equals(other.fundamentalsEarningsTrend, fundamentalsEarningsTrend)&&const DeepCollectionEquality().equals(other.getAnalyticsHoldersSummary, getAnalyticsHoldersSummary)&&(identical(other.fundamentalsInsiderTransactionsInsightsSummary, fundamentalsInsiderTransactionsInsightsSummary) || other.fundamentalsInsiderTransactionsInsightsSummary == fundamentalsInsiderTransactionsInsightsSummary)&&const DeepCollectionEquality().equals(other.holderSummary, holderSummary)&&(identical(other.fundamentalsInsiderTransactionsSummary, fundamentalsInsiderTransactionsSummary) || other.fundamentalsInsiderTransactionsSummary == fundamentalsInsiderTransactionsSummary)&&(identical(other.outstandingSharesSummary, outstandingSharesSummary) || other.outstandingSharesSummary == outstandingSharesSummary));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(fundamentalsSplitsDividends),const DeepCollectionEquality().hash(fundamentalsInsiderTransactions),const DeepCollectionEquality().hash(fundamentalsHolders),const DeepCollectionEquality().hash(fundamentalsEsgScores),const DeepCollectionEquality().hash(fundamentalsOutstandingSharesQuarter),const DeepCollectionEquality().hash(fundamentalsOutstandingShares),const DeepCollectionEquality().hash(fundamentalsInsiderTransactionsInsights),const DeepCollectionEquality().hash(fundamentalsEarningsTrend),const DeepCollectionEquality().hash(getAnalyticsHoldersSummary),fundamentalsInsiderTransactionsInsightsSummary,const DeepCollectionEquality().hash(holderSummary),fundamentalsInsiderTransactionsSummary,outstandingSharesSummary);

@override
String toString() {
  return 'CompanyDetailData(fundamentalsSplitsDividends: $fundamentalsSplitsDividends, fundamentalsInsiderTransactions: $fundamentalsInsiderTransactions, fundamentalsHolders: $fundamentalsHolders, fundamentalsEsgScores: $fundamentalsEsgScores, fundamentalsOutstandingSharesQuarter: $fundamentalsOutstandingSharesQuarter, fundamentalsOutstandingShares: $fundamentalsOutstandingShares, fundamentalsInsiderTransactionsInsights: $fundamentalsInsiderTransactionsInsights, fundamentalsEarningsTrend: $fundamentalsEarningsTrend, getAnalyticsHoldersSummary: $getAnalyticsHoldersSummary, fundamentalsInsiderTransactionsInsightsSummary: $fundamentalsInsiderTransactionsInsightsSummary, holderSummary: $holderSummary, fundamentalsInsiderTransactionsSummary: $fundamentalsInsiderTransactionsSummary, outstandingSharesSummary: $outstandingSharesSummary)';
}


}

/// @nodoc
abstract mixin class $CompanyDetailDataCopyWith<$Res>  {
  factory $CompanyDetailDataCopyWith(CompanyDetailData value, $Res Function(CompanyDetailData) _then) = _$CompanyDetailDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'fundamentals_SplitsDividends') List<FundamentalsSplitsDividends>? fundamentalsSplitsDividends,@JsonKey(name: 'fundamentals_InsiderTransactions') List<FundamentalsInsiderTransactions>? fundamentalsInsiderTransactions,@JsonKey(name: 'fundamentals_Holders') List<FundamentalsHolders>? fundamentalsHolders,@JsonKey(name: 'fundamentals_ESGScores') List<FundamentalsEsgScores>? fundamentalsEsgScores,@JsonKey(name: 'fundamentals_outstandingShares_quarter') List<FundamentalsOutstandingSharesQuarter>? fundamentalsOutstandingSharesQuarter,@JsonKey(name: 'fundamentals_outstandingShares') List<FundamentalsOutstandingShares>? fundamentalsOutstandingShares,@JsonKey(name: 'fundamentals_InsiderTransactions_insights') List<FundamentalsInsiderTransactionsInsights>? fundamentalsInsiderTransactionsInsights,@JsonKey(name: 'fundamentals_Earnings_Trend') List<FundamentalsEarningsTrend>? fundamentalsEarningsTrend,@JsonKey(name: 'get_analytics_holders_summary') List<GetAnalyticsHoldersSummary>? getAnalyticsHoldersSummary,@JsonKey(name: 'fundamentals_insider_transactions_insights_summary') String? fundamentalsInsiderTransactionsInsightsSummary,@JsonKey(name: 'holder_summary') List<String>? holderSummary,@JsonKey(name: 'fundamentals_InsiderTransactions_summary') String? fundamentalsInsiderTransactionsSummary,@JsonKey(name: 'outstandingShares_Summary') String? outstandingSharesSummary
});




}
/// @nodoc
class _$CompanyDetailDataCopyWithImpl<$Res>
    implements $CompanyDetailDataCopyWith<$Res> {
  _$CompanyDetailDataCopyWithImpl(this._self, this._then);

  final CompanyDetailData _self;
  final $Res Function(CompanyDetailData) _then;

/// Create a copy of CompanyDetailData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? fundamentalsSplitsDividends = freezed,Object? fundamentalsInsiderTransactions = freezed,Object? fundamentalsHolders = freezed,Object? fundamentalsEsgScores = freezed,Object? fundamentalsOutstandingSharesQuarter = freezed,Object? fundamentalsOutstandingShares = freezed,Object? fundamentalsInsiderTransactionsInsights = freezed,Object? fundamentalsEarningsTrend = freezed,Object? getAnalyticsHoldersSummary = freezed,Object? fundamentalsInsiderTransactionsInsightsSummary = freezed,Object? holderSummary = freezed,Object? fundamentalsInsiderTransactionsSummary = freezed,Object? outstandingSharesSummary = freezed,}) {
  return _then(_self.copyWith(
fundamentalsSplitsDividends: freezed == fundamentalsSplitsDividends ? _self.fundamentalsSplitsDividends : fundamentalsSplitsDividends // ignore: cast_nullable_to_non_nullable
as List<FundamentalsSplitsDividends>?,fundamentalsInsiderTransactions: freezed == fundamentalsInsiderTransactions ? _self.fundamentalsInsiderTransactions : fundamentalsInsiderTransactions // ignore: cast_nullable_to_non_nullable
as List<FundamentalsInsiderTransactions>?,fundamentalsHolders: freezed == fundamentalsHolders ? _self.fundamentalsHolders : fundamentalsHolders // ignore: cast_nullable_to_non_nullable
as List<FundamentalsHolders>?,fundamentalsEsgScores: freezed == fundamentalsEsgScores ? _self.fundamentalsEsgScores : fundamentalsEsgScores // ignore: cast_nullable_to_non_nullable
as List<FundamentalsEsgScores>?,fundamentalsOutstandingSharesQuarter: freezed == fundamentalsOutstandingSharesQuarter ? _self.fundamentalsOutstandingSharesQuarter : fundamentalsOutstandingSharesQuarter // ignore: cast_nullable_to_non_nullable
as List<FundamentalsOutstandingSharesQuarter>?,fundamentalsOutstandingShares: freezed == fundamentalsOutstandingShares ? _self.fundamentalsOutstandingShares : fundamentalsOutstandingShares // ignore: cast_nullable_to_non_nullable
as List<FundamentalsOutstandingShares>?,fundamentalsInsiderTransactionsInsights: freezed == fundamentalsInsiderTransactionsInsights ? _self.fundamentalsInsiderTransactionsInsights : fundamentalsInsiderTransactionsInsights // ignore: cast_nullable_to_non_nullable
as List<FundamentalsInsiderTransactionsInsights>?,fundamentalsEarningsTrend: freezed == fundamentalsEarningsTrend ? _self.fundamentalsEarningsTrend : fundamentalsEarningsTrend // ignore: cast_nullable_to_non_nullable
as List<FundamentalsEarningsTrend>?,getAnalyticsHoldersSummary: freezed == getAnalyticsHoldersSummary ? _self.getAnalyticsHoldersSummary : getAnalyticsHoldersSummary // ignore: cast_nullable_to_non_nullable
as List<GetAnalyticsHoldersSummary>?,fundamentalsInsiderTransactionsInsightsSummary: freezed == fundamentalsInsiderTransactionsInsightsSummary ? _self.fundamentalsInsiderTransactionsInsightsSummary : fundamentalsInsiderTransactionsInsightsSummary // ignore: cast_nullable_to_non_nullable
as String?,holderSummary: freezed == holderSummary ? _self.holderSummary : holderSummary // ignore: cast_nullable_to_non_nullable
as List<String>?,fundamentalsInsiderTransactionsSummary: freezed == fundamentalsInsiderTransactionsSummary ? _self.fundamentalsInsiderTransactionsSummary : fundamentalsInsiderTransactionsSummary // ignore: cast_nullable_to_non_nullable
as String?,outstandingSharesSummary: freezed == outstandingSharesSummary ? _self.outstandingSharesSummary : outstandingSharesSummary // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CompanyDetailData].
extension CompanyDetailDataPatterns on CompanyDetailData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CompanyDetailData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CompanyDetailData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CompanyDetailData value)  $default,){
final _that = this;
switch (_that) {
case _CompanyDetailData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CompanyDetailData value)?  $default,){
final _that = this;
switch (_that) {
case _CompanyDetailData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'fundamentals_SplitsDividends')  List<FundamentalsSplitsDividends>? fundamentalsSplitsDividends, @JsonKey(name: 'fundamentals_InsiderTransactions')  List<FundamentalsInsiderTransactions>? fundamentalsInsiderTransactions, @JsonKey(name: 'fundamentals_Holders')  List<FundamentalsHolders>? fundamentalsHolders, @JsonKey(name: 'fundamentals_ESGScores')  List<FundamentalsEsgScores>? fundamentalsEsgScores, @JsonKey(name: 'fundamentals_outstandingShares_quarter')  List<FundamentalsOutstandingSharesQuarter>? fundamentalsOutstandingSharesQuarter, @JsonKey(name: 'fundamentals_outstandingShares')  List<FundamentalsOutstandingShares>? fundamentalsOutstandingShares, @JsonKey(name: 'fundamentals_InsiderTransactions_insights')  List<FundamentalsInsiderTransactionsInsights>? fundamentalsInsiderTransactionsInsights, @JsonKey(name: 'fundamentals_Earnings_Trend')  List<FundamentalsEarningsTrend>? fundamentalsEarningsTrend, @JsonKey(name: 'get_analytics_holders_summary')  List<GetAnalyticsHoldersSummary>? getAnalyticsHoldersSummary, @JsonKey(name: 'fundamentals_insider_transactions_insights_summary')  String? fundamentalsInsiderTransactionsInsightsSummary, @JsonKey(name: 'holder_summary')  List<String>? holderSummary, @JsonKey(name: 'fundamentals_InsiderTransactions_summary')  String? fundamentalsInsiderTransactionsSummary, @JsonKey(name: 'outstandingShares_Summary')  String? outstandingSharesSummary)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CompanyDetailData() when $default != null:
return $default(_that.fundamentalsSplitsDividends,_that.fundamentalsInsiderTransactions,_that.fundamentalsHolders,_that.fundamentalsEsgScores,_that.fundamentalsOutstandingSharesQuarter,_that.fundamentalsOutstandingShares,_that.fundamentalsInsiderTransactionsInsights,_that.fundamentalsEarningsTrend,_that.getAnalyticsHoldersSummary,_that.fundamentalsInsiderTransactionsInsightsSummary,_that.holderSummary,_that.fundamentalsInsiderTransactionsSummary,_that.outstandingSharesSummary);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'fundamentals_SplitsDividends')  List<FundamentalsSplitsDividends>? fundamentalsSplitsDividends, @JsonKey(name: 'fundamentals_InsiderTransactions')  List<FundamentalsInsiderTransactions>? fundamentalsInsiderTransactions, @JsonKey(name: 'fundamentals_Holders')  List<FundamentalsHolders>? fundamentalsHolders, @JsonKey(name: 'fundamentals_ESGScores')  List<FundamentalsEsgScores>? fundamentalsEsgScores, @JsonKey(name: 'fundamentals_outstandingShares_quarter')  List<FundamentalsOutstandingSharesQuarter>? fundamentalsOutstandingSharesQuarter, @JsonKey(name: 'fundamentals_outstandingShares')  List<FundamentalsOutstandingShares>? fundamentalsOutstandingShares, @JsonKey(name: 'fundamentals_InsiderTransactions_insights')  List<FundamentalsInsiderTransactionsInsights>? fundamentalsInsiderTransactionsInsights, @JsonKey(name: 'fundamentals_Earnings_Trend')  List<FundamentalsEarningsTrend>? fundamentalsEarningsTrend, @JsonKey(name: 'get_analytics_holders_summary')  List<GetAnalyticsHoldersSummary>? getAnalyticsHoldersSummary, @JsonKey(name: 'fundamentals_insider_transactions_insights_summary')  String? fundamentalsInsiderTransactionsInsightsSummary, @JsonKey(name: 'holder_summary')  List<String>? holderSummary, @JsonKey(name: 'fundamentals_InsiderTransactions_summary')  String? fundamentalsInsiderTransactionsSummary, @JsonKey(name: 'outstandingShares_Summary')  String? outstandingSharesSummary)  $default,) {final _that = this;
switch (_that) {
case _CompanyDetailData():
return $default(_that.fundamentalsSplitsDividends,_that.fundamentalsInsiderTransactions,_that.fundamentalsHolders,_that.fundamentalsEsgScores,_that.fundamentalsOutstandingSharesQuarter,_that.fundamentalsOutstandingShares,_that.fundamentalsInsiderTransactionsInsights,_that.fundamentalsEarningsTrend,_that.getAnalyticsHoldersSummary,_that.fundamentalsInsiderTransactionsInsightsSummary,_that.holderSummary,_that.fundamentalsInsiderTransactionsSummary,_that.outstandingSharesSummary);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'fundamentals_SplitsDividends')  List<FundamentalsSplitsDividends>? fundamentalsSplitsDividends, @JsonKey(name: 'fundamentals_InsiderTransactions')  List<FundamentalsInsiderTransactions>? fundamentalsInsiderTransactions, @JsonKey(name: 'fundamentals_Holders')  List<FundamentalsHolders>? fundamentalsHolders, @JsonKey(name: 'fundamentals_ESGScores')  List<FundamentalsEsgScores>? fundamentalsEsgScores, @JsonKey(name: 'fundamentals_outstandingShares_quarter')  List<FundamentalsOutstandingSharesQuarter>? fundamentalsOutstandingSharesQuarter, @JsonKey(name: 'fundamentals_outstandingShares')  List<FundamentalsOutstandingShares>? fundamentalsOutstandingShares, @JsonKey(name: 'fundamentals_InsiderTransactions_insights')  List<FundamentalsInsiderTransactionsInsights>? fundamentalsInsiderTransactionsInsights, @JsonKey(name: 'fundamentals_Earnings_Trend')  List<FundamentalsEarningsTrend>? fundamentalsEarningsTrend, @JsonKey(name: 'get_analytics_holders_summary')  List<GetAnalyticsHoldersSummary>? getAnalyticsHoldersSummary, @JsonKey(name: 'fundamentals_insider_transactions_insights_summary')  String? fundamentalsInsiderTransactionsInsightsSummary, @JsonKey(name: 'holder_summary')  List<String>? holderSummary, @JsonKey(name: 'fundamentals_InsiderTransactions_summary')  String? fundamentalsInsiderTransactionsSummary, @JsonKey(name: 'outstandingShares_Summary')  String? outstandingSharesSummary)?  $default,) {final _that = this;
switch (_that) {
case _CompanyDetailData() when $default != null:
return $default(_that.fundamentalsSplitsDividends,_that.fundamentalsInsiderTransactions,_that.fundamentalsHolders,_that.fundamentalsEsgScores,_that.fundamentalsOutstandingSharesQuarter,_that.fundamentalsOutstandingShares,_that.fundamentalsInsiderTransactionsInsights,_that.fundamentalsEarningsTrend,_that.getAnalyticsHoldersSummary,_that.fundamentalsInsiderTransactionsInsightsSummary,_that.holderSummary,_that.fundamentalsInsiderTransactionsSummary,_that.outstandingSharesSummary);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CompanyDetailData implements CompanyDetailData {
  const _CompanyDetailData({@JsonKey(name: 'fundamentals_SplitsDividends') final  List<FundamentalsSplitsDividends>? fundamentalsSplitsDividends, @JsonKey(name: 'fundamentals_InsiderTransactions') final  List<FundamentalsInsiderTransactions>? fundamentalsInsiderTransactions, @JsonKey(name: 'fundamentals_Holders') final  List<FundamentalsHolders>? fundamentalsHolders, @JsonKey(name: 'fundamentals_ESGScores') final  List<FundamentalsEsgScores>? fundamentalsEsgScores, @JsonKey(name: 'fundamentals_outstandingShares_quarter') final  List<FundamentalsOutstandingSharesQuarter>? fundamentalsOutstandingSharesQuarter, @JsonKey(name: 'fundamentals_outstandingShares') final  List<FundamentalsOutstandingShares>? fundamentalsOutstandingShares, @JsonKey(name: 'fundamentals_InsiderTransactions_insights') final  List<FundamentalsInsiderTransactionsInsights>? fundamentalsInsiderTransactionsInsights, @JsonKey(name: 'fundamentals_Earnings_Trend') final  List<FundamentalsEarningsTrend>? fundamentalsEarningsTrend, @JsonKey(name: 'get_analytics_holders_summary') final  List<GetAnalyticsHoldersSummary>? getAnalyticsHoldersSummary, @JsonKey(name: 'fundamentals_insider_transactions_insights_summary') this.fundamentalsInsiderTransactionsInsightsSummary, @JsonKey(name: 'holder_summary') final  List<String>? holderSummary, @JsonKey(name: 'fundamentals_InsiderTransactions_summary') this.fundamentalsInsiderTransactionsSummary, @JsonKey(name: 'outstandingShares_Summary') this.outstandingSharesSummary}): _fundamentalsSplitsDividends = fundamentalsSplitsDividends,_fundamentalsInsiderTransactions = fundamentalsInsiderTransactions,_fundamentalsHolders = fundamentalsHolders,_fundamentalsEsgScores = fundamentalsEsgScores,_fundamentalsOutstandingSharesQuarter = fundamentalsOutstandingSharesQuarter,_fundamentalsOutstandingShares = fundamentalsOutstandingShares,_fundamentalsInsiderTransactionsInsights = fundamentalsInsiderTransactionsInsights,_fundamentalsEarningsTrend = fundamentalsEarningsTrend,_getAnalyticsHoldersSummary = getAnalyticsHoldersSummary,_holderSummary = holderSummary;
  factory _CompanyDetailData.fromJson(Map<String, dynamic> json) => _$CompanyDetailDataFromJson(json);

 final  List<FundamentalsSplitsDividends>? _fundamentalsSplitsDividends;
@override@JsonKey(name: 'fundamentals_SplitsDividends') List<FundamentalsSplitsDividends>? get fundamentalsSplitsDividends {
  final value = _fundamentalsSplitsDividends;
  if (value == null) return null;
  if (_fundamentalsSplitsDividends is EqualUnmodifiableListView) return _fundamentalsSplitsDividends;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<FundamentalsInsiderTransactions>? _fundamentalsInsiderTransactions;
@override@JsonKey(name: 'fundamentals_InsiderTransactions') List<FundamentalsInsiderTransactions>? get fundamentalsInsiderTransactions {
  final value = _fundamentalsInsiderTransactions;
  if (value == null) return null;
  if (_fundamentalsInsiderTransactions is EqualUnmodifiableListView) return _fundamentalsInsiderTransactions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<FundamentalsHolders>? _fundamentalsHolders;
@override@JsonKey(name: 'fundamentals_Holders') List<FundamentalsHolders>? get fundamentalsHolders {
  final value = _fundamentalsHolders;
  if (value == null) return null;
  if (_fundamentalsHolders is EqualUnmodifiableListView) return _fundamentalsHolders;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<FundamentalsEsgScores>? _fundamentalsEsgScores;
@override@JsonKey(name: 'fundamentals_ESGScores') List<FundamentalsEsgScores>? get fundamentalsEsgScores {
  final value = _fundamentalsEsgScores;
  if (value == null) return null;
  if (_fundamentalsEsgScores is EqualUnmodifiableListView) return _fundamentalsEsgScores;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<FundamentalsOutstandingSharesQuarter>? _fundamentalsOutstandingSharesQuarter;
@override@JsonKey(name: 'fundamentals_outstandingShares_quarter') List<FundamentalsOutstandingSharesQuarter>? get fundamentalsOutstandingSharesQuarter {
  final value = _fundamentalsOutstandingSharesQuarter;
  if (value == null) return null;
  if (_fundamentalsOutstandingSharesQuarter is EqualUnmodifiableListView) return _fundamentalsOutstandingSharesQuarter;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<FundamentalsOutstandingShares>? _fundamentalsOutstandingShares;
@override@JsonKey(name: 'fundamentals_outstandingShares') List<FundamentalsOutstandingShares>? get fundamentalsOutstandingShares {
  final value = _fundamentalsOutstandingShares;
  if (value == null) return null;
  if (_fundamentalsOutstandingShares is EqualUnmodifiableListView) return _fundamentalsOutstandingShares;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<FundamentalsInsiderTransactionsInsights>? _fundamentalsInsiderTransactionsInsights;
@override@JsonKey(name: 'fundamentals_InsiderTransactions_insights') List<FundamentalsInsiderTransactionsInsights>? get fundamentalsInsiderTransactionsInsights {
  final value = _fundamentalsInsiderTransactionsInsights;
  if (value == null) return null;
  if (_fundamentalsInsiderTransactionsInsights is EqualUnmodifiableListView) return _fundamentalsInsiderTransactionsInsights;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<FundamentalsEarningsTrend>? _fundamentalsEarningsTrend;
@override@JsonKey(name: 'fundamentals_Earnings_Trend') List<FundamentalsEarningsTrend>? get fundamentalsEarningsTrend {
  final value = _fundamentalsEarningsTrend;
  if (value == null) return null;
  if (_fundamentalsEarningsTrend is EqualUnmodifiableListView) return _fundamentalsEarningsTrend;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<GetAnalyticsHoldersSummary>? _getAnalyticsHoldersSummary;
@override@JsonKey(name: 'get_analytics_holders_summary') List<GetAnalyticsHoldersSummary>? get getAnalyticsHoldersSummary {
  final value = _getAnalyticsHoldersSummary;
  if (value == null) return null;
  if (_getAnalyticsHoldersSummary is EqualUnmodifiableListView) return _getAnalyticsHoldersSummary;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'fundamentals_insider_transactions_insights_summary') final  String? fundamentalsInsiderTransactionsInsightsSummary;
 final  List<String>? _holderSummary;
@override@JsonKey(name: 'holder_summary') List<String>? get holderSummary {
  final value = _holderSummary;
  if (value == null) return null;
  if (_holderSummary is EqualUnmodifiableListView) return _holderSummary;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'fundamentals_InsiderTransactions_summary') final  String? fundamentalsInsiderTransactionsSummary;
@override@JsonKey(name: 'outstandingShares_Summary') final  String? outstandingSharesSummary;

/// Create a copy of CompanyDetailData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CompanyDetailDataCopyWith<_CompanyDetailData> get copyWith => __$CompanyDetailDataCopyWithImpl<_CompanyDetailData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CompanyDetailDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CompanyDetailData&&const DeepCollectionEquality().equals(other._fundamentalsSplitsDividends, _fundamentalsSplitsDividends)&&const DeepCollectionEquality().equals(other._fundamentalsInsiderTransactions, _fundamentalsInsiderTransactions)&&const DeepCollectionEquality().equals(other._fundamentalsHolders, _fundamentalsHolders)&&const DeepCollectionEquality().equals(other._fundamentalsEsgScores, _fundamentalsEsgScores)&&const DeepCollectionEquality().equals(other._fundamentalsOutstandingSharesQuarter, _fundamentalsOutstandingSharesQuarter)&&const DeepCollectionEquality().equals(other._fundamentalsOutstandingShares, _fundamentalsOutstandingShares)&&const DeepCollectionEquality().equals(other._fundamentalsInsiderTransactionsInsights, _fundamentalsInsiderTransactionsInsights)&&const DeepCollectionEquality().equals(other._fundamentalsEarningsTrend, _fundamentalsEarningsTrend)&&const DeepCollectionEquality().equals(other._getAnalyticsHoldersSummary, _getAnalyticsHoldersSummary)&&(identical(other.fundamentalsInsiderTransactionsInsightsSummary, fundamentalsInsiderTransactionsInsightsSummary) || other.fundamentalsInsiderTransactionsInsightsSummary == fundamentalsInsiderTransactionsInsightsSummary)&&const DeepCollectionEquality().equals(other._holderSummary, _holderSummary)&&(identical(other.fundamentalsInsiderTransactionsSummary, fundamentalsInsiderTransactionsSummary) || other.fundamentalsInsiderTransactionsSummary == fundamentalsInsiderTransactionsSummary)&&(identical(other.outstandingSharesSummary, outstandingSharesSummary) || other.outstandingSharesSummary == outstandingSharesSummary));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_fundamentalsSplitsDividends),const DeepCollectionEquality().hash(_fundamentalsInsiderTransactions),const DeepCollectionEquality().hash(_fundamentalsHolders),const DeepCollectionEquality().hash(_fundamentalsEsgScores),const DeepCollectionEquality().hash(_fundamentalsOutstandingSharesQuarter),const DeepCollectionEquality().hash(_fundamentalsOutstandingShares),const DeepCollectionEquality().hash(_fundamentalsInsiderTransactionsInsights),const DeepCollectionEquality().hash(_fundamentalsEarningsTrend),const DeepCollectionEquality().hash(_getAnalyticsHoldersSummary),fundamentalsInsiderTransactionsInsightsSummary,const DeepCollectionEquality().hash(_holderSummary),fundamentalsInsiderTransactionsSummary,outstandingSharesSummary);

@override
String toString() {
  return 'CompanyDetailData(fundamentalsSplitsDividends: $fundamentalsSplitsDividends, fundamentalsInsiderTransactions: $fundamentalsInsiderTransactions, fundamentalsHolders: $fundamentalsHolders, fundamentalsEsgScores: $fundamentalsEsgScores, fundamentalsOutstandingSharesQuarter: $fundamentalsOutstandingSharesQuarter, fundamentalsOutstandingShares: $fundamentalsOutstandingShares, fundamentalsInsiderTransactionsInsights: $fundamentalsInsiderTransactionsInsights, fundamentalsEarningsTrend: $fundamentalsEarningsTrend, getAnalyticsHoldersSummary: $getAnalyticsHoldersSummary, fundamentalsInsiderTransactionsInsightsSummary: $fundamentalsInsiderTransactionsInsightsSummary, holderSummary: $holderSummary, fundamentalsInsiderTransactionsSummary: $fundamentalsInsiderTransactionsSummary, outstandingSharesSummary: $outstandingSharesSummary)';
}


}

/// @nodoc
abstract mixin class _$CompanyDetailDataCopyWith<$Res> implements $CompanyDetailDataCopyWith<$Res> {
  factory _$CompanyDetailDataCopyWith(_CompanyDetailData value, $Res Function(_CompanyDetailData) _then) = __$CompanyDetailDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'fundamentals_SplitsDividends') List<FundamentalsSplitsDividends>? fundamentalsSplitsDividends,@JsonKey(name: 'fundamentals_InsiderTransactions') List<FundamentalsInsiderTransactions>? fundamentalsInsiderTransactions,@JsonKey(name: 'fundamentals_Holders') List<FundamentalsHolders>? fundamentalsHolders,@JsonKey(name: 'fundamentals_ESGScores') List<FundamentalsEsgScores>? fundamentalsEsgScores,@JsonKey(name: 'fundamentals_outstandingShares_quarter') List<FundamentalsOutstandingSharesQuarter>? fundamentalsOutstandingSharesQuarter,@JsonKey(name: 'fundamentals_outstandingShares') List<FundamentalsOutstandingShares>? fundamentalsOutstandingShares,@JsonKey(name: 'fundamentals_InsiderTransactions_insights') List<FundamentalsInsiderTransactionsInsights>? fundamentalsInsiderTransactionsInsights,@JsonKey(name: 'fundamentals_Earnings_Trend') List<FundamentalsEarningsTrend>? fundamentalsEarningsTrend,@JsonKey(name: 'get_analytics_holders_summary') List<GetAnalyticsHoldersSummary>? getAnalyticsHoldersSummary,@JsonKey(name: 'fundamentals_insider_transactions_insights_summary') String? fundamentalsInsiderTransactionsInsightsSummary,@JsonKey(name: 'holder_summary') List<String>? holderSummary,@JsonKey(name: 'fundamentals_InsiderTransactions_summary') String? fundamentalsInsiderTransactionsSummary,@JsonKey(name: 'outstandingShares_Summary') String? outstandingSharesSummary
});




}
/// @nodoc
class __$CompanyDetailDataCopyWithImpl<$Res>
    implements _$CompanyDetailDataCopyWith<$Res> {
  __$CompanyDetailDataCopyWithImpl(this._self, this._then);

  final _CompanyDetailData _self;
  final $Res Function(_CompanyDetailData) _then;

/// Create a copy of CompanyDetailData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? fundamentalsSplitsDividends = freezed,Object? fundamentalsInsiderTransactions = freezed,Object? fundamentalsHolders = freezed,Object? fundamentalsEsgScores = freezed,Object? fundamentalsOutstandingSharesQuarter = freezed,Object? fundamentalsOutstandingShares = freezed,Object? fundamentalsInsiderTransactionsInsights = freezed,Object? fundamentalsEarningsTrend = freezed,Object? getAnalyticsHoldersSummary = freezed,Object? fundamentalsInsiderTransactionsInsightsSummary = freezed,Object? holderSummary = freezed,Object? fundamentalsInsiderTransactionsSummary = freezed,Object? outstandingSharesSummary = freezed,}) {
  return _then(_CompanyDetailData(
fundamentalsSplitsDividends: freezed == fundamentalsSplitsDividends ? _self._fundamentalsSplitsDividends : fundamentalsSplitsDividends // ignore: cast_nullable_to_non_nullable
as List<FundamentalsSplitsDividends>?,fundamentalsInsiderTransactions: freezed == fundamentalsInsiderTransactions ? _self._fundamentalsInsiderTransactions : fundamentalsInsiderTransactions // ignore: cast_nullable_to_non_nullable
as List<FundamentalsInsiderTransactions>?,fundamentalsHolders: freezed == fundamentalsHolders ? _self._fundamentalsHolders : fundamentalsHolders // ignore: cast_nullable_to_non_nullable
as List<FundamentalsHolders>?,fundamentalsEsgScores: freezed == fundamentalsEsgScores ? _self._fundamentalsEsgScores : fundamentalsEsgScores // ignore: cast_nullable_to_non_nullable
as List<FundamentalsEsgScores>?,fundamentalsOutstandingSharesQuarter: freezed == fundamentalsOutstandingSharesQuarter ? _self._fundamentalsOutstandingSharesQuarter : fundamentalsOutstandingSharesQuarter // ignore: cast_nullable_to_non_nullable
as List<FundamentalsOutstandingSharesQuarter>?,fundamentalsOutstandingShares: freezed == fundamentalsOutstandingShares ? _self._fundamentalsOutstandingShares : fundamentalsOutstandingShares // ignore: cast_nullable_to_non_nullable
as List<FundamentalsOutstandingShares>?,fundamentalsInsiderTransactionsInsights: freezed == fundamentalsInsiderTransactionsInsights ? _self._fundamentalsInsiderTransactionsInsights : fundamentalsInsiderTransactionsInsights // ignore: cast_nullable_to_non_nullable
as List<FundamentalsInsiderTransactionsInsights>?,fundamentalsEarningsTrend: freezed == fundamentalsEarningsTrend ? _self._fundamentalsEarningsTrend : fundamentalsEarningsTrend // ignore: cast_nullable_to_non_nullable
as List<FundamentalsEarningsTrend>?,getAnalyticsHoldersSummary: freezed == getAnalyticsHoldersSummary ? _self._getAnalyticsHoldersSummary : getAnalyticsHoldersSummary // ignore: cast_nullable_to_non_nullable
as List<GetAnalyticsHoldersSummary>?,fundamentalsInsiderTransactionsInsightsSummary: freezed == fundamentalsInsiderTransactionsInsightsSummary ? _self.fundamentalsInsiderTransactionsInsightsSummary : fundamentalsInsiderTransactionsInsightsSummary // ignore: cast_nullable_to_non_nullable
as String?,holderSummary: freezed == holderSummary ? _self._holderSummary : holderSummary // ignore: cast_nullable_to_non_nullable
as List<String>?,fundamentalsInsiderTransactionsSummary: freezed == fundamentalsInsiderTransactionsSummary ? _self.fundamentalsInsiderTransactionsSummary : fundamentalsInsiderTransactionsSummary // ignore: cast_nullable_to_non_nullable
as String?,outstandingSharesSummary: freezed == outstandingSharesSummary ? _self.outstandingSharesSummary : outstandingSharesSummary // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$FundamentalsSplitsDividends {

@JsonKey(name: 'Dividend Date') String? get dividendDate;@JsonKey(name: 'Ex Dividend Date') String? get exDividendDate;@JsonKey(name: 'Last Split Date') String? get lastSplitDate;@JsonKey(name: 'Forward Annual Dividend Rate') double? get forwardAnnualDividendRate;@JsonKey(name: 'Forward Annual Dividend Yield') double? get forwardAnnualDividendYield;@JsonKey(name: 'Payout Ratio') double? get payoutRatio;@JsonKey(name: 'Last Split Factor') String? get lastSplitFactor;@JsonKey(name: 'stock_type') int? get stockType;
/// Create a copy of FundamentalsSplitsDividends
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FundamentalsSplitsDividendsCopyWith<FundamentalsSplitsDividends> get copyWith => _$FundamentalsSplitsDividendsCopyWithImpl<FundamentalsSplitsDividends>(this as FundamentalsSplitsDividends, _$identity);

  /// Serializes this FundamentalsSplitsDividends to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FundamentalsSplitsDividends&&(identical(other.dividendDate, dividendDate) || other.dividendDate == dividendDate)&&(identical(other.exDividendDate, exDividendDate) || other.exDividendDate == exDividendDate)&&(identical(other.lastSplitDate, lastSplitDate) || other.lastSplitDate == lastSplitDate)&&(identical(other.forwardAnnualDividendRate, forwardAnnualDividendRate) || other.forwardAnnualDividendRate == forwardAnnualDividendRate)&&(identical(other.forwardAnnualDividendYield, forwardAnnualDividendYield) || other.forwardAnnualDividendYield == forwardAnnualDividendYield)&&(identical(other.payoutRatio, payoutRatio) || other.payoutRatio == payoutRatio)&&(identical(other.lastSplitFactor, lastSplitFactor) || other.lastSplitFactor == lastSplitFactor)&&(identical(other.stockType, stockType) || other.stockType == stockType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,dividendDate,exDividendDate,lastSplitDate,forwardAnnualDividendRate,forwardAnnualDividendYield,payoutRatio,lastSplitFactor,stockType);

@override
String toString() {
  return 'FundamentalsSplitsDividends(dividendDate: $dividendDate, exDividendDate: $exDividendDate, lastSplitDate: $lastSplitDate, forwardAnnualDividendRate: $forwardAnnualDividendRate, forwardAnnualDividendYield: $forwardAnnualDividendYield, payoutRatio: $payoutRatio, lastSplitFactor: $lastSplitFactor, stockType: $stockType)';
}


}

/// @nodoc
abstract mixin class $FundamentalsSplitsDividendsCopyWith<$Res>  {
  factory $FundamentalsSplitsDividendsCopyWith(FundamentalsSplitsDividends value, $Res Function(FundamentalsSplitsDividends) _then) = _$FundamentalsSplitsDividendsCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'Dividend Date') String? dividendDate,@JsonKey(name: 'Ex Dividend Date') String? exDividendDate,@JsonKey(name: 'Last Split Date') String? lastSplitDate,@JsonKey(name: 'Forward Annual Dividend Rate') double? forwardAnnualDividendRate,@JsonKey(name: 'Forward Annual Dividend Yield') double? forwardAnnualDividendYield,@JsonKey(name: 'Payout Ratio') double? payoutRatio,@JsonKey(name: 'Last Split Factor') String? lastSplitFactor,@JsonKey(name: 'stock_type') int? stockType
});




}
/// @nodoc
class _$FundamentalsSplitsDividendsCopyWithImpl<$Res>
    implements $FundamentalsSplitsDividendsCopyWith<$Res> {
  _$FundamentalsSplitsDividendsCopyWithImpl(this._self, this._then);

  final FundamentalsSplitsDividends _self;
  final $Res Function(FundamentalsSplitsDividends) _then;

/// Create a copy of FundamentalsSplitsDividends
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? dividendDate = freezed,Object? exDividendDate = freezed,Object? lastSplitDate = freezed,Object? forwardAnnualDividendRate = freezed,Object? forwardAnnualDividendYield = freezed,Object? payoutRatio = freezed,Object? lastSplitFactor = freezed,Object? stockType = freezed,}) {
  return _then(_self.copyWith(
dividendDate: freezed == dividendDate ? _self.dividendDate : dividendDate // ignore: cast_nullable_to_non_nullable
as String?,exDividendDate: freezed == exDividendDate ? _self.exDividendDate : exDividendDate // ignore: cast_nullable_to_non_nullable
as String?,lastSplitDate: freezed == lastSplitDate ? _self.lastSplitDate : lastSplitDate // ignore: cast_nullable_to_non_nullable
as String?,forwardAnnualDividendRate: freezed == forwardAnnualDividendRate ? _self.forwardAnnualDividendRate : forwardAnnualDividendRate // ignore: cast_nullable_to_non_nullable
as double?,forwardAnnualDividendYield: freezed == forwardAnnualDividendYield ? _self.forwardAnnualDividendYield : forwardAnnualDividendYield // ignore: cast_nullable_to_non_nullable
as double?,payoutRatio: freezed == payoutRatio ? _self.payoutRatio : payoutRatio // ignore: cast_nullable_to_non_nullable
as double?,lastSplitFactor: freezed == lastSplitFactor ? _self.lastSplitFactor : lastSplitFactor // ignore: cast_nullable_to_non_nullable
as String?,stockType: freezed == stockType ? _self.stockType : stockType // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [FundamentalsSplitsDividends].
extension FundamentalsSplitsDividendsPatterns on FundamentalsSplitsDividends {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FundamentalsSplitsDividends value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FundamentalsSplitsDividends() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FundamentalsSplitsDividends value)  $default,){
final _that = this;
switch (_that) {
case _FundamentalsSplitsDividends():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FundamentalsSplitsDividends value)?  $default,){
final _that = this;
switch (_that) {
case _FundamentalsSplitsDividends() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'Dividend Date')  String? dividendDate, @JsonKey(name: 'Ex Dividend Date')  String? exDividendDate, @JsonKey(name: 'Last Split Date')  String? lastSplitDate, @JsonKey(name: 'Forward Annual Dividend Rate')  double? forwardAnnualDividendRate, @JsonKey(name: 'Forward Annual Dividend Yield')  double? forwardAnnualDividendYield, @JsonKey(name: 'Payout Ratio')  double? payoutRatio, @JsonKey(name: 'Last Split Factor')  String? lastSplitFactor, @JsonKey(name: 'stock_type')  int? stockType)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FundamentalsSplitsDividends() when $default != null:
return $default(_that.dividendDate,_that.exDividendDate,_that.lastSplitDate,_that.forwardAnnualDividendRate,_that.forwardAnnualDividendYield,_that.payoutRatio,_that.lastSplitFactor,_that.stockType);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'Dividend Date')  String? dividendDate, @JsonKey(name: 'Ex Dividend Date')  String? exDividendDate, @JsonKey(name: 'Last Split Date')  String? lastSplitDate, @JsonKey(name: 'Forward Annual Dividend Rate')  double? forwardAnnualDividendRate, @JsonKey(name: 'Forward Annual Dividend Yield')  double? forwardAnnualDividendYield, @JsonKey(name: 'Payout Ratio')  double? payoutRatio, @JsonKey(name: 'Last Split Factor')  String? lastSplitFactor, @JsonKey(name: 'stock_type')  int? stockType)  $default,) {final _that = this;
switch (_that) {
case _FundamentalsSplitsDividends():
return $default(_that.dividendDate,_that.exDividendDate,_that.lastSplitDate,_that.forwardAnnualDividendRate,_that.forwardAnnualDividendYield,_that.payoutRatio,_that.lastSplitFactor,_that.stockType);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'Dividend Date')  String? dividendDate, @JsonKey(name: 'Ex Dividend Date')  String? exDividendDate, @JsonKey(name: 'Last Split Date')  String? lastSplitDate, @JsonKey(name: 'Forward Annual Dividend Rate')  double? forwardAnnualDividendRate, @JsonKey(name: 'Forward Annual Dividend Yield')  double? forwardAnnualDividendYield, @JsonKey(name: 'Payout Ratio')  double? payoutRatio, @JsonKey(name: 'Last Split Factor')  String? lastSplitFactor, @JsonKey(name: 'stock_type')  int? stockType)?  $default,) {final _that = this;
switch (_that) {
case _FundamentalsSplitsDividends() when $default != null:
return $default(_that.dividendDate,_that.exDividendDate,_that.lastSplitDate,_that.forwardAnnualDividendRate,_that.forwardAnnualDividendYield,_that.payoutRatio,_that.lastSplitFactor,_that.stockType);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FundamentalsSplitsDividends implements FundamentalsSplitsDividends {
  const _FundamentalsSplitsDividends({@JsonKey(name: 'Dividend Date') this.dividendDate, @JsonKey(name: 'Ex Dividend Date') this.exDividendDate, @JsonKey(name: 'Last Split Date') this.lastSplitDate, @JsonKey(name: 'Forward Annual Dividend Rate') this.forwardAnnualDividendRate, @JsonKey(name: 'Forward Annual Dividend Yield') this.forwardAnnualDividendYield, @JsonKey(name: 'Payout Ratio') this.payoutRatio, @JsonKey(name: 'Last Split Factor') this.lastSplitFactor, @JsonKey(name: 'stock_type') this.stockType});
  factory _FundamentalsSplitsDividends.fromJson(Map<String, dynamic> json) => _$FundamentalsSplitsDividendsFromJson(json);

@override@JsonKey(name: 'Dividend Date') final  String? dividendDate;
@override@JsonKey(name: 'Ex Dividend Date') final  String? exDividendDate;
@override@JsonKey(name: 'Last Split Date') final  String? lastSplitDate;
@override@JsonKey(name: 'Forward Annual Dividend Rate') final  double? forwardAnnualDividendRate;
@override@JsonKey(name: 'Forward Annual Dividend Yield') final  double? forwardAnnualDividendYield;
@override@JsonKey(name: 'Payout Ratio') final  double? payoutRatio;
@override@JsonKey(name: 'Last Split Factor') final  String? lastSplitFactor;
@override@JsonKey(name: 'stock_type') final  int? stockType;

/// Create a copy of FundamentalsSplitsDividends
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FundamentalsSplitsDividendsCopyWith<_FundamentalsSplitsDividends> get copyWith => __$FundamentalsSplitsDividendsCopyWithImpl<_FundamentalsSplitsDividends>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FundamentalsSplitsDividendsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FundamentalsSplitsDividends&&(identical(other.dividendDate, dividendDate) || other.dividendDate == dividendDate)&&(identical(other.exDividendDate, exDividendDate) || other.exDividendDate == exDividendDate)&&(identical(other.lastSplitDate, lastSplitDate) || other.lastSplitDate == lastSplitDate)&&(identical(other.forwardAnnualDividendRate, forwardAnnualDividendRate) || other.forwardAnnualDividendRate == forwardAnnualDividendRate)&&(identical(other.forwardAnnualDividendYield, forwardAnnualDividendYield) || other.forwardAnnualDividendYield == forwardAnnualDividendYield)&&(identical(other.payoutRatio, payoutRatio) || other.payoutRatio == payoutRatio)&&(identical(other.lastSplitFactor, lastSplitFactor) || other.lastSplitFactor == lastSplitFactor)&&(identical(other.stockType, stockType) || other.stockType == stockType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,dividendDate,exDividendDate,lastSplitDate,forwardAnnualDividendRate,forwardAnnualDividendYield,payoutRatio,lastSplitFactor,stockType);

@override
String toString() {
  return 'FundamentalsSplitsDividends(dividendDate: $dividendDate, exDividendDate: $exDividendDate, lastSplitDate: $lastSplitDate, forwardAnnualDividendRate: $forwardAnnualDividendRate, forwardAnnualDividendYield: $forwardAnnualDividendYield, payoutRatio: $payoutRatio, lastSplitFactor: $lastSplitFactor, stockType: $stockType)';
}


}

/// @nodoc
abstract mixin class _$FundamentalsSplitsDividendsCopyWith<$Res> implements $FundamentalsSplitsDividendsCopyWith<$Res> {
  factory _$FundamentalsSplitsDividendsCopyWith(_FundamentalsSplitsDividends value, $Res Function(_FundamentalsSplitsDividends) _then) = __$FundamentalsSplitsDividendsCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'Dividend Date') String? dividendDate,@JsonKey(name: 'Ex Dividend Date') String? exDividendDate,@JsonKey(name: 'Last Split Date') String? lastSplitDate,@JsonKey(name: 'Forward Annual Dividend Rate') double? forwardAnnualDividendRate,@JsonKey(name: 'Forward Annual Dividend Yield') double? forwardAnnualDividendYield,@JsonKey(name: 'Payout Ratio') double? payoutRatio,@JsonKey(name: 'Last Split Factor') String? lastSplitFactor,@JsonKey(name: 'stock_type') int? stockType
});




}
/// @nodoc
class __$FundamentalsSplitsDividendsCopyWithImpl<$Res>
    implements _$FundamentalsSplitsDividendsCopyWith<$Res> {
  __$FundamentalsSplitsDividendsCopyWithImpl(this._self, this._then);

  final _FundamentalsSplitsDividends _self;
  final $Res Function(_FundamentalsSplitsDividends) _then;

/// Create a copy of FundamentalsSplitsDividends
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? dividendDate = freezed,Object? exDividendDate = freezed,Object? lastSplitDate = freezed,Object? forwardAnnualDividendRate = freezed,Object? forwardAnnualDividendYield = freezed,Object? payoutRatio = freezed,Object? lastSplitFactor = freezed,Object? stockType = freezed,}) {
  return _then(_FundamentalsSplitsDividends(
dividendDate: freezed == dividendDate ? _self.dividendDate : dividendDate // ignore: cast_nullable_to_non_nullable
as String?,exDividendDate: freezed == exDividendDate ? _self.exDividendDate : exDividendDate // ignore: cast_nullable_to_non_nullable
as String?,lastSplitDate: freezed == lastSplitDate ? _self.lastSplitDate : lastSplitDate // ignore: cast_nullable_to_non_nullable
as String?,forwardAnnualDividendRate: freezed == forwardAnnualDividendRate ? _self.forwardAnnualDividendRate : forwardAnnualDividendRate // ignore: cast_nullable_to_non_nullable
as double?,forwardAnnualDividendYield: freezed == forwardAnnualDividendYield ? _self.forwardAnnualDividendYield : forwardAnnualDividendYield // ignore: cast_nullable_to_non_nullable
as double?,payoutRatio: freezed == payoutRatio ? _self.payoutRatio : payoutRatio // ignore: cast_nullable_to_non_nullable
as double?,lastSplitFactor: freezed == lastSplitFactor ? _self.lastSplitFactor : lastSplitFactor // ignore: cast_nullable_to_non_nullable
as String?,stockType: freezed == stockType ? _self.stockType : stockType // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$FundamentalsInsiderTransactions {

@JsonKey(name: 'Date') String? get date;@JsonKey(name: 'Transaction Date') String? get transactionDate;@JsonKey(name: 'SEC Link') String? get secLink;@JsonKey(name: 'Owner Cik') String? get ownerCik;@JsonKey(name: 'Owner Name') String? get ownerName;@JsonKey(name: 'Transaction Code') String? get transactionCode;@JsonKey(name: 'Transaction Amount') double? get transactionAmount;@JsonKey(name: 'Transaction Price') double? get transactionPrice;@JsonKey(name: 'Transaction Acquired / Disposed') String? get transactionAcquiredDisposed;@JsonKey(name: 'Post Transaction Amount') double? get postTransactionAmount;@JsonKey(name: 'stock_type') int? get stockType;
/// Create a copy of FundamentalsInsiderTransactions
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FundamentalsInsiderTransactionsCopyWith<FundamentalsInsiderTransactions> get copyWith => _$FundamentalsInsiderTransactionsCopyWithImpl<FundamentalsInsiderTransactions>(this as FundamentalsInsiderTransactions, _$identity);

  /// Serializes this FundamentalsInsiderTransactions to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FundamentalsInsiderTransactions&&(identical(other.date, date) || other.date == date)&&(identical(other.transactionDate, transactionDate) || other.transactionDate == transactionDate)&&(identical(other.secLink, secLink) || other.secLink == secLink)&&(identical(other.ownerCik, ownerCik) || other.ownerCik == ownerCik)&&(identical(other.ownerName, ownerName) || other.ownerName == ownerName)&&(identical(other.transactionCode, transactionCode) || other.transactionCode == transactionCode)&&(identical(other.transactionAmount, transactionAmount) || other.transactionAmount == transactionAmount)&&(identical(other.transactionPrice, transactionPrice) || other.transactionPrice == transactionPrice)&&(identical(other.transactionAcquiredDisposed, transactionAcquiredDisposed) || other.transactionAcquiredDisposed == transactionAcquiredDisposed)&&(identical(other.postTransactionAmount, postTransactionAmount) || other.postTransactionAmount == postTransactionAmount)&&(identical(other.stockType, stockType) || other.stockType == stockType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,date,transactionDate,secLink,ownerCik,ownerName,transactionCode,transactionAmount,transactionPrice,transactionAcquiredDisposed,postTransactionAmount,stockType);

@override
String toString() {
  return 'FundamentalsInsiderTransactions(date: $date, transactionDate: $transactionDate, secLink: $secLink, ownerCik: $ownerCik, ownerName: $ownerName, transactionCode: $transactionCode, transactionAmount: $transactionAmount, transactionPrice: $transactionPrice, transactionAcquiredDisposed: $transactionAcquiredDisposed, postTransactionAmount: $postTransactionAmount, stockType: $stockType)';
}


}

/// @nodoc
abstract mixin class $FundamentalsInsiderTransactionsCopyWith<$Res>  {
  factory $FundamentalsInsiderTransactionsCopyWith(FundamentalsInsiderTransactions value, $Res Function(FundamentalsInsiderTransactions) _then) = _$FundamentalsInsiderTransactionsCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'Date') String? date,@JsonKey(name: 'Transaction Date') String? transactionDate,@JsonKey(name: 'SEC Link') String? secLink,@JsonKey(name: 'Owner Cik') String? ownerCik,@JsonKey(name: 'Owner Name') String? ownerName,@JsonKey(name: 'Transaction Code') String? transactionCode,@JsonKey(name: 'Transaction Amount') double? transactionAmount,@JsonKey(name: 'Transaction Price') double? transactionPrice,@JsonKey(name: 'Transaction Acquired / Disposed') String? transactionAcquiredDisposed,@JsonKey(name: 'Post Transaction Amount') double? postTransactionAmount,@JsonKey(name: 'stock_type') int? stockType
});




}
/// @nodoc
class _$FundamentalsInsiderTransactionsCopyWithImpl<$Res>
    implements $FundamentalsInsiderTransactionsCopyWith<$Res> {
  _$FundamentalsInsiderTransactionsCopyWithImpl(this._self, this._then);

  final FundamentalsInsiderTransactions _self;
  final $Res Function(FundamentalsInsiderTransactions) _then;

/// Create a copy of FundamentalsInsiderTransactions
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? date = freezed,Object? transactionDate = freezed,Object? secLink = freezed,Object? ownerCik = freezed,Object? ownerName = freezed,Object? transactionCode = freezed,Object? transactionAmount = freezed,Object? transactionPrice = freezed,Object? transactionAcquiredDisposed = freezed,Object? postTransactionAmount = freezed,Object? stockType = freezed,}) {
  return _then(_self.copyWith(
date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String?,transactionDate: freezed == transactionDate ? _self.transactionDate : transactionDate // ignore: cast_nullable_to_non_nullable
as String?,secLink: freezed == secLink ? _self.secLink : secLink // ignore: cast_nullable_to_non_nullable
as String?,ownerCik: freezed == ownerCik ? _self.ownerCik : ownerCik // ignore: cast_nullable_to_non_nullable
as String?,ownerName: freezed == ownerName ? _self.ownerName : ownerName // ignore: cast_nullable_to_non_nullable
as String?,transactionCode: freezed == transactionCode ? _self.transactionCode : transactionCode // ignore: cast_nullable_to_non_nullable
as String?,transactionAmount: freezed == transactionAmount ? _self.transactionAmount : transactionAmount // ignore: cast_nullable_to_non_nullable
as double?,transactionPrice: freezed == transactionPrice ? _self.transactionPrice : transactionPrice // ignore: cast_nullable_to_non_nullable
as double?,transactionAcquiredDisposed: freezed == transactionAcquiredDisposed ? _self.transactionAcquiredDisposed : transactionAcquiredDisposed // ignore: cast_nullable_to_non_nullable
as String?,postTransactionAmount: freezed == postTransactionAmount ? _self.postTransactionAmount : postTransactionAmount // ignore: cast_nullable_to_non_nullable
as double?,stockType: freezed == stockType ? _self.stockType : stockType // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [FundamentalsInsiderTransactions].
extension FundamentalsInsiderTransactionsPatterns on FundamentalsInsiderTransactions {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FundamentalsInsiderTransactions value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FundamentalsInsiderTransactions() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FundamentalsInsiderTransactions value)  $default,){
final _that = this;
switch (_that) {
case _FundamentalsInsiderTransactions():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FundamentalsInsiderTransactions value)?  $default,){
final _that = this;
switch (_that) {
case _FundamentalsInsiderTransactions() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'Date')  String? date, @JsonKey(name: 'Transaction Date')  String? transactionDate, @JsonKey(name: 'SEC Link')  String? secLink, @JsonKey(name: 'Owner Cik')  String? ownerCik, @JsonKey(name: 'Owner Name')  String? ownerName, @JsonKey(name: 'Transaction Code')  String? transactionCode, @JsonKey(name: 'Transaction Amount')  double? transactionAmount, @JsonKey(name: 'Transaction Price')  double? transactionPrice, @JsonKey(name: 'Transaction Acquired / Disposed')  String? transactionAcquiredDisposed, @JsonKey(name: 'Post Transaction Amount')  double? postTransactionAmount, @JsonKey(name: 'stock_type')  int? stockType)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FundamentalsInsiderTransactions() when $default != null:
return $default(_that.date,_that.transactionDate,_that.secLink,_that.ownerCik,_that.ownerName,_that.transactionCode,_that.transactionAmount,_that.transactionPrice,_that.transactionAcquiredDisposed,_that.postTransactionAmount,_that.stockType);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'Date')  String? date, @JsonKey(name: 'Transaction Date')  String? transactionDate, @JsonKey(name: 'SEC Link')  String? secLink, @JsonKey(name: 'Owner Cik')  String? ownerCik, @JsonKey(name: 'Owner Name')  String? ownerName, @JsonKey(name: 'Transaction Code')  String? transactionCode, @JsonKey(name: 'Transaction Amount')  double? transactionAmount, @JsonKey(name: 'Transaction Price')  double? transactionPrice, @JsonKey(name: 'Transaction Acquired / Disposed')  String? transactionAcquiredDisposed, @JsonKey(name: 'Post Transaction Amount')  double? postTransactionAmount, @JsonKey(name: 'stock_type')  int? stockType)  $default,) {final _that = this;
switch (_that) {
case _FundamentalsInsiderTransactions():
return $default(_that.date,_that.transactionDate,_that.secLink,_that.ownerCik,_that.ownerName,_that.transactionCode,_that.transactionAmount,_that.transactionPrice,_that.transactionAcquiredDisposed,_that.postTransactionAmount,_that.stockType);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'Date')  String? date, @JsonKey(name: 'Transaction Date')  String? transactionDate, @JsonKey(name: 'SEC Link')  String? secLink, @JsonKey(name: 'Owner Cik')  String? ownerCik, @JsonKey(name: 'Owner Name')  String? ownerName, @JsonKey(name: 'Transaction Code')  String? transactionCode, @JsonKey(name: 'Transaction Amount')  double? transactionAmount, @JsonKey(name: 'Transaction Price')  double? transactionPrice, @JsonKey(name: 'Transaction Acquired / Disposed')  String? transactionAcquiredDisposed, @JsonKey(name: 'Post Transaction Amount')  double? postTransactionAmount, @JsonKey(name: 'stock_type')  int? stockType)?  $default,) {final _that = this;
switch (_that) {
case _FundamentalsInsiderTransactions() when $default != null:
return $default(_that.date,_that.transactionDate,_that.secLink,_that.ownerCik,_that.ownerName,_that.transactionCode,_that.transactionAmount,_that.transactionPrice,_that.transactionAcquiredDisposed,_that.postTransactionAmount,_that.stockType);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FundamentalsInsiderTransactions implements FundamentalsInsiderTransactions {
  const _FundamentalsInsiderTransactions({@JsonKey(name: 'Date') this.date, @JsonKey(name: 'Transaction Date') this.transactionDate, @JsonKey(name: 'SEC Link') this.secLink, @JsonKey(name: 'Owner Cik') this.ownerCik, @JsonKey(name: 'Owner Name') this.ownerName, @JsonKey(name: 'Transaction Code') this.transactionCode, @JsonKey(name: 'Transaction Amount') this.transactionAmount, @JsonKey(name: 'Transaction Price') this.transactionPrice, @JsonKey(name: 'Transaction Acquired / Disposed') this.transactionAcquiredDisposed, @JsonKey(name: 'Post Transaction Amount') this.postTransactionAmount, @JsonKey(name: 'stock_type') this.stockType});
  factory _FundamentalsInsiderTransactions.fromJson(Map<String, dynamic> json) => _$FundamentalsInsiderTransactionsFromJson(json);

@override@JsonKey(name: 'Date') final  String? date;
@override@JsonKey(name: 'Transaction Date') final  String? transactionDate;
@override@JsonKey(name: 'SEC Link') final  String? secLink;
@override@JsonKey(name: 'Owner Cik') final  String? ownerCik;
@override@JsonKey(name: 'Owner Name') final  String? ownerName;
@override@JsonKey(name: 'Transaction Code') final  String? transactionCode;
@override@JsonKey(name: 'Transaction Amount') final  double? transactionAmount;
@override@JsonKey(name: 'Transaction Price') final  double? transactionPrice;
@override@JsonKey(name: 'Transaction Acquired / Disposed') final  String? transactionAcquiredDisposed;
@override@JsonKey(name: 'Post Transaction Amount') final  double? postTransactionAmount;
@override@JsonKey(name: 'stock_type') final  int? stockType;

/// Create a copy of FundamentalsInsiderTransactions
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FundamentalsInsiderTransactionsCopyWith<_FundamentalsInsiderTransactions> get copyWith => __$FundamentalsInsiderTransactionsCopyWithImpl<_FundamentalsInsiderTransactions>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FundamentalsInsiderTransactionsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FundamentalsInsiderTransactions&&(identical(other.date, date) || other.date == date)&&(identical(other.transactionDate, transactionDate) || other.transactionDate == transactionDate)&&(identical(other.secLink, secLink) || other.secLink == secLink)&&(identical(other.ownerCik, ownerCik) || other.ownerCik == ownerCik)&&(identical(other.ownerName, ownerName) || other.ownerName == ownerName)&&(identical(other.transactionCode, transactionCode) || other.transactionCode == transactionCode)&&(identical(other.transactionAmount, transactionAmount) || other.transactionAmount == transactionAmount)&&(identical(other.transactionPrice, transactionPrice) || other.transactionPrice == transactionPrice)&&(identical(other.transactionAcquiredDisposed, transactionAcquiredDisposed) || other.transactionAcquiredDisposed == transactionAcquiredDisposed)&&(identical(other.postTransactionAmount, postTransactionAmount) || other.postTransactionAmount == postTransactionAmount)&&(identical(other.stockType, stockType) || other.stockType == stockType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,date,transactionDate,secLink,ownerCik,ownerName,transactionCode,transactionAmount,transactionPrice,transactionAcquiredDisposed,postTransactionAmount,stockType);

@override
String toString() {
  return 'FundamentalsInsiderTransactions(date: $date, transactionDate: $transactionDate, secLink: $secLink, ownerCik: $ownerCik, ownerName: $ownerName, transactionCode: $transactionCode, transactionAmount: $transactionAmount, transactionPrice: $transactionPrice, transactionAcquiredDisposed: $transactionAcquiredDisposed, postTransactionAmount: $postTransactionAmount, stockType: $stockType)';
}


}

/// @nodoc
abstract mixin class _$FundamentalsInsiderTransactionsCopyWith<$Res> implements $FundamentalsInsiderTransactionsCopyWith<$Res> {
  factory _$FundamentalsInsiderTransactionsCopyWith(_FundamentalsInsiderTransactions value, $Res Function(_FundamentalsInsiderTransactions) _then) = __$FundamentalsInsiderTransactionsCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'Date') String? date,@JsonKey(name: 'Transaction Date') String? transactionDate,@JsonKey(name: 'SEC Link') String? secLink,@JsonKey(name: 'Owner Cik') String? ownerCik,@JsonKey(name: 'Owner Name') String? ownerName,@JsonKey(name: 'Transaction Code') String? transactionCode,@JsonKey(name: 'Transaction Amount') double? transactionAmount,@JsonKey(name: 'Transaction Price') double? transactionPrice,@JsonKey(name: 'Transaction Acquired / Disposed') String? transactionAcquiredDisposed,@JsonKey(name: 'Post Transaction Amount') double? postTransactionAmount,@JsonKey(name: 'stock_type') int? stockType
});




}
/// @nodoc
class __$FundamentalsInsiderTransactionsCopyWithImpl<$Res>
    implements _$FundamentalsInsiderTransactionsCopyWith<$Res> {
  __$FundamentalsInsiderTransactionsCopyWithImpl(this._self, this._then);

  final _FundamentalsInsiderTransactions _self;
  final $Res Function(_FundamentalsInsiderTransactions) _then;

/// Create a copy of FundamentalsInsiderTransactions
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? date = freezed,Object? transactionDate = freezed,Object? secLink = freezed,Object? ownerCik = freezed,Object? ownerName = freezed,Object? transactionCode = freezed,Object? transactionAmount = freezed,Object? transactionPrice = freezed,Object? transactionAcquiredDisposed = freezed,Object? postTransactionAmount = freezed,Object? stockType = freezed,}) {
  return _then(_FundamentalsInsiderTransactions(
date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String?,transactionDate: freezed == transactionDate ? _self.transactionDate : transactionDate // ignore: cast_nullable_to_non_nullable
as String?,secLink: freezed == secLink ? _self.secLink : secLink // ignore: cast_nullable_to_non_nullable
as String?,ownerCik: freezed == ownerCik ? _self.ownerCik : ownerCik // ignore: cast_nullable_to_non_nullable
as String?,ownerName: freezed == ownerName ? _self.ownerName : ownerName // ignore: cast_nullable_to_non_nullable
as String?,transactionCode: freezed == transactionCode ? _self.transactionCode : transactionCode // ignore: cast_nullable_to_non_nullable
as String?,transactionAmount: freezed == transactionAmount ? _self.transactionAmount : transactionAmount // ignore: cast_nullable_to_non_nullable
as double?,transactionPrice: freezed == transactionPrice ? _self.transactionPrice : transactionPrice // ignore: cast_nullable_to_non_nullable
as double?,transactionAcquiredDisposed: freezed == transactionAcquiredDisposed ? _self.transactionAcquiredDisposed : transactionAcquiredDisposed // ignore: cast_nullable_to_non_nullable
as String?,postTransactionAmount: freezed == postTransactionAmount ? _self.postTransactionAmount : postTransactionAmount // ignore: cast_nullable_to_non_nullable
as double?,stockType: freezed == stockType ? _self.stockType : stockType // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$FundamentalsHolders {

@JsonKey(name: 'Date') String? get date;@JsonKey(name: 'Current Shares') double? get currentShares;@JsonKey(name: 'Change') double? get change;@JsonKey(name: 'Name') String? get name;@JsonKey(name: 'Total Shares') double? get totalShares;@JsonKey(name: 'Total Assets') double? get totalAssets;@JsonKey(name: 'Change Percentage') double? get changePercentage;@JsonKey(name: 'InstitutionsFunds') String? get institutionsFunds;
/// Create a copy of FundamentalsHolders
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FundamentalsHoldersCopyWith<FundamentalsHolders> get copyWith => _$FundamentalsHoldersCopyWithImpl<FundamentalsHolders>(this as FundamentalsHolders, _$identity);

  /// Serializes this FundamentalsHolders to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FundamentalsHolders&&(identical(other.date, date) || other.date == date)&&(identical(other.currentShares, currentShares) || other.currentShares == currentShares)&&(identical(other.change, change) || other.change == change)&&(identical(other.name, name) || other.name == name)&&(identical(other.totalShares, totalShares) || other.totalShares == totalShares)&&(identical(other.totalAssets, totalAssets) || other.totalAssets == totalAssets)&&(identical(other.changePercentage, changePercentage) || other.changePercentage == changePercentage)&&(identical(other.institutionsFunds, institutionsFunds) || other.institutionsFunds == institutionsFunds));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,date,currentShares,change,name,totalShares,totalAssets,changePercentage,institutionsFunds);

@override
String toString() {
  return 'FundamentalsHolders(date: $date, currentShares: $currentShares, change: $change, name: $name, totalShares: $totalShares, totalAssets: $totalAssets, changePercentage: $changePercentage, institutionsFunds: $institutionsFunds)';
}


}

/// @nodoc
abstract mixin class $FundamentalsHoldersCopyWith<$Res>  {
  factory $FundamentalsHoldersCopyWith(FundamentalsHolders value, $Res Function(FundamentalsHolders) _then) = _$FundamentalsHoldersCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'Date') String? date,@JsonKey(name: 'Current Shares') double? currentShares,@JsonKey(name: 'Change') double? change,@JsonKey(name: 'Name') String? name,@JsonKey(name: 'Total Shares') double? totalShares,@JsonKey(name: 'Total Assets') double? totalAssets,@JsonKey(name: 'Change Percentage') double? changePercentage,@JsonKey(name: 'InstitutionsFunds') String? institutionsFunds
});




}
/// @nodoc
class _$FundamentalsHoldersCopyWithImpl<$Res>
    implements $FundamentalsHoldersCopyWith<$Res> {
  _$FundamentalsHoldersCopyWithImpl(this._self, this._then);

  final FundamentalsHolders _self;
  final $Res Function(FundamentalsHolders) _then;

/// Create a copy of FundamentalsHolders
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? date = freezed,Object? currentShares = freezed,Object? change = freezed,Object? name = freezed,Object? totalShares = freezed,Object? totalAssets = freezed,Object? changePercentage = freezed,Object? institutionsFunds = freezed,}) {
  return _then(_self.copyWith(
date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String?,currentShares: freezed == currentShares ? _self.currentShares : currentShares // ignore: cast_nullable_to_non_nullable
as double?,change: freezed == change ? _self.change : change // ignore: cast_nullable_to_non_nullable
as double?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,totalShares: freezed == totalShares ? _self.totalShares : totalShares // ignore: cast_nullable_to_non_nullable
as double?,totalAssets: freezed == totalAssets ? _self.totalAssets : totalAssets // ignore: cast_nullable_to_non_nullable
as double?,changePercentage: freezed == changePercentage ? _self.changePercentage : changePercentage // ignore: cast_nullable_to_non_nullable
as double?,institutionsFunds: freezed == institutionsFunds ? _self.institutionsFunds : institutionsFunds // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [FundamentalsHolders].
extension FundamentalsHoldersPatterns on FundamentalsHolders {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FundamentalsHolders value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FundamentalsHolders() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FundamentalsHolders value)  $default,){
final _that = this;
switch (_that) {
case _FundamentalsHolders():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FundamentalsHolders value)?  $default,){
final _that = this;
switch (_that) {
case _FundamentalsHolders() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'Date')  String? date, @JsonKey(name: 'Current Shares')  double? currentShares, @JsonKey(name: 'Change')  double? change, @JsonKey(name: 'Name')  String? name, @JsonKey(name: 'Total Shares')  double? totalShares, @JsonKey(name: 'Total Assets')  double? totalAssets, @JsonKey(name: 'Change Percentage')  double? changePercentage, @JsonKey(name: 'InstitutionsFunds')  String? institutionsFunds)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FundamentalsHolders() when $default != null:
return $default(_that.date,_that.currentShares,_that.change,_that.name,_that.totalShares,_that.totalAssets,_that.changePercentage,_that.institutionsFunds);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'Date')  String? date, @JsonKey(name: 'Current Shares')  double? currentShares, @JsonKey(name: 'Change')  double? change, @JsonKey(name: 'Name')  String? name, @JsonKey(name: 'Total Shares')  double? totalShares, @JsonKey(name: 'Total Assets')  double? totalAssets, @JsonKey(name: 'Change Percentage')  double? changePercentage, @JsonKey(name: 'InstitutionsFunds')  String? institutionsFunds)  $default,) {final _that = this;
switch (_that) {
case _FundamentalsHolders():
return $default(_that.date,_that.currentShares,_that.change,_that.name,_that.totalShares,_that.totalAssets,_that.changePercentage,_that.institutionsFunds);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'Date')  String? date, @JsonKey(name: 'Current Shares')  double? currentShares, @JsonKey(name: 'Change')  double? change, @JsonKey(name: 'Name')  String? name, @JsonKey(name: 'Total Shares')  double? totalShares, @JsonKey(name: 'Total Assets')  double? totalAssets, @JsonKey(name: 'Change Percentage')  double? changePercentage, @JsonKey(name: 'InstitutionsFunds')  String? institutionsFunds)?  $default,) {final _that = this;
switch (_that) {
case _FundamentalsHolders() when $default != null:
return $default(_that.date,_that.currentShares,_that.change,_that.name,_that.totalShares,_that.totalAssets,_that.changePercentage,_that.institutionsFunds);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FundamentalsHolders implements FundamentalsHolders {
  const _FundamentalsHolders({@JsonKey(name: 'Date') this.date, @JsonKey(name: 'Current Shares') this.currentShares, @JsonKey(name: 'Change') this.change, @JsonKey(name: 'Name') this.name, @JsonKey(name: 'Total Shares') this.totalShares, @JsonKey(name: 'Total Assets') this.totalAssets, @JsonKey(name: 'Change Percentage') this.changePercentage, @JsonKey(name: 'InstitutionsFunds') this.institutionsFunds});
  factory _FundamentalsHolders.fromJson(Map<String, dynamic> json) => _$FundamentalsHoldersFromJson(json);

@override@JsonKey(name: 'Date') final  String? date;
@override@JsonKey(name: 'Current Shares') final  double? currentShares;
@override@JsonKey(name: 'Change') final  double? change;
@override@JsonKey(name: 'Name') final  String? name;
@override@JsonKey(name: 'Total Shares') final  double? totalShares;
@override@JsonKey(name: 'Total Assets') final  double? totalAssets;
@override@JsonKey(name: 'Change Percentage') final  double? changePercentage;
@override@JsonKey(name: 'InstitutionsFunds') final  String? institutionsFunds;

/// Create a copy of FundamentalsHolders
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FundamentalsHoldersCopyWith<_FundamentalsHolders> get copyWith => __$FundamentalsHoldersCopyWithImpl<_FundamentalsHolders>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FundamentalsHoldersToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FundamentalsHolders&&(identical(other.date, date) || other.date == date)&&(identical(other.currentShares, currentShares) || other.currentShares == currentShares)&&(identical(other.change, change) || other.change == change)&&(identical(other.name, name) || other.name == name)&&(identical(other.totalShares, totalShares) || other.totalShares == totalShares)&&(identical(other.totalAssets, totalAssets) || other.totalAssets == totalAssets)&&(identical(other.changePercentage, changePercentage) || other.changePercentage == changePercentage)&&(identical(other.institutionsFunds, institutionsFunds) || other.institutionsFunds == institutionsFunds));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,date,currentShares,change,name,totalShares,totalAssets,changePercentage,institutionsFunds);

@override
String toString() {
  return 'FundamentalsHolders(date: $date, currentShares: $currentShares, change: $change, name: $name, totalShares: $totalShares, totalAssets: $totalAssets, changePercentage: $changePercentage, institutionsFunds: $institutionsFunds)';
}


}

/// @nodoc
abstract mixin class _$FundamentalsHoldersCopyWith<$Res> implements $FundamentalsHoldersCopyWith<$Res> {
  factory _$FundamentalsHoldersCopyWith(_FundamentalsHolders value, $Res Function(_FundamentalsHolders) _then) = __$FundamentalsHoldersCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'Date') String? date,@JsonKey(name: 'Current Shares') double? currentShares,@JsonKey(name: 'Change') double? change,@JsonKey(name: 'Name') String? name,@JsonKey(name: 'Total Shares') double? totalShares,@JsonKey(name: 'Total Assets') double? totalAssets,@JsonKey(name: 'Change Percentage') double? changePercentage,@JsonKey(name: 'InstitutionsFunds') String? institutionsFunds
});




}
/// @nodoc
class __$FundamentalsHoldersCopyWithImpl<$Res>
    implements _$FundamentalsHoldersCopyWith<$Res> {
  __$FundamentalsHoldersCopyWithImpl(this._self, this._then);

  final _FundamentalsHolders _self;
  final $Res Function(_FundamentalsHolders) _then;

/// Create a copy of FundamentalsHolders
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? date = freezed,Object? currentShares = freezed,Object? change = freezed,Object? name = freezed,Object? totalShares = freezed,Object? totalAssets = freezed,Object? changePercentage = freezed,Object? institutionsFunds = freezed,}) {
  return _then(_FundamentalsHolders(
date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String?,currentShares: freezed == currentShares ? _self.currentShares : currentShares // ignore: cast_nullable_to_non_nullable
as double?,change: freezed == change ? _self.change : change // ignore: cast_nullable_to_non_nullable
as double?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,totalShares: freezed == totalShares ? _self.totalShares : totalShares // ignore: cast_nullable_to_non_nullable
as double?,totalAssets: freezed == totalAssets ? _self.totalAssets : totalAssets // ignore: cast_nullable_to_non_nullable
as double?,changePercentage: freezed == changePercentage ? _self.changePercentage : changePercentage // ignore: cast_nullable_to_non_nullable
as double?,institutionsFunds: freezed == institutionsFunds ? _self.institutionsFunds : institutionsFunds // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$FundamentalsEsgScores {

 String? get Disclaimer; String? get RatingDate; double? get TotalEsg; double? get TotalEsgPercentile; double? get EnvironmentScore; double? get EnvironmentScorePercentile; double? get SocialScore; double? get SocialScorePercentile; double? get GovernanceScore; double? get GovernanceScorePercentile; int? get ControversyLevel;@JsonKey(name: 'stock_type') int? get stockType;
/// Create a copy of FundamentalsEsgScores
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FundamentalsEsgScoresCopyWith<FundamentalsEsgScores> get copyWith => _$FundamentalsEsgScoresCopyWithImpl<FundamentalsEsgScores>(this as FundamentalsEsgScores, _$identity);

  /// Serializes this FundamentalsEsgScores to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FundamentalsEsgScores&&(identical(other.Disclaimer, Disclaimer) || other.Disclaimer == Disclaimer)&&(identical(other.RatingDate, RatingDate) || other.RatingDate == RatingDate)&&(identical(other.TotalEsg, TotalEsg) || other.TotalEsg == TotalEsg)&&(identical(other.TotalEsgPercentile, TotalEsgPercentile) || other.TotalEsgPercentile == TotalEsgPercentile)&&(identical(other.EnvironmentScore, EnvironmentScore) || other.EnvironmentScore == EnvironmentScore)&&(identical(other.EnvironmentScorePercentile, EnvironmentScorePercentile) || other.EnvironmentScorePercentile == EnvironmentScorePercentile)&&(identical(other.SocialScore, SocialScore) || other.SocialScore == SocialScore)&&(identical(other.SocialScorePercentile, SocialScorePercentile) || other.SocialScorePercentile == SocialScorePercentile)&&(identical(other.GovernanceScore, GovernanceScore) || other.GovernanceScore == GovernanceScore)&&(identical(other.GovernanceScorePercentile, GovernanceScorePercentile) || other.GovernanceScorePercentile == GovernanceScorePercentile)&&(identical(other.ControversyLevel, ControversyLevel) || other.ControversyLevel == ControversyLevel)&&(identical(other.stockType, stockType) || other.stockType == stockType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,Disclaimer,RatingDate,TotalEsg,TotalEsgPercentile,EnvironmentScore,EnvironmentScorePercentile,SocialScore,SocialScorePercentile,GovernanceScore,GovernanceScorePercentile,ControversyLevel,stockType);

@override
String toString() {
  return 'FundamentalsEsgScores(Disclaimer: $Disclaimer, RatingDate: $RatingDate, TotalEsg: $TotalEsg, TotalEsgPercentile: $TotalEsgPercentile, EnvironmentScore: $EnvironmentScore, EnvironmentScorePercentile: $EnvironmentScorePercentile, SocialScore: $SocialScore, SocialScorePercentile: $SocialScorePercentile, GovernanceScore: $GovernanceScore, GovernanceScorePercentile: $GovernanceScorePercentile, ControversyLevel: $ControversyLevel, stockType: $stockType)';
}


}

/// @nodoc
abstract mixin class $FundamentalsEsgScoresCopyWith<$Res>  {
  factory $FundamentalsEsgScoresCopyWith(FundamentalsEsgScores value, $Res Function(FundamentalsEsgScores) _then) = _$FundamentalsEsgScoresCopyWithImpl;
@useResult
$Res call({
 String? Disclaimer, String? RatingDate, double? TotalEsg, double? TotalEsgPercentile, double? EnvironmentScore, double? EnvironmentScorePercentile, double? SocialScore, double? SocialScorePercentile, double? GovernanceScore, double? GovernanceScorePercentile, int? ControversyLevel,@JsonKey(name: 'stock_type') int? stockType
});




}
/// @nodoc
class _$FundamentalsEsgScoresCopyWithImpl<$Res>
    implements $FundamentalsEsgScoresCopyWith<$Res> {
  _$FundamentalsEsgScoresCopyWithImpl(this._self, this._then);

  final FundamentalsEsgScores _self;
  final $Res Function(FundamentalsEsgScores) _then;

/// Create a copy of FundamentalsEsgScores
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? Disclaimer = freezed,Object? RatingDate = freezed,Object? TotalEsg = freezed,Object? TotalEsgPercentile = freezed,Object? EnvironmentScore = freezed,Object? EnvironmentScorePercentile = freezed,Object? SocialScore = freezed,Object? SocialScorePercentile = freezed,Object? GovernanceScore = freezed,Object? GovernanceScorePercentile = freezed,Object? ControversyLevel = freezed,Object? stockType = freezed,}) {
  return _then(_self.copyWith(
Disclaimer: freezed == Disclaimer ? _self.Disclaimer : Disclaimer // ignore: cast_nullable_to_non_nullable
as String?,RatingDate: freezed == RatingDate ? _self.RatingDate : RatingDate // ignore: cast_nullable_to_non_nullable
as String?,TotalEsg: freezed == TotalEsg ? _self.TotalEsg : TotalEsg // ignore: cast_nullable_to_non_nullable
as double?,TotalEsgPercentile: freezed == TotalEsgPercentile ? _self.TotalEsgPercentile : TotalEsgPercentile // ignore: cast_nullable_to_non_nullable
as double?,EnvironmentScore: freezed == EnvironmentScore ? _self.EnvironmentScore : EnvironmentScore // ignore: cast_nullable_to_non_nullable
as double?,EnvironmentScorePercentile: freezed == EnvironmentScorePercentile ? _self.EnvironmentScorePercentile : EnvironmentScorePercentile // ignore: cast_nullable_to_non_nullable
as double?,SocialScore: freezed == SocialScore ? _self.SocialScore : SocialScore // ignore: cast_nullable_to_non_nullable
as double?,SocialScorePercentile: freezed == SocialScorePercentile ? _self.SocialScorePercentile : SocialScorePercentile // ignore: cast_nullable_to_non_nullable
as double?,GovernanceScore: freezed == GovernanceScore ? _self.GovernanceScore : GovernanceScore // ignore: cast_nullable_to_non_nullable
as double?,GovernanceScorePercentile: freezed == GovernanceScorePercentile ? _self.GovernanceScorePercentile : GovernanceScorePercentile // ignore: cast_nullable_to_non_nullable
as double?,ControversyLevel: freezed == ControversyLevel ? _self.ControversyLevel : ControversyLevel // ignore: cast_nullable_to_non_nullable
as int?,stockType: freezed == stockType ? _self.stockType : stockType // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [FundamentalsEsgScores].
extension FundamentalsEsgScoresPatterns on FundamentalsEsgScores {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FundamentalsEsgScores value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FundamentalsEsgScores() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FundamentalsEsgScores value)  $default,){
final _that = this;
switch (_that) {
case _FundamentalsEsgScores():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FundamentalsEsgScores value)?  $default,){
final _that = this;
switch (_that) {
case _FundamentalsEsgScores() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? Disclaimer,  String? RatingDate,  double? TotalEsg,  double? TotalEsgPercentile,  double? EnvironmentScore,  double? EnvironmentScorePercentile,  double? SocialScore,  double? SocialScorePercentile,  double? GovernanceScore,  double? GovernanceScorePercentile,  int? ControversyLevel, @JsonKey(name: 'stock_type')  int? stockType)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FundamentalsEsgScores() when $default != null:
return $default(_that.Disclaimer,_that.RatingDate,_that.TotalEsg,_that.TotalEsgPercentile,_that.EnvironmentScore,_that.EnvironmentScorePercentile,_that.SocialScore,_that.SocialScorePercentile,_that.GovernanceScore,_that.GovernanceScorePercentile,_that.ControversyLevel,_that.stockType);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? Disclaimer,  String? RatingDate,  double? TotalEsg,  double? TotalEsgPercentile,  double? EnvironmentScore,  double? EnvironmentScorePercentile,  double? SocialScore,  double? SocialScorePercentile,  double? GovernanceScore,  double? GovernanceScorePercentile,  int? ControversyLevel, @JsonKey(name: 'stock_type')  int? stockType)  $default,) {final _that = this;
switch (_that) {
case _FundamentalsEsgScores():
return $default(_that.Disclaimer,_that.RatingDate,_that.TotalEsg,_that.TotalEsgPercentile,_that.EnvironmentScore,_that.EnvironmentScorePercentile,_that.SocialScore,_that.SocialScorePercentile,_that.GovernanceScore,_that.GovernanceScorePercentile,_that.ControversyLevel,_that.stockType);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? Disclaimer,  String? RatingDate,  double? TotalEsg,  double? TotalEsgPercentile,  double? EnvironmentScore,  double? EnvironmentScorePercentile,  double? SocialScore,  double? SocialScorePercentile,  double? GovernanceScore,  double? GovernanceScorePercentile,  int? ControversyLevel, @JsonKey(name: 'stock_type')  int? stockType)?  $default,) {final _that = this;
switch (_that) {
case _FundamentalsEsgScores() when $default != null:
return $default(_that.Disclaimer,_that.RatingDate,_that.TotalEsg,_that.TotalEsgPercentile,_that.EnvironmentScore,_that.EnvironmentScorePercentile,_that.SocialScore,_that.SocialScorePercentile,_that.GovernanceScore,_that.GovernanceScorePercentile,_that.ControversyLevel,_that.stockType);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FundamentalsEsgScores implements FundamentalsEsgScores {
  const _FundamentalsEsgScores({this.Disclaimer, this.RatingDate, this.TotalEsg, this.TotalEsgPercentile, this.EnvironmentScore, this.EnvironmentScorePercentile, this.SocialScore, this.SocialScorePercentile, this.GovernanceScore, this.GovernanceScorePercentile, this.ControversyLevel, @JsonKey(name: 'stock_type') this.stockType});
  factory _FundamentalsEsgScores.fromJson(Map<String, dynamic> json) => _$FundamentalsEsgScoresFromJson(json);

@override final  String? Disclaimer;
@override final  String? RatingDate;
@override final  double? TotalEsg;
@override final  double? TotalEsgPercentile;
@override final  double? EnvironmentScore;
@override final  double? EnvironmentScorePercentile;
@override final  double? SocialScore;
@override final  double? SocialScorePercentile;
@override final  double? GovernanceScore;
@override final  double? GovernanceScorePercentile;
@override final  int? ControversyLevel;
@override@JsonKey(name: 'stock_type') final  int? stockType;

/// Create a copy of FundamentalsEsgScores
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FundamentalsEsgScoresCopyWith<_FundamentalsEsgScores> get copyWith => __$FundamentalsEsgScoresCopyWithImpl<_FundamentalsEsgScores>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FundamentalsEsgScoresToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FundamentalsEsgScores&&(identical(other.Disclaimer, Disclaimer) || other.Disclaimer == Disclaimer)&&(identical(other.RatingDate, RatingDate) || other.RatingDate == RatingDate)&&(identical(other.TotalEsg, TotalEsg) || other.TotalEsg == TotalEsg)&&(identical(other.TotalEsgPercentile, TotalEsgPercentile) || other.TotalEsgPercentile == TotalEsgPercentile)&&(identical(other.EnvironmentScore, EnvironmentScore) || other.EnvironmentScore == EnvironmentScore)&&(identical(other.EnvironmentScorePercentile, EnvironmentScorePercentile) || other.EnvironmentScorePercentile == EnvironmentScorePercentile)&&(identical(other.SocialScore, SocialScore) || other.SocialScore == SocialScore)&&(identical(other.SocialScorePercentile, SocialScorePercentile) || other.SocialScorePercentile == SocialScorePercentile)&&(identical(other.GovernanceScore, GovernanceScore) || other.GovernanceScore == GovernanceScore)&&(identical(other.GovernanceScorePercentile, GovernanceScorePercentile) || other.GovernanceScorePercentile == GovernanceScorePercentile)&&(identical(other.ControversyLevel, ControversyLevel) || other.ControversyLevel == ControversyLevel)&&(identical(other.stockType, stockType) || other.stockType == stockType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,Disclaimer,RatingDate,TotalEsg,TotalEsgPercentile,EnvironmentScore,EnvironmentScorePercentile,SocialScore,SocialScorePercentile,GovernanceScore,GovernanceScorePercentile,ControversyLevel,stockType);

@override
String toString() {
  return 'FundamentalsEsgScores(Disclaimer: $Disclaimer, RatingDate: $RatingDate, TotalEsg: $TotalEsg, TotalEsgPercentile: $TotalEsgPercentile, EnvironmentScore: $EnvironmentScore, EnvironmentScorePercentile: $EnvironmentScorePercentile, SocialScore: $SocialScore, SocialScorePercentile: $SocialScorePercentile, GovernanceScore: $GovernanceScore, GovernanceScorePercentile: $GovernanceScorePercentile, ControversyLevel: $ControversyLevel, stockType: $stockType)';
}


}

/// @nodoc
abstract mixin class _$FundamentalsEsgScoresCopyWith<$Res> implements $FundamentalsEsgScoresCopyWith<$Res> {
  factory _$FundamentalsEsgScoresCopyWith(_FundamentalsEsgScores value, $Res Function(_FundamentalsEsgScores) _then) = __$FundamentalsEsgScoresCopyWithImpl;
@override @useResult
$Res call({
 String? Disclaimer, String? RatingDate, double? TotalEsg, double? TotalEsgPercentile, double? EnvironmentScore, double? EnvironmentScorePercentile, double? SocialScore, double? SocialScorePercentile, double? GovernanceScore, double? GovernanceScorePercentile, int? ControversyLevel,@JsonKey(name: 'stock_type') int? stockType
});




}
/// @nodoc
class __$FundamentalsEsgScoresCopyWithImpl<$Res>
    implements _$FundamentalsEsgScoresCopyWith<$Res> {
  __$FundamentalsEsgScoresCopyWithImpl(this._self, this._then);

  final _FundamentalsEsgScores _self;
  final $Res Function(_FundamentalsEsgScores) _then;

/// Create a copy of FundamentalsEsgScores
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? Disclaimer = freezed,Object? RatingDate = freezed,Object? TotalEsg = freezed,Object? TotalEsgPercentile = freezed,Object? EnvironmentScore = freezed,Object? EnvironmentScorePercentile = freezed,Object? SocialScore = freezed,Object? SocialScorePercentile = freezed,Object? GovernanceScore = freezed,Object? GovernanceScorePercentile = freezed,Object? ControversyLevel = freezed,Object? stockType = freezed,}) {
  return _then(_FundamentalsEsgScores(
Disclaimer: freezed == Disclaimer ? _self.Disclaimer : Disclaimer // ignore: cast_nullable_to_non_nullable
as String?,RatingDate: freezed == RatingDate ? _self.RatingDate : RatingDate // ignore: cast_nullable_to_non_nullable
as String?,TotalEsg: freezed == TotalEsg ? _self.TotalEsg : TotalEsg // ignore: cast_nullable_to_non_nullable
as double?,TotalEsgPercentile: freezed == TotalEsgPercentile ? _self.TotalEsgPercentile : TotalEsgPercentile // ignore: cast_nullable_to_non_nullable
as double?,EnvironmentScore: freezed == EnvironmentScore ? _self.EnvironmentScore : EnvironmentScore // ignore: cast_nullable_to_non_nullable
as double?,EnvironmentScorePercentile: freezed == EnvironmentScorePercentile ? _self.EnvironmentScorePercentile : EnvironmentScorePercentile // ignore: cast_nullable_to_non_nullable
as double?,SocialScore: freezed == SocialScore ? _self.SocialScore : SocialScore // ignore: cast_nullable_to_non_nullable
as double?,SocialScorePercentile: freezed == SocialScorePercentile ? _self.SocialScorePercentile : SocialScorePercentile // ignore: cast_nullable_to_non_nullable
as double?,GovernanceScore: freezed == GovernanceScore ? _self.GovernanceScore : GovernanceScore // ignore: cast_nullable_to_non_nullable
as double?,GovernanceScorePercentile: freezed == GovernanceScorePercentile ? _self.GovernanceScorePercentile : GovernanceScorePercentile // ignore: cast_nullable_to_non_nullable
as double?,ControversyLevel: freezed == ControversyLevel ? _self.ControversyLevel : ControversyLevel // ignore: cast_nullable_to_non_nullable
as int?,stockType: freezed == stockType ? _self.stockType : stockType // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$FundamentalsOutstandingSharesQuarter {

 int? get Year; String? get Date;@JsonKey(name: 'Shares Million') double? get sharesMillion; double? get Shares;@JsonKey(name: 'stock_type') int? get stockType;
/// Create a copy of FundamentalsOutstandingSharesQuarter
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FundamentalsOutstandingSharesQuarterCopyWith<FundamentalsOutstandingSharesQuarter> get copyWith => _$FundamentalsOutstandingSharesQuarterCopyWithImpl<FundamentalsOutstandingSharesQuarter>(this as FundamentalsOutstandingSharesQuarter, _$identity);

  /// Serializes this FundamentalsOutstandingSharesQuarter to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FundamentalsOutstandingSharesQuarter&&(identical(other.Year, Year) || other.Year == Year)&&(identical(other.Date, Date) || other.Date == Date)&&(identical(other.sharesMillion, sharesMillion) || other.sharesMillion == sharesMillion)&&(identical(other.Shares, Shares) || other.Shares == Shares)&&(identical(other.stockType, stockType) || other.stockType == stockType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,Year,Date,sharesMillion,Shares,stockType);

@override
String toString() {
  return 'FundamentalsOutstandingSharesQuarter(Year: $Year, Date: $Date, sharesMillion: $sharesMillion, Shares: $Shares, stockType: $stockType)';
}


}

/// @nodoc
abstract mixin class $FundamentalsOutstandingSharesQuarterCopyWith<$Res>  {
  factory $FundamentalsOutstandingSharesQuarterCopyWith(FundamentalsOutstandingSharesQuarter value, $Res Function(FundamentalsOutstandingSharesQuarter) _then) = _$FundamentalsOutstandingSharesQuarterCopyWithImpl;
@useResult
$Res call({
 int? Year, String? Date,@JsonKey(name: 'Shares Million') double? sharesMillion, double? Shares,@JsonKey(name: 'stock_type') int? stockType
});




}
/// @nodoc
class _$FundamentalsOutstandingSharesQuarterCopyWithImpl<$Res>
    implements $FundamentalsOutstandingSharesQuarterCopyWith<$Res> {
  _$FundamentalsOutstandingSharesQuarterCopyWithImpl(this._self, this._then);

  final FundamentalsOutstandingSharesQuarter _self;
  final $Res Function(FundamentalsOutstandingSharesQuarter) _then;

/// Create a copy of FundamentalsOutstandingSharesQuarter
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? Year = freezed,Object? Date = freezed,Object? sharesMillion = freezed,Object? Shares = freezed,Object? stockType = freezed,}) {
  return _then(_self.copyWith(
Year: freezed == Year ? _self.Year : Year // ignore: cast_nullable_to_non_nullable
as int?,Date: freezed == Date ? _self.Date : Date // ignore: cast_nullable_to_non_nullable
as String?,sharesMillion: freezed == sharesMillion ? _self.sharesMillion : sharesMillion // ignore: cast_nullable_to_non_nullable
as double?,Shares: freezed == Shares ? _self.Shares : Shares // ignore: cast_nullable_to_non_nullable
as double?,stockType: freezed == stockType ? _self.stockType : stockType // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [FundamentalsOutstandingSharesQuarter].
extension FundamentalsOutstandingSharesQuarterPatterns on FundamentalsOutstandingSharesQuarter {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FundamentalsOutstandingSharesQuarter value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FundamentalsOutstandingSharesQuarter() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FundamentalsOutstandingSharesQuarter value)  $default,){
final _that = this;
switch (_that) {
case _FundamentalsOutstandingSharesQuarter():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FundamentalsOutstandingSharesQuarter value)?  $default,){
final _that = this;
switch (_that) {
case _FundamentalsOutstandingSharesQuarter() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? Year,  String? Date, @JsonKey(name: 'Shares Million')  double? sharesMillion,  double? Shares, @JsonKey(name: 'stock_type')  int? stockType)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FundamentalsOutstandingSharesQuarter() when $default != null:
return $default(_that.Year,_that.Date,_that.sharesMillion,_that.Shares,_that.stockType);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? Year,  String? Date, @JsonKey(name: 'Shares Million')  double? sharesMillion,  double? Shares, @JsonKey(name: 'stock_type')  int? stockType)  $default,) {final _that = this;
switch (_that) {
case _FundamentalsOutstandingSharesQuarter():
return $default(_that.Year,_that.Date,_that.sharesMillion,_that.Shares,_that.stockType);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? Year,  String? Date, @JsonKey(name: 'Shares Million')  double? sharesMillion,  double? Shares, @JsonKey(name: 'stock_type')  int? stockType)?  $default,) {final _that = this;
switch (_that) {
case _FundamentalsOutstandingSharesQuarter() when $default != null:
return $default(_that.Year,_that.Date,_that.sharesMillion,_that.Shares,_that.stockType);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FundamentalsOutstandingSharesQuarter implements FundamentalsOutstandingSharesQuarter {
  const _FundamentalsOutstandingSharesQuarter({this.Year, this.Date, @JsonKey(name: 'Shares Million') this.sharesMillion, this.Shares, @JsonKey(name: 'stock_type') this.stockType});
  factory _FundamentalsOutstandingSharesQuarter.fromJson(Map<String, dynamic> json) => _$FundamentalsOutstandingSharesQuarterFromJson(json);

@override final  int? Year;
@override final  String? Date;
@override@JsonKey(name: 'Shares Million') final  double? sharesMillion;
@override final  double? Shares;
@override@JsonKey(name: 'stock_type') final  int? stockType;

/// Create a copy of FundamentalsOutstandingSharesQuarter
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FundamentalsOutstandingSharesQuarterCopyWith<_FundamentalsOutstandingSharesQuarter> get copyWith => __$FundamentalsOutstandingSharesQuarterCopyWithImpl<_FundamentalsOutstandingSharesQuarter>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FundamentalsOutstandingSharesQuarterToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FundamentalsOutstandingSharesQuarter&&(identical(other.Year, Year) || other.Year == Year)&&(identical(other.Date, Date) || other.Date == Date)&&(identical(other.sharesMillion, sharesMillion) || other.sharesMillion == sharesMillion)&&(identical(other.Shares, Shares) || other.Shares == Shares)&&(identical(other.stockType, stockType) || other.stockType == stockType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,Year,Date,sharesMillion,Shares,stockType);

@override
String toString() {
  return 'FundamentalsOutstandingSharesQuarter(Year: $Year, Date: $Date, sharesMillion: $sharesMillion, Shares: $Shares, stockType: $stockType)';
}


}

/// @nodoc
abstract mixin class _$FundamentalsOutstandingSharesQuarterCopyWith<$Res> implements $FundamentalsOutstandingSharesQuarterCopyWith<$Res> {
  factory _$FundamentalsOutstandingSharesQuarterCopyWith(_FundamentalsOutstandingSharesQuarter value, $Res Function(_FundamentalsOutstandingSharesQuarter) _then) = __$FundamentalsOutstandingSharesQuarterCopyWithImpl;
@override @useResult
$Res call({
 int? Year, String? Date,@JsonKey(name: 'Shares Million') double? sharesMillion, double? Shares,@JsonKey(name: 'stock_type') int? stockType
});




}
/// @nodoc
class __$FundamentalsOutstandingSharesQuarterCopyWithImpl<$Res>
    implements _$FundamentalsOutstandingSharesQuarterCopyWith<$Res> {
  __$FundamentalsOutstandingSharesQuarterCopyWithImpl(this._self, this._then);

  final _FundamentalsOutstandingSharesQuarter _self;
  final $Res Function(_FundamentalsOutstandingSharesQuarter) _then;

/// Create a copy of FundamentalsOutstandingSharesQuarter
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? Year = freezed,Object? Date = freezed,Object? sharesMillion = freezed,Object? Shares = freezed,Object? stockType = freezed,}) {
  return _then(_FundamentalsOutstandingSharesQuarter(
Year: freezed == Year ? _self.Year : Year // ignore: cast_nullable_to_non_nullable
as int?,Date: freezed == Date ? _self.Date : Date // ignore: cast_nullable_to_non_nullable
as String?,sharesMillion: freezed == sharesMillion ? _self.sharesMillion : sharesMillion // ignore: cast_nullable_to_non_nullable
as double?,Shares: freezed == Shares ? _self.Shares : Shares // ignore: cast_nullable_to_non_nullable
as double?,stockType: freezed == stockType ? _self.stockType : stockType // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$FundamentalsOutstandingShares {

 dynamic get Date;@JsonKey(name: 'Shares Million') double? get sharesMillion; double? get Shares;@JsonKey(name: 'Quarterly / Annual') String? get quarterlyAnnual;
/// Create a copy of FundamentalsOutstandingShares
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FundamentalsOutstandingSharesCopyWith<FundamentalsOutstandingShares> get copyWith => _$FundamentalsOutstandingSharesCopyWithImpl<FundamentalsOutstandingShares>(this as FundamentalsOutstandingShares, _$identity);

  /// Serializes this FundamentalsOutstandingShares to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FundamentalsOutstandingShares&&const DeepCollectionEquality().equals(other.Date, Date)&&(identical(other.sharesMillion, sharesMillion) || other.sharesMillion == sharesMillion)&&(identical(other.Shares, Shares) || other.Shares == Shares)&&(identical(other.quarterlyAnnual, quarterlyAnnual) || other.quarterlyAnnual == quarterlyAnnual));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(Date),sharesMillion,Shares,quarterlyAnnual);

@override
String toString() {
  return 'FundamentalsOutstandingShares(Date: $Date, sharesMillion: $sharesMillion, Shares: $Shares, quarterlyAnnual: $quarterlyAnnual)';
}


}

/// @nodoc
abstract mixin class $FundamentalsOutstandingSharesCopyWith<$Res>  {
  factory $FundamentalsOutstandingSharesCopyWith(FundamentalsOutstandingShares value, $Res Function(FundamentalsOutstandingShares) _then) = _$FundamentalsOutstandingSharesCopyWithImpl;
@useResult
$Res call({
 dynamic Date,@JsonKey(name: 'Shares Million') double? sharesMillion, double? Shares,@JsonKey(name: 'Quarterly / Annual') String? quarterlyAnnual
});




}
/// @nodoc
class _$FundamentalsOutstandingSharesCopyWithImpl<$Res>
    implements $FundamentalsOutstandingSharesCopyWith<$Res> {
  _$FundamentalsOutstandingSharesCopyWithImpl(this._self, this._then);

  final FundamentalsOutstandingShares _self;
  final $Res Function(FundamentalsOutstandingShares) _then;

/// Create a copy of FundamentalsOutstandingShares
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? Date = freezed,Object? sharesMillion = freezed,Object? Shares = freezed,Object? quarterlyAnnual = freezed,}) {
  return _then(_self.copyWith(
Date: freezed == Date ? _self.Date : Date // ignore: cast_nullable_to_non_nullable
as dynamic,sharesMillion: freezed == sharesMillion ? _self.sharesMillion : sharesMillion // ignore: cast_nullable_to_non_nullable
as double?,Shares: freezed == Shares ? _self.Shares : Shares // ignore: cast_nullable_to_non_nullable
as double?,quarterlyAnnual: freezed == quarterlyAnnual ? _self.quarterlyAnnual : quarterlyAnnual // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [FundamentalsOutstandingShares].
extension FundamentalsOutstandingSharesPatterns on FundamentalsOutstandingShares {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FundamentalsOutstandingShares value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FundamentalsOutstandingShares() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FundamentalsOutstandingShares value)  $default,){
final _that = this;
switch (_that) {
case _FundamentalsOutstandingShares():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FundamentalsOutstandingShares value)?  $default,){
final _that = this;
switch (_that) {
case _FundamentalsOutstandingShares() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( dynamic Date, @JsonKey(name: 'Shares Million')  double? sharesMillion,  double? Shares, @JsonKey(name: 'Quarterly / Annual')  String? quarterlyAnnual)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FundamentalsOutstandingShares() when $default != null:
return $default(_that.Date,_that.sharesMillion,_that.Shares,_that.quarterlyAnnual);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( dynamic Date, @JsonKey(name: 'Shares Million')  double? sharesMillion,  double? Shares, @JsonKey(name: 'Quarterly / Annual')  String? quarterlyAnnual)  $default,) {final _that = this;
switch (_that) {
case _FundamentalsOutstandingShares():
return $default(_that.Date,_that.sharesMillion,_that.Shares,_that.quarterlyAnnual);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( dynamic Date, @JsonKey(name: 'Shares Million')  double? sharesMillion,  double? Shares, @JsonKey(name: 'Quarterly / Annual')  String? quarterlyAnnual)?  $default,) {final _that = this;
switch (_that) {
case _FundamentalsOutstandingShares() when $default != null:
return $default(_that.Date,_that.sharesMillion,_that.Shares,_that.quarterlyAnnual);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FundamentalsOutstandingShares implements FundamentalsOutstandingShares {
  const _FundamentalsOutstandingShares({this.Date, @JsonKey(name: 'Shares Million') this.sharesMillion, this.Shares, @JsonKey(name: 'Quarterly / Annual') this.quarterlyAnnual});
  factory _FundamentalsOutstandingShares.fromJson(Map<String, dynamic> json) => _$FundamentalsOutstandingSharesFromJson(json);

@override final  dynamic Date;
@override@JsonKey(name: 'Shares Million') final  double? sharesMillion;
@override final  double? Shares;
@override@JsonKey(name: 'Quarterly / Annual') final  String? quarterlyAnnual;

/// Create a copy of FundamentalsOutstandingShares
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FundamentalsOutstandingSharesCopyWith<_FundamentalsOutstandingShares> get copyWith => __$FundamentalsOutstandingSharesCopyWithImpl<_FundamentalsOutstandingShares>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FundamentalsOutstandingSharesToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FundamentalsOutstandingShares&&const DeepCollectionEquality().equals(other.Date, Date)&&(identical(other.sharesMillion, sharesMillion) || other.sharesMillion == sharesMillion)&&(identical(other.Shares, Shares) || other.Shares == Shares)&&(identical(other.quarterlyAnnual, quarterlyAnnual) || other.quarterlyAnnual == quarterlyAnnual));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(Date),sharesMillion,Shares,quarterlyAnnual);

@override
String toString() {
  return 'FundamentalsOutstandingShares(Date: $Date, sharesMillion: $sharesMillion, Shares: $Shares, quarterlyAnnual: $quarterlyAnnual)';
}


}

/// @nodoc
abstract mixin class _$FundamentalsOutstandingSharesCopyWith<$Res> implements $FundamentalsOutstandingSharesCopyWith<$Res> {
  factory _$FundamentalsOutstandingSharesCopyWith(_FundamentalsOutstandingShares value, $Res Function(_FundamentalsOutstandingShares) _then) = __$FundamentalsOutstandingSharesCopyWithImpl;
@override @useResult
$Res call({
 dynamic Date,@JsonKey(name: 'Shares Million') double? sharesMillion, double? Shares,@JsonKey(name: 'Quarterly / Annual') String? quarterlyAnnual
});




}
/// @nodoc
class __$FundamentalsOutstandingSharesCopyWithImpl<$Res>
    implements _$FundamentalsOutstandingSharesCopyWith<$Res> {
  __$FundamentalsOutstandingSharesCopyWithImpl(this._self, this._then);

  final _FundamentalsOutstandingShares _self;
  final $Res Function(_FundamentalsOutstandingShares) _then;

/// Create a copy of FundamentalsOutstandingShares
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? Date = freezed,Object? sharesMillion = freezed,Object? Shares = freezed,Object? quarterlyAnnual = freezed,}) {
  return _then(_FundamentalsOutstandingShares(
Date: freezed == Date ? _self.Date : Date // ignore: cast_nullable_to_non_nullable
as dynamic,sharesMillion: freezed == sharesMillion ? _self.sharesMillion : sharesMillion // ignore: cast_nullable_to_non_nullable
as double?,Shares: freezed == Shares ? _self.Shares : Shares // ignore: cast_nullable_to_non_nullable
as double?,quarterlyAnnual: freezed == quarterlyAnnual ? _self.quarterlyAnnual : quarterlyAnnual // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$GetAnalyticsHoldersSummary {

 String? get symbol; String? get date;@JsonKey(name: 'currentshares') double? get currentShares; String? get Name; String? get type; String? get InstitutionsFunds;
/// Create a copy of GetAnalyticsHoldersSummary
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetAnalyticsHoldersSummaryCopyWith<GetAnalyticsHoldersSummary> get copyWith => _$GetAnalyticsHoldersSummaryCopyWithImpl<GetAnalyticsHoldersSummary>(this as GetAnalyticsHoldersSummary, _$identity);

  /// Serializes this GetAnalyticsHoldersSummary to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetAnalyticsHoldersSummary&&(identical(other.symbol, symbol) || other.symbol == symbol)&&(identical(other.date, date) || other.date == date)&&(identical(other.currentShares, currentShares) || other.currentShares == currentShares)&&(identical(other.Name, Name) || other.Name == Name)&&(identical(other.type, type) || other.type == type)&&(identical(other.InstitutionsFunds, InstitutionsFunds) || other.InstitutionsFunds == InstitutionsFunds));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,symbol,date,currentShares,Name,type,InstitutionsFunds);

@override
String toString() {
  return 'GetAnalyticsHoldersSummary(symbol: $symbol, date: $date, currentShares: $currentShares, Name: $Name, type: $type, InstitutionsFunds: $InstitutionsFunds)';
}


}

/// @nodoc
abstract mixin class $GetAnalyticsHoldersSummaryCopyWith<$Res>  {
  factory $GetAnalyticsHoldersSummaryCopyWith(GetAnalyticsHoldersSummary value, $Res Function(GetAnalyticsHoldersSummary) _then) = _$GetAnalyticsHoldersSummaryCopyWithImpl;
@useResult
$Res call({
 String? symbol, String? date,@JsonKey(name: 'currentshares') double? currentShares, String? Name, String? type, String? InstitutionsFunds
});




}
/// @nodoc
class _$GetAnalyticsHoldersSummaryCopyWithImpl<$Res>
    implements $GetAnalyticsHoldersSummaryCopyWith<$Res> {
  _$GetAnalyticsHoldersSummaryCopyWithImpl(this._self, this._then);

  final GetAnalyticsHoldersSummary _self;
  final $Res Function(GetAnalyticsHoldersSummary) _then;

/// Create a copy of GetAnalyticsHoldersSummary
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? symbol = freezed,Object? date = freezed,Object? currentShares = freezed,Object? Name = freezed,Object? type = freezed,Object? InstitutionsFunds = freezed,}) {
  return _then(_self.copyWith(
symbol: freezed == symbol ? _self.symbol : symbol // ignore: cast_nullable_to_non_nullable
as String?,date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String?,currentShares: freezed == currentShares ? _self.currentShares : currentShares // ignore: cast_nullable_to_non_nullable
as double?,Name: freezed == Name ? _self.Name : Name // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,InstitutionsFunds: freezed == InstitutionsFunds ? _self.InstitutionsFunds : InstitutionsFunds // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [GetAnalyticsHoldersSummary].
extension GetAnalyticsHoldersSummaryPatterns on GetAnalyticsHoldersSummary {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GetAnalyticsHoldersSummary value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetAnalyticsHoldersSummary() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GetAnalyticsHoldersSummary value)  $default,){
final _that = this;
switch (_that) {
case _GetAnalyticsHoldersSummary():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GetAnalyticsHoldersSummary value)?  $default,){
final _that = this;
switch (_that) {
case _GetAnalyticsHoldersSummary() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? symbol,  String? date, @JsonKey(name: 'currentshares')  double? currentShares,  String? Name,  String? type,  String? InstitutionsFunds)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetAnalyticsHoldersSummary() when $default != null:
return $default(_that.symbol,_that.date,_that.currentShares,_that.Name,_that.type,_that.InstitutionsFunds);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? symbol,  String? date, @JsonKey(name: 'currentshares')  double? currentShares,  String? Name,  String? type,  String? InstitutionsFunds)  $default,) {final _that = this;
switch (_that) {
case _GetAnalyticsHoldersSummary():
return $default(_that.symbol,_that.date,_that.currentShares,_that.Name,_that.type,_that.InstitutionsFunds);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? symbol,  String? date, @JsonKey(name: 'currentshares')  double? currentShares,  String? Name,  String? type,  String? InstitutionsFunds)?  $default,) {final _that = this;
switch (_that) {
case _GetAnalyticsHoldersSummary() when $default != null:
return $default(_that.symbol,_that.date,_that.currentShares,_that.Name,_that.type,_that.InstitutionsFunds);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GetAnalyticsHoldersSummary implements GetAnalyticsHoldersSummary {
  const _GetAnalyticsHoldersSummary({this.symbol, this.date, @JsonKey(name: 'currentshares') this.currentShares, this.Name, this.type, this.InstitutionsFunds});
  factory _GetAnalyticsHoldersSummary.fromJson(Map<String, dynamic> json) => _$GetAnalyticsHoldersSummaryFromJson(json);

@override final  String? symbol;
@override final  String? date;
@override@JsonKey(name: 'currentshares') final  double? currentShares;
@override final  String? Name;
@override final  String? type;
@override final  String? InstitutionsFunds;

/// Create a copy of GetAnalyticsHoldersSummary
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetAnalyticsHoldersSummaryCopyWith<_GetAnalyticsHoldersSummary> get copyWith => __$GetAnalyticsHoldersSummaryCopyWithImpl<_GetAnalyticsHoldersSummary>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GetAnalyticsHoldersSummaryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetAnalyticsHoldersSummary&&(identical(other.symbol, symbol) || other.symbol == symbol)&&(identical(other.date, date) || other.date == date)&&(identical(other.currentShares, currentShares) || other.currentShares == currentShares)&&(identical(other.Name, Name) || other.Name == Name)&&(identical(other.type, type) || other.type == type)&&(identical(other.InstitutionsFunds, InstitutionsFunds) || other.InstitutionsFunds == InstitutionsFunds));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,symbol,date,currentShares,Name,type,InstitutionsFunds);

@override
String toString() {
  return 'GetAnalyticsHoldersSummary(symbol: $symbol, date: $date, currentShares: $currentShares, Name: $Name, type: $type, InstitutionsFunds: $InstitutionsFunds)';
}


}

/// @nodoc
abstract mixin class _$GetAnalyticsHoldersSummaryCopyWith<$Res> implements $GetAnalyticsHoldersSummaryCopyWith<$Res> {
  factory _$GetAnalyticsHoldersSummaryCopyWith(_GetAnalyticsHoldersSummary value, $Res Function(_GetAnalyticsHoldersSummary) _then) = __$GetAnalyticsHoldersSummaryCopyWithImpl;
@override @useResult
$Res call({
 String? symbol, String? date,@JsonKey(name: 'currentshares') double? currentShares, String? Name, String? type, String? InstitutionsFunds
});




}
/// @nodoc
class __$GetAnalyticsHoldersSummaryCopyWithImpl<$Res>
    implements _$GetAnalyticsHoldersSummaryCopyWith<$Res> {
  __$GetAnalyticsHoldersSummaryCopyWithImpl(this._self, this._then);

  final _GetAnalyticsHoldersSummary _self;
  final $Res Function(_GetAnalyticsHoldersSummary) _then;

/// Create a copy of GetAnalyticsHoldersSummary
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? symbol = freezed,Object? date = freezed,Object? currentShares = freezed,Object? Name = freezed,Object? type = freezed,Object? InstitutionsFunds = freezed,}) {
  return _then(_GetAnalyticsHoldersSummary(
symbol: freezed == symbol ? _self.symbol : symbol // ignore: cast_nullable_to_non_nullable
as String?,date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String?,currentShares: freezed == currentShares ? _self.currentShares : currentShares // ignore: cast_nullable_to_non_nullable
as double?,Name: freezed == Name ? _self.Name : Name // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,InstitutionsFunds: freezed == InstitutionsFunds ? _self.InstitutionsFunds : InstitutionsFunds // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$FundamentalsEarningsTrend {

@JsonKey(name: 'Date') String? get date;@JsonKey(name: 'Period') String? get period;@JsonKey(name: 'Growth') double? get growth;// Earnings estimates
@JsonKey(name: 'Earnings Estimate Avg') double? get earningsEstimateAvg;@JsonKey(name: 'Earnings Estimate Low') double? get earningsEstimateLow;@JsonKey(name: 'Earnings Estimate High') double? get earningsEstimateHigh;@JsonKey(name: 'Earnings Estimate Year Ago Eps') double? get earningsEstimateYearAgoEps;@JsonKey(name: 'Earnings Estimate Number Of Analysts') int? get earningsEstimateNumberOfAnalysts;@JsonKey(name: 'Earnings Estimate Growth') double? get earningsEstimateGrowth;// Revenue estimates
@JsonKey(name: 'Revenue Estimate Avg') double? get revenueEstimateAvg;@JsonKey(name: 'Revenue Estimate Low') double? get revenueEstimateLow;@JsonKey(name: 'Revenue Estimate High') double? get revenueEstimateHigh;@JsonKey(name: 'Revenue Estimate Year Ago Eps') double? get revenueEstimateYearAgoEps;@JsonKey(name: 'Revenue Estimate Number Of Analysts') int? get revenueEstimateNumberOfAnalysts;@JsonKey(name: 'Revenue Estimate Growth') double? get revenueEstimateGrowth;// EPS Trend
@JsonKey(name: 'eps Trend Current') double? get epsTrendCurrent;@JsonKey(name: 'eps Trend 7 days Ago') double? get epsTrend7DaysAgo;@JsonKey(name: 'eps Trend 30 days Ago') double? get epsTrend30DaysAgo;@JsonKey(name: 'eps Trend 60 days Ago') double? get epsTrend60DaysAgo;@JsonKey(name: 'eps Trend 90 days Ago') double? get epsTrend90DaysAgo;// EPS Revisions
@JsonKey(name: 'eps Revisions Up Last 7 days') int? get epsRevisionsUpLast7Days;@JsonKey(name: 'eps Revisions Up Last 30 days') int? get epsRevisionsUpLast30Days;@JsonKey(name: 'eps Revisions Down Last 7 days') int? get epsRevisionsDownLast7Days;@JsonKey(name: 'eps Revisions Down Last 30 days') int? get epsRevisionsDownLast30Days;@JsonKey(name: 'stock_type') int? get stockType;
/// Create a copy of FundamentalsEarningsTrend
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FundamentalsEarningsTrendCopyWith<FundamentalsEarningsTrend> get copyWith => _$FundamentalsEarningsTrendCopyWithImpl<FundamentalsEarningsTrend>(this as FundamentalsEarningsTrend, _$identity);

  /// Serializes this FundamentalsEarningsTrend to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FundamentalsEarningsTrend&&(identical(other.date, date) || other.date == date)&&(identical(other.period, period) || other.period == period)&&(identical(other.growth, growth) || other.growth == growth)&&(identical(other.earningsEstimateAvg, earningsEstimateAvg) || other.earningsEstimateAvg == earningsEstimateAvg)&&(identical(other.earningsEstimateLow, earningsEstimateLow) || other.earningsEstimateLow == earningsEstimateLow)&&(identical(other.earningsEstimateHigh, earningsEstimateHigh) || other.earningsEstimateHigh == earningsEstimateHigh)&&(identical(other.earningsEstimateYearAgoEps, earningsEstimateYearAgoEps) || other.earningsEstimateYearAgoEps == earningsEstimateYearAgoEps)&&(identical(other.earningsEstimateNumberOfAnalysts, earningsEstimateNumberOfAnalysts) || other.earningsEstimateNumberOfAnalysts == earningsEstimateNumberOfAnalysts)&&(identical(other.earningsEstimateGrowth, earningsEstimateGrowth) || other.earningsEstimateGrowth == earningsEstimateGrowth)&&(identical(other.revenueEstimateAvg, revenueEstimateAvg) || other.revenueEstimateAvg == revenueEstimateAvg)&&(identical(other.revenueEstimateLow, revenueEstimateLow) || other.revenueEstimateLow == revenueEstimateLow)&&(identical(other.revenueEstimateHigh, revenueEstimateHigh) || other.revenueEstimateHigh == revenueEstimateHigh)&&(identical(other.revenueEstimateYearAgoEps, revenueEstimateYearAgoEps) || other.revenueEstimateYearAgoEps == revenueEstimateYearAgoEps)&&(identical(other.revenueEstimateNumberOfAnalysts, revenueEstimateNumberOfAnalysts) || other.revenueEstimateNumberOfAnalysts == revenueEstimateNumberOfAnalysts)&&(identical(other.revenueEstimateGrowth, revenueEstimateGrowth) || other.revenueEstimateGrowth == revenueEstimateGrowth)&&(identical(other.epsTrendCurrent, epsTrendCurrent) || other.epsTrendCurrent == epsTrendCurrent)&&(identical(other.epsTrend7DaysAgo, epsTrend7DaysAgo) || other.epsTrend7DaysAgo == epsTrend7DaysAgo)&&(identical(other.epsTrend30DaysAgo, epsTrend30DaysAgo) || other.epsTrend30DaysAgo == epsTrend30DaysAgo)&&(identical(other.epsTrend60DaysAgo, epsTrend60DaysAgo) || other.epsTrend60DaysAgo == epsTrend60DaysAgo)&&(identical(other.epsTrend90DaysAgo, epsTrend90DaysAgo) || other.epsTrend90DaysAgo == epsTrend90DaysAgo)&&(identical(other.epsRevisionsUpLast7Days, epsRevisionsUpLast7Days) || other.epsRevisionsUpLast7Days == epsRevisionsUpLast7Days)&&(identical(other.epsRevisionsUpLast30Days, epsRevisionsUpLast30Days) || other.epsRevisionsUpLast30Days == epsRevisionsUpLast30Days)&&(identical(other.epsRevisionsDownLast7Days, epsRevisionsDownLast7Days) || other.epsRevisionsDownLast7Days == epsRevisionsDownLast7Days)&&(identical(other.epsRevisionsDownLast30Days, epsRevisionsDownLast30Days) || other.epsRevisionsDownLast30Days == epsRevisionsDownLast30Days)&&(identical(other.stockType, stockType) || other.stockType == stockType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,date,period,growth,earningsEstimateAvg,earningsEstimateLow,earningsEstimateHigh,earningsEstimateYearAgoEps,earningsEstimateNumberOfAnalysts,earningsEstimateGrowth,revenueEstimateAvg,revenueEstimateLow,revenueEstimateHigh,revenueEstimateYearAgoEps,revenueEstimateNumberOfAnalysts,revenueEstimateGrowth,epsTrendCurrent,epsTrend7DaysAgo,epsTrend30DaysAgo,epsTrend60DaysAgo,epsTrend90DaysAgo,epsRevisionsUpLast7Days,epsRevisionsUpLast30Days,epsRevisionsDownLast7Days,epsRevisionsDownLast30Days,stockType]);

@override
String toString() {
  return 'FundamentalsEarningsTrend(date: $date, period: $period, growth: $growth, earningsEstimateAvg: $earningsEstimateAvg, earningsEstimateLow: $earningsEstimateLow, earningsEstimateHigh: $earningsEstimateHigh, earningsEstimateYearAgoEps: $earningsEstimateYearAgoEps, earningsEstimateNumberOfAnalysts: $earningsEstimateNumberOfAnalysts, earningsEstimateGrowth: $earningsEstimateGrowth, revenueEstimateAvg: $revenueEstimateAvg, revenueEstimateLow: $revenueEstimateLow, revenueEstimateHigh: $revenueEstimateHigh, revenueEstimateYearAgoEps: $revenueEstimateYearAgoEps, revenueEstimateNumberOfAnalysts: $revenueEstimateNumberOfAnalysts, revenueEstimateGrowth: $revenueEstimateGrowth, epsTrendCurrent: $epsTrendCurrent, epsTrend7DaysAgo: $epsTrend7DaysAgo, epsTrend30DaysAgo: $epsTrend30DaysAgo, epsTrend60DaysAgo: $epsTrend60DaysAgo, epsTrend90DaysAgo: $epsTrend90DaysAgo, epsRevisionsUpLast7Days: $epsRevisionsUpLast7Days, epsRevisionsUpLast30Days: $epsRevisionsUpLast30Days, epsRevisionsDownLast7Days: $epsRevisionsDownLast7Days, epsRevisionsDownLast30Days: $epsRevisionsDownLast30Days, stockType: $stockType)';
}


}

/// @nodoc
abstract mixin class $FundamentalsEarningsTrendCopyWith<$Res>  {
  factory $FundamentalsEarningsTrendCopyWith(FundamentalsEarningsTrend value, $Res Function(FundamentalsEarningsTrend) _then) = _$FundamentalsEarningsTrendCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'Date') String? date,@JsonKey(name: 'Period') String? period,@JsonKey(name: 'Growth') double? growth,@JsonKey(name: 'Earnings Estimate Avg') double? earningsEstimateAvg,@JsonKey(name: 'Earnings Estimate Low') double? earningsEstimateLow,@JsonKey(name: 'Earnings Estimate High') double? earningsEstimateHigh,@JsonKey(name: 'Earnings Estimate Year Ago Eps') double? earningsEstimateYearAgoEps,@JsonKey(name: 'Earnings Estimate Number Of Analysts') int? earningsEstimateNumberOfAnalysts,@JsonKey(name: 'Earnings Estimate Growth') double? earningsEstimateGrowth,@JsonKey(name: 'Revenue Estimate Avg') double? revenueEstimateAvg,@JsonKey(name: 'Revenue Estimate Low') double? revenueEstimateLow,@JsonKey(name: 'Revenue Estimate High') double? revenueEstimateHigh,@JsonKey(name: 'Revenue Estimate Year Ago Eps') double? revenueEstimateYearAgoEps,@JsonKey(name: 'Revenue Estimate Number Of Analysts') int? revenueEstimateNumberOfAnalysts,@JsonKey(name: 'Revenue Estimate Growth') double? revenueEstimateGrowth,@JsonKey(name: 'eps Trend Current') double? epsTrendCurrent,@JsonKey(name: 'eps Trend 7 days Ago') double? epsTrend7DaysAgo,@JsonKey(name: 'eps Trend 30 days Ago') double? epsTrend30DaysAgo,@JsonKey(name: 'eps Trend 60 days Ago') double? epsTrend60DaysAgo,@JsonKey(name: 'eps Trend 90 days Ago') double? epsTrend90DaysAgo,@JsonKey(name: 'eps Revisions Up Last 7 days') int? epsRevisionsUpLast7Days,@JsonKey(name: 'eps Revisions Up Last 30 days') int? epsRevisionsUpLast30Days,@JsonKey(name: 'eps Revisions Down Last 7 days') int? epsRevisionsDownLast7Days,@JsonKey(name: 'eps Revisions Down Last 30 days') int? epsRevisionsDownLast30Days,@JsonKey(name: 'stock_type') int? stockType
});




}
/// @nodoc
class _$FundamentalsEarningsTrendCopyWithImpl<$Res>
    implements $FundamentalsEarningsTrendCopyWith<$Res> {
  _$FundamentalsEarningsTrendCopyWithImpl(this._self, this._then);

  final FundamentalsEarningsTrend _self;
  final $Res Function(FundamentalsEarningsTrend) _then;

/// Create a copy of FundamentalsEarningsTrend
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? date = freezed,Object? period = freezed,Object? growth = freezed,Object? earningsEstimateAvg = freezed,Object? earningsEstimateLow = freezed,Object? earningsEstimateHigh = freezed,Object? earningsEstimateYearAgoEps = freezed,Object? earningsEstimateNumberOfAnalysts = freezed,Object? earningsEstimateGrowth = freezed,Object? revenueEstimateAvg = freezed,Object? revenueEstimateLow = freezed,Object? revenueEstimateHigh = freezed,Object? revenueEstimateYearAgoEps = freezed,Object? revenueEstimateNumberOfAnalysts = freezed,Object? revenueEstimateGrowth = freezed,Object? epsTrendCurrent = freezed,Object? epsTrend7DaysAgo = freezed,Object? epsTrend30DaysAgo = freezed,Object? epsTrend60DaysAgo = freezed,Object? epsTrend90DaysAgo = freezed,Object? epsRevisionsUpLast7Days = freezed,Object? epsRevisionsUpLast30Days = freezed,Object? epsRevisionsDownLast7Days = freezed,Object? epsRevisionsDownLast30Days = freezed,Object? stockType = freezed,}) {
  return _then(_self.copyWith(
date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String?,period: freezed == period ? _self.period : period // ignore: cast_nullable_to_non_nullable
as String?,growth: freezed == growth ? _self.growth : growth // ignore: cast_nullable_to_non_nullable
as double?,earningsEstimateAvg: freezed == earningsEstimateAvg ? _self.earningsEstimateAvg : earningsEstimateAvg // ignore: cast_nullable_to_non_nullable
as double?,earningsEstimateLow: freezed == earningsEstimateLow ? _self.earningsEstimateLow : earningsEstimateLow // ignore: cast_nullable_to_non_nullable
as double?,earningsEstimateHigh: freezed == earningsEstimateHigh ? _self.earningsEstimateHigh : earningsEstimateHigh // ignore: cast_nullable_to_non_nullable
as double?,earningsEstimateYearAgoEps: freezed == earningsEstimateYearAgoEps ? _self.earningsEstimateYearAgoEps : earningsEstimateYearAgoEps // ignore: cast_nullable_to_non_nullable
as double?,earningsEstimateNumberOfAnalysts: freezed == earningsEstimateNumberOfAnalysts ? _self.earningsEstimateNumberOfAnalysts : earningsEstimateNumberOfAnalysts // ignore: cast_nullable_to_non_nullable
as int?,earningsEstimateGrowth: freezed == earningsEstimateGrowth ? _self.earningsEstimateGrowth : earningsEstimateGrowth // ignore: cast_nullable_to_non_nullable
as double?,revenueEstimateAvg: freezed == revenueEstimateAvg ? _self.revenueEstimateAvg : revenueEstimateAvg // ignore: cast_nullable_to_non_nullable
as double?,revenueEstimateLow: freezed == revenueEstimateLow ? _self.revenueEstimateLow : revenueEstimateLow // ignore: cast_nullable_to_non_nullable
as double?,revenueEstimateHigh: freezed == revenueEstimateHigh ? _self.revenueEstimateHigh : revenueEstimateHigh // ignore: cast_nullable_to_non_nullable
as double?,revenueEstimateYearAgoEps: freezed == revenueEstimateYearAgoEps ? _self.revenueEstimateYearAgoEps : revenueEstimateYearAgoEps // ignore: cast_nullable_to_non_nullable
as double?,revenueEstimateNumberOfAnalysts: freezed == revenueEstimateNumberOfAnalysts ? _self.revenueEstimateNumberOfAnalysts : revenueEstimateNumberOfAnalysts // ignore: cast_nullable_to_non_nullable
as int?,revenueEstimateGrowth: freezed == revenueEstimateGrowth ? _self.revenueEstimateGrowth : revenueEstimateGrowth // ignore: cast_nullable_to_non_nullable
as double?,epsTrendCurrent: freezed == epsTrendCurrent ? _self.epsTrendCurrent : epsTrendCurrent // ignore: cast_nullable_to_non_nullable
as double?,epsTrend7DaysAgo: freezed == epsTrend7DaysAgo ? _self.epsTrend7DaysAgo : epsTrend7DaysAgo // ignore: cast_nullable_to_non_nullable
as double?,epsTrend30DaysAgo: freezed == epsTrend30DaysAgo ? _self.epsTrend30DaysAgo : epsTrend30DaysAgo // ignore: cast_nullable_to_non_nullable
as double?,epsTrend60DaysAgo: freezed == epsTrend60DaysAgo ? _self.epsTrend60DaysAgo : epsTrend60DaysAgo // ignore: cast_nullable_to_non_nullable
as double?,epsTrend90DaysAgo: freezed == epsTrend90DaysAgo ? _self.epsTrend90DaysAgo : epsTrend90DaysAgo // ignore: cast_nullable_to_non_nullable
as double?,epsRevisionsUpLast7Days: freezed == epsRevisionsUpLast7Days ? _self.epsRevisionsUpLast7Days : epsRevisionsUpLast7Days // ignore: cast_nullable_to_non_nullable
as int?,epsRevisionsUpLast30Days: freezed == epsRevisionsUpLast30Days ? _self.epsRevisionsUpLast30Days : epsRevisionsUpLast30Days // ignore: cast_nullable_to_non_nullable
as int?,epsRevisionsDownLast7Days: freezed == epsRevisionsDownLast7Days ? _self.epsRevisionsDownLast7Days : epsRevisionsDownLast7Days // ignore: cast_nullable_to_non_nullable
as int?,epsRevisionsDownLast30Days: freezed == epsRevisionsDownLast30Days ? _self.epsRevisionsDownLast30Days : epsRevisionsDownLast30Days // ignore: cast_nullable_to_non_nullable
as int?,stockType: freezed == stockType ? _self.stockType : stockType // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [FundamentalsEarningsTrend].
extension FundamentalsEarningsTrendPatterns on FundamentalsEarningsTrend {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FundamentalsEarningsTrend value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FundamentalsEarningsTrend() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FundamentalsEarningsTrend value)  $default,){
final _that = this;
switch (_that) {
case _FundamentalsEarningsTrend():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FundamentalsEarningsTrend value)?  $default,){
final _that = this;
switch (_that) {
case _FundamentalsEarningsTrend() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'Date')  String? date, @JsonKey(name: 'Period')  String? period, @JsonKey(name: 'Growth')  double? growth, @JsonKey(name: 'Earnings Estimate Avg')  double? earningsEstimateAvg, @JsonKey(name: 'Earnings Estimate Low')  double? earningsEstimateLow, @JsonKey(name: 'Earnings Estimate High')  double? earningsEstimateHigh, @JsonKey(name: 'Earnings Estimate Year Ago Eps')  double? earningsEstimateYearAgoEps, @JsonKey(name: 'Earnings Estimate Number Of Analysts')  int? earningsEstimateNumberOfAnalysts, @JsonKey(name: 'Earnings Estimate Growth')  double? earningsEstimateGrowth, @JsonKey(name: 'Revenue Estimate Avg')  double? revenueEstimateAvg, @JsonKey(name: 'Revenue Estimate Low')  double? revenueEstimateLow, @JsonKey(name: 'Revenue Estimate High')  double? revenueEstimateHigh, @JsonKey(name: 'Revenue Estimate Year Ago Eps')  double? revenueEstimateYearAgoEps, @JsonKey(name: 'Revenue Estimate Number Of Analysts')  int? revenueEstimateNumberOfAnalysts, @JsonKey(name: 'Revenue Estimate Growth')  double? revenueEstimateGrowth, @JsonKey(name: 'eps Trend Current')  double? epsTrendCurrent, @JsonKey(name: 'eps Trend 7 days Ago')  double? epsTrend7DaysAgo, @JsonKey(name: 'eps Trend 30 days Ago')  double? epsTrend30DaysAgo, @JsonKey(name: 'eps Trend 60 days Ago')  double? epsTrend60DaysAgo, @JsonKey(name: 'eps Trend 90 days Ago')  double? epsTrend90DaysAgo, @JsonKey(name: 'eps Revisions Up Last 7 days')  int? epsRevisionsUpLast7Days, @JsonKey(name: 'eps Revisions Up Last 30 days')  int? epsRevisionsUpLast30Days, @JsonKey(name: 'eps Revisions Down Last 7 days')  int? epsRevisionsDownLast7Days, @JsonKey(name: 'eps Revisions Down Last 30 days')  int? epsRevisionsDownLast30Days, @JsonKey(name: 'stock_type')  int? stockType)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FundamentalsEarningsTrend() when $default != null:
return $default(_that.date,_that.period,_that.growth,_that.earningsEstimateAvg,_that.earningsEstimateLow,_that.earningsEstimateHigh,_that.earningsEstimateYearAgoEps,_that.earningsEstimateNumberOfAnalysts,_that.earningsEstimateGrowth,_that.revenueEstimateAvg,_that.revenueEstimateLow,_that.revenueEstimateHigh,_that.revenueEstimateYearAgoEps,_that.revenueEstimateNumberOfAnalysts,_that.revenueEstimateGrowth,_that.epsTrendCurrent,_that.epsTrend7DaysAgo,_that.epsTrend30DaysAgo,_that.epsTrend60DaysAgo,_that.epsTrend90DaysAgo,_that.epsRevisionsUpLast7Days,_that.epsRevisionsUpLast30Days,_that.epsRevisionsDownLast7Days,_that.epsRevisionsDownLast30Days,_that.stockType);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'Date')  String? date, @JsonKey(name: 'Period')  String? period, @JsonKey(name: 'Growth')  double? growth, @JsonKey(name: 'Earnings Estimate Avg')  double? earningsEstimateAvg, @JsonKey(name: 'Earnings Estimate Low')  double? earningsEstimateLow, @JsonKey(name: 'Earnings Estimate High')  double? earningsEstimateHigh, @JsonKey(name: 'Earnings Estimate Year Ago Eps')  double? earningsEstimateYearAgoEps, @JsonKey(name: 'Earnings Estimate Number Of Analysts')  int? earningsEstimateNumberOfAnalysts, @JsonKey(name: 'Earnings Estimate Growth')  double? earningsEstimateGrowth, @JsonKey(name: 'Revenue Estimate Avg')  double? revenueEstimateAvg, @JsonKey(name: 'Revenue Estimate Low')  double? revenueEstimateLow, @JsonKey(name: 'Revenue Estimate High')  double? revenueEstimateHigh, @JsonKey(name: 'Revenue Estimate Year Ago Eps')  double? revenueEstimateYearAgoEps, @JsonKey(name: 'Revenue Estimate Number Of Analysts')  int? revenueEstimateNumberOfAnalysts, @JsonKey(name: 'Revenue Estimate Growth')  double? revenueEstimateGrowth, @JsonKey(name: 'eps Trend Current')  double? epsTrendCurrent, @JsonKey(name: 'eps Trend 7 days Ago')  double? epsTrend7DaysAgo, @JsonKey(name: 'eps Trend 30 days Ago')  double? epsTrend30DaysAgo, @JsonKey(name: 'eps Trend 60 days Ago')  double? epsTrend60DaysAgo, @JsonKey(name: 'eps Trend 90 days Ago')  double? epsTrend90DaysAgo, @JsonKey(name: 'eps Revisions Up Last 7 days')  int? epsRevisionsUpLast7Days, @JsonKey(name: 'eps Revisions Up Last 30 days')  int? epsRevisionsUpLast30Days, @JsonKey(name: 'eps Revisions Down Last 7 days')  int? epsRevisionsDownLast7Days, @JsonKey(name: 'eps Revisions Down Last 30 days')  int? epsRevisionsDownLast30Days, @JsonKey(name: 'stock_type')  int? stockType)  $default,) {final _that = this;
switch (_that) {
case _FundamentalsEarningsTrend():
return $default(_that.date,_that.period,_that.growth,_that.earningsEstimateAvg,_that.earningsEstimateLow,_that.earningsEstimateHigh,_that.earningsEstimateYearAgoEps,_that.earningsEstimateNumberOfAnalysts,_that.earningsEstimateGrowth,_that.revenueEstimateAvg,_that.revenueEstimateLow,_that.revenueEstimateHigh,_that.revenueEstimateYearAgoEps,_that.revenueEstimateNumberOfAnalysts,_that.revenueEstimateGrowth,_that.epsTrendCurrent,_that.epsTrend7DaysAgo,_that.epsTrend30DaysAgo,_that.epsTrend60DaysAgo,_that.epsTrend90DaysAgo,_that.epsRevisionsUpLast7Days,_that.epsRevisionsUpLast30Days,_that.epsRevisionsDownLast7Days,_that.epsRevisionsDownLast30Days,_that.stockType);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'Date')  String? date, @JsonKey(name: 'Period')  String? period, @JsonKey(name: 'Growth')  double? growth, @JsonKey(name: 'Earnings Estimate Avg')  double? earningsEstimateAvg, @JsonKey(name: 'Earnings Estimate Low')  double? earningsEstimateLow, @JsonKey(name: 'Earnings Estimate High')  double? earningsEstimateHigh, @JsonKey(name: 'Earnings Estimate Year Ago Eps')  double? earningsEstimateYearAgoEps, @JsonKey(name: 'Earnings Estimate Number Of Analysts')  int? earningsEstimateNumberOfAnalysts, @JsonKey(name: 'Earnings Estimate Growth')  double? earningsEstimateGrowth, @JsonKey(name: 'Revenue Estimate Avg')  double? revenueEstimateAvg, @JsonKey(name: 'Revenue Estimate Low')  double? revenueEstimateLow, @JsonKey(name: 'Revenue Estimate High')  double? revenueEstimateHigh, @JsonKey(name: 'Revenue Estimate Year Ago Eps')  double? revenueEstimateYearAgoEps, @JsonKey(name: 'Revenue Estimate Number Of Analysts')  int? revenueEstimateNumberOfAnalysts, @JsonKey(name: 'Revenue Estimate Growth')  double? revenueEstimateGrowth, @JsonKey(name: 'eps Trend Current')  double? epsTrendCurrent, @JsonKey(name: 'eps Trend 7 days Ago')  double? epsTrend7DaysAgo, @JsonKey(name: 'eps Trend 30 days Ago')  double? epsTrend30DaysAgo, @JsonKey(name: 'eps Trend 60 days Ago')  double? epsTrend60DaysAgo, @JsonKey(name: 'eps Trend 90 days Ago')  double? epsTrend90DaysAgo, @JsonKey(name: 'eps Revisions Up Last 7 days')  int? epsRevisionsUpLast7Days, @JsonKey(name: 'eps Revisions Up Last 30 days')  int? epsRevisionsUpLast30Days, @JsonKey(name: 'eps Revisions Down Last 7 days')  int? epsRevisionsDownLast7Days, @JsonKey(name: 'eps Revisions Down Last 30 days')  int? epsRevisionsDownLast30Days, @JsonKey(name: 'stock_type')  int? stockType)?  $default,) {final _that = this;
switch (_that) {
case _FundamentalsEarningsTrend() when $default != null:
return $default(_that.date,_that.period,_that.growth,_that.earningsEstimateAvg,_that.earningsEstimateLow,_that.earningsEstimateHigh,_that.earningsEstimateYearAgoEps,_that.earningsEstimateNumberOfAnalysts,_that.earningsEstimateGrowth,_that.revenueEstimateAvg,_that.revenueEstimateLow,_that.revenueEstimateHigh,_that.revenueEstimateYearAgoEps,_that.revenueEstimateNumberOfAnalysts,_that.revenueEstimateGrowth,_that.epsTrendCurrent,_that.epsTrend7DaysAgo,_that.epsTrend30DaysAgo,_that.epsTrend60DaysAgo,_that.epsTrend90DaysAgo,_that.epsRevisionsUpLast7Days,_that.epsRevisionsUpLast30Days,_that.epsRevisionsDownLast7Days,_that.epsRevisionsDownLast30Days,_that.stockType);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FundamentalsEarningsTrend implements FundamentalsEarningsTrend {
  const _FundamentalsEarningsTrend({@JsonKey(name: 'Date') this.date, @JsonKey(name: 'Period') this.period, @JsonKey(name: 'Growth') this.growth, @JsonKey(name: 'Earnings Estimate Avg') this.earningsEstimateAvg, @JsonKey(name: 'Earnings Estimate Low') this.earningsEstimateLow, @JsonKey(name: 'Earnings Estimate High') this.earningsEstimateHigh, @JsonKey(name: 'Earnings Estimate Year Ago Eps') this.earningsEstimateYearAgoEps, @JsonKey(name: 'Earnings Estimate Number Of Analysts') this.earningsEstimateNumberOfAnalysts, @JsonKey(name: 'Earnings Estimate Growth') this.earningsEstimateGrowth, @JsonKey(name: 'Revenue Estimate Avg') this.revenueEstimateAvg, @JsonKey(name: 'Revenue Estimate Low') this.revenueEstimateLow, @JsonKey(name: 'Revenue Estimate High') this.revenueEstimateHigh, @JsonKey(name: 'Revenue Estimate Year Ago Eps') this.revenueEstimateYearAgoEps, @JsonKey(name: 'Revenue Estimate Number Of Analysts') this.revenueEstimateNumberOfAnalysts, @JsonKey(name: 'Revenue Estimate Growth') this.revenueEstimateGrowth, @JsonKey(name: 'eps Trend Current') this.epsTrendCurrent, @JsonKey(name: 'eps Trend 7 days Ago') this.epsTrend7DaysAgo, @JsonKey(name: 'eps Trend 30 days Ago') this.epsTrend30DaysAgo, @JsonKey(name: 'eps Trend 60 days Ago') this.epsTrend60DaysAgo, @JsonKey(name: 'eps Trend 90 days Ago') this.epsTrend90DaysAgo, @JsonKey(name: 'eps Revisions Up Last 7 days') this.epsRevisionsUpLast7Days, @JsonKey(name: 'eps Revisions Up Last 30 days') this.epsRevisionsUpLast30Days, @JsonKey(name: 'eps Revisions Down Last 7 days') this.epsRevisionsDownLast7Days, @JsonKey(name: 'eps Revisions Down Last 30 days') this.epsRevisionsDownLast30Days, @JsonKey(name: 'stock_type') this.stockType});
  factory _FundamentalsEarningsTrend.fromJson(Map<String, dynamic> json) => _$FundamentalsEarningsTrendFromJson(json);

@override@JsonKey(name: 'Date') final  String? date;
@override@JsonKey(name: 'Period') final  String? period;
@override@JsonKey(name: 'Growth') final  double? growth;
// Earnings estimates
@override@JsonKey(name: 'Earnings Estimate Avg') final  double? earningsEstimateAvg;
@override@JsonKey(name: 'Earnings Estimate Low') final  double? earningsEstimateLow;
@override@JsonKey(name: 'Earnings Estimate High') final  double? earningsEstimateHigh;
@override@JsonKey(name: 'Earnings Estimate Year Ago Eps') final  double? earningsEstimateYearAgoEps;
@override@JsonKey(name: 'Earnings Estimate Number Of Analysts') final  int? earningsEstimateNumberOfAnalysts;
@override@JsonKey(name: 'Earnings Estimate Growth') final  double? earningsEstimateGrowth;
// Revenue estimates
@override@JsonKey(name: 'Revenue Estimate Avg') final  double? revenueEstimateAvg;
@override@JsonKey(name: 'Revenue Estimate Low') final  double? revenueEstimateLow;
@override@JsonKey(name: 'Revenue Estimate High') final  double? revenueEstimateHigh;
@override@JsonKey(name: 'Revenue Estimate Year Ago Eps') final  double? revenueEstimateYearAgoEps;
@override@JsonKey(name: 'Revenue Estimate Number Of Analysts') final  int? revenueEstimateNumberOfAnalysts;
@override@JsonKey(name: 'Revenue Estimate Growth') final  double? revenueEstimateGrowth;
// EPS Trend
@override@JsonKey(name: 'eps Trend Current') final  double? epsTrendCurrent;
@override@JsonKey(name: 'eps Trend 7 days Ago') final  double? epsTrend7DaysAgo;
@override@JsonKey(name: 'eps Trend 30 days Ago') final  double? epsTrend30DaysAgo;
@override@JsonKey(name: 'eps Trend 60 days Ago') final  double? epsTrend60DaysAgo;
@override@JsonKey(name: 'eps Trend 90 days Ago') final  double? epsTrend90DaysAgo;
// EPS Revisions
@override@JsonKey(name: 'eps Revisions Up Last 7 days') final  int? epsRevisionsUpLast7Days;
@override@JsonKey(name: 'eps Revisions Up Last 30 days') final  int? epsRevisionsUpLast30Days;
@override@JsonKey(name: 'eps Revisions Down Last 7 days') final  int? epsRevisionsDownLast7Days;
@override@JsonKey(name: 'eps Revisions Down Last 30 days') final  int? epsRevisionsDownLast30Days;
@override@JsonKey(name: 'stock_type') final  int? stockType;

/// Create a copy of FundamentalsEarningsTrend
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FundamentalsEarningsTrendCopyWith<_FundamentalsEarningsTrend> get copyWith => __$FundamentalsEarningsTrendCopyWithImpl<_FundamentalsEarningsTrend>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FundamentalsEarningsTrendToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FundamentalsEarningsTrend&&(identical(other.date, date) || other.date == date)&&(identical(other.period, period) || other.period == period)&&(identical(other.growth, growth) || other.growth == growth)&&(identical(other.earningsEstimateAvg, earningsEstimateAvg) || other.earningsEstimateAvg == earningsEstimateAvg)&&(identical(other.earningsEstimateLow, earningsEstimateLow) || other.earningsEstimateLow == earningsEstimateLow)&&(identical(other.earningsEstimateHigh, earningsEstimateHigh) || other.earningsEstimateHigh == earningsEstimateHigh)&&(identical(other.earningsEstimateYearAgoEps, earningsEstimateYearAgoEps) || other.earningsEstimateYearAgoEps == earningsEstimateYearAgoEps)&&(identical(other.earningsEstimateNumberOfAnalysts, earningsEstimateNumberOfAnalysts) || other.earningsEstimateNumberOfAnalysts == earningsEstimateNumberOfAnalysts)&&(identical(other.earningsEstimateGrowth, earningsEstimateGrowth) || other.earningsEstimateGrowth == earningsEstimateGrowth)&&(identical(other.revenueEstimateAvg, revenueEstimateAvg) || other.revenueEstimateAvg == revenueEstimateAvg)&&(identical(other.revenueEstimateLow, revenueEstimateLow) || other.revenueEstimateLow == revenueEstimateLow)&&(identical(other.revenueEstimateHigh, revenueEstimateHigh) || other.revenueEstimateHigh == revenueEstimateHigh)&&(identical(other.revenueEstimateYearAgoEps, revenueEstimateYearAgoEps) || other.revenueEstimateYearAgoEps == revenueEstimateYearAgoEps)&&(identical(other.revenueEstimateNumberOfAnalysts, revenueEstimateNumberOfAnalysts) || other.revenueEstimateNumberOfAnalysts == revenueEstimateNumberOfAnalysts)&&(identical(other.revenueEstimateGrowth, revenueEstimateGrowth) || other.revenueEstimateGrowth == revenueEstimateGrowth)&&(identical(other.epsTrendCurrent, epsTrendCurrent) || other.epsTrendCurrent == epsTrendCurrent)&&(identical(other.epsTrend7DaysAgo, epsTrend7DaysAgo) || other.epsTrend7DaysAgo == epsTrend7DaysAgo)&&(identical(other.epsTrend30DaysAgo, epsTrend30DaysAgo) || other.epsTrend30DaysAgo == epsTrend30DaysAgo)&&(identical(other.epsTrend60DaysAgo, epsTrend60DaysAgo) || other.epsTrend60DaysAgo == epsTrend60DaysAgo)&&(identical(other.epsTrend90DaysAgo, epsTrend90DaysAgo) || other.epsTrend90DaysAgo == epsTrend90DaysAgo)&&(identical(other.epsRevisionsUpLast7Days, epsRevisionsUpLast7Days) || other.epsRevisionsUpLast7Days == epsRevisionsUpLast7Days)&&(identical(other.epsRevisionsUpLast30Days, epsRevisionsUpLast30Days) || other.epsRevisionsUpLast30Days == epsRevisionsUpLast30Days)&&(identical(other.epsRevisionsDownLast7Days, epsRevisionsDownLast7Days) || other.epsRevisionsDownLast7Days == epsRevisionsDownLast7Days)&&(identical(other.epsRevisionsDownLast30Days, epsRevisionsDownLast30Days) || other.epsRevisionsDownLast30Days == epsRevisionsDownLast30Days)&&(identical(other.stockType, stockType) || other.stockType == stockType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,date,period,growth,earningsEstimateAvg,earningsEstimateLow,earningsEstimateHigh,earningsEstimateYearAgoEps,earningsEstimateNumberOfAnalysts,earningsEstimateGrowth,revenueEstimateAvg,revenueEstimateLow,revenueEstimateHigh,revenueEstimateYearAgoEps,revenueEstimateNumberOfAnalysts,revenueEstimateGrowth,epsTrendCurrent,epsTrend7DaysAgo,epsTrend30DaysAgo,epsTrend60DaysAgo,epsTrend90DaysAgo,epsRevisionsUpLast7Days,epsRevisionsUpLast30Days,epsRevisionsDownLast7Days,epsRevisionsDownLast30Days,stockType]);

@override
String toString() {
  return 'FundamentalsEarningsTrend(date: $date, period: $period, growth: $growth, earningsEstimateAvg: $earningsEstimateAvg, earningsEstimateLow: $earningsEstimateLow, earningsEstimateHigh: $earningsEstimateHigh, earningsEstimateYearAgoEps: $earningsEstimateYearAgoEps, earningsEstimateNumberOfAnalysts: $earningsEstimateNumberOfAnalysts, earningsEstimateGrowth: $earningsEstimateGrowth, revenueEstimateAvg: $revenueEstimateAvg, revenueEstimateLow: $revenueEstimateLow, revenueEstimateHigh: $revenueEstimateHigh, revenueEstimateYearAgoEps: $revenueEstimateYearAgoEps, revenueEstimateNumberOfAnalysts: $revenueEstimateNumberOfAnalysts, revenueEstimateGrowth: $revenueEstimateGrowth, epsTrendCurrent: $epsTrendCurrent, epsTrend7DaysAgo: $epsTrend7DaysAgo, epsTrend30DaysAgo: $epsTrend30DaysAgo, epsTrend60DaysAgo: $epsTrend60DaysAgo, epsTrend90DaysAgo: $epsTrend90DaysAgo, epsRevisionsUpLast7Days: $epsRevisionsUpLast7Days, epsRevisionsUpLast30Days: $epsRevisionsUpLast30Days, epsRevisionsDownLast7Days: $epsRevisionsDownLast7Days, epsRevisionsDownLast30Days: $epsRevisionsDownLast30Days, stockType: $stockType)';
}


}

/// @nodoc
abstract mixin class _$FundamentalsEarningsTrendCopyWith<$Res> implements $FundamentalsEarningsTrendCopyWith<$Res> {
  factory _$FundamentalsEarningsTrendCopyWith(_FundamentalsEarningsTrend value, $Res Function(_FundamentalsEarningsTrend) _then) = __$FundamentalsEarningsTrendCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'Date') String? date,@JsonKey(name: 'Period') String? period,@JsonKey(name: 'Growth') double? growth,@JsonKey(name: 'Earnings Estimate Avg') double? earningsEstimateAvg,@JsonKey(name: 'Earnings Estimate Low') double? earningsEstimateLow,@JsonKey(name: 'Earnings Estimate High') double? earningsEstimateHigh,@JsonKey(name: 'Earnings Estimate Year Ago Eps') double? earningsEstimateYearAgoEps,@JsonKey(name: 'Earnings Estimate Number Of Analysts') int? earningsEstimateNumberOfAnalysts,@JsonKey(name: 'Earnings Estimate Growth') double? earningsEstimateGrowth,@JsonKey(name: 'Revenue Estimate Avg') double? revenueEstimateAvg,@JsonKey(name: 'Revenue Estimate Low') double? revenueEstimateLow,@JsonKey(name: 'Revenue Estimate High') double? revenueEstimateHigh,@JsonKey(name: 'Revenue Estimate Year Ago Eps') double? revenueEstimateYearAgoEps,@JsonKey(name: 'Revenue Estimate Number Of Analysts') int? revenueEstimateNumberOfAnalysts,@JsonKey(name: 'Revenue Estimate Growth') double? revenueEstimateGrowth,@JsonKey(name: 'eps Trend Current') double? epsTrendCurrent,@JsonKey(name: 'eps Trend 7 days Ago') double? epsTrend7DaysAgo,@JsonKey(name: 'eps Trend 30 days Ago') double? epsTrend30DaysAgo,@JsonKey(name: 'eps Trend 60 days Ago') double? epsTrend60DaysAgo,@JsonKey(name: 'eps Trend 90 days Ago') double? epsTrend90DaysAgo,@JsonKey(name: 'eps Revisions Up Last 7 days') int? epsRevisionsUpLast7Days,@JsonKey(name: 'eps Revisions Up Last 30 days') int? epsRevisionsUpLast30Days,@JsonKey(name: 'eps Revisions Down Last 7 days') int? epsRevisionsDownLast7Days,@JsonKey(name: 'eps Revisions Down Last 30 days') int? epsRevisionsDownLast30Days,@JsonKey(name: 'stock_type') int? stockType
});




}
/// @nodoc
class __$FundamentalsEarningsTrendCopyWithImpl<$Res>
    implements _$FundamentalsEarningsTrendCopyWith<$Res> {
  __$FundamentalsEarningsTrendCopyWithImpl(this._self, this._then);

  final _FundamentalsEarningsTrend _self;
  final $Res Function(_FundamentalsEarningsTrend) _then;

/// Create a copy of FundamentalsEarningsTrend
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? date = freezed,Object? period = freezed,Object? growth = freezed,Object? earningsEstimateAvg = freezed,Object? earningsEstimateLow = freezed,Object? earningsEstimateHigh = freezed,Object? earningsEstimateYearAgoEps = freezed,Object? earningsEstimateNumberOfAnalysts = freezed,Object? earningsEstimateGrowth = freezed,Object? revenueEstimateAvg = freezed,Object? revenueEstimateLow = freezed,Object? revenueEstimateHigh = freezed,Object? revenueEstimateYearAgoEps = freezed,Object? revenueEstimateNumberOfAnalysts = freezed,Object? revenueEstimateGrowth = freezed,Object? epsTrendCurrent = freezed,Object? epsTrend7DaysAgo = freezed,Object? epsTrend30DaysAgo = freezed,Object? epsTrend60DaysAgo = freezed,Object? epsTrend90DaysAgo = freezed,Object? epsRevisionsUpLast7Days = freezed,Object? epsRevisionsUpLast30Days = freezed,Object? epsRevisionsDownLast7Days = freezed,Object? epsRevisionsDownLast30Days = freezed,Object? stockType = freezed,}) {
  return _then(_FundamentalsEarningsTrend(
date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String?,period: freezed == period ? _self.period : period // ignore: cast_nullable_to_non_nullable
as String?,growth: freezed == growth ? _self.growth : growth // ignore: cast_nullable_to_non_nullable
as double?,earningsEstimateAvg: freezed == earningsEstimateAvg ? _self.earningsEstimateAvg : earningsEstimateAvg // ignore: cast_nullable_to_non_nullable
as double?,earningsEstimateLow: freezed == earningsEstimateLow ? _self.earningsEstimateLow : earningsEstimateLow // ignore: cast_nullable_to_non_nullable
as double?,earningsEstimateHigh: freezed == earningsEstimateHigh ? _self.earningsEstimateHigh : earningsEstimateHigh // ignore: cast_nullable_to_non_nullable
as double?,earningsEstimateYearAgoEps: freezed == earningsEstimateYearAgoEps ? _self.earningsEstimateYearAgoEps : earningsEstimateYearAgoEps // ignore: cast_nullable_to_non_nullable
as double?,earningsEstimateNumberOfAnalysts: freezed == earningsEstimateNumberOfAnalysts ? _self.earningsEstimateNumberOfAnalysts : earningsEstimateNumberOfAnalysts // ignore: cast_nullable_to_non_nullable
as int?,earningsEstimateGrowth: freezed == earningsEstimateGrowth ? _self.earningsEstimateGrowth : earningsEstimateGrowth // ignore: cast_nullable_to_non_nullable
as double?,revenueEstimateAvg: freezed == revenueEstimateAvg ? _self.revenueEstimateAvg : revenueEstimateAvg // ignore: cast_nullable_to_non_nullable
as double?,revenueEstimateLow: freezed == revenueEstimateLow ? _self.revenueEstimateLow : revenueEstimateLow // ignore: cast_nullable_to_non_nullable
as double?,revenueEstimateHigh: freezed == revenueEstimateHigh ? _self.revenueEstimateHigh : revenueEstimateHigh // ignore: cast_nullable_to_non_nullable
as double?,revenueEstimateYearAgoEps: freezed == revenueEstimateYearAgoEps ? _self.revenueEstimateYearAgoEps : revenueEstimateYearAgoEps // ignore: cast_nullable_to_non_nullable
as double?,revenueEstimateNumberOfAnalysts: freezed == revenueEstimateNumberOfAnalysts ? _self.revenueEstimateNumberOfAnalysts : revenueEstimateNumberOfAnalysts // ignore: cast_nullable_to_non_nullable
as int?,revenueEstimateGrowth: freezed == revenueEstimateGrowth ? _self.revenueEstimateGrowth : revenueEstimateGrowth // ignore: cast_nullable_to_non_nullable
as double?,epsTrendCurrent: freezed == epsTrendCurrent ? _self.epsTrendCurrent : epsTrendCurrent // ignore: cast_nullable_to_non_nullable
as double?,epsTrend7DaysAgo: freezed == epsTrend7DaysAgo ? _self.epsTrend7DaysAgo : epsTrend7DaysAgo // ignore: cast_nullable_to_non_nullable
as double?,epsTrend30DaysAgo: freezed == epsTrend30DaysAgo ? _self.epsTrend30DaysAgo : epsTrend30DaysAgo // ignore: cast_nullable_to_non_nullable
as double?,epsTrend60DaysAgo: freezed == epsTrend60DaysAgo ? _self.epsTrend60DaysAgo : epsTrend60DaysAgo // ignore: cast_nullable_to_non_nullable
as double?,epsTrend90DaysAgo: freezed == epsTrend90DaysAgo ? _self.epsTrend90DaysAgo : epsTrend90DaysAgo // ignore: cast_nullable_to_non_nullable
as double?,epsRevisionsUpLast7Days: freezed == epsRevisionsUpLast7Days ? _self.epsRevisionsUpLast7Days : epsRevisionsUpLast7Days // ignore: cast_nullable_to_non_nullable
as int?,epsRevisionsUpLast30Days: freezed == epsRevisionsUpLast30Days ? _self.epsRevisionsUpLast30Days : epsRevisionsUpLast30Days // ignore: cast_nullable_to_non_nullable
as int?,epsRevisionsDownLast7Days: freezed == epsRevisionsDownLast7Days ? _self.epsRevisionsDownLast7Days : epsRevisionsDownLast7Days // ignore: cast_nullable_to_non_nullable
as int?,epsRevisionsDownLast30Days: freezed == epsRevisionsDownLast30Days ? _self.epsRevisionsDownLast30Days : epsRevisionsDownLast30Days // ignore: cast_nullable_to_non_nullable
as int?,stockType: freezed == stockType ? _self.stockType : stockType // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$FundamentalsInsiderTransactionsInsights {

@JsonKey(name: 'Top Three Traders') String? get topThreeTraders;@JsonKey(name: 'Change') String? get change;@JsonKey(name: 'post_transaction_amount') double? get postTransactionAmount;
/// Create a copy of FundamentalsInsiderTransactionsInsights
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FundamentalsInsiderTransactionsInsightsCopyWith<FundamentalsInsiderTransactionsInsights> get copyWith => _$FundamentalsInsiderTransactionsInsightsCopyWithImpl<FundamentalsInsiderTransactionsInsights>(this as FundamentalsInsiderTransactionsInsights, _$identity);

  /// Serializes this FundamentalsInsiderTransactionsInsights to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FundamentalsInsiderTransactionsInsights&&(identical(other.topThreeTraders, topThreeTraders) || other.topThreeTraders == topThreeTraders)&&(identical(other.change, change) || other.change == change)&&(identical(other.postTransactionAmount, postTransactionAmount) || other.postTransactionAmount == postTransactionAmount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,topThreeTraders,change,postTransactionAmount);

@override
String toString() {
  return 'FundamentalsInsiderTransactionsInsights(topThreeTraders: $topThreeTraders, change: $change, postTransactionAmount: $postTransactionAmount)';
}


}

/// @nodoc
abstract mixin class $FundamentalsInsiderTransactionsInsightsCopyWith<$Res>  {
  factory $FundamentalsInsiderTransactionsInsightsCopyWith(FundamentalsInsiderTransactionsInsights value, $Res Function(FundamentalsInsiderTransactionsInsights) _then) = _$FundamentalsInsiderTransactionsInsightsCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'Top Three Traders') String? topThreeTraders,@JsonKey(name: 'Change') String? change,@JsonKey(name: 'post_transaction_amount') double? postTransactionAmount
});




}
/// @nodoc
class _$FundamentalsInsiderTransactionsInsightsCopyWithImpl<$Res>
    implements $FundamentalsInsiderTransactionsInsightsCopyWith<$Res> {
  _$FundamentalsInsiderTransactionsInsightsCopyWithImpl(this._self, this._then);

  final FundamentalsInsiderTransactionsInsights _self;
  final $Res Function(FundamentalsInsiderTransactionsInsights) _then;

/// Create a copy of FundamentalsInsiderTransactionsInsights
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? topThreeTraders = freezed,Object? change = freezed,Object? postTransactionAmount = freezed,}) {
  return _then(_self.copyWith(
topThreeTraders: freezed == topThreeTraders ? _self.topThreeTraders : topThreeTraders // ignore: cast_nullable_to_non_nullable
as String?,change: freezed == change ? _self.change : change // ignore: cast_nullable_to_non_nullable
as String?,postTransactionAmount: freezed == postTransactionAmount ? _self.postTransactionAmount : postTransactionAmount // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

}


/// Adds pattern-matching-related methods to [FundamentalsInsiderTransactionsInsights].
extension FundamentalsInsiderTransactionsInsightsPatterns on FundamentalsInsiderTransactionsInsights {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FundamentalsInsiderTransactionsInsights value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FundamentalsInsiderTransactionsInsights() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FundamentalsInsiderTransactionsInsights value)  $default,){
final _that = this;
switch (_that) {
case _FundamentalsInsiderTransactionsInsights():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FundamentalsInsiderTransactionsInsights value)?  $default,){
final _that = this;
switch (_that) {
case _FundamentalsInsiderTransactionsInsights() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'Top Three Traders')  String? topThreeTraders, @JsonKey(name: 'Change')  String? change, @JsonKey(name: 'post_transaction_amount')  double? postTransactionAmount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FundamentalsInsiderTransactionsInsights() when $default != null:
return $default(_that.topThreeTraders,_that.change,_that.postTransactionAmount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'Top Three Traders')  String? topThreeTraders, @JsonKey(name: 'Change')  String? change, @JsonKey(name: 'post_transaction_amount')  double? postTransactionAmount)  $default,) {final _that = this;
switch (_that) {
case _FundamentalsInsiderTransactionsInsights():
return $default(_that.topThreeTraders,_that.change,_that.postTransactionAmount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'Top Three Traders')  String? topThreeTraders, @JsonKey(name: 'Change')  String? change, @JsonKey(name: 'post_transaction_amount')  double? postTransactionAmount)?  $default,) {final _that = this;
switch (_that) {
case _FundamentalsInsiderTransactionsInsights() when $default != null:
return $default(_that.topThreeTraders,_that.change,_that.postTransactionAmount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FundamentalsInsiderTransactionsInsights implements FundamentalsInsiderTransactionsInsights {
  const _FundamentalsInsiderTransactionsInsights({@JsonKey(name: 'Top Three Traders') this.topThreeTraders, @JsonKey(name: 'Change') this.change, @JsonKey(name: 'post_transaction_amount') this.postTransactionAmount});
  factory _FundamentalsInsiderTransactionsInsights.fromJson(Map<String, dynamic> json) => _$FundamentalsInsiderTransactionsInsightsFromJson(json);

@override@JsonKey(name: 'Top Three Traders') final  String? topThreeTraders;
@override@JsonKey(name: 'Change') final  String? change;
@override@JsonKey(name: 'post_transaction_amount') final  double? postTransactionAmount;

/// Create a copy of FundamentalsInsiderTransactionsInsights
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FundamentalsInsiderTransactionsInsightsCopyWith<_FundamentalsInsiderTransactionsInsights> get copyWith => __$FundamentalsInsiderTransactionsInsightsCopyWithImpl<_FundamentalsInsiderTransactionsInsights>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FundamentalsInsiderTransactionsInsightsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FundamentalsInsiderTransactionsInsights&&(identical(other.topThreeTraders, topThreeTraders) || other.topThreeTraders == topThreeTraders)&&(identical(other.change, change) || other.change == change)&&(identical(other.postTransactionAmount, postTransactionAmount) || other.postTransactionAmount == postTransactionAmount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,topThreeTraders,change,postTransactionAmount);

@override
String toString() {
  return 'FundamentalsInsiderTransactionsInsights(topThreeTraders: $topThreeTraders, change: $change, postTransactionAmount: $postTransactionAmount)';
}


}

/// @nodoc
abstract mixin class _$FundamentalsInsiderTransactionsInsightsCopyWith<$Res> implements $FundamentalsInsiderTransactionsInsightsCopyWith<$Res> {
  factory _$FundamentalsInsiderTransactionsInsightsCopyWith(_FundamentalsInsiderTransactionsInsights value, $Res Function(_FundamentalsInsiderTransactionsInsights) _then) = __$FundamentalsInsiderTransactionsInsightsCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'Top Three Traders') String? topThreeTraders,@JsonKey(name: 'Change') String? change,@JsonKey(name: 'post_transaction_amount') double? postTransactionAmount
});




}
/// @nodoc
class __$FundamentalsInsiderTransactionsInsightsCopyWithImpl<$Res>
    implements _$FundamentalsInsiderTransactionsInsightsCopyWith<$Res> {
  __$FundamentalsInsiderTransactionsInsightsCopyWithImpl(this._self, this._then);

  final _FundamentalsInsiderTransactionsInsights _self;
  final $Res Function(_FundamentalsInsiderTransactionsInsights) _then;

/// Create a copy of FundamentalsInsiderTransactionsInsights
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? topThreeTraders = freezed,Object? change = freezed,Object? postTransactionAmount = freezed,}) {
  return _then(_FundamentalsInsiderTransactionsInsights(
topThreeTraders: freezed == topThreeTraders ? _self.topThreeTraders : topThreeTraders // ignore: cast_nullable_to_non_nullable
as String?,change: freezed == change ? _self.change : change // ignore: cast_nullable_to_non_nullable
as String?,postTransactionAmount: freezed == postTransactionAmount ? _self.postTransactionAmount : postTransactionAmount // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}

// dart format on
