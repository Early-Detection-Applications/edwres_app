// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DataResponseModel<T> {

@JsonKey(name: 'success') bool? get success;@JsonKey(name: 'message') String? get message;@JsonKey(name: 'data') DataModel<T>? get data;
/// Create a copy of DataResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DataResponseModelCopyWith<T, DataResponseModel<T>> get copyWith => _$DataResponseModelCopyWithImpl<T, DataResponseModel<T>>(this as DataResponseModel<T>, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DataResponseModel<T>&&(identical(other.success, success) || other.success == success)&&(identical(other.message, message) || other.message == message)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,message,data);

@override
String toString() {
  return 'DataResponseModel<$T>(success: $success, message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class $DataResponseModelCopyWith<T,$Res>  {
  factory $DataResponseModelCopyWith(DataResponseModel<T> value, $Res Function(DataResponseModel<T>) _then) = _$DataResponseModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'success') bool? success,@JsonKey(name: 'message') String? message,@JsonKey(name: 'data') DataModel<T>? data
});


$DataModelCopyWith<T, $Res>? get data;

}
/// @nodoc
class _$DataResponseModelCopyWithImpl<T,$Res>
    implements $DataResponseModelCopyWith<T, $Res> {
  _$DataResponseModelCopyWithImpl(this._self, this._then);

  final DataResponseModel<T> _self;
  final $Res Function(DataResponseModel<T>) _then;

/// Create a copy of DataResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = freezed,Object? message = freezed,Object? data = freezed,}) {
  return _then(_self.copyWith(
success: freezed == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as DataModel<T>?,
  ));
}
/// Create a copy of DataResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DataModelCopyWith<T, $Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $DataModelCopyWith<T, $Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [DataResponseModel].
extension DataResponseModelPatterns<T> on DataResponseModel<T> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DataResponseModel<T> value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DataResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DataResponseModel<T> value)  $default,){
final _that = this;
switch (_that) {
case _DataResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DataResponseModel<T> value)?  $default,){
final _that = this;
switch (_that) {
case _DataResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'success')  bool? success, @JsonKey(name: 'message')  String? message, @JsonKey(name: 'data')  DataModel<T>? data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DataResponseModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'success')  bool? success, @JsonKey(name: 'message')  String? message, @JsonKey(name: 'data')  DataModel<T>? data)  $default,) {final _that = this;
switch (_that) {
case _DataResponseModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'success')  bool? success, @JsonKey(name: 'message')  String? message, @JsonKey(name: 'data')  DataModel<T>? data)?  $default,) {final _that = this;
switch (_that) {
case _DataResponseModel() when $default != null:
return $default(_that.success,_that.message,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable(createToJson: false,genericArgumentFactories: true)

class _DataResponseModel<T> implements DataResponseModel<T> {
  const _DataResponseModel({@JsonKey(name: 'success') this.success, @JsonKey(name: 'message') this.message, @JsonKey(name: 'data') this.data});
  factory _DataResponseModel.fromJson(Map<String, dynamic> json,T Function(Object?) fromJsonT) => _$DataResponseModelFromJson(json,fromJsonT);

@override@JsonKey(name: 'success') final  bool? success;
@override@JsonKey(name: 'message') final  String? message;
@override@JsonKey(name: 'data') final  DataModel<T>? data;

/// Create a copy of DataResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DataResponseModelCopyWith<T, _DataResponseModel<T>> get copyWith => __$DataResponseModelCopyWithImpl<T, _DataResponseModel<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DataResponseModel<T>&&(identical(other.success, success) || other.success == success)&&(identical(other.message, message) || other.message == message)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,message,data);

@override
String toString() {
  return 'DataResponseModel<$T>(success: $success, message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class _$DataResponseModelCopyWith<T,$Res> implements $DataResponseModelCopyWith<T, $Res> {
  factory _$DataResponseModelCopyWith(_DataResponseModel<T> value, $Res Function(_DataResponseModel<T>) _then) = __$DataResponseModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'success') bool? success,@JsonKey(name: 'message') String? message,@JsonKey(name: 'data') DataModel<T>? data
});


@override $DataModelCopyWith<T, $Res>? get data;

}
/// @nodoc
class __$DataResponseModelCopyWithImpl<T,$Res>
    implements _$DataResponseModelCopyWith<T, $Res> {
  __$DataResponseModelCopyWithImpl(this._self, this._then);

  final _DataResponseModel<T> _self;
  final $Res Function(_DataResponseModel<T>) _then;

/// Create a copy of DataResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = freezed,Object? message = freezed,Object? data = freezed,}) {
  return _then(_DataResponseModel<T>(
success: freezed == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as DataModel<T>?,
  ));
}

/// Create a copy of DataResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DataModelCopyWith<T, $Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $DataModelCopyWith<T, $Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

// dart format on
