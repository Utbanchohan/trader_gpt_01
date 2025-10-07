// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'company_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CompanyModel {

 int get status; String get msg; Map<String, dynamic>? get errors; CompanyData get data;
/// Create a copy of CompanyModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CompanyModelCopyWith<CompanyModel> get copyWith => _$CompanyModelCopyWithImpl<CompanyModel>(this as CompanyModel, _$identity);

  /// Serializes this CompanyModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CompanyModel&&(identical(other.status, status) || other.status == status)&&(identical(other.msg, msg) || other.msg == msg)&&const DeepCollectionEquality().equals(other.errors, errors)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,msg,const DeepCollectionEquality().hash(errors),data);

@override
String toString() {
  return 'CompanyModel(status: $status, msg: $msg, errors: $errors, data: $data)';
}


}

/// @nodoc
abstract mixin class $CompanyModelCopyWith<$Res>  {
  factory $CompanyModelCopyWith(CompanyModel value, $Res Function(CompanyModel) _then) = _$CompanyModelCopyWithImpl;
@useResult
$Res call({
 int status, String msg, Map<String, dynamic>? errors, CompanyData data
});


$CompanyDataCopyWith<$Res> get data;

}
/// @nodoc
class _$CompanyModelCopyWithImpl<$Res>
    implements $CompanyModelCopyWith<$Res> {
  _$CompanyModelCopyWithImpl(this._self, this._then);

  final CompanyModel _self;
  final $Res Function(CompanyModel) _then;

/// Create a copy of CompanyModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? msg = null,Object? errors = freezed,Object? data = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int,msg: null == msg ? _self.msg : msg // ignore: cast_nullable_to_non_nullable
as String,errors: freezed == errors ? _self.errors : errors // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as CompanyData,
  ));
}
/// Create a copy of CompanyModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CompanyDataCopyWith<$Res> get data {
  
  return $CompanyDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [CompanyModel].
extension CompanyModelPatterns on CompanyModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CompanyModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CompanyModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CompanyModel value)  $default,){
final _that = this;
switch (_that) {
case _CompanyModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CompanyModel value)?  $default,){
final _that = this;
switch (_that) {
case _CompanyModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int status,  String msg,  Map<String, dynamic>? errors,  CompanyData data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CompanyModel() when $default != null:
return $default(_that.status,_that.msg,_that.errors,_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int status,  String msg,  Map<String, dynamic>? errors,  CompanyData data)  $default,) {final _that = this;
switch (_that) {
case _CompanyModel():
return $default(_that.status,_that.msg,_that.errors,_that.data);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int status,  String msg,  Map<String, dynamic>? errors,  CompanyData data)?  $default,) {final _that = this;
switch (_that) {
case _CompanyModel() when $default != null:
return $default(_that.status,_that.msg,_that.errors,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CompanyModel implements CompanyModel {
  const _CompanyModel({required this.status, required this.msg, final  Map<String, dynamic>? errors, required this.data}): _errors = errors;
  factory _CompanyModel.fromJson(Map<String, dynamic> json) => _$CompanyModelFromJson(json);

@override final  int status;
@override final  String msg;
 final  Map<String, dynamic>? _errors;
@override Map<String, dynamic>? get errors {
  final value = _errors;
  if (value == null) return null;
  if (_errors is EqualUnmodifiableMapView) return _errors;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

@override final  CompanyData data;

/// Create a copy of CompanyModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CompanyModelCopyWith<_CompanyModel> get copyWith => __$CompanyModelCopyWithImpl<_CompanyModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CompanyModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CompanyModel&&(identical(other.status, status) || other.status == status)&&(identical(other.msg, msg) || other.msg == msg)&&const DeepCollectionEquality().equals(other._errors, _errors)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,msg,const DeepCollectionEquality().hash(_errors),data);

@override
String toString() {
  return 'CompanyModel(status: $status, msg: $msg, errors: $errors, data: $data)';
}


}

/// @nodoc
abstract mixin class _$CompanyModelCopyWith<$Res> implements $CompanyModelCopyWith<$Res> {
  factory _$CompanyModelCopyWith(_CompanyModel value, $Res Function(_CompanyModel) _then) = __$CompanyModelCopyWithImpl;
@override @useResult
$Res call({
 int status, String msg, Map<String, dynamic>? errors, CompanyData data
});


@override $CompanyDataCopyWith<$Res> get data;

}
/// @nodoc
class __$CompanyModelCopyWithImpl<$Res>
    implements _$CompanyModelCopyWith<$Res> {
  __$CompanyModelCopyWithImpl(this._self, this._then);

  final _CompanyModel _self;
  final $Res Function(_CompanyModel) _then;

/// Create a copy of CompanyModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? msg = null,Object? errors = freezed,Object? data = null,}) {
  return _then(_CompanyModel(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int,msg: null == msg ? _self.msg : msg // ignore: cast_nullable_to_non_nullable
as String,errors: freezed == errors ? _self._errors : errors // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as CompanyData,
  ));
}

/// Create a copy of CompanyModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CompanyDataCopyWith<$Res> get data {
  
  return $CompanyDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$CompanyData {

@JsonKey(name: "General") General get general;
/// Create a copy of CompanyData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CompanyDataCopyWith<CompanyData> get copyWith => _$CompanyDataCopyWithImpl<CompanyData>(this as CompanyData, _$identity);

  /// Serializes this CompanyData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CompanyData&&(identical(other.general, general) || other.general == general));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,general);

@override
String toString() {
  return 'CompanyData(general: $general)';
}


}

/// @nodoc
abstract mixin class $CompanyDataCopyWith<$Res>  {
  factory $CompanyDataCopyWith(CompanyData value, $Res Function(CompanyData) _then) = _$CompanyDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "General") General general
});


$GeneralCopyWith<$Res> get general;

}
/// @nodoc
class _$CompanyDataCopyWithImpl<$Res>
    implements $CompanyDataCopyWith<$Res> {
  _$CompanyDataCopyWithImpl(this._self, this._then);

  final CompanyData _self;
  final $Res Function(CompanyData) _then;

/// Create a copy of CompanyData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? general = null,}) {
  return _then(_self.copyWith(
general: null == general ? _self.general : general // ignore: cast_nullable_to_non_nullable
as General,
  ));
}
/// Create a copy of CompanyData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GeneralCopyWith<$Res> get general {
  
  return $GeneralCopyWith<$Res>(_self.general, (value) {
    return _then(_self.copyWith(general: value));
  });
}
}


/// Adds pattern-matching-related methods to [CompanyData].
extension CompanyDataPatterns on CompanyData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CompanyData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CompanyData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CompanyData value)  $default,){
final _that = this;
switch (_that) {
case _CompanyData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CompanyData value)?  $default,){
final _that = this;
switch (_that) {
case _CompanyData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "General")  General general)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CompanyData() when $default != null:
return $default(_that.general);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "General")  General general)  $default,) {final _that = this;
switch (_that) {
case _CompanyData():
return $default(_that.general);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "General")  General general)?  $default,) {final _that = this;
switch (_that) {
case _CompanyData() when $default != null:
return $default(_that.general);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CompanyData implements CompanyData {
  const _CompanyData({@JsonKey(name: "General") required this.general});
  factory _CompanyData.fromJson(Map<String, dynamic> json) => _$CompanyDataFromJson(json);

@override@JsonKey(name: "General") final  General general;

/// Create a copy of CompanyData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CompanyDataCopyWith<_CompanyData> get copyWith => __$CompanyDataCopyWithImpl<_CompanyData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CompanyDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CompanyData&&(identical(other.general, general) || other.general == general));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,general);

@override
String toString() {
  return 'CompanyData(general: $general)';
}


}

/// @nodoc
abstract mixin class _$CompanyDataCopyWith<$Res> implements $CompanyDataCopyWith<$Res> {
  factory _$CompanyDataCopyWith(_CompanyData value, $Res Function(_CompanyData) _then) = __$CompanyDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "General") General general
});


@override $GeneralCopyWith<$Res> get general;

}
/// @nodoc
class __$CompanyDataCopyWithImpl<$Res>
    implements _$CompanyDataCopyWith<$Res> {
  __$CompanyDataCopyWithImpl(this._self, this._then);

  final _CompanyData _self;
  final $Res Function(_CompanyData) _then;

/// Create a copy of CompanyData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? general = null,}) {
  return _then(_CompanyData(
general: null == general ? _self.general : general // ignore: cast_nullable_to_non_nullable
as General,
  ));
}

/// Create a copy of CompanyData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GeneralCopyWith<$Res> get general {
  
  return $GeneralCopyWith<$Res>(_self.general, (value) {
    return _then(_self.copyWith(general: value));
  });
}
}


/// @nodoc
mixin _$General {

 int? get IPODate; String? get Symbol; String? get Exchange; String? get Country; String? get FiscalYearEnd; String? get Sector; String? get Industry; String? get Street; String? get City; String? get State; String? get ZIP; double? get MarketCapitalization; double? get EBITDA; double? get RevenueTTM; int? get FullTimeEmployees; double? get PercentInstitutions; String? get Description; String? get Address; String? get Type; String? get Name; String? get CurrencyCode; String? get CurrencyName; String? get CurrencySymbol; String? get CountryName; String? get CountryISO; String? get ISIN; String? get LEI; String? get PrimaryTicker; String? get CUSIP; String? get CIK; String? get EmployerIdNumber; String? get InternationalDomestic; String? get GicSector; String? get GicGroup; String? get GicIndustry; String? get GicSubIndustry; String? get HomeCategory; bool? get IsDelisted; String? get Phone; String? get WebURL; String? get LogoURL; double? get SharesOutstanding; double? get FiftyTwoWeekLow; double? get FiftyTwoWeekHigh; String? get type; int? get stock_type; List<Officer>? get Officers;
/// Create a copy of General
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GeneralCopyWith<General> get copyWith => _$GeneralCopyWithImpl<General>(this as General, _$identity);

  /// Serializes this General to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is General&&(identical(other.IPODate, IPODate) || other.IPODate == IPODate)&&(identical(other.Symbol, Symbol) || other.Symbol == Symbol)&&(identical(other.Exchange, Exchange) || other.Exchange == Exchange)&&(identical(other.Country, Country) || other.Country == Country)&&(identical(other.FiscalYearEnd, FiscalYearEnd) || other.FiscalYearEnd == FiscalYearEnd)&&(identical(other.Sector, Sector) || other.Sector == Sector)&&(identical(other.Industry, Industry) || other.Industry == Industry)&&(identical(other.Street, Street) || other.Street == Street)&&(identical(other.City, City) || other.City == City)&&(identical(other.State, State) || other.State == State)&&(identical(other.ZIP, ZIP) || other.ZIP == ZIP)&&(identical(other.MarketCapitalization, MarketCapitalization) || other.MarketCapitalization == MarketCapitalization)&&(identical(other.EBITDA, EBITDA) || other.EBITDA == EBITDA)&&(identical(other.RevenueTTM, RevenueTTM) || other.RevenueTTM == RevenueTTM)&&(identical(other.FullTimeEmployees, FullTimeEmployees) || other.FullTimeEmployees == FullTimeEmployees)&&(identical(other.PercentInstitutions, PercentInstitutions) || other.PercentInstitutions == PercentInstitutions)&&(identical(other.Description, Description) || other.Description == Description)&&(identical(other.Address, Address) || other.Address == Address)&&(identical(other.Type, Type) || other.Type == Type)&&(identical(other.Name, Name) || other.Name == Name)&&(identical(other.CurrencyCode, CurrencyCode) || other.CurrencyCode == CurrencyCode)&&(identical(other.CurrencyName, CurrencyName) || other.CurrencyName == CurrencyName)&&(identical(other.CurrencySymbol, CurrencySymbol) || other.CurrencySymbol == CurrencySymbol)&&(identical(other.CountryName, CountryName) || other.CountryName == CountryName)&&(identical(other.CountryISO, CountryISO) || other.CountryISO == CountryISO)&&(identical(other.ISIN, ISIN) || other.ISIN == ISIN)&&(identical(other.LEI, LEI) || other.LEI == LEI)&&(identical(other.PrimaryTicker, PrimaryTicker) || other.PrimaryTicker == PrimaryTicker)&&(identical(other.CUSIP, CUSIP) || other.CUSIP == CUSIP)&&(identical(other.CIK, CIK) || other.CIK == CIK)&&(identical(other.EmployerIdNumber, EmployerIdNumber) || other.EmployerIdNumber == EmployerIdNumber)&&(identical(other.InternationalDomestic, InternationalDomestic) || other.InternationalDomestic == InternationalDomestic)&&(identical(other.GicSector, GicSector) || other.GicSector == GicSector)&&(identical(other.GicGroup, GicGroup) || other.GicGroup == GicGroup)&&(identical(other.GicIndustry, GicIndustry) || other.GicIndustry == GicIndustry)&&(identical(other.GicSubIndustry, GicSubIndustry) || other.GicSubIndustry == GicSubIndustry)&&(identical(other.HomeCategory, HomeCategory) || other.HomeCategory == HomeCategory)&&(identical(other.IsDelisted, IsDelisted) || other.IsDelisted == IsDelisted)&&(identical(other.Phone, Phone) || other.Phone == Phone)&&(identical(other.WebURL, WebURL) || other.WebURL == WebURL)&&(identical(other.LogoURL, LogoURL) || other.LogoURL == LogoURL)&&(identical(other.SharesOutstanding, SharesOutstanding) || other.SharesOutstanding == SharesOutstanding)&&(identical(other.FiftyTwoWeekLow, FiftyTwoWeekLow) || other.FiftyTwoWeekLow == FiftyTwoWeekLow)&&(identical(other.FiftyTwoWeekHigh, FiftyTwoWeekHigh) || other.FiftyTwoWeekHigh == FiftyTwoWeekHigh)&&(identical(other.type, type) || other.type == type)&&(identical(other.stock_type, stock_type) || other.stock_type == stock_type)&&const DeepCollectionEquality().equals(other.Officers, Officers));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,IPODate,Symbol,Exchange,Country,FiscalYearEnd,Sector,Industry,Street,City,State,ZIP,MarketCapitalization,EBITDA,RevenueTTM,FullTimeEmployees,PercentInstitutions,Description,Address,Type,Name,CurrencyCode,CurrencyName,CurrencySymbol,CountryName,CountryISO,ISIN,LEI,PrimaryTicker,CUSIP,CIK,EmployerIdNumber,InternationalDomestic,GicSector,GicGroup,GicIndustry,GicSubIndustry,HomeCategory,IsDelisted,Phone,WebURL,LogoURL,SharesOutstanding,FiftyTwoWeekLow,FiftyTwoWeekHigh,type,stock_type,const DeepCollectionEquality().hash(Officers)]);

@override
String toString() {
  return 'General(IPODate: $IPODate, Symbol: $Symbol, Exchange: $Exchange, Country: $Country, FiscalYearEnd: $FiscalYearEnd, Sector: $Sector, Industry: $Industry, Street: $Street, City: $City, State: $State, ZIP: $ZIP, MarketCapitalization: $MarketCapitalization, EBITDA: $EBITDA, RevenueTTM: $RevenueTTM, FullTimeEmployees: $FullTimeEmployees, PercentInstitutions: $PercentInstitutions, Description: $Description, Address: $Address, Type: $Type, Name: $Name, CurrencyCode: $CurrencyCode, CurrencyName: $CurrencyName, CurrencySymbol: $CurrencySymbol, CountryName: $CountryName, CountryISO: $CountryISO, ISIN: $ISIN, LEI: $LEI, PrimaryTicker: $PrimaryTicker, CUSIP: $CUSIP, CIK: $CIK, EmployerIdNumber: $EmployerIdNumber, InternationalDomestic: $InternationalDomestic, GicSector: $GicSector, GicGroup: $GicGroup, GicIndustry: $GicIndustry, GicSubIndustry: $GicSubIndustry, HomeCategory: $HomeCategory, IsDelisted: $IsDelisted, Phone: $Phone, WebURL: $WebURL, LogoURL: $LogoURL, SharesOutstanding: $SharesOutstanding, FiftyTwoWeekLow: $FiftyTwoWeekLow, FiftyTwoWeekHigh: $FiftyTwoWeekHigh, type: $type, stock_type: $stock_type, Officers: $Officers)';
}


}

/// @nodoc
abstract mixin class $GeneralCopyWith<$Res>  {
  factory $GeneralCopyWith(General value, $Res Function(General) _then) = _$GeneralCopyWithImpl;
@useResult
$Res call({
 int? IPODate, String? Symbol, String? Exchange, String? Country, String? FiscalYearEnd, String? Sector, String? Industry, String? Street, String? City, String? State, String? ZIP, double? MarketCapitalization, double? EBITDA, double? RevenueTTM, int? FullTimeEmployees, double? PercentInstitutions, String? Description, String? Address, String? Type, String? Name, String? CurrencyCode, String? CurrencyName, String? CurrencySymbol, String? CountryName, String? CountryISO, String? ISIN, String? LEI, String? PrimaryTicker, String? CUSIP, String? CIK, String? EmployerIdNumber, String? InternationalDomestic, String? GicSector, String? GicGroup, String? GicIndustry, String? GicSubIndustry, String? HomeCategory, bool? IsDelisted, String? Phone, String? WebURL, String? LogoURL, double? SharesOutstanding, double? FiftyTwoWeekLow, double? FiftyTwoWeekHigh, String? type, int? stock_type, List<Officer>? Officers
});




}
/// @nodoc
class _$GeneralCopyWithImpl<$Res>
    implements $GeneralCopyWith<$Res> {
  _$GeneralCopyWithImpl(this._self, this._then);

  final General _self;
  final $Res Function(General) _then;

/// Create a copy of General
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? IPODate = freezed,Object? Symbol = freezed,Object? Exchange = freezed,Object? Country = freezed,Object? FiscalYearEnd = freezed,Object? Sector = freezed,Object? Industry = freezed,Object? Street = freezed,Object? City = freezed,Object? State = freezed,Object? ZIP = freezed,Object? MarketCapitalization = freezed,Object? EBITDA = freezed,Object? RevenueTTM = freezed,Object? FullTimeEmployees = freezed,Object? PercentInstitutions = freezed,Object? Description = freezed,Object? Address = freezed,Object? Type = freezed,Object? Name = freezed,Object? CurrencyCode = freezed,Object? CurrencyName = freezed,Object? CurrencySymbol = freezed,Object? CountryName = freezed,Object? CountryISO = freezed,Object? ISIN = freezed,Object? LEI = freezed,Object? PrimaryTicker = freezed,Object? CUSIP = freezed,Object? CIK = freezed,Object? EmployerIdNumber = freezed,Object? InternationalDomestic = freezed,Object? GicSector = freezed,Object? GicGroup = freezed,Object? GicIndustry = freezed,Object? GicSubIndustry = freezed,Object? HomeCategory = freezed,Object? IsDelisted = freezed,Object? Phone = freezed,Object? WebURL = freezed,Object? LogoURL = freezed,Object? SharesOutstanding = freezed,Object? FiftyTwoWeekLow = freezed,Object? FiftyTwoWeekHigh = freezed,Object? type = freezed,Object? stock_type = freezed,Object? Officers = freezed,}) {
  return _then(_self.copyWith(
IPODate: freezed == IPODate ? _self.IPODate : IPODate // ignore: cast_nullable_to_non_nullable
as int?,Symbol: freezed == Symbol ? _self.Symbol : Symbol // ignore: cast_nullable_to_non_nullable
as String?,Exchange: freezed == Exchange ? _self.Exchange : Exchange // ignore: cast_nullable_to_non_nullable
as String?,Country: freezed == Country ? _self.Country : Country // ignore: cast_nullable_to_non_nullable
as String?,FiscalYearEnd: freezed == FiscalYearEnd ? _self.FiscalYearEnd : FiscalYearEnd // ignore: cast_nullable_to_non_nullable
as String?,Sector: freezed == Sector ? _self.Sector : Sector // ignore: cast_nullable_to_non_nullable
as String?,Industry: freezed == Industry ? _self.Industry : Industry // ignore: cast_nullable_to_non_nullable
as String?,Street: freezed == Street ? _self.Street : Street // ignore: cast_nullable_to_non_nullable
as String?,City: freezed == City ? _self.City : City // ignore: cast_nullable_to_non_nullable
as String?,State: freezed == State ? _self.State : State // ignore: cast_nullable_to_non_nullable
as String?,ZIP: freezed == ZIP ? _self.ZIP : ZIP // ignore: cast_nullable_to_non_nullable
as String?,MarketCapitalization: freezed == MarketCapitalization ? _self.MarketCapitalization : MarketCapitalization // ignore: cast_nullable_to_non_nullable
as double?,EBITDA: freezed == EBITDA ? _self.EBITDA : EBITDA // ignore: cast_nullable_to_non_nullable
as double?,RevenueTTM: freezed == RevenueTTM ? _self.RevenueTTM : RevenueTTM // ignore: cast_nullable_to_non_nullable
as double?,FullTimeEmployees: freezed == FullTimeEmployees ? _self.FullTimeEmployees : FullTimeEmployees // ignore: cast_nullable_to_non_nullable
as int?,PercentInstitutions: freezed == PercentInstitutions ? _self.PercentInstitutions : PercentInstitutions // ignore: cast_nullable_to_non_nullable
as double?,Description: freezed == Description ? _self.Description : Description // ignore: cast_nullable_to_non_nullable
as String?,Address: freezed == Address ? _self.Address : Address // ignore: cast_nullable_to_non_nullable
as String?,Type: freezed == Type ? _self.Type : Type // ignore: cast_nullable_to_non_nullable
as String?,Name: freezed == Name ? _self.Name : Name // ignore: cast_nullable_to_non_nullable
as String?,CurrencyCode: freezed == CurrencyCode ? _self.CurrencyCode : CurrencyCode // ignore: cast_nullable_to_non_nullable
as String?,CurrencyName: freezed == CurrencyName ? _self.CurrencyName : CurrencyName // ignore: cast_nullable_to_non_nullable
as String?,CurrencySymbol: freezed == CurrencySymbol ? _self.CurrencySymbol : CurrencySymbol // ignore: cast_nullable_to_non_nullable
as String?,CountryName: freezed == CountryName ? _self.CountryName : CountryName // ignore: cast_nullable_to_non_nullable
as String?,CountryISO: freezed == CountryISO ? _self.CountryISO : CountryISO // ignore: cast_nullable_to_non_nullable
as String?,ISIN: freezed == ISIN ? _self.ISIN : ISIN // ignore: cast_nullable_to_non_nullable
as String?,LEI: freezed == LEI ? _self.LEI : LEI // ignore: cast_nullable_to_non_nullable
as String?,PrimaryTicker: freezed == PrimaryTicker ? _self.PrimaryTicker : PrimaryTicker // ignore: cast_nullable_to_non_nullable
as String?,CUSIP: freezed == CUSIP ? _self.CUSIP : CUSIP // ignore: cast_nullable_to_non_nullable
as String?,CIK: freezed == CIK ? _self.CIK : CIK // ignore: cast_nullable_to_non_nullable
as String?,EmployerIdNumber: freezed == EmployerIdNumber ? _self.EmployerIdNumber : EmployerIdNumber // ignore: cast_nullable_to_non_nullable
as String?,InternationalDomestic: freezed == InternationalDomestic ? _self.InternationalDomestic : InternationalDomestic // ignore: cast_nullable_to_non_nullable
as String?,GicSector: freezed == GicSector ? _self.GicSector : GicSector // ignore: cast_nullable_to_non_nullable
as String?,GicGroup: freezed == GicGroup ? _self.GicGroup : GicGroup // ignore: cast_nullable_to_non_nullable
as String?,GicIndustry: freezed == GicIndustry ? _self.GicIndustry : GicIndustry // ignore: cast_nullable_to_non_nullable
as String?,GicSubIndustry: freezed == GicSubIndustry ? _self.GicSubIndustry : GicSubIndustry // ignore: cast_nullable_to_non_nullable
as String?,HomeCategory: freezed == HomeCategory ? _self.HomeCategory : HomeCategory // ignore: cast_nullable_to_non_nullable
as String?,IsDelisted: freezed == IsDelisted ? _self.IsDelisted : IsDelisted // ignore: cast_nullable_to_non_nullable
as bool?,Phone: freezed == Phone ? _self.Phone : Phone // ignore: cast_nullable_to_non_nullable
as String?,WebURL: freezed == WebURL ? _self.WebURL : WebURL // ignore: cast_nullable_to_non_nullable
as String?,LogoURL: freezed == LogoURL ? _self.LogoURL : LogoURL // ignore: cast_nullable_to_non_nullable
as String?,SharesOutstanding: freezed == SharesOutstanding ? _self.SharesOutstanding : SharesOutstanding // ignore: cast_nullable_to_non_nullable
as double?,FiftyTwoWeekLow: freezed == FiftyTwoWeekLow ? _self.FiftyTwoWeekLow : FiftyTwoWeekLow // ignore: cast_nullable_to_non_nullable
as double?,FiftyTwoWeekHigh: freezed == FiftyTwoWeekHigh ? _self.FiftyTwoWeekHigh : FiftyTwoWeekHigh // ignore: cast_nullable_to_non_nullable
as double?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,stock_type: freezed == stock_type ? _self.stock_type : stock_type // ignore: cast_nullable_to_non_nullable
as int?,Officers: freezed == Officers ? _self.Officers : Officers // ignore: cast_nullable_to_non_nullable
as List<Officer>?,
  ));
}

}


/// Adds pattern-matching-related methods to [General].
extension GeneralPatterns on General {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _General value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _General() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _General value)  $default,){
final _that = this;
switch (_that) {
case _General():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _General value)?  $default,){
final _that = this;
switch (_that) {
case _General() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? IPODate,  String? Symbol,  String? Exchange,  String? Country,  String? FiscalYearEnd,  String? Sector,  String? Industry,  String? Street,  String? City,  String? State,  String? ZIP,  double? MarketCapitalization,  double? EBITDA,  double? RevenueTTM,  int? FullTimeEmployees,  double? PercentInstitutions,  String? Description,  String? Address,  String? Type,  String? Name,  String? CurrencyCode,  String? CurrencyName,  String? CurrencySymbol,  String? CountryName,  String? CountryISO,  String? ISIN,  String? LEI,  String? PrimaryTicker,  String? CUSIP,  String? CIK,  String? EmployerIdNumber,  String? InternationalDomestic,  String? GicSector,  String? GicGroup,  String? GicIndustry,  String? GicSubIndustry,  String? HomeCategory,  bool? IsDelisted,  String? Phone,  String? WebURL,  String? LogoURL,  double? SharesOutstanding,  double? FiftyTwoWeekLow,  double? FiftyTwoWeekHigh,  String? type,  int? stock_type,  List<Officer>? Officers)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _General() when $default != null:
return $default(_that.IPODate,_that.Symbol,_that.Exchange,_that.Country,_that.FiscalYearEnd,_that.Sector,_that.Industry,_that.Street,_that.City,_that.State,_that.ZIP,_that.MarketCapitalization,_that.EBITDA,_that.RevenueTTM,_that.FullTimeEmployees,_that.PercentInstitutions,_that.Description,_that.Address,_that.Type,_that.Name,_that.CurrencyCode,_that.CurrencyName,_that.CurrencySymbol,_that.CountryName,_that.CountryISO,_that.ISIN,_that.LEI,_that.PrimaryTicker,_that.CUSIP,_that.CIK,_that.EmployerIdNumber,_that.InternationalDomestic,_that.GicSector,_that.GicGroup,_that.GicIndustry,_that.GicSubIndustry,_that.HomeCategory,_that.IsDelisted,_that.Phone,_that.WebURL,_that.LogoURL,_that.SharesOutstanding,_that.FiftyTwoWeekLow,_that.FiftyTwoWeekHigh,_that.type,_that.stock_type,_that.Officers);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? IPODate,  String? Symbol,  String? Exchange,  String? Country,  String? FiscalYearEnd,  String? Sector,  String? Industry,  String? Street,  String? City,  String? State,  String? ZIP,  double? MarketCapitalization,  double? EBITDA,  double? RevenueTTM,  int? FullTimeEmployees,  double? PercentInstitutions,  String? Description,  String? Address,  String? Type,  String? Name,  String? CurrencyCode,  String? CurrencyName,  String? CurrencySymbol,  String? CountryName,  String? CountryISO,  String? ISIN,  String? LEI,  String? PrimaryTicker,  String? CUSIP,  String? CIK,  String? EmployerIdNumber,  String? InternationalDomestic,  String? GicSector,  String? GicGroup,  String? GicIndustry,  String? GicSubIndustry,  String? HomeCategory,  bool? IsDelisted,  String? Phone,  String? WebURL,  String? LogoURL,  double? SharesOutstanding,  double? FiftyTwoWeekLow,  double? FiftyTwoWeekHigh,  String? type,  int? stock_type,  List<Officer>? Officers)  $default,) {final _that = this;
switch (_that) {
case _General():
return $default(_that.IPODate,_that.Symbol,_that.Exchange,_that.Country,_that.FiscalYearEnd,_that.Sector,_that.Industry,_that.Street,_that.City,_that.State,_that.ZIP,_that.MarketCapitalization,_that.EBITDA,_that.RevenueTTM,_that.FullTimeEmployees,_that.PercentInstitutions,_that.Description,_that.Address,_that.Type,_that.Name,_that.CurrencyCode,_that.CurrencyName,_that.CurrencySymbol,_that.CountryName,_that.CountryISO,_that.ISIN,_that.LEI,_that.PrimaryTicker,_that.CUSIP,_that.CIK,_that.EmployerIdNumber,_that.InternationalDomestic,_that.GicSector,_that.GicGroup,_that.GicIndustry,_that.GicSubIndustry,_that.HomeCategory,_that.IsDelisted,_that.Phone,_that.WebURL,_that.LogoURL,_that.SharesOutstanding,_that.FiftyTwoWeekLow,_that.FiftyTwoWeekHigh,_that.type,_that.stock_type,_that.Officers);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? IPODate,  String? Symbol,  String? Exchange,  String? Country,  String? FiscalYearEnd,  String? Sector,  String? Industry,  String? Street,  String? City,  String? State,  String? ZIP,  double? MarketCapitalization,  double? EBITDA,  double? RevenueTTM,  int? FullTimeEmployees,  double? PercentInstitutions,  String? Description,  String? Address,  String? Type,  String? Name,  String? CurrencyCode,  String? CurrencyName,  String? CurrencySymbol,  String? CountryName,  String? CountryISO,  String? ISIN,  String? LEI,  String? PrimaryTicker,  String? CUSIP,  String? CIK,  String? EmployerIdNumber,  String? InternationalDomestic,  String? GicSector,  String? GicGroup,  String? GicIndustry,  String? GicSubIndustry,  String? HomeCategory,  bool? IsDelisted,  String? Phone,  String? WebURL,  String? LogoURL,  double? SharesOutstanding,  double? FiftyTwoWeekLow,  double? FiftyTwoWeekHigh,  String? type,  int? stock_type,  List<Officer>? Officers)?  $default,) {final _that = this;
switch (_that) {
case _General() when $default != null:
return $default(_that.IPODate,_that.Symbol,_that.Exchange,_that.Country,_that.FiscalYearEnd,_that.Sector,_that.Industry,_that.Street,_that.City,_that.State,_that.ZIP,_that.MarketCapitalization,_that.EBITDA,_that.RevenueTTM,_that.FullTimeEmployees,_that.PercentInstitutions,_that.Description,_that.Address,_that.Type,_that.Name,_that.CurrencyCode,_that.CurrencyName,_that.CurrencySymbol,_that.CountryName,_that.CountryISO,_that.ISIN,_that.LEI,_that.PrimaryTicker,_that.CUSIP,_that.CIK,_that.EmployerIdNumber,_that.InternationalDomestic,_that.GicSector,_that.GicGroup,_that.GicIndustry,_that.GicSubIndustry,_that.HomeCategory,_that.IsDelisted,_that.Phone,_that.WebURL,_that.LogoURL,_that.SharesOutstanding,_that.FiftyTwoWeekLow,_that.FiftyTwoWeekHigh,_that.type,_that.stock_type,_that.Officers);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _General implements General {
  const _General({this.IPODate, this.Symbol, this.Exchange, this.Country, this.FiscalYearEnd, this.Sector, this.Industry, this.Street, this.City, this.State, this.ZIP, this.MarketCapitalization, this.EBITDA, this.RevenueTTM, this.FullTimeEmployees, this.PercentInstitutions, this.Description, this.Address, this.Type, this.Name, this.CurrencyCode, this.CurrencyName, this.CurrencySymbol, this.CountryName, this.CountryISO, this.ISIN, this.LEI, this.PrimaryTicker, this.CUSIP, this.CIK, this.EmployerIdNumber, this.InternationalDomestic, this.GicSector, this.GicGroup, this.GicIndustry, this.GicSubIndustry, this.HomeCategory, this.IsDelisted, this.Phone, this.WebURL, this.LogoURL, this.SharesOutstanding, this.FiftyTwoWeekLow, this.FiftyTwoWeekHigh, this.type, this.stock_type, final  List<Officer>? Officers}): _Officers = Officers;
  factory _General.fromJson(Map<String, dynamic> json) => _$GeneralFromJson(json);

@override final  int? IPODate;
@override final  String? Symbol;
@override final  String? Exchange;
@override final  String? Country;
@override final  String? FiscalYearEnd;
@override final  String? Sector;
@override final  String? Industry;
@override final  String? Street;
@override final  String? City;
@override final  String? State;
@override final  String? ZIP;
@override final  double? MarketCapitalization;
@override final  double? EBITDA;
@override final  double? RevenueTTM;
@override final  int? FullTimeEmployees;
@override final  double? PercentInstitutions;
@override final  String? Description;
@override final  String? Address;
@override final  String? Type;
@override final  String? Name;
@override final  String? CurrencyCode;
@override final  String? CurrencyName;
@override final  String? CurrencySymbol;
@override final  String? CountryName;
@override final  String? CountryISO;
@override final  String? ISIN;
@override final  String? LEI;
@override final  String? PrimaryTicker;
@override final  String? CUSIP;
@override final  String? CIK;
@override final  String? EmployerIdNumber;
@override final  String? InternationalDomestic;
@override final  String? GicSector;
@override final  String? GicGroup;
@override final  String? GicIndustry;
@override final  String? GicSubIndustry;
@override final  String? HomeCategory;
@override final  bool? IsDelisted;
@override final  String? Phone;
@override final  String? WebURL;
@override final  String? LogoURL;
@override final  double? SharesOutstanding;
@override final  double? FiftyTwoWeekLow;
@override final  double? FiftyTwoWeekHigh;
@override final  String? type;
@override final  int? stock_type;
 final  List<Officer>? _Officers;
@override List<Officer>? get Officers {
  final value = _Officers;
  if (value == null) return null;
  if (_Officers is EqualUnmodifiableListView) return _Officers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of General
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GeneralCopyWith<_General> get copyWith => __$GeneralCopyWithImpl<_General>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GeneralToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _General&&(identical(other.IPODate, IPODate) || other.IPODate == IPODate)&&(identical(other.Symbol, Symbol) || other.Symbol == Symbol)&&(identical(other.Exchange, Exchange) || other.Exchange == Exchange)&&(identical(other.Country, Country) || other.Country == Country)&&(identical(other.FiscalYearEnd, FiscalYearEnd) || other.FiscalYearEnd == FiscalYearEnd)&&(identical(other.Sector, Sector) || other.Sector == Sector)&&(identical(other.Industry, Industry) || other.Industry == Industry)&&(identical(other.Street, Street) || other.Street == Street)&&(identical(other.City, City) || other.City == City)&&(identical(other.State, State) || other.State == State)&&(identical(other.ZIP, ZIP) || other.ZIP == ZIP)&&(identical(other.MarketCapitalization, MarketCapitalization) || other.MarketCapitalization == MarketCapitalization)&&(identical(other.EBITDA, EBITDA) || other.EBITDA == EBITDA)&&(identical(other.RevenueTTM, RevenueTTM) || other.RevenueTTM == RevenueTTM)&&(identical(other.FullTimeEmployees, FullTimeEmployees) || other.FullTimeEmployees == FullTimeEmployees)&&(identical(other.PercentInstitutions, PercentInstitutions) || other.PercentInstitutions == PercentInstitutions)&&(identical(other.Description, Description) || other.Description == Description)&&(identical(other.Address, Address) || other.Address == Address)&&(identical(other.Type, Type) || other.Type == Type)&&(identical(other.Name, Name) || other.Name == Name)&&(identical(other.CurrencyCode, CurrencyCode) || other.CurrencyCode == CurrencyCode)&&(identical(other.CurrencyName, CurrencyName) || other.CurrencyName == CurrencyName)&&(identical(other.CurrencySymbol, CurrencySymbol) || other.CurrencySymbol == CurrencySymbol)&&(identical(other.CountryName, CountryName) || other.CountryName == CountryName)&&(identical(other.CountryISO, CountryISO) || other.CountryISO == CountryISO)&&(identical(other.ISIN, ISIN) || other.ISIN == ISIN)&&(identical(other.LEI, LEI) || other.LEI == LEI)&&(identical(other.PrimaryTicker, PrimaryTicker) || other.PrimaryTicker == PrimaryTicker)&&(identical(other.CUSIP, CUSIP) || other.CUSIP == CUSIP)&&(identical(other.CIK, CIK) || other.CIK == CIK)&&(identical(other.EmployerIdNumber, EmployerIdNumber) || other.EmployerIdNumber == EmployerIdNumber)&&(identical(other.InternationalDomestic, InternationalDomestic) || other.InternationalDomestic == InternationalDomestic)&&(identical(other.GicSector, GicSector) || other.GicSector == GicSector)&&(identical(other.GicGroup, GicGroup) || other.GicGroup == GicGroup)&&(identical(other.GicIndustry, GicIndustry) || other.GicIndustry == GicIndustry)&&(identical(other.GicSubIndustry, GicSubIndustry) || other.GicSubIndustry == GicSubIndustry)&&(identical(other.HomeCategory, HomeCategory) || other.HomeCategory == HomeCategory)&&(identical(other.IsDelisted, IsDelisted) || other.IsDelisted == IsDelisted)&&(identical(other.Phone, Phone) || other.Phone == Phone)&&(identical(other.WebURL, WebURL) || other.WebURL == WebURL)&&(identical(other.LogoURL, LogoURL) || other.LogoURL == LogoURL)&&(identical(other.SharesOutstanding, SharesOutstanding) || other.SharesOutstanding == SharesOutstanding)&&(identical(other.FiftyTwoWeekLow, FiftyTwoWeekLow) || other.FiftyTwoWeekLow == FiftyTwoWeekLow)&&(identical(other.FiftyTwoWeekHigh, FiftyTwoWeekHigh) || other.FiftyTwoWeekHigh == FiftyTwoWeekHigh)&&(identical(other.type, type) || other.type == type)&&(identical(other.stock_type, stock_type) || other.stock_type == stock_type)&&const DeepCollectionEquality().equals(other._Officers, _Officers));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,IPODate,Symbol,Exchange,Country,FiscalYearEnd,Sector,Industry,Street,City,State,ZIP,MarketCapitalization,EBITDA,RevenueTTM,FullTimeEmployees,PercentInstitutions,Description,Address,Type,Name,CurrencyCode,CurrencyName,CurrencySymbol,CountryName,CountryISO,ISIN,LEI,PrimaryTicker,CUSIP,CIK,EmployerIdNumber,InternationalDomestic,GicSector,GicGroup,GicIndustry,GicSubIndustry,HomeCategory,IsDelisted,Phone,WebURL,LogoURL,SharesOutstanding,FiftyTwoWeekLow,FiftyTwoWeekHigh,type,stock_type,const DeepCollectionEquality().hash(_Officers)]);

@override
String toString() {
  return 'General(IPODate: $IPODate, Symbol: $Symbol, Exchange: $Exchange, Country: $Country, FiscalYearEnd: $FiscalYearEnd, Sector: $Sector, Industry: $Industry, Street: $Street, City: $City, State: $State, ZIP: $ZIP, MarketCapitalization: $MarketCapitalization, EBITDA: $EBITDA, RevenueTTM: $RevenueTTM, FullTimeEmployees: $FullTimeEmployees, PercentInstitutions: $PercentInstitutions, Description: $Description, Address: $Address, Type: $Type, Name: $Name, CurrencyCode: $CurrencyCode, CurrencyName: $CurrencyName, CurrencySymbol: $CurrencySymbol, CountryName: $CountryName, CountryISO: $CountryISO, ISIN: $ISIN, LEI: $LEI, PrimaryTicker: $PrimaryTicker, CUSIP: $CUSIP, CIK: $CIK, EmployerIdNumber: $EmployerIdNumber, InternationalDomestic: $InternationalDomestic, GicSector: $GicSector, GicGroup: $GicGroup, GicIndustry: $GicIndustry, GicSubIndustry: $GicSubIndustry, HomeCategory: $HomeCategory, IsDelisted: $IsDelisted, Phone: $Phone, WebURL: $WebURL, LogoURL: $LogoURL, SharesOutstanding: $SharesOutstanding, FiftyTwoWeekLow: $FiftyTwoWeekLow, FiftyTwoWeekHigh: $FiftyTwoWeekHigh, type: $type, stock_type: $stock_type, Officers: $Officers)';
}


}

/// @nodoc
abstract mixin class _$GeneralCopyWith<$Res> implements $GeneralCopyWith<$Res> {
  factory _$GeneralCopyWith(_General value, $Res Function(_General) _then) = __$GeneralCopyWithImpl;
@override @useResult
$Res call({
 int? IPODate, String? Symbol, String? Exchange, String? Country, String? FiscalYearEnd, String? Sector, String? Industry, String? Street, String? City, String? State, String? ZIP, double? MarketCapitalization, double? EBITDA, double? RevenueTTM, int? FullTimeEmployees, double? PercentInstitutions, String? Description, String? Address, String? Type, String? Name, String? CurrencyCode, String? CurrencyName, String? CurrencySymbol, String? CountryName, String? CountryISO, String? ISIN, String? LEI, String? PrimaryTicker, String? CUSIP, String? CIK, String? EmployerIdNumber, String? InternationalDomestic, String? GicSector, String? GicGroup, String? GicIndustry, String? GicSubIndustry, String? HomeCategory, bool? IsDelisted, String? Phone, String? WebURL, String? LogoURL, double? SharesOutstanding, double? FiftyTwoWeekLow, double? FiftyTwoWeekHigh, String? type, int? stock_type, List<Officer>? Officers
});




}
/// @nodoc
class __$GeneralCopyWithImpl<$Res>
    implements _$GeneralCopyWith<$Res> {
  __$GeneralCopyWithImpl(this._self, this._then);

  final _General _self;
  final $Res Function(_General) _then;

/// Create a copy of General
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? IPODate = freezed,Object? Symbol = freezed,Object? Exchange = freezed,Object? Country = freezed,Object? FiscalYearEnd = freezed,Object? Sector = freezed,Object? Industry = freezed,Object? Street = freezed,Object? City = freezed,Object? State = freezed,Object? ZIP = freezed,Object? MarketCapitalization = freezed,Object? EBITDA = freezed,Object? RevenueTTM = freezed,Object? FullTimeEmployees = freezed,Object? PercentInstitutions = freezed,Object? Description = freezed,Object? Address = freezed,Object? Type = freezed,Object? Name = freezed,Object? CurrencyCode = freezed,Object? CurrencyName = freezed,Object? CurrencySymbol = freezed,Object? CountryName = freezed,Object? CountryISO = freezed,Object? ISIN = freezed,Object? LEI = freezed,Object? PrimaryTicker = freezed,Object? CUSIP = freezed,Object? CIK = freezed,Object? EmployerIdNumber = freezed,Object? InternationalDomestic = freezed,Object? GicSector = freezed,Object? GicGroup = freezed,Object? GicIndustry = freezed,Object? GicSubIndustry = freezed,Object? HomeCategory = freezed,Object? IsDelisted = freezed,Object? Phone = freezed,Object? WebURL = freezed,Object? LogoURL = freezed,Object? SharesOutstanding = freezed,Object? FiftyTwoWeekLow = freezed,Object? FiftyTwoWeekHigh = freezed,Object? type = freezed,Object? stock_type = freezed,Object? Officers = freezed,}) {
  return _then(_General(
IPODate: freezed == IPODate ? _self.IPODate : IPODate // ignore: cast_nullable_to_non_nullable
as int?,Symbol: freezed == Symbol ? _self.Symbol : Symbol // ignore: cast_nullable_to_non_nullable
as String?,Exchange: freezed == Exchange ? _self.Exchange : Exchange // ignore: cast_nullable_to_non_nullable
as String?,Country: freezed == Country ? _self.Country : Country // ignore: cast_nullable_to_non_nullable
as String?,FiscalYearEnd: freezed == FiscalYearEnd ? _self.FiscalYearEnd : FiscalYearEnd // ignore: cast_nullable_to_non_nullable
as String?,Sector: freezed == Sector ? _self.Sector : Sector // ignore: cast_nullable_to_non_nullable
as String?,Industry: freezed == Industry ? _self.Industry : Industry // ignore: cast_nullable_to_non_nullable
as String?,Street: freezed == Street ? _self.Street : Street // ignore: cast_nullable_to_non_nullable
as String?,City: freezed == City ? _self.City : City // ignore: cast_nullable_to_non_nullable
as String?,State: freezed == State ? _self.State : State // ignore: cast_nullable_to_non_nullable
as String?,ZIP: freezed == ZIP ? _self.ZIP : ZIP // ignore: cast_nullable_to_non_nullable
as String?,MarketCapitalization: freezed == MarketCapitalization ? _self.MarketCapitalization : MarketCapitalization // ignore: cast_nullable_to_non_nullable
as double?,EBITDA: freezed == EBITDA ? _self.EBITDA : EBITDA // ignore: cast_nullable_to_non_nullable
as double?,RevenueTTM: freezed == RevenueTTM ? _self.RevenueTTM : RevenueTTM // ignore: cast_nullable_to_non_nullable
as double?,FullTimeEmployees: freezed == FullTimeEmployees ? _self.FullTimeEmployees : FullTimeEmployees // ignore: cast_nullable_to_non_nullable
as int?,PercentInstitutions: freezed == PercentInstitutions ? _self.PercentInstitutions : PercentInstitutions // ignore: cast_nullable_to_non_nullable
as double?,Description: freezed == Description ? _self.Description : Description // ignore: cast_nullable_to_non_nullable
as String?,Address: freezed == Address ? _self.Address : Address // ignore: cast_nullable_to_non_nullable
as String?,Type: freezed == Type ? _self.Type : Type // ignore: cast_nullable_to_non_nullable
as String?,Name: freezed == Name ? _self.Name : Name // ignore: cast_nullable_to_non_nullable
as String?,CurrencyCode: freezed == CurrencyCode ? _self.CurrencyCode : CurrencyCode // ignore: cast_nullable_to_non_nullable
as String?,CurrencyName: freezed == CurrencyName ? _self.CurrencyName : CurrencyName // ignore: cast_nullable_to_non_nullable
as String?,CurrencySymbol: freezed == CurrencySymbol ? _self.CurrencySymbol : CurrencySymbol // ignore: cast_nullable_to_non_nullable
as String?,CountryName: freezed == CountryName ? _self.CountryName : CountryName // ignore: cast_nullable_to_non_nullable
as String?,CountryISO: freezed == CountryISO ? _self.CountryISO : CountryISO // ignore: cast_nullable_to_non_nullable
as String?,ISIN: freezed == ISIN ? _self.ISIN : ISIN // ignore: cast_nullable_to_non_nullable
as String?,LEI: freezed == LEI ? _self.LEI : LEI // ignore: cast_nullable_to_non_nullable
as String?,PrimaryTicker: freezed == PrimaryTicker ? _self.PrimaryTicker : PrimaryTicker // ignore: cast_nullable_to_non_nullable
as String?,CUSIP: freezed == CUSIP ? _self.CUSIP : CUSIP // ignore: cast_nullable_to_non_nullable
as String?,CIK: freezed == CIK ? _self.CIK : CIK // ignore: cast_nullable_to_non_nullable
as String?,EmployerIdNumber: freezed == EmployerIdNumber ? _self.EmployerIdNumber : EmployerIdNumber // ignore: cast_nullable_to_non_nullable
as String?,InternationalDomestic: freezed == InternationalDomestic ? _self.InternationalDomestic : InternationalDomestic // ignore: cast_nullable_to_non_nullable
as String?,GicSector: freezed == GicSector ? _self.GicSector : GicSector // ignore: cast_nullable_to_non_nullable
as String?,GicGroup: freezed == GicGroup ? _self.GicGroup : GicGroup // ignore: cast_nullable_to_non_nullable
as String?,GicIndustry: freezed == GicIndustry ? _self.GicIndustry : GicIndustry // ignore: cast_nullable_to_non_nullable
as String?,GicSubIndustry: freezed == GicSubIndustry ? _self.GicSubIndustry : GicSubIndustry // ignore: cast_nullable_to_non_nullable
as String?,HomeCategory: freezed == HomeCategory ? _self.HomeCategory : HomeCategory // ignore: cast_nullable_to_non_nullable
as String?,IsDelisted: freezed == IsDelisted ? _self.IsDelisted : IsDelisted // ignore: cast_nullable_to_non_nullable
as bool?,Phone: freezed == Phone ? _self.Phone : Phone // ignore: cast_nullable_to_non_nullable
as String?,WebURL: freezed == WebURL ? _self.WebURL : WebURL // ignore: cast_nullable_to_non_nullable
as String?,LogoURL: freezed == LogoURL ? _self.LogoURL : LogoURL // ignore: cast_nullable_to_non_nullable
as String?,SharesOutstanding: freezed == SharesOutstanding ? _self.SharesOutstanding : SharesOutstanding // ignore: cast_nullable_to_non_nullable
as double?,FiftyTwoWeekLow: freezed == FiftyTwoWeekLow ? _self.FiftyTwoWeekLow : FiftyTwoWeekLow // ignore: cast_nullable_to_non_nullable
as double?,FiftyTwoWeekHigh: freezed == FiftyTwoWeekHigh ? _self.FiftyTwoWeekHigh : FiftyTwoWeekHigh // ignore: cast_nullable_to_non_nullable
as double?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,stock_type: freezed == stock_type ? _self.stock_type : stock_type // ignore: cast_nullable_to_non_nullable
as int?,Officers: freezed == Officers ? _self._Officers : Officers // ignore: cast_nullable_to_non_nullable
as List<Officer>?,
  ));
}


}


/// @nodoc
mixin _$Officer {

 String? get Image; String? get Name; String? get Title; int? get YearBorn;
/// Create a copy of Officer
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OfficerCopyWith<Officer> get copyWith => _$OfficerCopyWithImpl<Officer>(this as Officer, _$identity);

  /// Serializes this Officer to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Officer&&(identical(other.Image, Image) || other.Image == Image)&&(identical(other.Name, Name) || other.Name == Name)&&(identical(other.Title, Title) || other.Title == Title)&&(identical(other.YearBorn, YearBorn) || other.YearBorn == YearBorn));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,Image,Name,Title,YearBorn);

@override
String toString() {
  return 'Officer(Image: $Image, Name: $Name, Title: $Title, YearBorn: $YearBorn)';
}


}

/// @nodoc
abstract mixin class $OfficerCopyWith<$Res>  {
  factory $OfficerCopyWith(Officer value, $Res Function(Officer) _then) = _$OfficerCopyWithImpl;
@useResult
$Res call({
 String? Image, String? Name, String? Title, int? YearBorn
});




}
/// @nodoc
class _$OfficerCopyWithImpl<$Res>
    implements $OfficerCopyWith<$Res> {
  _$OfficerCopyWithImpl(this._self, this._then);

  final Officer _self;
  final $Res Function(Officer) _then;

/// Create a copy of Officer
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? Image = freezed,Object? Name = freezed,Object? Title = freezed,Object? YearBorn = freezed,}) {
  return _then(_self.copyWith(
Image: freezed == Image ? _self.Image : Image // ignore: cast_nullable_to_non_nullable
as String?,Name: freezed == Name ? _self.Name : Name // ignore: cast_nullable_to_non_nullable
as String?,Title: freezed == Title ? _self.Title : Title // ignore: cast_nullable_to_non_nullable
as String?,YearBorn: freezed == YearBorn ? _self.YearBorn : YearBorn // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [Officer].
extension OfficerPatterns on Officer {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Officer value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Officer() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Officer value)  $default,){
final _that = this;
switch (_that) {
case _Officer():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Officer value)?  $default,){
final _that = this;
switch (_that) {
case _Officer() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? Image,  String? Name,  String? Title,  int? YearBorn)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Officer() when $default != null:
return $default(_that.Image,_that.Name,_that.Title,_that.YearBorn);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? Image,  String? Name,  String? Title,  int? YearBorn)  $default,) {final _that = this;
switch (_that) {
case _Officer():
return $default(_that.Image,_that.Name,_that.Title,_that.YearBorn);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? Image,  String? Name,  String? Title,  int? YearBorn)?  $default,) {final _that = this;
switch (_that) {
case _Officer() when $default != null:
return $default(_that.Image,_that.Name,_that.Title,_that.YearBorn);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Officer implements Officer {
  const _Officer({this.Image, this.Name, this.Title, this.YearBorn});
  factory _Officer.fromJson(Map<String, dynamic> json) => _$OfficerFromJson(json);

@override final  String? Image;
@override final  String? Name;
@override final  String? Title;
@override final  int? YearBorn;

/// Create a copy of Officer
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OfficerCopyWith<_Officer> get copyWith => __$OfficerCopyWithImpl<_Officer>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OfficerToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Officer&&(identical(other.Image, Image) || other.Image == Image)&&(identical(other.Name, Name) || other.Name == Name)&&(identical(other.Title, Title) || other.Title == Title)&&(identical(other.YearBorn, YearBorn) || other.YearBorn == YearBorn));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,Image,Name,Title,YearBorn);

@override
String toString() {
  return 'Officer(Image: $Image, Name: $Name, Title: $Title, YearBorn: $YearBorn)';
}


}

/// @nodoc
abstract mixin class _$OfficerCopyWith<$Res> implements $OfficerCopyWith<$Res> {
  factory _$OfficerCopyWith(_Officer value, $Res Function(_Officer) _then) = __$OfficerCopyWithImpl;
@override @useResult
$Res call({
 String? Image, String? Name, String? Title, int? YearBorn
});




}
/// @nodoc
class __$OfficerCopyWithImpl<$Res>
    implements _$OfficerCopyWith<$Res> {
  __$OfficerCopyWithImpl(this._self, this._then);

  final _Officer _self;
  final $Res Function(_Officer) _then;

/// Create a copy of Officer
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? Image = freezed,Object? Name = freezed,Object? Title = freezed,Object? YearBorn = freezed,}) {
  return _then(_Officer(
Image: freezed == Image ? _self.Image : Image // ignore: cast_nullable_to_non_nullable
as String?,Name: freezed == Name ? _self.Name : Name // ignore: cast_nullable_to_non_nullable
as String?,Title: freezed == Title ? _self.Title : Title // ignore: cast_nullable_to_non_nullable
as String?,YearBorn: freezed == YearBorn ? _self.YearBorn : YearBorn // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
