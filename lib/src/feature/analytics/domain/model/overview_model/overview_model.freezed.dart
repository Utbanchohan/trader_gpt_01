// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'overview_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StockResponse {

 OverviewData get data; String? get msg; int? get status; dynamic get errors;
/// Create a copy of StockResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StockResponseCopyWith<StockResponse> get copyWith => _$StockResponseCopyWithImpl<StockResponse>(this as StockResponse, _$identity);

  /// Serializes this StockResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StockResponse&&(identical(other.data, data) || other.data == data)&&(identical(other.msg, msg) || other.msg == msg)&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.errors, errors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data,msg,status,const DeepCollectionEquality().hash(errors));

@override
String toString() {
  return 'StockResponse(data: $data, msg: $msg, status: $status, errors: $errors)';
}


}

/// @nodoc
abstract mixin class $StockResponseCopyWith<$Res>  {
  factory $StockResponseCopyWith(StockResponse value, $Res Function(StockResponse) _then) = _$StockResponseCopyWithImpl;
@useResult
$Res call({
 OverviewData data, String? msg, int? status, dynamic errors
});


$OverviewDataCopyWith<$Res> get data;

}
/// @nodoc
class _$StockResponseCopyWithImpl<$Res>
    implements $StockResponseCopyWith<$Res> {
  _$StockResponseCopyWithImpl(this._self, this._then);

  final StockResponse _self;
  final $Res Function(StockResponse) _then;

/// Create a copy of StockResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = null,Object? msg = freezed,Object? status = freezed,Object? errors = freezed,}) {
  return _then(_self.copyWith(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as OverviewData,msg: freezed == msg ? _self.msg : msg // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int?,errors: freezed == errors ? _self.errors : errors // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}
/// Create a copy of StockResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OverviewDataCopyWith<$Res> get data {
  
  return $OverviewDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [StockResponse].
extension StockResponsePatterns on StockResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StockResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StockResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StockResponse value)  $default,){
final _that = this;
switch (_that) {
case _StockResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StockResponse value)?  $default,){
final _that = this;
switch (_that) {
case _StockResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( OverviewData data,  String? msg,  int? status,  dynamic errors)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StockResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( OverviewData data,  String? msg,  int? status,  dynamic errors)  $default,) {final _that = this;
switch (_that) {
case _StockResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( OverviewData data,  String? msg,  int? status,  dynamic errors)?  $default,) {final _that = this;
switch (_that) {
case _StockResponse() when $default != null:
return $default(_that.data,_that.msg,_that.status,_that.errors);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StockResponse implements StockResponse {
  const _StockResponse({required this.data, this.msg, this.status, this.errors});
  factory _StockResponse.fromJson(Map<String, dynamic> json) => _$StockResponseFromJson(json);

@override final  OverviewData data;
@override final  String? msg;
@override final  int? status;
@override final  dynamic errors;

/// Create a copy of StockResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StockResponseCopyWith<_StockResponse> get copyWith => __$StockResponseCopyWithImpl<_StockResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StockResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StockResponse&&(identical(other.data, data) || other.data == data)&&(identical(other.msg, msg) || other.msg == msg)&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.errors, errors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data,msg,status,const DeepCollectionEquality().hash(errors));

@override
String toString() {
  return 'StockResponse(data: $data, msg: $msg, status: $status, errors: $errors)';
}


}

/// @nodoc
abstract mixin class _$StockResponseCopyWith<$Res> implements $StockResponseCopyWith<$Res> {
  factory _$StockResponseCopyWith(_StockResponse value, $Res Function(_StockResponse) _then) = __$StockResponseCopyWithImpl;
@override @useResult
$Res call({
 OverviewData data, String? msg, int? status, dynamic errors
});


@override $OverviewDataCopyWith<$Res> get data;

}
/// @nodoc
class __$StockResponseCopyWithImpl<$Res>
    implements _$StockResponseCopyWith<$Res> {
  __$StockResponseCopyWithImpl(this._self, this._then);

  final _StockResponse _self;
  final $Res Function(_StockResponse) _then;

/// Create a copy of StockResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,Object? msg = freezed,Object? status = freezed,Object? errors = freezed,}) {
  return _then(_StockResponse(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as OverviewData,msg: freezed == msg ? _self.msg : msg // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int?,errors: freezed == errors ? _self.errors : errors // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

/// Create a copy of StockResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OverviewDataCopyWith<$Res> get data {
  
  return $OverviewDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$OverviewData {

 double? get Open; double? get High; double? get Low; double? get Close; double? get previousClose; double? get ThreeDaysChange; double? get OneWeekChange; double? get OneMonthChange; String? get TotalVolume; String? get AverageVolume; double? get open_pos; double? get close_pos; String? get Sector; String? get Industry; String? get MarketCapitalization; String? get SharesOutstanding; double? get FiftyTwoWeekHigh; double? get FiftyTwoWeekLow; double? get AfterHours; double? get AfterHoursPercentage; String? get Exchange; String? get MarketCapClassification;
/// Create a copy of OverviewData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OverviewDataCopyWith<OverviewData> get copyWith => _$OverviewDataCopyWithImpl<OverviewData>(this as OverviewData, _$identity);

  /// Serializes this OverviewData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OverviewData&&(identical(other.Open, Open) || other.Open == Open)&&(identical(other.High, High) || other.High == High)&&(identical(other.Low, Low) || other.Low == Low)&&(identical(other.Close, Close) || other.Close == Close)&&(identical(other.previousClose, previousClose) || other.previousClose == previousClose)&&(identical(other.ThreeDaysChange, ThreeDaysChange) || other.ThreeDaysChange == ThreeDaysChange)&&(identical(other.OneWeekChange, OneWeekChange) || other.OneWeekChange == OneWeekChange)&&(identical(other.OneMonthChange, OneMonthChange) || other.OneMonthChange == OneMonthChange)&&(identical(other.TotalVolume, TotalVolume) || other.TotalVolume == TotalVolume)&&(identical(other.AverageVolume, AverageVolume) || other.AverageVolume == AverageVolume)&&(identical(other.open_pos, open_pos) || other.open_pos == open_pos)&&(identical(other.close_pos, close_pos) || other.close_pos == close_pos)&&(identical(other.Sector, Sector) || other.Sector == Sector)&&(identical(other.Industry, Industry) || other.Industry == Industry)&&(identical(other.MarketCapitalization, MarketCapitalization) || other.MarketCapitalization == MarketCapitalization)&&(identical(other.SharesOutstanding, SharesOutstanding) || other.SharesOutstanding == SharesOutstanding)&&(identical(other.FiftyTwoWeekHigh, FiftyTwoWeekHigh) || other.FiftyTwoWeekHigh == FiftyTwoWeekHigh)&&(identical(other.FiftyTwoWeekLow, FiftyTwoWeekLow) || other.FiftyTwoWeekLow == FiftyTwoWeekLow)&&(identical(other.AfterHours, AfterHours) || other.AfterHours == AfterHours)&&(identical(other.AfterHoursPercentage, AfterHoursPercentage) || other.AfterHoursPercentage == AfterHoursPercentage)&&(identical(other.Exchange, Exchange) || other.Exchange == Exchange)&&(identical(other.MarketCapClassification, MarketCapClassification) || other.MarketCapClassification == MarketCapClassification));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,Open,High,Low,Close,previousClose,ThreeDaysChange,OneWeekChange,OneMonthChange,TotalVolume,AverageVolume,open_pos,close_pos,Sector,Industry,MarketCapitalization,SharesOutstanding,FiftyTwoWeekHigh,FiftyTwoWeekLow,AfterHours,AfterHoursPercentage,Exchange,MarketCapClassification]);

@override
String toString() {
  return 'OverviewData(Open: $Open, High: $High, Low: $Low, Close: $Close, previousClose: $previousClose, ThreeDaysChange: $ThreeDaysChange, OneWeekChange: $OneWeekChange, OneMonthChange: $OneMonthChange, TotalVolume: $TotalVolume, AverageVolume: $AverageVolume, open_pos: $open_pos, close_pos: $close_pos, Sector: $Sector, Industry: $Industry, MarketCapitalization: $MarketCapitalization, SharesOutstanding: $SharesOutstanding, FiftyTwoWeekHigh: $FiftyTwoWeekHigh, FiftyTwoWeekLow: $FiftyTwoWeekLow, AfterHours: $AfterHours, AfterHoursPercentage: $AfterHoursPercentage, Exchange: $Exchange, MarketCapClassification: $MarketCapClassification)';
}


}

/// @nodoc
abstract mixin class $OverviewDataCopyWith<$Res>  {
  factory $OverviewDataCopyWith(OverviewData value, $Res Function(OverviewData) _then) = _$OverviewDataCopyWithImpl;
@useResult
$Res call({
 double? Open, double? High, double? Low, double? Close, double? previousClose, double? ThreeDaysChange, double? OneWeekChange, double? OneMonthChange, String? TotalVolume, String? AverageVolume, double? open_pos, double? close_pos, String? Sector, String? Industry, String? MarketCapitalization, String? SharesOutstanding, double? FiftyTwoWeekHigh, double? FiftyTwoWeekLow, double? AfterHours, double? AfterHoursPercentage, String? Exchange, String? MarketCapClassification
});




}
/// @nodoc
class _$OverviewDataCopyWithImpl<$Res>
    implements $OverviewDataCopyWith<$Res> {
  _$OverviewDataCopyWithImpl(this._self, this._then);

  final OverviewData _self;
  final $Res Function(OverviewData) _then;

/// Create a copy of OverviewData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? Open = freezed,Object? High = freezed,Object? Low = freezed,Object? Close = freezed,Object? previousClose = freezed,Object? ThreeDaysChange = freezed,Object? OneWeekChange = freezed,Object? OneMonthChange = freezed,Object? TotalVolume = freezed,Object? AverageVolume = freezed,Object? open_pos = freezed,Object? close_pos = freezed,Object? Sector = freezed,Object? Industry = freezed,Object? MarketCapitalization = freezed,Object? SharesOutstanding = freezed,Object? FiftyTwoWeekHigh = freezed,Object? FiftyTwoWeekLow = freezed,Object? AfterHours = freezed,Object? AfterHoursPercentage = freezed,Object? Exchange = freezed,Object? MarketCapClassification = freezed,}) {
  return _then(_self.copyWith(
Open: freezed == Open ? _self.Open : Open // ignore: cast_nullable_to_non_nullable
as double?,High: freezed == High ? _self.High : High // ignore: cast_nullable_to_non_nullable
as double?,Low: freezed == Low ? _self.Low : Low // ignore: cast_nullable_to_non_nullable
as double?,Close: freezed == Close ? _self.Close : Close // ignore: cast_nullable_to_non_nullable
as double?,previousClose: freezed == previousClose ? _self.previousClose : previousClose // ignore: cast_nullable_to_non_nullable
as double?,ThreeDaysChange: freezed == ThreeDaysChange ? _self.ThreeDaysChange : ThreeDaysChange // ignore: cast_nullable_to_non_nullable
as double?,OneWeekChange: freezed == OneWeekChange ? _self.OneWeekChange : OneWeekChange // ignore: cast_nullable_to_non_nullable
as double?,OneMonthChange: freezed == OneMonthChange ? _self.OneMonthChange : OneMonthChange // ignore: cast_nullable_to_non_nullable
as double?,TotalVolume: freezed == TotalVolume ? _self.TotalVolume : TotalVolume // ignore: cast_nullable_to_non_nullable
as String?,AverageVolume: freezed == AverageVolume ? _self.AverageVolume : AverageVolume // ignore: cast_nullable_to_non_nullable
as String?,open_pos: freezed == open_pos ? _self.open_pos : open_pos // ignore: cast_nullable_to_non_nullable
as double?,close_pos: freezed == close_pos ? _self.close_pos : close_pos // ignore: cast_nullable_to_non_nullable
as double?,Sector: freezed == Sector ? _self.Sector : Sector // ignore: cast_nullable_to_non_nullable
as String?,Industry: freezed == Industry ? _self.Industry : Industry // ignore: cast_nullable_to_non_nullable
as String?,MarketCapitalization: freezed == MarketCapitalization ? _self.MarketCapitalization : MarketCapitalization // ignore: cast_nullable_to_non_nullable
as String?,SharesOutstanding: freezed == SharesOutstanding ? _self.SharesOutstanding : SharesOutstanding // ignore: cast_nullable_to_non_nullable
as String?,FiftyTwoWeekHigh: freezed == FiftyTwoWeekHigh ? _self.FiftyTwoWeekHigh : FiftyTwoWeekHigh // ignore: cast_nullable_to_non_nullable
as double?,FiftyTwoWeekLow: freezed == FiftyTwoWeekLow ? _self.FiftyTwoWeekLow : FiftyTwoWeekLow // ignore: cast_nullable_to_non_nullable
as double?,AfterHours: freezed == AfterHours ? _self.AfterHours : AfterHours // ignore: cast_nullable_to_non_nullable
as double?,AfterHoursPercentage: freezed == AfterHoursPercentage ? _self.AfterHoursPercentage : AfterHoursPercentage // ignore: cast_nullable_to_non_nullable
as double?,Exchange: freezed == Exchange ? _self.Exchange : Exchange // ignore: cast_nullable_to_non_nullable
as String?,MarketCapClassification: freezed == MarketCapClassification ? _self.MarketCapClassification : MarketCapClassification // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [OverviewData].
extension OverviewDataPatterns on OverviewData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OverviewData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OverviewData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OverviewData value)  $default,){
final _that = this;
switch (_that) {
case _OverviewData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OverviewData value)?  $default,){
final _that = this;
switch (_that) {
case _OverviewData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double? Open,  double? High,  double? Low,  double? Close,  double? previousClose,  double? ThreeDaysChange,  double? OneWeekChange,  double? OneMonthChange,  String? TotalVolume,  String? AverageVolume,  double? open_pos,  double? close_pos,  String? Sector,  String? Industry,  String? MarketCapitalization,  String? SharesOutstanding,  double? FiftyTwoWeekHigh,  double? FiftyTwoWeekLow,  double? AfterHours,  double? AfterHoursPercentage,  String? Exchange,  String? MarketCapClassification)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OverviewData() when $default != null:
return $default(_that.Open,_that.High,_that.Low,_that.Close,_that.previousClose,_that.ThreeDaysChange,_that.OneWeekChange,_that.OneMonthChange,_that.TotalVolume,_that.AverageVolume,_that.open_pos,_that.close_pos,_that.Sector,_that.Industry,_that.MarketCapitalization,_that.SharesOutstanding,_that.FiftyTwoWeekHigh,_that.FiftyTwoWeekLow,_that.AfterHours,_that.AfterHoursPercentage,_that.Exchange,_that.MarketCapClassification);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double? Open,  double? High,  double? Low,  double? Close,  double? previousClose,  double? ThreeDaysChange,  double? OneWeekChange,  double? OneMonthChange,  String? TotalVolume,  String? AverageVolume,  double? open_pos,  double? close_pos,  String? Sector,  String? Industry,  String? MarketCapitalization,  String? SharesOutstanding,  double? FiftyTwoWeekHigh,  double? FiftyTwoWeekLow,  double? AfterHours,  double? AfterHoursPercentage,  String? Exchange,  String? MarketCapClassification)  $default,) {final _that = this;
switch (_that) {
case _OverviewData():
return $default(_that.Open,_that.High,_that.Low,_that.Close,_that.previousClose,_that.ThreeDaysChange,_that.OneWeekChange,_that.OneMonthChange,_that.TotalVolume,_that.AverageVolume,_that.open_pos,_that.close_pos,_that.Sector,_that.Industry,_that.MarketCapitalization,_that.SharesOutstanding,_that.FiftyTwoWeekHigh,_that.FiftyTwoWeekLow,_that.AfterHours,_that.AfterHoursPercentage,_that.Exchange,_that.MarketCapClassification);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double? Open,  double? High,  double? Low,  double? Close,  double? previousClose,  double? ThreeDaysChange,  double? OneWeekChange,  double? OneMonthChange,  String? TotalVolume,  String? AverageVolume,  double? open_pos,  double? close_pos,  String? Sector,  String? Industry,  String? MarketCapitalization,  String? SharesOutstanding,  double? FiftyTwoWeekHigh,  double? FiftyTwoWeekLow,  double? AfterHours,  double? AfterHoursPercentage,  String? Exchange,  String? MarketCapClassification)?  $default,) {final _that = this;
switch (_that) {
case _OverviewData() when $default != null:
return $default(_that.Open,_that.High,_that.Low,_that.Close,_that.previousClose,_that.ThreeDaysChange,_that.OneWeekChange,_that.OneMonthChange,_that.TotalVolume,_that.AverageVolume,_that.open_pos,_that.close_pos,_that.Sector,_that.Industry,_that.MarketCapitalization,_that.SharesOutstanding,_that.FiftyTwoWeekHigh,_that.FiftyTwoWeekLow,_that.AfterHours,_that.AfterHoursPercentage,_that.Exchange,_that.MarketCapClassification);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OverviewData implements OverviewData {
  const _OverviewData({this.Open, this.High, this.Low, this.Close, this.previousClose, this.ThreeDaysChange, this.OneWeekChange, this.OneMonthChange, this.TotalVolume, this.AverageVolume, this.open_pos, this.close_pos, this.Sector, this.Industry, this.MarketCapitalization, this.SharesOutstanding, this.FiftyTwoWeekHigh, this.FiftyTwoWeekLow, this.AfterHours, this.AfterHoursPercentage, this.Exchange, this.MarketCapClassification});
  factory _OverviewData.fromJson(Map<String, dynamic> json) => _$OverviewDataFromJson(json);

@override final  double? Open;
@override final  double? High;
@override final  double? Low;
@override final  double? Close;
@override final  double? previousClose;
@override final  double? ThreeDaysChange;
@override final  double? OneWeekChange;
@override final  double? OneMonthChange;
@override final  String? TotalVolume;
@override final  String? AverageVolume;
@override final  double? open_pos;
@override final  double? close_pos;
@override final  String? Sector;
@override final  String? Industry;
@override final  String? MarketCapitalization;
@override final  String? SharesOutstanding;
@override final  double? FiftyTwoWeekHigh;
@override final  double? FiftyTwoWeekLow;
@override final  double? AfterHours;
@override final  double? AfterHoursPercentage;
@override final  String? Exchange;
@override final  String? MarketCapClassification;

/// Create a copy of OverviewData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OverviewDataCopyWith<_OverviewData> get copyWith => __$OverviewDataCopyWithImpl<_OverviewData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OverviewDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OverviewData&&(identical(other.Open, Open) || other.Open == Open)&&(identical(other.High, High) || other.High == High)&&(identical(other.Low, Low) || other.Low == Low)&&(identical(other.Close, Close) || other.Close == Close)&&(identical(other.previousClose, previousClose) || other.previousClose == previousClose)&&(identical(other.ThreeDaysChange, ThreeDaysChange) || other.ThreeDaysChange == ThreeDaysChange)&&(identical(other.OneWeekChange, OneWeekChange) || other.OneWeekChange == OneWeekChange)&&(identical(other.OneMonthChange, OneMonthChange) || other.OneMonthChange == OneMonthChange)&&(identical(other.TotalVolume, TotalVolume) || other.TotalVolume == TotalVolume)&&(identical(other.AverageVolume, AverageVolume) || other.AverageVolume == AverageVolume)&&(identical(other.open_pos, open_pos) || other.open_pos == open_pos)&&(identical(other.close_pos, close_pos) || other.close_pos == close_pos)&&(identical(other.Sector, Sector) || other.Sector == Sector)&&(identical(other.Industry, Industry) || other.Industry == Industry)&&(identical(other.MarketCapitalization, MarketCapitalization) || other.MarketCapitalization == MarketCapitalization)&&(identical(other.SharesOutstanding, SharesOutstanding) || other.SharesOutstanding == SharesOutstanding)&&(identical(other.FiftyTwoWeekHigh, FiftyTwoWeekHigh) || other.FiftyTwoWeekHigh == FiftyTwoWeekHigh)&&(identical(other.FiftyTwoWeekLow, FiftyTwoWeekLow) || other.FiftyTwoWeekLow == FiftyTwoWeekLow)&&(identical(other.AfterHours, AfterHours) || other.AfterHours == AfterHours)&&(identical(other.AfterHoursPercentage, AfterHoursPercentage) || other.AfterHoursPercentage == AfterHoursPercentage)&&(identical(other.Exchange, Exchange) || other.Exchange == Exchange)&&(identical(other.MarketCapClassification, MarketCapClassification) || other.MarketCapClassification == MarketCapClassification));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,Open,High,Low,Close,previousClose,ThreeDaysChange,OneWeekChange,OneMonthChange,TotalVolume,AverageVolume,open_pos,close_pos,Sector,Industry,MarketCapitalization,SharesOutstanding,FiftyTwoWeekHigh,FiftyTwoWeekLow,AfterHours,AfterHoursPercentage,Exchange,MarketCapClassification]);

@override
String toString() {
  return 'OverviewData(Open: $Open, High: $High, Low: $Low, Close: $Close, previousClose: $previousClose, ThreeDaysChange: $ThreeDaysChange, OneWeekChange: $OneWeekChange, OneMonthChange: $OneMonthChange, TotalVolume: $TotalVolume, AverageVolume: $AverageVolume, open_pos: $open_pos, close_pos: $close_pos, Sector: $Sector, Industry: $Industry, MarketCapitalization: $MarketCapitalization, SharesOutstanding: $SharesOutstanding, FiftyTwoWeekHigh: $FiftyTwoWeekHigh, FiftyTwoWeekLow: $FiftyTwoWeekLow, AfterHours: $AfterHours, AfterHoursPercentage: $AfterHoursPercentage, Exchange: $Exchange, MarketCapClassification: $MarketCapClassification)';
}


}

/// @nodoc
abstract mixin class _$OverviewDataCopyWith<$Res> implements $OverviewDataCopyWith<$Res> {
  factory _$OverviewDataCopyWith(_OverviewData value, $Res Function(_OverviewData) _then) = __$OverviewDataCopyWithImpl;
@override @useResult
$Res call({
 double? Open, double? High, double? Low, double? Close, double? previousClose, double? ThreeDaysChange, double? OneWeekChange, double? OneMonthChange, String? TotalVolume, String? AverageVolume, double? open_pos, double? close_pos, String? Sector, String? Industry, String? MarketCapitalization, String? SharesOutstanding, double? FiftyTwoWeekHigh, double? FiftyTwoWeekLow, double? AfterHours, double? AfterHoursPercentage, String? Exchange, String? MarketCapClassification
});




}
/// @nodoc
class __$OverviewDataCopyWithImpl<$Res>
    implements _$OverviewDataCopyWith<$Res> {
  __$OverviewDataCopyWithImpl(this._self, this._then);

  final _OverviewData _self;
  final $Res Function(_OverviewData) _then;

/// Create a copy of OverviewData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? Open = freezed,Object? High = freezed,Object? Low = freezed,Object? Close = freezed,Object? previousClose = freezed,Object? ThreeDaysChange = freezed,Object? OneWeekChange = freezed,Object? OneMonthChange = freezed,Object? TotalVolume = freezed,Object? AverageVolume = freezed,Object? open_pos = freezed,Object? close_pos = freezed,Object? Sector = freezed,Object? Industry = freezed,Object? MarketCapitalization = freezed,Object? SharesOutstanding = freezed,Object? FiftyTwoWeekHigh = freezed,Object? FiftyTwoWeekLow = freezed,Object? AfterHours = freezed,Object? AfterHoursPercentage = freezed,Object? Exchange = freezed,Object? MarketCapClassification = freezed,}) {
  return _then(_OverviewData(
Open: freezed == Open ? _self.Open : Open // ignore: cast_nullable_to_non_nullable
as double?,High: freezed == High ? _self.High : High // ignore: cast_nullable_to_non_nullable
as double?,Low: freezed == Low ? _self.Low : Low // ignore: cast_nullable_to_non_nullable
as double?,Close: freezed == Close ? _self.Close : Close // ignore: cast_nullable_to_non_nullable
as double?,previousClose: freezed == previousClose ? _self.previousClose : previousClose // ignore: cast_nullable_to_non_nullable
as double?,ThreeDaysChange: freezed == ThreeDaysChange ? _self.ThreeDaysChange : ThreeDaysChange // ignore: cast_nullable_to_non_nullable
as double?,OneWeekChange: freezed == OneWeekChange ? _self.OneWeekChange : OneWeekChange // ignore: cast_nullable_to_non_nullable
as double?,OneMonthChange: freezed == OneMonthChange ? _self.OneMonthChange : OneMonthChange // ignore: cast_nullable_to_non_nullable
as double?,TotalVolume: freezed == TotalVolume ? _self.TotalVolume : TotalVolume // ignore: cast_nullable_to_non_nullable
as String?,AverageVolume: freezed == AverageVolume ? _self.AverageVolume : AverageVolume // ignore: cast_nullable_to_non_nullable
as String?,open_pos: freezed == open_pos ? _self.open_pos : open_pos // ignore: cast_nullable_to_non_nullable
as double?,close_pos: freezed == close_pos ? _self.close_pos : close_pos // ignore: cast_nullable_to_non_nullable
as double?,Sector: freezed == Sector ? _self.Sector : Sector // ignore: cast_nullable_to_non_nullable
as String?,Industry: freezed == Industry ? _self.Industry : Industry // ignore: cast_nullable_to_non_nullable
as String?,MarketCapitalization: freezed == MarketCapitalization ? _self.MarketCapitalization : MarketCapitalization // ignore: cast_nullable_to_non_nullable
as String?,SharesOutstanding: freezed == SharesOutstanding ? _self.SharesOutstanding : SharesOutstanding // ignore: cast_nullable_to_non_nullable
as String?,FiftyTwoWeekHigh: freezed == FiftyTwoWeekHigh ? _self.FiftyTwoWeekHigh : FiftyTwoWeekHigh // ignore: cast_nullable_to_non_nullable
as double?,FiftyTwoWeekLow: freezed == FiftyTwoWeekLow ? _self.FiftyTwoWeekLow : FiftyTwoWeekLow // ignore: cast_nullable_to_non_nullable
as double?,AfterHours: freezed == AfterHours ? _self.AfterHours : AfterHours // ignore: cast_nullable_to_non_nullable
as double?,AfterHoursPercentage: freezed == AfterHoursPercentage ? _self.AfterHoursPercentage : AfterHoursPercentage // ignore: cast_nullable_to_non_nullable
as double?,Exchange: freezed == Exchange ? _self.Exchange : Exchange // ignore: cast_nullable_to_non_nullable
as String?,MarketCapClassification: freezed == MarketCapClassification ? _self.MarketCapClassification : MarketCapClassification // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
