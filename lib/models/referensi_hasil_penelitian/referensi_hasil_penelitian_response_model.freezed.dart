// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'referensi_hasil_penelitian_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ReferensiHasilPenelitianResponseModel {

@JsonKey(name: 'success') bool? get success;@JsonKey(name: 'message') String? get message;@JsonKey(name: 'data') List<ReferensiHasilPenelitianModel>? get data;@JsonKey(name: 'pagination') PaginationModel? get pagination;
/// Create a copy of ReferensiHasilPenelitianResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReferensiHasilPenelitianResponseModelCopyWith<ReferensiHasilPenelitianResponseModel> get copyWith => _$ReferensiHasilPenelitianResponseModelCopyWithImpl<ReferensiHasilPenelitianResponseModel>(this as ReferensiHasilPenelitianResponseModel, _$identity);

  /// Serializes this ReferensiHasilPenelitianResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReferensiHasilPenelitianResponseModel&&(identical(other.success, success) || other.success == success)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.pagination, pagination) || other.pagination == pagination));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,message,const DeepCollectionEquality().hash(data),pagination);

@override
String toString() {
  return 'ReferensiHasilPenelitianResponseModel(success: $success, message: $message, data: $data, pagination: $pagination)';
}


}

/// @nodoc
abstract mixin class $ReferensiHasilPenelitianResponseModelCopyWith<$Res>  {
  factory $ReferensiHasilPenelitianResponseModelCopyWith(ReferensiHasilPenelitianResponseModel value, $Res Function(ReferensiHasilPenelitianResponseModel) _then) = _$ReferensiHasilPenelitianResponseModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'success') bool? success,@JsonKey(name: 'message') String? message,@JsonKey(name: 'data') List<ReferensiHasilPenelitianModel>? data,@JsonKey(name: 'pagination') PaginationModel? pagination
});


$PaginationModelCopyWith<$Res>? get pagination;

}
/// @nodoc
class _$ReferensiHasilPenelitianResponseModelCopyWithImpl<$Res>
    implements $ReferensiHasilPenelitianResponseModelCopyWith<$Res> {
  _$ReferensiHasilPenelitianResponseModelCopyWithImpl(this._self, this._then);

  final ReferensiHasilPenelitianResponseModel _self;
  final $Res Function(ReferensiHasilPenelitianResponseModel) _then;

/// Create a copy of ReferensiHasilPenelitianResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = freezed,Object? message = freezed,Object? data = freezed,Object? pagination = freezed,}) {
  return _then(_self.copyWith(
success: freezed == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<ReferensiHasilPenelitianModel>?,pagination: freezed == pagination ? _self.pagination : pagination // ignore: cast_nullable_to_non_nullable
as PaginationModel?,
  ));
}
/// Create a copy of ReferensiHasilPenelitianResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaginationModelCopyWith<$Res>? get pagination {
    if (_self.pagination == null) {
    return null;
  }

  return $PaginationModelCopyWith<$Res>(_self.pagination!, (value) {
    return _then(_self.copyWith(pagination: value));
  });
}
}


/// Adds pattern-matching-related methods to [ReferensiHasilPenelitianResponseModel].
extension ReferensiHasilPenelitianResponseModelPatterns on ReferensiHasilPenelitianResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReferensiHasilPenelitianResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReferensiHasilPenelitianResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReferensiHasilPenelitianResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _ReferensiHasilPenelitianResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReferensiHasilPenelitianResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _ReferensiHasilPenelitianResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'success')  bool? success, @JsonKey(name: 'message')  String? message, @JsonKey(name: 'data')  List<ReferensiHasilPenelitianModel>? data, @JsonKey(name: 'pagination')  PaginationModel? pagination)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReferensiHasilPenelitianResponseModel() when $default != null:
return $default(_that.success,_that.message,_that.data,_that.pagination);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'success')  bool? success, @JsonKey(name: 'message')  String? message, @JsonKey(name: 'data')  List<ReferensiHasilPenelitianModel>? data, @JsonKey(name: 'pagination')  PaginationModel? pagination)  $default,) {final _that = this;
switch (_that) {
case _ReferensiHasilPenelitianResponseModel():
return $default(_that.success,_that.message,_that.data,_that.pagination);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'success')  bool? success, @JsonKey(name: 'message')  String? message, @JsonKey(name: 'data')  List<ReferensiHasilPenelitianModel>? data, @JsonKey(name: 'pagination')  PaginationModel? pagination)?  $default,) {final _that = this;
switch (_that) {
case _ReferensiHasilPenelitianResponseModel() when $default != null:
return $default(_that.success,_that.message,_that.data,_that.pagination);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReferensiHasilPenelitianResponseModel implements ReferensiHasilPenelitianResponseModel {
  const _ReferensiHasilPenelitianResponseModel({@JsonKey(name: 'success') this.success, @JsonKey(name: 'message') this.message, @JsonKey(name: 'data') final  List<ReferensiHasilPenelitianModel>? data, @JsonKey(name: 'pagination') this.pagination}): _data = data;
  factory _ReferensiHasilPenelitianResponseModel.fromJson(Map<String, dynamic> json) => _$ReferensiHasilPenelitianResponseModelFromJson(json);

@override@JsonKey(name: 'success') final  bool? success;
@override@JsonKey(name: 'message') final  String? message;
 final  List<ReferensiHasilPenelitianModel>? _data;
@override@JsonKey(name: 'data') List<ReferensiHasilPenelitianModel>? get data {
  final value = _data;
  if (value == null) return null;
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'pagination') final  PaginationModel? pagination;

/// Create a copy of ReferensiHasilPenelitianResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReferensiHasilPenelitianResponseModelCopyWith<_ReferensiHasilPenelitianResponseModel> get copyWith => __$ReferensiHasilPenelitianResponseModelCopyWithImpl<_ReferensiHasilPenelitianResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReferensiHasilPenelitianResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReferensiHasilPenelitianResponseModel&&(identical(other.success, success) || other.success == success)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other._data, _data)&&(identical(other.pagination, pagination) || other.pagination == pagination));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,message,const DeepCollectionEquality().hash(_data),pagination);

@override
String toString() {
  return 'ReferensiHasilPenelitianResponseModel(success: $success, message: $message, data: $data, pagination: $pagination)';
}


}

/// @nodoc
abstract mixin class _$ReferensiHasilPenelitianResponseModelCopyWith<$Res> implements $ReferensiHasilPenelitianResponseModelCopyWith<$Res> {
  factory _$ReferensiHasilPenelitianResponseModelCopyWith(_ReferensiHasilPenelitianResponseModel value, $Res Function(_ReferensiHasilPenelitianResponseModel) _then) = __$ReferensiHasilPenelitianResponseModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'success') bool? success,@JsonKey(name: 'message') String? message,@JsonKey(name: 'data') List<ReferensiHasilPenelitianModel>? data,@JsonKey(name: 'pagination') PaginationModel? pagination
});


@override $PaginationModelCopyWith<$Res>? get pagination;

}
/// @nodoc
class __$ReferensiHasilPenelitianResponseModelCopyWithImpl<$Res>
    implements _$ReferensiHasilPenelitianResponseModelCopyWith<$Res> {
  __$ReferensiHasilPenelitianResponseModelCopyWithImpl(this._self, this._then);

  final _ReferensiHasilPenelitianResponseModel _self;
  final $Res Function(_ReferensiHasilPenelitianResponseModel) _then;

/// Create a copy of ReferensiHasilPenelitianResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = freezed,Object? message = freezed,Object? data = freezed,Object? pagination = freezed,}) {
  return _then(_ReferensiHasilPenelitianResponseModel(
success: freezed == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<ReferensiHasilPenelitianModel>?,pagination: freezed == pagination ? _self.pagination : pagination // ignore: cast_nullable_to_non_nullable
as PaginationModel?,
  ));
}

/// Create a copy of ReferensiHasilPenelitianResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaginationModelCopyWith<$Res>? get pagination {
    if (_self.pagination == null) {
    return null;
  }

  return $PaginationModelCopyWith<$Res>(_self.pagination!, (value) {
    return _then(_self.copyWith(pagination: value));
  });
}
}

// dart format on
