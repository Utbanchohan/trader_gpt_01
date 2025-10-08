// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'esg_score_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EsgScoreModel {

 int get status; String get msg; List<EsgScoreData>? get data; dynamic get errors;
/// Create a copy of EsgScoreModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EsgScoreModelCopyWith<EsgScoreModel> get copyWith => _$EsgScoreModelCopyWithImpl<EsgScoreModel>(this as EsgScoreModel, _$identity);

  /// Serializes this EsgScoreModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EsgScoreModel&&(identical(other.status, status) || other.status == status)&&(identical(other.msg, msg) || other.msg == msg)&&const DeepCollectionEquality().equals(other.data, data)&&const DeepCollectionEquality().equals(other.errors, errors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,msg,const DeepCollectionEquality().hash(data),const DeepCollectionEquality().hash(errors));

@override
String toString() {
  return 'EsgScoreModel(status: $status, msg: $msg, data: $data, errors: $errors)';
}


}

/// @nodoc
abstract mixin class $EsgScoreModelCopyWith<$Res>  {
  factory $EsgScoreModelCopyWith(EsgScoreModel value, $Res Function(EsgScoreModel) _then) = _$EsgScoreModelCopyWithImpl;
@useResult
$Res call({
 int status, String msg, List<EsgScoreData>? data, dynamic errors
});




}
/// @nodoc
class _$EsgScoreModelCopyWithImpl<$Res>
    implements $EsgScoreModelCopyWith<$Res> {
  _$EsgScoreModelCopyWithImpl(this._self, this._then);

  final EsgScoreModel _self;
  final $Res Function(EsgScoreModel) _then;

/// Create a copy of EsgScoreModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? msg = null,Object? data = freezed,Object? errors = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int,msg: null == msg ? _self.msg : msg // ignore: cast_nullable_to_non_nullable
as String,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<EsgScoreData>?,errors: freezed == errors ? _self.errors : errors // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

}


/// Adds pattern-matching-related methods to [EsgScoreModel].
extension EsgScoreModelPatterns on EsgScoreModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EsgScoreModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EsgScoreModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EsgScoreModel value)  $default,){
final _that = this;
switch (_that) {
case _EsgScoreModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EsgScoreModel value)?  $default,){
final _that = this;
switch (_that) {
case _EsgScoreModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int status,  String msg,  List<EsgScoreData>? data,  dynamic errors)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EsgScoreModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int status,  String msg,  List<EsgScoreData>? data,  dynamic errors)  $default,) {final _that = this;
switch (_that) {
case _EsgScoreModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int status,  String msg,  List<EsgScoreData>? data,  dynamic errors)?  $default,) {final _that = this;
switch (_that) {
case _EsgScoreModel() when $default != null:
return $default(_that.status,_that.msg,_that.data,_that.errors);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EsgScoreModel implements EsgScoreModel {
  const _EsgScoreModel({required this.status, required this.msg, final  List<EsgScoreData>? data, this.errors}): _data = data;
  factory _EsgScoreModel.fromJson(Map<String, dynamic> json) => _$EsgScoreModelFromJson(json);

@override final  int status;
@override final  String msg;
 final  List<EsgScoreData>? _data;
@override List<EsgScoreData>? get data {
  final value = _data;
  if (value == null) return null;
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  dynamic errors;

/// Create a copy of EsgScoreModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EsgScoreModelCopyWith<_EsgScoreModel> get copyWith => __$EsgScoreModelCopyWithImpl<_EsgScoreModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EsgScoreModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EsgScoreModel&&(identical(other.status, status) || other.status == status)&&(identical(other.msg, msg) || other.msg == msg)&&const DeepCollectionEquality().equals(other._data, _data)&&const DeepCollectionEquality().equals(other.errors, errors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,msg,const DeepCollectionEquality().hash(_data),const DeepCollectionEquality().hash(errors));

@override
String toString() {
  return 'EsgScoreModel(status: $status, msg: $msg, data: $data, errors: $errors)';
}


}

/// @nodoc
abstract mixin class _$EsgScoreModelCopyWith<$Res> implements $EsgScoreModelCopyWith<$Res> {
  factory _$EsgScoreModelCopyWith(_EsgScoreModel value, $Res Function(_EsgScoreModel) _then) = __$EsgScoreModelCopyWithImpl;
@override @useResult
$Res call({
 int status, String msg, List<EsgScoreData>? data, dynamic errors
});




}
/// @nodoc
class __$EsgScoreModelCopyWithImpl<$Res>
    implements _$EsgScoreModelCopyWith<$Res> {
  __$EsgScoreModelCopyWithImpl(this._self, this._then);

  final _EsgScoreModel _self;
  final $Res Function(_EsgScoreModel) _then;

/// Create a copy of EsgScoreModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? msg = null,Object? data = freezed,Object? errors = freezed,}) {
  return _then(_EsgScoreModel(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int,msg: null == msg ? _self.msg : msg // ignore: cast_nullable_to_non_nullable
as String,data: freezed == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<EsgScoreData>?,errors: freezed == errors ? _self.errors : errors // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}


}


/// @nodoc
mixin _$EsgScoreData {

 String get symbol; String get cik; String get date;@JsonKey(name: 'environmental_score') double? get environmentalScore;@JsonKey(name: 'social_score') double? get socialScore;@JsonKey(name: 'governance_score') double? get governanceScore; double? get esgscore;@JsonKey(name: 'company_name') String? get companyName; String? get industry;@JsonKey(name: 'form_type') String? get formType;@JsonKey(name: 'accepted_date') String? get acceptedDate; String? get url;@JsonKey(name: 'created_at') String? get createdAt;@JsonKey(name: 'last_updated_time') String? get lastUpdatedTime;
/// Create a copy of EsgScoreData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EsgScoreDataCopyWith<EsgScoreData> get copyWith => _$EsgScoreDataCopyWithImpl<EsgScoreData>(this as EsgScoreData, _$identity);

  /// Serializes this EsgScoreData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EsgScoreData&&(identical(other.symbol, symbol) || other.symbol == symbol)&&(identical(other.cik, cik) || other.cik == cik)&&(identical(other.date, date) || other.date == date)&&(identical(other.environmentalScore, environmentalScore) || other.environmentalScore == environmentalScore)&&(identical(other.socialScore, socialScore) || other.socialScore == socialScore)&&(identical(other.governanceScore, governanceScore) || other.governanceScore == governanceScore)&&(identical(other.esgscore, esgscore) || other.esgscore == esgscore)&&(identical(other.companyName, companyName) || other.companyName == companyName)&&(identical(other.industry, industry) || other.industry == industry)&&(identical(other.formType, formType) || other.formType == formType)&&(identical(other.acceptedDate, acceptedDate) || other.acceptedDate == acceptedDate)&&(identical(other.url, url) || other.url == url)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.lastUpdatedTime, lastUpdatedTime) || other.lastUpdatedTime == lastUpdatedTime));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,symbol,cik,date,environmentalScore,socialScore,governanceScore,esgscore,companyName,industry,formType,acceptedDate,url,createdAt,lastUpdatedTime);

@override
String toString() {
  return 'EsgScoreData(symbol: $symbol, cik: $cik, date: $date, environmentalScore: $environmentalScore, socialScore: $socialScore, governanceScore: $governanceScore, esgscore: $esgscore, companyName: $companyName, industry: $industry, formType: $formType, acceptedDate: $acceptedDate, url: $url, createdAt: $createdAt, lastUpdatedTime: $lastUpdatedTime)';
}


}

/// @nodoc
abstract mixin class $EsgScoreDataCopyWith<$Res>  {
  factory $EsgScoreDataCopyWith(EsgScoreData value, $Res Function(EsgScoreData) _then) = _$EsgScoreDataCopyWithImpl;
@useResult
$Res call({
 String symbol, String cik, String date,@JsonKey(name: 'environmental_score') double? environmentalScore,@JsonKey(name: 'social_score') double? socialScore,@JsonKey(name: 'governance_score') double? governanceScore, double? esgscore,@JsonKey(name: 'company_name') String? companyName, String? industry,@JsonKey(name: 'form_type') String? formType,@JsonKey(name: 'accepted_date') String? acceptedDate, String? url,@JsonKey(name: 'created_at') String? createdAt,@JsonKey(name: 'last_updated_time') String? lastUpdatedTime
});




}
/// @nodoc
class _$EsgScoreDataCopyWithImpl<$Res>
    implements $EsgScoreDataCopyWith<$Res> {
  _$EsgScoreDataCopyWithImpl(this._self, this._then);

  final EsgScoreData _self;
  final $Res Function(EsgScoreData) _then;

/// Create a copy of EsgScoreData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? symbol = null,Object? cik = null,Object? date = null,Object? environmentalScore = freezed,Object? socialScore = freezed,Object? governanceScore = freezed,Object? esgscore = freezed,Object? companyName = freezed,Object? industry = freezed,Object? formType = freezed,Object? acceptedDate = freezed,Object? url = freezed,Object? createdAt = freezed,Object? lastUpdatedTime = freezed,}) {
  return _then(_self.copyWith(
symbol: null == symbol ? _self.symbol : symbol // ignore: cast_nullable_to_non_nullable
as String,cik: null == cik ? _self.cik : cik // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,environmentalScore: freezed == environmentalScore ? _self.environmentalScore : environmentalScore // ignore: cast_nullable_to_non_nullable
as double?,socialScore: freezed == socialScore ? _self.socialScore : socialScore // ignore: cast_nullable_to_non_nullable
as double?,governanceScore: freezed == governanceScore ? _self.governanceScore : governanceScore // ignore: cast_nullable_to_non_nullable
as double?,esgscore: freezed == esgscore ? _self.esgscore : esgscore // ignore: cast_nullable_to_non_nullable
as double?,companyName: freezed == companyName ? _self.companyName : companyName // ignore: cast_nullable_to_non_nullable
as String?,industry: freezed == industry ? _self.industry : industry // ignore: cast_nullable_to_non_nullable
as String?,formType: freezed == formType ? _self.formType : formType // ignore: cast_nullable_to_non_nullable
as String?,acceptedDate: freezed == acceptedDate ? _self.acceptedDate : acceptedDate // ignore: cast_nullable_to_non_nullable
as String?,url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,lastUpdatedTime: freezed == lastUpdatedTime ? _self.lastUpdatedTime : lastUpdatedTime // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [EsgScoreData].
extension EsgScoreDataPatterns on EsgScoreData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EsgScoreData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EsgScoreData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EsgScoreData value)  $default,){
final _that = this;
switch (_that) {
case _EsgScoreData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EsgScoreData value)?  $default,){
final _that = this;
switch (_that) {
case _EsgScoreData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String symbol,  String cik,  String date, @JsonKey(name: 'environmental_score')  double? environmentalScore, @JsonKey(name: 'social_score')  double? socialScore, @JsonKey(name: 'governance_score')  double? governanceScore,  double? esgscore, @JsonKey(name: 'company_name')  String? companyName,  String? industry, @JsonKey(name: 'form_type')  String? formType, @JsonKey(name: 'accepted_date')  String? acceptedDate,  String? url, @JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'last_updated_time')  String? lastUpdatedTime)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EsgScoreData() when $default != null:
return $default(_that.symbol,_that.cik,_that.date,_that.environmentalScore,_that.socialScore,_that.governanceScore,_that.esgscore,_that.companyName,_that.industry,_that.formType,_that.acceptedDate,_that.url,_that.createdAt,_that.lastUpdatedTime);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String symbol,  String cik,  String date, @JsonKey(name: 'environmental_score')  double? environmentalScore, @JsonKey(name: 'social_score')  double? socialScore, @JsonKey(name: 'governance_score')  double? governanceScore,  double? esgscore, @JsonKey(name: 'company_name')  String? companyName,  String? industry, @JsonKey(name: 'form_type')  String? formType, @JsonKey(name: 'accepted_date')  String? acceptedDate,  String? url, @JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'last_updated_time')  String? lastUpdatedTime)  $default,) {final _that = this;
switch (_that) {
case _EsgScoreData():
return $default(_that.symbol,_that.cik,_that.date,_that.environmentalScore,_that.socialScore,_that.governanceScore,_that.esgscore,_that.companyName,_that.industry,_that.formType,_that.acceptedDate,_that.url,_that.createdAt,_that.lastUpdatedTime);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String symbol,  String cik,  String date, @JsonKey(name: 'environmental_score')  double? environmentalScore, @JsonKey(name: 'social_score')  double? socialScore, @JsonKey(name: 'governance_score')  double? governanceScore,  double? esgscore, @JsonKey(name: 'company_name')  String? companyName,  String? industry, @JsonKey(name: 'form_type')  String? formType, @JsonKey(name: 'accepted_date')  String? acceptedDate,  String? url, @JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'last_updated_time')  String? lastUpdatedTime)?  $default,) {final _that = this;
switch (_that) {
case _EsgScoreData() when $default != null:
return $default(_that.symbol,_that.cik,_that.date,_that.environmentalScore,_that.socialScore,_that.governanceScore,_that.esgscore,_that.companyName,_that.industry,_that.formType,_that.acceptedDate,_that.url,_that.createdAt,_that.lastUpdatedTime);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EsgScoreData implements EsgScoreData {
  const _EsgScoreData({required this.symbol, required this.cik, required this.date, @JsonKey(name: 'environmental_score') this.environmentalScore, @JsonKey(name: 'social_score') this.socialScore, @JsonKey(name: 'governance_score') this.governanceScore, this.esgscore, @JsonKey(name: 'company_name') this.companyName, this.industry, @JsonKey(name: 'form_type') this.formType, @JsonKey(name: 'accepted_date') this.acceptedDate, this.url, @JsonKey(name: 'created_at') this.createdAt, @JsonKey(name: 'last_updated_time') this.lastUpdatedTime});
  factory _EsgScoreData.fromJson(Map<String, dynamic> json) => _$EsgScoreDataFromJson(json);

@override final  String symbol;
@override final  String cik;
@override final  String date;
@override@JsonKey(name: 'environmental_score') final  double? environmentalScore;
@override@JsonKey(name: 'social_score') final  double? socialScore;
@override@JsonKey(name: 'governance_score') final  double? governanceScore;
@override final  double? esgscore;
@override@JsonKey(name: 'company_name') final  String? companyName;
@override final  String? industry;
@override@JsonKey(name: 'form_type') final  String? formType;
@override@JsonKey(name: 'accepted_date') final  String? acceptedDate;
@override final  String? url;
@override@JsonKey(name: 'created_at') final  String? createdAt;
@override@JsonKey(name: 'last_updated_time') final  String? lastUpdatedTime;

/// Create a copy of EsgScoreData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EsgScoreDataCopyWith<_EsgScoreData> get copyWith => __$EsgScoreDataCopyWithImpl<_EsgScoreData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EsgScoreDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EsgScoreData&&(identical(other.symbol, symbol) || other.symbol == symbol)&&(identical(other.cik, cik) || other.cik == cik)&&(identical(other.date, date) || other.date == date)&&(identical(other.environmentalScore, environmentalScore) || other.environmentalScore == environmentalScore)&&(identical(other.socialScore, socialScore) || other.socialScore == socialScore)&&(identical(other.governanceScore, governanceScore) || other.governanceScore == governanceScore)&&(identical(other.esgscore, esgscore) || other.esgscore == esgscore)&&(identical(other.companyName, companyName) || other.companyName == companyName)&&(identical(other.industry, industry) || other.industry == industry)&&(identical(other.formType, formType) || other.formType == formType)&&(identical(other.acceptedDate, acceptedDate) || other.acceptedDate == acceptedDate)&&(identical(other.url, url) || other.url == url)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.lastUpdatedTime, lastUpdatedTime) || other.lastUpdatedTime == lastUpdatedTime));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,symbol,cik,date,environmentalScore,socialScore,governanceScore,esgscore,companyName,industry,formType,acceptedDate,url,createdAt,lastUpdatedTime);

@override
String toString() {
  return 'EsgScoreData(symbol: $symbol, cik: $cik, date: $date, environmentalScore: $environmentalScore, socialScore: $socialScore, governanceScore: $governanceScore, esgscore: $esgscore, companyName: $companyName, industry: $industry, formType: $formType, acceptedDate: $acceptedDate, url: $url, createdAt: $createdAt, lastUpdatedTime: $lastUpdatedTime)';
}


}

/// @nodoc
abstract mixin class _$EsgScoreDataCopyWith<$Res> implements $EsgScoreDataCopyWith<$Res> {
  factory _$EsgScoreDataCopyWith(_EsgScoreData value, $Res Function(_EsgScoreData) _then) = __$EsgScoreDataCopyWithImpl;
@override @useResult
$Res call({
 String symbol, String cik, String date,@JsonKey(name: 'environmental_score') double? environmentalScore,@JsonKey(name: 'social_score') double? socialScore,@JsonKey(name: 'governance_score') double? governanceScore, double? esgscore,@JsonKey(name: 'company_name') String? companyName, String? industry,@JsonKey(name: 'form_type') String? formType,@JsonKey(name: 'accepted_date') String? acceptedDate, String? url,@JsonKey(name: 'created_at') String? createdAt,@JsonKey(name: 'last_updated_time') String? lastUpdatedTime
});




}
/// @nodoc
class __$EsgScoreDataCopyWithImpl<$Res>
    implements _$EsgScoreDataCopyWith<$Res> {
  __$EsgScoreDataCopyWithImpl(this._self, this._then);

  final _EsgScoreData _self;
  final $Res Function(_EsgScoreData) _then;

/// Create a copy of EsgScoreData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? symbol = null,Object? cik = null,Object? date = null,Object? environmentalScore = freezed,Object? socialScore = freezed,Object? governanceScore = freezed,Object? esgscore = freezed,Object? companyName = freezed,Object? industry = freezed,Object? formType = freezed,Object? acceptedDate = freezed,Object? url = freezed,Object? createdAt = freezed,Object? lastUpdatedTime = freezed,}) {
  return _then(_EsgScoreData(
symbol: null == symbol ? _self.symbol : symbol // ignore: cast_nullable_to_non_nullable
as String,cik: null == cik ? _self.cik : cik // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,environmentalScore: freezed == environmentalScore ? _self.environmentalScore : environmentalScore // ignore: cast_nullable_to_non_nullable
as double?,socialScore: freezed == socialScore ? _self.socialScore : socialScore // ignore: cast_nullable_to_non_nullable
as double?,governanceScore: freezed == governanceScore ? _self.governanceScore : governanceScore // ignore: cast_nullable_to_non_nullable
as double?,esgscore: freezed == esgscore ? _self.esgscore : esgscore // ignore: cast_nullable_to_non_nullable
as double?,companyName: freezed == companyName ? _self.companyName : companyName // ignore: cast_nullable_to_non_nullable
as String?,industry: freezed == industry ? _self.industry : industry // ignore: cast_nullable_to_non_nullable
as String?,formType: freezed == formType ? _self.formType : formType // ignore: cast_nullable_to_non_nullable
as String?,acceptedDate: freezed == acceptedDate ? _self.acceptedDate : acceptedDate // ignore: cast_nullable_to_non_nullable
as String?,url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,lastUpdatedTime: freezed == lastUpdatedTime ? _self.lastUpdatedTime : lastUpdatedTime // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
