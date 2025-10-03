// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'market_data_login.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MarketDataLogin {

 int get status; String get msg; AuthData get data;
/// Create a copy of MarketDataLogin
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MarketDataLoginCopyWith<MarketDataLogin> get copyWith => _$MarketDataLoginCopyWithImpl<MarketDataLogin>(this as MarketDataLogin, _$identity);

  /// Serializes this MarketDataLogin to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MarketDataLogin&&(identical(other.status, status) || other.status == status)&&(identical(other.msg, msg) || other.msg == msg)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,msg,data);

@override
String toString() {
  return 'MarketDataLogin(status: $status, msg: $msg, data: $data)';
}


}

/// @nodoc
abstract mixin class $MarketDataLoginCopyWith<$Res>  {
  factory $MarketDataLoginCopyWith(MarketDataLogin value, $Res Function(MarketDataLogin) _then) = _$MarketDataLoginCopyWithImpl;
@useResult
$Res call({
 int status, String msg, AuthData data
});


$AuthDataCopyWith<$Res> get data;

}
/// @nodoc
class _$MarketDataLoginCopyWithImpl<$Res>
    implements $MarketDataLoginCopyWith<$Res> {
  _$MarketDataLoginCopyWithImpl(this._self, this._then);

  final MarketDataLogin _self;
  final $Res Function(MarketDataLogin) _then;

/// Create a copy of MarketDataLogin
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? msg = null,Object? data = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int,msg: null == msg ? _self.msg : msg // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as AuthData,
  ));
}
/// Create a copy of MarketDataLogin
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AuthDataCopyWith<$Res> get data {
  
  return $AuthDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [MarketDataLogin].
extension MarketDataLoginPatterns on MarketDataLogin {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MarketDataLogin value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MarketDataLogin() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MarketDataLogin value)  $default,){
final _that = this;
switch (_that) {
case _MarketDataLogin():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MarketDataLogin value)?  $default,){
final _that = this;
switch (_that) {
case _MarketDataLogin() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int status,  String msg,  AuthData data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MarketDataLogin() when $default != null:
return $default(_that.status,_that.msg,_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int status,  String msg,  AuthData data)  $default,) {final _that = this;
switch (_that) {
case _MarketDataLogin():
return $default(_that.status,_that.msg,_that.data);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int status,  String msg,  AuthData data)?  $default,) {final _that = this;
switch (_that) {
case _MarketDataLogin() when $default != null:
return $default(_that.status,_that.msg,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MarketDataLogin implements MarketDataLogin {
  const _MarketDataLogin({required this.status, required this.msg, required this.data});
  factory _MarketDataLogin.fromJson(Map<String, dynamic> json) => _$MarketDataLoginFromJson(json);

@override final  int status;
@override final  String msg;
@override final  AuthData data;

/// Create a copy of MarketDataLogin
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MarketDataLoginCopyWith<_MarketDataLogin> get copyWith => __$MarketDataLoginCopyWithImpl<_MarketDataLogin>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MarketDataLoginToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MarketDataLogin&&(identical(other.status, status) || other.status == status)&&(identical(other.msg, msg) || other.msg == msg)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,msg,data);

@override
String toString() {
  return 'MarketDataLogin(status: $status, msg: $msg, data: $data)';
}


}

/// @nodoc
abstract mixin class _$MarketDataLoginCopyWith<$Res> implements $MarketDataLoginCopyWith<$Res> {
  factory _$MarketDataLoginCopyWith(_MarketDataLogin value, $Res Function(_MarketDataLogin) _then) = __$MarketDataLoginCopyWithImpl;
@override @useResult
$Res call({
 int status, String msg, AuthData data
});


@override $AuthDataCopyWith<$Res> get data;

}
/// @nodoc
class __$MarketDataLoginCopyWithImpl<$Res>
    implements _$MarketDataLoginCopyWith<$Res> {
  __$MarketDataLoginCopyWithImpl(this._self, this._then);

  final _MarketDataLogin _self;
  final $Res Function(_MarketDataLogin) _then;

/// Create a copy of MarketDataLogin
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? msg = null,Object? data = null,}) {
  return _then(_MarketDataLogin(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int,msg: null == msg ? _self.msg : msg // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as AuthData,
  ));
}

/// Create a copy of MarketDataLogin
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AuthDataCopyWith<$Res> get data {
  
  return $AuthDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$AuthData {

@JsonKey(name: "access_token") String get accessToken;@JsonKey(name: "token_type") String get tokenType;@JsonKey(name: "expires_in") int get expiresIn;@JsonKey(name: "refresh_token") String get refreshToken;@JsonKey(name: "refresh_expiry") int get refreshExpiry;
/// Create a copy of AuthData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthDataCopyWith<AuthData> get copyWith => _$AuthDataCopyWithImpl<AuthData>(this as AuthData, _$identity);

  /// Serializes this AuthData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthData&&(identical(other.accessToken, accessToken) || other.accessToken == accessToken)&&(identical(other.tokenType, tokenType) || other.tokenType == tokenType)&&(identical(other.expiresIn, expiresIn) || other.expiresIn == expiresIn)&&(identical(other.refreshToken, refreshToken) || other.refreshToken == refreshToken)&&(identical(other.refreshExpiry, refreshExpiry) || other.refreshExpiry == refreshExpiry));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,accessToken,tokenType,expiresIn,refreshToken,refreshExpiry);

@override
String toString() {
  return 'AuthData(accessToken: $accessToken, tokenType: $tokenType, expiresIn: $expiresIn, refreshToken: $refreshToken, refreshExpiry: $refreshExpiry)';
}


}

/// @nodoc
abstract mixin class $AuthDataCopyWith<$Res>  {
  factory $AuthDataCopyWith(AuthData value, $Res Function(AuthData) _then) = _$AuthDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "access_token") String accessToken,@JsonKey(name: "token_type") String tokenType,@JsonKey(name: "expires_in") int expiresIn,@JsonKey(name: "refresh_token") String refreshToken,@JsonKey(name: "refresh_expiry") int refreshExpiry
});




}
/// @nodoc
class _$AuthDataCopyWithImpl<$Res>
    implements $AuthDataCopyWith<$Res> {
  _$AuthDataCopyWithImpl(this._self, this._then);

  final AuthData _self;
  final $Res Function(AuthData) _then;

/// Create a copy of AuthData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? accessToken = null,Object? tokenType = null,Object? expiresIn = null,Object? refreshToken = null,Object? refreshExpiry = null,}) {
  return _then(_self.copyWith(
accessToken: null == accessToken ? _self.accessToken : accessToken // ignore: cast_nullable_to_non_nullable
as String,tokenType: null == tokenType ? _self.tokenType : tokenType // ignore: cast_nullable_to_non_nullable
as String,expiresIn: null == expiresIn ? _self.expiresIn : expiresIn // ignore: cast_nullable_to_non_nullable
as int,refreshToken: null == refreshToken ? _self.refreshToken : refreshToken // ignore: cast_nullable_to_non_nullable
as String,refreshExpiry: null == refreshExpiry ? _self.refreshExpiry : refreshExpiry // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [AuthData].
extension AuthDataPatterns on AuthData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AuthData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AuthData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AuthData value)  $default,){
final _that = this;
switch (_that) {
case _AuthData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AuthData value)?  $default,){
final _that = this;
switch (_that) {
case _AuthData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "access_token")  String accessToken, @JsonKey(name: "token_type")  String tokenType, @JsonKey(name: "expires_in")  int expiresIn, @JsonKey(name: "refresh_token")  String refreshToken, @JsonKey(name: "refresh_expiry")  int refreshExpiry)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AuthData() when $default != null:
return $default(_that.accessToken,_that.tokenType,_that.expiresIn,_that.refreshToken,_that.refreshExpiry);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "access_token")  String accessToken, @JsonKey(name: "token_type")  String tokenType, @JsonKey(name: "expires_in")  int expiresIn, @JsonKey(name: "refresh_token")  String refreshToken, @JsonKey(name: "refresh_expiry")  int refreshExpiry)  $default,) {final _that = this;
switch (_that) {
case _AuthData():
return $default(_that.accessToken,_that.tokenType,_that.expiresIn,_that.refreshToken,_that.refreshExpiry);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "access_token")  String accessToken, @JsonKey(name: "token_type")  String tokenType, @JsonKey(name: "expires_in")  int expiresIn, @JsonKey(name: "refresh_token")  String refreshToken, @JsonKey(name: "refresh_expiry")  int refreshExpiry)?  $default,) {final _that = this;
switch (_that) {
case _AuthData() when $default != null:
return $default(_that.accessToken,_that.tokenType,_that.expiresIn,_that.refreshToken,_that.refreshExpiry);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AuthData implements AuthData {
  const _AuthData({@JsonKey(name: "access_token") required this.accessToken, @JsonKey(name: "token_type") required this.tokenType, @JsonKey(name: "expires_in") required this.expiresIn, @JsonKey(name: "refresh_token") required this.refreshToken, @JsonKey(name: "refresh_expiry") required this.refreshExpiry});
  factory _AuthData.fromJson(Map<String, dynamic> json) => _$AuthDataFromJson(json);

@override@JsonKey(name: "access_token") final  String accessToken;
@override@JsonKey(name: "token_type") final  String tokenType;
@override@JsonKey(name: "expires_in") final  int expiresIn;
@override@JsonKey(name: "refresh_token") final  String refreshToken;
@override@JsonKey(name: "refresh_expiry") final  int refreshExpiry;

/// Create a copy of AuthData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuthDataCopyWith<_AuthData> get copyWith => __$AuthDataCopyWithImpl<_AuthData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AuthDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthData&&(identical(other.accessToken, accessToken) || other.accessToken == accessToken)&&(identical(other.tokenType, tokenType) || other.tokenType == tokenType)&&(identical(other.expiresIn, expiresIn) || other.expiresIn == expiresIn)&&(identical(other.refreshToken, refreshToken) || other.refreshToken == refreshToken)&&(identical(other.refreshExpiry, refreshExpiry) || other.refreshExpiry == refreshExpiry));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,accessToken,tokenType,expiresIn,refreshToken,refreshExpiry);

@override
String toString() {
  return 'AuthData(accessToken: $accessToken, tokenType: $tokenType, expiresIn: $expiresIn, refreshToken: $refreshToken, refreshExpiry: $refreshExpiry)';
}


}

/// @nodoc
abstract mixin class _$AuthDataCopyWith<$Res> implements $AuthDataCopyWith<$Res> {
  factory _$AuthDataCopyWith(_AuthData value, $Res Function(_AuthData) _then) = __$AuthDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "access_token") String accessToken,@JsonKey(name: "token_type") String tokenType,@JsonKey(name: "expires_in") int expiresIn,@JsonKey(name: "refresh_token") String refreshToken,@JsonKey(name: "refresh_expiry") int refreshExpiry
});




}
/// @nodoc
class __$AuthDataCopyWithImpl<$Res>
    implements _$AuthDataCopyWith<$Res> {
  __$AuthDataCopyWithImpl(this._self, this._then);

  final _AuthData _self;
  final $Res Function(_AuthData) _then;

/// Create a copy of AuthData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? accessToken = null,Object? tokenType = null,Object? expiresIn = null,Object? refreshToken = null,Object? refreshExpiry = null,}) {
  return _then(_AuthData(
accessToken: null == accessToken ? _self.accessToken : accessToken // ignore: cast_nullable_to_non_nullable
as String,tokenType: null == tokenType ? _self.tokenType : tokenType // ignore: cast_nullable_to_non_nullable
as String,expiresIn: null == expiresIn ? _self.expiresIn : expiresIn // ignore: cast_nullable_to_non_nullable
as int,refreshToken: null == refreshToken ? _self.refreshToken : refreshToken // ignore: cast_nullable_to_non_nullable
as String,refreshExpiry: null == refreshExpiry ? _self.refreshExpiry : refreshExpiry // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
