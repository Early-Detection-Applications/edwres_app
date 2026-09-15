// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'diagnosis_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DiagnosisResponseModel {

@JsonKey(name: 'success') bool? get success;@JsonKey(name: 'message') String? get message;@JsonKey(name: 'data') DiagnosisModel? get data;
/// Create a copy of DiagnosisResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DiagnosisResponseModelCopyWith<DiagnosisResponseModel> get copyWith => _$DiagnosisResponseModelCopyWithImpl<DiagnosisResponseModel>(this as DiagnosisResponseModel, _$identity);

  /// Serializes this DiagnosisResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DiagnosisResponseModel&&(identical(other.success, success) || other.success == success)&&(identical(other.message, message) || other.message == message)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,message,data);

@override
String toString() {
  return 'DiagnosisResponseModel(success: $success, message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class $DiagnosisResponseModelCopyWith<$Res>  {
  factory $DiagnosisResponseModelCopyWith(DiagnosisResponseModel value, $Res Function(DiagnosisResponseModel) _then) = _$DiagnosisResponseModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'success') bool? success,@JsonKey(name: 'message') String? message,@JsonKey(name: 'data') DiagnosisModel? data
});


$DiagnosisModelCopyWith<$Res>? get data;

}
/// @nodoc
class _$DiagnosisResponseModelCopyWithImpl<$Res>
    implements $DiagnosisResponseModelCopyWith<$Res> {
  _$DiagnosisResponseModelCopyWithImpl(this._self, this._then);

  final DiagnosisResponseModel _self;
  final $Res Function(DiagnosisResponseModel) _then;

/// Create a copy of DiagnosisResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = freezed,Object? message = freezed,Object? data = freezed,}) {
  return _then(_self.copyWith(
success: freezed == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as DiagnosisModel?,
  ));
}
/// Create a copy of DiagnosisResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DiagnosisModelCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $DiagnosisModelCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [DiagnosisResponseModel].
extension DiagnosisResponseModelPatterns on DiagnosisResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DiagnosisResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DiagnosisResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DiagnosisResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _DiagnosisResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DiagnosisResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _DiagnosisResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'success')  bool? success, @JsonKey(name: 'message')  String? message, @JsonKey(name: 'data')  DiagnosisModel? data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DiagnosisResponseModel() when $default != null:
return $default(_that.success,_that.message,_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'success')  bool? success, @JsonKey(name: 'message')  String? message, @JsonKey(name: 'data')  DiagnosisModel? data)  $default,) {final _that = this;
switch (_that) {
case _DiagnosisResponseModel():
return $default(_that.success,_that.message,_that.data);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'success')  bool? success, @JsonKey(name: 'message')  String? message, @JsonKey(name: 'data')  DiagnosisModel? data)?  $default,) {final _that = this;
switch (_that) {
case _DiagnosisResponseModel() when $default != null:
return $default(_that.success,_that.message,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DiagnosisResponseModel implements DiagnosisResponseModel {
  const _DiagnosisResponseModel({@JsonKey(name: 'success') this.success, @JsonKey(name: 'message') this.message, @JsonKey(name: 'data') this.data});
  factory _DiagnosisResponseModel.fromJson(Map<String, dynamic> json) => _$DiagnosisResponseModelFromJson(json);

@override@JsonKey(name: 'success') final  bool? success;
@override@JsonKey(name: 'message') final  String? message;
@override@JsonKey(name: 'data') final  DiagnosisModel? data;

/// Create a copy of DiagnosisResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DiagnosisResponseModelCopyWith<_DiagnosisResponseModel> get copyWith => __$DiagnosisResponseModelCopyWithImpl<_DiagnosisResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DiagnosisResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DiagnosisResponseModel&&(identical(other.success, success) || other.success == success)&&(identical(other.message, message) || other.message == message)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,message,data);

@override
String toString() {
  return 'DiagnosisResponseModel(success: $success, message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class _$DiagnosisResponseModelCopyWith<$Res> implements $DiagnosisResponseModelCopyWith<$Res> {
  factory _$DiagnosisResponseModelCopyWith(_DiagnosisResponseModel value, $Res Function(_DiagnosisResponseModel) _then) = __$DiagnosisResponseModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'success') bool? success,@JsonKey(name: 'message') String? message,@JsonKey(name: 'data') DiagnosisModel? data
});


@override $DiagnosisModelCopyWith<$Res>? get data;

}
/// @nodoc
class __$DiagnosisResponseModelCopyWithImpl<$Res>
    implements _$DiagnosisResponseModelCopyWith<$Res> {
  __$DiagnosisResponseModelCopyWithImpl(this._self, this._then);

  final _DiagnosisResponseModel _self;
  final $Res Function(_DiagnosisResponseModel) _then;

/// Create a copy of DiagnosisResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = freezed,Object? message = freezed,Object? data = freezed,}) {
  return _then(_DiagnosisResponseModel(
success: freezed == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as DiagnosisModel?,
  ));
}

/// Create a copy of DiagnosisResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DiagnosisModelCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $DiagnosisModelCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

// dart format on
