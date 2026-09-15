// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detection_history_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DetectionHistoryResponseModel {

@JsonKey(name: 'status') String? get status;@JsonKey(name: 'message') String? get message;@JsonKey(name: 'data') List<DetectionHistoryModel>? get data;
/// Create a copy of DetectionHistoryResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DetectionHistoryResponseModelCopyWith<DetectionHistoryResponseModel> get copyWith => _$DetectionHistoryResponseModelCopyWithImpl<DetectionHistoryResponseModel>(this as DetectionHistoryResponseModel, _$identity);

  /// Serializes this DetectionHistoryResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DetectionHistoryResponseModel&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,message,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'DetectionHistoryResponseModel(status: $status, message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class $DetectionHistoryResponseModelCopyWith<$Res>  {
  factory $DetectionHistoryResponseModelCopyWith(DetectionHistoryResponseModel value, $Res Function(DetectionHistoryResponseModel) _then) = _$DetectionHistoryResponseModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'status') String? status,@JsonKey(name: 'message') String? message,@JsonKey(name: 'data') List<DetectionHistoryModel>? data
});




}
/// @nodoc
class _$DetectionHistoryResponseModelCopyWithImpl<$Res>
    implements $DetectionHistoryResponseModelCopyWith<$Res> {
  _$DetectionHistoryResponseModelCopyWithImpl(this._self, this._then);

  final DetectionHistoryResponseModel _self;
  final $Res Function(DetectionHistoryResponseModel) _then;

/// Create a copy of DetectionHistoryResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = freezed,Object? message = freezed,Object? data = freezed,}) {
  return _then(_self.copyWith(
status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<DetectionHistoryModel>?,
  ));
}

}


/// Adds pattern-matching-related methods to [DetectionHistoryResponseModel].
extension DetectionHistoryResponseModelPatterns on DetectionHistoryResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DetectionHistoryResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DetectionHistoryResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DetectionHistoryResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _DetectionHistoryResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DetectionHistoryResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _DetectionHistoryResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'status')  String? status, @JsonKey(name: 'message')  String? message, @JsonKey(name: 'data')  List<DetectionHistoryModel>? data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DetectionHistoryResponseModel() when $default != null:
return $default(_that.status,_that.message,_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'status')  String? status, @JsonKey(name: 'message')  String? message, @JsonKey(name: 'data')  List<DetectionHistoryModel>? data)  $default,) {final _that = this;
switch (_that) {
case _DetectionHistoryResponseModel():
return $default(_that.status,_that.message,_that.data);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'status')  String? status, @JsonKey(name: 'message')  String? message, @JsonKey(name: 'data')  List<DetectionHistoryModel>? data)?  $default,) {final _that = this;
switch (_that) {
case _DetectionHistoryResponseModel() when $default != null:
return $default(_that.status,_that.message,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DetectionHistoryResponseModel implements DetectionHistoryResponseModel {
  const _DetectionHistoryResponseModel({@JsonKey(name: 'status') this.status, @JsonKey(name: 'message') this.message, @JsonKey(name: 'data') final  List<DetectionHistoryModel>? data}): _data = data;
  factory _DetectionHistoryResponseModel.fromJson(Map<String, dynamic> json) => _$DetectionHistoryResponseModelFromJson(json);

@override@JsonKey(name: 'status') final  String? status;
@override@JsonKey(name: 'message') final  String? message;
 final  List<DetectionHistoryModel>? _data;
@override@JsonKey(name: 'data') List<DetectionHistoryModel>? get data {
  final value = _data;
  if (value == null) return null;
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of DetectionHistoryResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DetectionHistoryResponseModelCopyWith<_DetectionHistoryResponseModel> get copyWith => __$DetectionHistoryResponseModelCopyWithImpl<_DetectionHistoryResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DetectionHistoryResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DetectionHistoryResponseModel&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other._data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,message,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'DetectionHistoryResponseModel(status: $status, message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class _$DetectionHistoryResponseModelCopyWith<$Res> implements $DetectionHistoryResponseModelCopyWith<$Res> {
  factory _$DetectionHistoryResponseModelCopyWith(_DetectionHistoryResponseModel value, $Res Function(_DetectionHistoryResponseModel) _then) = __$DetectionHistoryResponseModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'status') String? status,@JsonKey(name: 'message') String? message,@JsonKey(name: 'data') List<DetectionHistoryModel>? data
});




}
/// @nodoc
class __$DetectionHistoryResponseModelCopyWithImpl<$Res>
    implements _$DetectionHistoryResponseModelCopyWith<$Res> {
  __$DetectionHistoryResponseModelCopyWithImpl(this._self, this._then);

  final _DetectionHistoryResponseModel _self;
  final $Res Function(_DetectionHistoryResponseModel) _then;

/// Create a copy of DetectionHistoryResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = freezed,Object? message = freezed,Object? data = freezed,}) {
  return _then(_DetectionHistoryResponseModel(
status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<DetectionHistoryModel>?,
  ));
}


}

// dart format on
