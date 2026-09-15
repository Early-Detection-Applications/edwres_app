// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'diagnosis_pdf_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DiagnosisPdfResponseModel {

 bool? get success; String? get message;@JsonKey(name: 'pdf_url') String? get pdfUrl;
/// Create a copy of DiagnosisPdfResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DiagnosisPdfResponseModelCopyWith<DiagnosisPdfResponseModel> get copyWith => _$DiagnosisPdfResponseModelCopyWithImpl<DiagnosisPdfResponseModel>(this as DiagnosisPdfResponseModel, _$identity);

  /// Serializes this DiagnosisPdfResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DiagnosisPdfResponseModel&&(identical(other.success, success) || other.success == success)&&(identical(other.message, message) || other.message == message)&&(identical(other.pdfUrl, pdfUrl) || other.pdfUrl == pdfUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,message,pdfUrl);

@override
String toString() {
  return 'DiagnosisPdfResponseModel(success: $success, message: $message, pdfUrl: $pdfUrl)';
}


}

/// @nodoc
abstract mixin class $DiagnosisPdfResponseModelCopyWith<$Res>  {
  factory $DiagnosisPdfResponseModelCopyWith(DiagnosisPdfResponseModel value, $Res Function(DiagnosisPdfResponseModel) _then) = _$DiagnosisPdfResponseModelCopyWithImpl;
@useResult
$Res call({
 bool? success, String? message,@JsonKey(name: 'pdf_url') String? pdfUrl
});




}
/// @nodoc
class _$DiagnosisPdfResponseModelCopyWithImpl<$Res>
    implements $DiagnosisPdfResponseModelCopyWith<$Res> {
  _$DiagnosisPdfResponseModelCopyWithImpl(this._self, this._then);

  final DiagnosisPdfResponseModel _self;
  final $Res Function(DiagnosisPdfResponseModel) _then;

/// Create a copy of DiagnosisPdfResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = freezed,Object? message = freezed,Object? pdfUrl = freezed,}) {
  return _then(_self.copyWith(
success: freezed == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,pdfUrl: freezed == pdfUrl ? _self.pdfUrl : pdfUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [DiagnosisPdfResponseModel].
extension DiagnosisPdfResponseModelPatterns on DiagnosisPdfResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DiagnosisPdfResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DiagnosisPdfResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DiagnosisPdfResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _DiagnosisPdfResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DiagnosisPdfResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _DiagnosisPdfResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool? success,  String? message, @JsonKey(name: 'pdf_url')  String? pdfUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DiagnosisPdfResponseModel() when $default != null:
return $default(_that.success,_that.message,_that.pdfUrl);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool? success,  String? message, @JsonKey(name: 'pdf_url')  String? pdfUrl)  $default,) {final _that = this;
switch (_that) {
case _DiagnosisPdfResponseModel():
return $default(_that.success,_that.message,_that.pdfUrl);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool? success,  String? message, @JsonKey(name: 'pdf_url')  String? pdfUrl)?  $default,) {final _that = this;
switch (_that) {
case _DiagnosisPdfResponseModel() when $default != null:
return $default(_that.success,_that.message,_that.pdfUrl);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DiagnosisPdfResponseModel implements DiagnosisPdfResponseModel {
  const _DiagnosisPdfResponseModel({this.success, this.message, @JsonKey(name: 'pdf_url') this.pdfUrl});
  factory _DiagnosisPdfResponseModel.fromJson(Map<String, dynamic> json) => _$DiagnosisPdfResponseModelFromJson(json);

@override final  bool? success;
@override final  String? message;
@override@JsonKey(name: 'pdf_url') final  String? pdfUrl;

/// Create a copy of DiagnosisPdfResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DiagnosisPdfResponseModelCopyWith<_DiagnosisPdfResponseModel> get copyWith => __$DiagnosisPdfResponseModelCopyWithImpl<_DiagnosisPdfResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DiagnosisPdfResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DiagnosisPdfResponseModel&&(identical(other.success, success) || other.success == success)&&(identical(other.message, message) || other.message == message)&&(identical(other.pdfUrl, pdfUrl) || other.pdfUrl == pdfUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,message,pdfUrl);

@override
String toString() {
  return 'DiagnosisPdfResponseModel(success: $success, message: $message, pdfUrl: $pdfUrl)';
}


}

/// @nodoc
abstract mixin class _$DiagnosisPdfResponseModelCopyWith<$Res> implements $DiagnosisPdfResponseModelCopyWith<$Res> {
  factory _$DiagnosisPdfResponseModelCopyWith(_DiagnosisPdfResponseModel value, $Res Function(_DiagnosisPdfResponseModel) _then) = __$DiagnosisPdfResponseModelCopyWithImpl;
@override @useResult
$Res call({
 bool? success, String? message,@JsonKey(name: 'pdf_url') String? pdfUrl
});




}
/// @nodoc
class __$DiagnosisPdfResponseModelCopyWithImpl<$Res>
    implements _$DiagnosisPdfResponseModelCopyWith<$Res> {
  __$DiagnosisPdfResponseModelCopyWithImpl(this._self, this._then);

  final _DiagnosisPdfResponseModel _self;
  final $Res Function(_DiagnosisPdfResponseModel) _then;

/// Create a copy of DiagnosisPdfResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = freezed,Object? message = freezed,Object? pdfUrl = freezed,}) {
  return _then(_DiagnosisPdfResponseModel(
success: freezed == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,pdfUrl: freezed == pdfUrl ? _self.pdfUrl : pdfUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
