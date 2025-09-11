// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'random_question_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RandomQuestionModel {

 String get message;@JsonKey(name: 'success') bool get isSuccess; List<String> get questions;
/// Create a copy of RandomQuestionModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RandomQuestionModelCopyWith<RandomQuestionModel> get copyWith => _$RandomQuestionModelCopyWithImpl<RandomQuestionModel>(this as RandomQuestionModel, _$identity);

  /// Serializes this RandomQuestionModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RandomQuestionModel&&(identical(other.message, message) || other.message == message)&&(identical(other.isSuccess, isSuccess) || other.isSuccess == isSuccess)&&const DeepCollectionEquality().equals(other.questions, questions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message,isSuccess,const DeepCollectionEquality().hash(questions));

@override
String toString() {
  return 'RandomQuestionModel(message: $message, isSuccess: $isSuccess, questions: $questions)';
}


}

/// @nodoc
abstract mixin class $RandomQuestionModelCopyWith<$Res>  {
  factory $RandomQuestionModelCopyWith(RandomQuestionModel value, $Res Function(RandomQuestionModel) _then) = _$RandomQuestionModelCopyWithImpl;
@useResult
$Res call({
 String message,@JsonKey(name: 'success') bool isSuccess, List<String> questions
});




}
/// @nodoc
class _$RandomQuestionModelCopyWithImpl<$Res>
    implements $RandomQuestionModelCopyWith<$Res> {
  _$RandomQuestionModelCopyWithImpl(this._self, this._then);

  final RandomQuestionModel _self;
  final $Res Function(RandomQuestionModel) _then;

/// Create a copy of RandomQuestionModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? message = null,Object? isSuccess = null,Object? questions = null,}) {
  return _then(_self.copyWith(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,isSuccess: null == isSuccess ? _self.isSuccess : isSuccess // ignore: cast_nullable_to_non_nullable
as bool,questions: null == questions ? _self.questions : questions // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [RandomQuestionModel].
extension RandomQuestionModelPatterns on RandomQuestionModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RandomQuestionModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RandomQuestionModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RandomQuestionModel value)  $default,){
final _that = this;
switch (_that) {
case _RandomQuestionModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RandomQuestionModel value)?  $default,){
final _that = this;
switch (_that) {
case _RandomQuestionModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String message, @JsonKey(name: 'success')  bool isSuccess,  List<String> questions)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RandomQuestionModel() when $default != null:
return $default(_that.message,_that.isSuccess,_that.questions);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String message, @JsonKey(name: 'success')  bool isSuccess,  List<String> questions)  $default,) {final _that = this;
switch (_that) {
case _RandomQuestionModel():
return $default(_that.message,_that.isSuccess,_that.questions);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String message, @JsonKey(name: 'success')  bool isSuccess,  List<String> questions)?  $default,) {final _that = this;
switch (_that) {
case _RandomQuestionModel() when $default != null:
return $default(_that.message,_that.isSuccess,_that.questions);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RandomQuestionModel implements RandomQuestionModel {
  const _RandomQuestionModel({required this.message, @JsonKey(name: 'success') required this.isSuccess, required final  List<String> questions}): _questions = questions;
  factory _RandomQuestionModel.fromJson(Map<String, dynamic> json) => _$RandomQuestionModelFromJson(json);

@override final  String message;
@override@JsonKey(name: 'success') final  bool isSuccess;
 final  List<String> _questions;
@override List<String> get questions {
  if (_questions is EqualUnmodifiableListView) return _questions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_questions);
}


/// Create a copy of RandomQuestionModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RandomQuestionModelCopyWith<_RandomQuestionModel> get copyWith => __$RandomQuestionModelCopyWithImpl<_RandomQuestionModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RandomQuestionModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RandomQuestionModel&&(identical(other.message, message) || other.message == message)&&(identical(other.isSuccess, isSuccess) || other.isSuccess == isSuccess)&&const DeepCollectionEquality().equals(other._questions, _questions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message,isSuccess,const DeepCollectionEquality().hash(_questions));

@override
String toString() {
  return 'RandomQuestionModel(message: $message, isSuccess: $isSuccess, questions: $questions)';
}


}

/// @nodoc
abstract mixin class _$RandomQuestionModelCopyWith<$Res> implements $RandomQuestionModelCopyWith<$Res> {
  factory _$RandomQuestionModelCopyWith(_RandomQuestionModel value, $Res Function(_RandomQuestionModel) _then) = __$RandomQuestionModelCopyWithImpl;
@override @useResult
$Res call({
 String message,@JsonKey(name: 'success') bool isSuccess, List<String> questions
});




}
/// @nodoc
class __$RandomQuestionModelCopyWithImpl<$Res>
    implements _$RandomQuestionModelCopyWith<$Res> {
  __$RandomQuestionModelCopyWithImpl(this._self, this._then);

  final _RandomQuestionModel _self;
  final $Res Function(_RandomQuestionModel) _then;

/// Create a copy of RandomQuestionModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,Object? isSuccess = null,Object? questions = null,}) {
  return _then(_RandomQuestionModel(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,isSuccess: null == isSuccess ? _self.isSuccess : isSuccess // ignore: cast_nullable_to_non_nullable
as bool,questions: null == questions ? _self._questions : questions // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
