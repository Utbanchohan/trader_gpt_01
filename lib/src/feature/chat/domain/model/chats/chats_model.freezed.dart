// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chats_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ChatHistoryResponse {

 int get totalCount; int get page; int get limit; List<ChatHistory> get results;
/// Create a copy of ChatHistoryResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatHistoryResponseCopyWith<ChatHistoryResponse> get copyWith => _$ChatHistoryResponseCopyWithImpl<ChatHistoryResponse>(this as ChatHistoryResponse, _$identity);

  /// Serializes this ChatHistoryResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatHistoryResponse&&(identical(other.totalCount, totalCount) || other.totalCount == totalCount)&&(identical(other.page, page) || other.page == page)&&(identical(other.limit, limit) || other.limit == limit)&&const DeepCollectionEquality().equals(other.results, results));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totalCount,page,limit,const DeepCollectionEquality().hash(results));

@override
String toString() {
  return 'ChatHistoryResponse(totalCount: $totalCount, page: $page, limit: $limit, results: $results)';
}


}

/// @nodoc
abstract mixin class $ChatHistoryResponseCopyWith<$Res>  {
  factory $ChatHistoryResponseCopyWith(ChatHistoryResponse value, $Res Function(ChatHistoryResponse) _then) = _$ChatHistoryResponseCopyWithImpl;
@useResult
$Res call({
 int totalCount, int page, int limit, List<ChatHistory> results
});




}
/// @nodoc
class _$ChatHistoryResponseCopyWithImpl<$Res>
    implements $ChatHistoryResponseCopyWith<$Res> {
  _$ChatHistoryResponseCopyWithImpl(this._self, this._then);

  final ChatHistoryResponse _self;
  final $Res Function(ChatHistoryResponse) _then;

/// Create a copy of ChatHistoryResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? totalCount = null,Object? page = null,Object? limit = null,Object? results = null,}) {
  return _then(_self.copyWith(
totalCount: null == totalCount ? _self.totalCount : totalCount // ignore: cast_nullable_to_non_nullable
as int,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,results: null == results ? _self.results : results // ignore: cast_nullable_to_non_nullable
as List<ChatHistory>,
  ));
}

}


/// Adds pattern-matching-related methods to [ChatHistoryResponse].
extension ChatHistoryResponsePatterns on ChatHistoryResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChatHistoryResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChatHistoryResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChatHistoryResponse value)  $default,){
final _that = this;
switch (_that) {
case _ChatHistoryResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChatHistoryResponse value)?  $default,){
final _that = this;
switch (_that) {
case _ChatHistoryResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int totalCount,  int page,  int limit,  List<ChatHistory> results)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChatHistoryResponse() when $default != null:
return $default(_that.totalCount,_that.page,_that.limit,_that.results);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int totalCount,  int page,  int limit,  List<ChatHistory> results)  $default,) {final _that = this;
switch (_that) {
case _ChatHistoryResponse():
return $default(_that.totalCount,_that.page,_that.limit,_that.results);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int totalCount,  int page,  int limit,  List<ChatHistory> results)?  $default,) {final _that = this;
switch (_that) {
case _ChatHistoryResponse() when $default != null:
return $default(_that.totalCount,_that.page,_that.limit,_that.results);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ChatHistoryResponse implements ChatHistoryResponse {
  const _ChatHistoryResponse({required this.totalCount, required this.page, required this.limit, required final  List<ChatHistory> results}): _results = results;
  factory _ChatHistoryResponse.fromJson(Map<String, dynamic> json) => _$ChatHistoryResponseFromJson(json);

@override final  int totalCount;
@override final  int page;
@override final  int limit;
 final  List<ChatHistory> _results;
@override List<ChatHistory> get results {
  if (_results is EqualUnmodifiableListView) return _results;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_results);
}


/// Create a copy of ChatHistoryResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChatHistoryResponseCopyWith<_ChatHistoryResponse> get copyWith => __$ChatHistoryResponseCopyWithImpl<_ChatHistoryResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChatHistoryResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChatHistoryResponse&&(identical(other.totalCount, totalCount) || other.totalCount == totalCount)&&(identical(other.page, page) || other.page == page)&&(identical(other.limit, limit) || other.limit == limit)&&const DeepCollectionEquality().equals(other._results, _results));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totalCount,page,limit,const DeepCollectionEquality().hash(_results));

@override
String toString() {
  return 'ChatHistoryResponse(totalCount: $totalCount, page: $page, limit: $limit, results: $results)';
}


}

/// @nodoc
abstract mixin class _$ChatHistoryResponseCopyWith<$Res> implements $ChatHistoryResponseCopyWith<$Res> {
  factory _$ChatHistoryResponseCopyWith(_ChatHistoryResponse value, $Res Function(_ChatHistoryResponse) _then) = __$ChatHistoryResponseCopyWithImpl;
@override @useResult
$Res call({
 int totalCount, int page, int limit, List<ChatHistory> results
});




}
/// @nodoc
class __$ChatHistoryResponseCopyWithImpl<$Res>
    implements _$ChatHistoryResponseCopyWith<$Res> {
  __$ChatHistoryResponseCopyWithImpl(this._self, this._then);

  final _ChatHistoryResponse _self;
  final $Res Function(_ChatHistoryResponse) _then;

/// Create a copy of ChatHistoryResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? totalCount = null,Object? page = null,Object? limit = null,Object? results = null,}) {
  return _then(_ChatHistoryResponse(
totalCount: null == totalCount ? _self.totalCount : totalCount // ignore: cast_nullable_to_non_nullable
as int,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,results: null == results ? _self._results : results // ignore: cast_nullable_to_non_nullable
as List<ChatHistory>,
  ));
}


}


/// @nodoc
mixin _$ChatHistory {

@JsonKey(name: '_id') String get id; String get userId; String get symbol; String get stockId; String get type; String get companyName; DateTime get createdAt; DateTime get updatedAt;
/// Create a copy of ChatHistory
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatHistoryCopyWith<ChatHistory> get copyWith => _$ChatHistoryCopyWithImpl<ChatHistory>(this as ChatHistory, _$identity);

  /// Serializes this ChatHistory to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatHistory&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.symbol, symbol) || other.symbol == symbol)&&(identical(other.stockId, stockId) || other.stockId == stockId)&&(identical(other.type, type) || other.type == type)&&(identical(other.companyName, companyName) || other.companyName == companyName)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,symbol,stockId,type,companyName,createdAt,updatedAt);

@override
String toString() {
  return 'ChatHistory(id: $id, userId: $userId, symbol: $symbol, stockId: $stockId, type: $type, companyName: $companyName, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $ChatHistoryCopyWith<$Res>  {
  factory $ChatHistoryCopyWith(ChatHistory value, $Res Function(ChatHistory) _then) = _$ChatHistoryCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: '_id') String id, String userId, String symbol, String stockId, String type, String companyName, DateTime createdAt, DateTime updatedAt
});




}
/// @nodoc
class _$ChatHistoryCopyWithImpl<$Res>
    implements $ChatHistoryCopyWith<$Res> {
  _$ChatHistoryCopyWithImpl(this._self, this._then);

  final ChatHistory _self;
  final $Res Function(ChatHistory) _then;

/// Create a copy of ChatHistory
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? userId = null,Object? symbol = null,Object? stockId = null,Object? type = null,Object? companyName = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,symbol: null == symbol ? _self.symbol : symbol // ignore: cast_nullable_to_non_nullable
as String,stockId: null == stockId ? _self.stockId : stockId // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,companyName: null == companyName ? _self.companyName : companyName // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [ChatHistory].
extension ChatHistoryPatterns on ChatHistory {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChatHistory value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChatHistory() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChatHistory value)  $default,){
final _that = this;
switch (_that) {
case _ChatHistory():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChatHistory value)?  $default,){
final _that = this;
switch (_that) {
case _ChatHistory() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  String id,  String userId,  String symbol,  String stockId,  String type,  String companyName,  DateTime createdAt,  DateTime updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChatHistory() when $default != null:
return $default(_that.id,_that.userId,_that.symbol,_that.stockId,_that.type,_that.companyName,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  String id,  String userId,  String symbol,  String stockId,  String type,  String companyName,  DateTime createdAt,  DateTime updatedAt)  $default,) {final _that = this;
switch (_that) {
case _ChatHistory():
return $default(_that.id,_that.userId,_that.symbol,_that.stockId,_that.type,_that.companyName,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: '_id')  String id,  String userId,  String symbol,  String stockId,  String type,  String companyName,  DateTime createdAt,  DateTime updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _ChatHistory() when $default != null:
return $default(_that.id,_that.userId,_that.symbol,_that.stockId,_that.type,_that.companyName,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ChatHistory implements ChatHistory {
  const _ChatHistory({@JsonKey(name: '_id') required this.id, required this.userId, required this.symbol, required this.stockId, required this.type, required this.companyName, required this.createdAt, required this.updatedAt});
  factory _ChatHistory.fromJson(Map<String, dynamic> json) => _$ChatHistoryFromJson(json);

@override@JsonKey(name: '_id') final  String id;
@override final  String userId;
@override final  String symbol;
@override final  String stockId;
@override final  String type;
@override final  String companyName;
@override final  DateTime createdAt;
@override final  DateTime updatedAt;

/// Create a copy of ChatHistory
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChatHistoryCopyWith<_ChatHistory> get copyWith => __$ChatHistoryCopyWithImpl<_ChatHistory>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChatHistoryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChatHistory&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.symbol, symbol) || other.symbol == symbol)&&(identical(other.stockId, stockId) || other.stockId == stockId)&&(identical(other.type, type) || other.type == type)&&(identical(other.companyName, companyName) || other.companyName == companyName)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,symbol,stockId,type,companyName,createdAt,updatedAt);

@override
String toString() {
  return 'ChatHistory(id: $id, userId: $userId, symbol: $symbol, stockId: $stockId, type: $type, companyName: $companyName, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$ChatHistoryCopyWith<$Res> implements $ChatHistoryCopyWith<$Res> {
  factory _$ChatHistoryCopyWith(_ChatHistory value, $Res Function(_ChatHistory) _then) = __$ChatHistoryCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: '_id') String id, String userId, String symbol, String stockId, String type, String companyName, DateTime createdAt, DateTime updatedAt
});




}
/// @nodoc
class __$ChatHistoryCopyWithImpl<$Res>
    implements _$ChatHistoryCopyWith<$Res> {
  __$ChatHistoryCopyWithImpl(this._self, this._then);

  final _ChatHistory _self;
  final $Res Function(_ChatHistory) _then;

/// Create a copy of ChatHistory
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? userId = null,Object? symbol = null,Object? stockId = null,Object? type = null,Object? companyName = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_ChatHistory(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,symbol: null == symbol ? _self.symbol : symbol // ignore: cast_nullable_to_non_nullable
as String,stockId: null == stockId ? _self.stockId : stockId // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,companyName: null == companyName ? _self.companyName : companyName // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
