// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tokoh_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TokohResponseModel {

@JsonKey(name: 'success') bool? get success;@JsonKey(name: 'message') String? get message;@JsonKey(name: 'data') List<TokohModel>? get data;@JsonKey(name: 'pagination') PaginationModel? get pagination;
/// Create a copy of TokohResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TokohResponseModelCopyWith<TokohResponseModel> get copyWith => _$TokohResponseModelCopyWithImpl<TokohResponseModel>(this as TokohResponseModel, _$identity);

  /// Serializes this TokohResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TokohResponseModel&&(identical(other.success, success) || other.success == success)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.pagination, pagination) || other.pagination == pagination));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,message,const DeepCollectionEquality().hash(data),pagination);

@override
String toString() {
  return 'TokohResponseModel(success: $success, message: $message, data: $data, pagination: $pagination)';
}


}

/// @nodoc
abstract mixin class $TokohResponseModelCopyWith<$Res>  {
  factory $TokohResponseModelCopyWith(TokohResponseModel value, $Res Function(TokohResponseModel) _then) = _$TokohResponseModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'success') bool? success,@JsonKey(name: 'message') String? message,@JsonKey(name: 'data') List<TokohModel>? data,@JsonKey(name: 'pagination') PaginationModel? pagination
});


$PaginationModelCopyWith<$Res>? get pagination;

}
/// @nodoc
class _$TokohResponseModelCopyWithImpl<$Res>
    implements $TokohResponseModelCopyWith<$Res> {
  _$TokohResponseModelCopyWithImpl(this._self, this._then);

  final TokohResponseModel _self;
  final $Res Function(TokohResponseModel) _then;

/// Create a copy of TokohResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = freezed,Object? message = freezed,Object? data = freezed,Object? pagination = freezed,}) {
  return _then(_self.copyWith(
success: freezed == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<TokohModel>?,pagination: freezed == pagination ? _self.pagination : pagination // ignore: cast_nullable_to_non_nullable
as PaginationModel?,
  ));
}
/// Create a copy of TokohResponseModel
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


/// Adds pattern-matching-related methods to [TokohResponseModel].
extension TokohResponseModelPatterns on TokohResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TokohResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TokohResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TokohResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _TokohResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TokohResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _TokohResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'success')  bool? success, @JsonKey(name: 'message')  String? message, @JsonKey(name: 'data')  List<TokohModel>? data, @JsonKey(name: 'pagination')  PaginationModel? pagination)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TokohResponseModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'success')  bool? success, @JsonKey(name: 'message')  String? message, @JsonKey(name: 'data')  List<TokohModel>? data, @JsonKey(name: 'pagination')  PaginationModel? pagination)  $default,) {final _that = this;
switch (_that) {
case _TokohResponseModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'success')  bool? success, @JsonKey(name: 'message')  String? message, @JsonKey(name: 'data')  List<TokohModel>? data, @JsonKey(name: 'pagination')  PaginationModel? pagination)?  $default,) {final _that = this;
switch (_that) {
case _TokohResponseModel() when $default != null:
return $default(_that.success,_that.message,_that.data,_that.pagination);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TokohResponseModel implements TokohResponseModel {
  const _TokohResponseModel({@JsonKey(name: 'success') this.success, @JsonKey(name: 'message') this.message, @JsonKey(name: 'data') final  List<TokohModel>? data, @JsonKey(name: 'pagination') this.pagination}): _data = data;
  factory _TokohResponseModel.fromJson(Map<String, dynamic> json) => _$TokohResponseModelFromJson(json);

@override@JsonKey(name: 'success') final  bool? success;
@override@JsonKey(name: 'message') final  String? message;
 final  List<TokohModel>? _data;
@override@JsonKey(name: 'data') List<TokohModel>? get data {
  final value = _data;
  if (value == null) return null;
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'pagination') final  PaginationModel? pagination;

/// Create a copy of TokohResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TokohResponseModelCopyWith<_TokohResponseModel> get copyWith => __$TokohResponseModelCopyWithImpl<_TokohResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TokohResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TokohResponseModel&&(identical(other.success, success) || other.success == success)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other._data, _data)&&(identical(other.pagination, pagination) || other.pagination == pagination));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,message,const DeepCollectionEquality().hash(_data),pagination);

@override
String toString() {
  return 'TokohResponseModel(success: $success, message: $message, data: $data, pagination: $pagination)';
}


}

/// @nodoc
abstract mixin class _$TokohResponseModelCopyWith<$Res> implements $TokohResponseModelCopyWith<$Res> {
  factory _$TokohResponseModelCopyWith(_TokohResponseModel value, $Res Function(_TokohResponseModel) _then) = __$TokohResponseModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'success') bool? success,@JsonKey(name: 'message') String? message,@JsonKey(name: 'data') List<TokohModel>? data,@JsonKey(name: 'pagination') PaginationModel? pagination
});


@override $PaginationModelCopyWith<$Res>? get pagination;

}
/// @nodoc
class __$TokohResponseModelCopyWithImpl<$Res>
    implements _$TokohResponseModelCopyWith<$Res> {
  __$TokohResponseModelCopyWithImpl(this._self, this._then);

  final _TokohResponseModel _self;
  final $Res Function(_TokohResponseModel) _then;

/// Create a copy of TokohResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = freezed,Object? message = freezed,Object? data = freezed,Object? pagination = freezed,}) {
  return _then(_TokohResponseModel(
success: freezed == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<TokohModel>?,pagination: freezed == pagination ? _self.pagination : pagination // ignore: cast_nullable_to_non_nullable
as PaginationModel?,
  ));
}

/// Create a copy of TokohResponseModel
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
