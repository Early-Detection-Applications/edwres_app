// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'diagnosis_tip_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DiagnosisTipModel {

@JsonKey(name: 'kode_tips') String? get kodeTips;@StringToIntConverter()@JsonKey(name: 'id_user') int? get idUser;@JsonKey(name: 'nama_tips') String? get namaTips;@JsonKey(name: 'keterangan') String? get keterangan;@JsonKey(name: 'pivot') DiagnosisTipPivotModel? get pivot;
/// Create a copy of DiagnosisTipModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DiagnosisTipModelCopyWith<DiagnosisTipModel> get copyWith => _$DiagnosisTipModelCopyWithImpl<DiagnosisTipModel>(this as DiagnosisTipModel, _$identity);

  /// Serializes this DiagnosisTipModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DiagnosisTipModel&&(identical(other.kodeTips, kodeTips) || other.kodeTips == kodeTips)&&(identical(other.idUser, idUser) || other.idUser == idUser)&&(identical(other.namaTips, namaTips) || other.namaTips == namaTips)&&(identical(other.keterangan, keterangan) || other.keterangan == keterangan)&&(identical(other.pivot, pivot) || other.pivot == pivot));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,kodeTips,idUser,namaTips,keterangan,pivot);

@override
String toString() {
  return 'DiagnosisTipModel(kodeTips: $kodeTips, idUser: $idUser, namaTips: $namaTips, keterangan: $keterangan, pivot: $pivot)';
}


}

/// @nodoc
abstract mixin class $DiagnosisTipModelCopyWith<$Res>  {
  factory $DiagnosisTipModelCopyWith(DiagnosisTipModel value, $Res Function(DiagnosisTipModel) _then) = _$DiagnosisTipModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'kode_tips') String? kodeTips,@StringToIntConverter()@JsonKey(name: 'id_user') int? idUser,@JsonKey(name: 'nama_tips') String? namaTips,@JsonKey(name: 'keterangan') String? keterangan,@JsonKey(name: 'pivot') DiagnosisTipPivotModel? pivot
});


$DiagnosisTipPivotModelCopyWith<$Res>? get pivot;

}
/// @nodoc
class _$DiagnosisTipModelCopyWithImpl<$Res>
    implements $DiagnosisTipModelCopyWith<$Res> {
  _$DiagnosisTipModelCopyWithImpl(this._self, this._then);

  final DiagnosisTipModel _self;
  final $Res Function(DiagnosisTipModel) _then;

/// Create a copy of DiagnosisTipModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? kodeTips = freezed,Object? idUser = freezed,Object? namaTips = freezed,Object? keterangan = freezed,Object? pivot = freezed,}) {
  return _then(_self.copyWith(
kodeTips: freezed == kodeTips ? _self.kodeTips : kodeTips // ignore: cast_nullable_to_non_nullable
as String?,idUser: freezed == idUser ? _self.idUser : idUser // ignore: cast_nullable_to_non_nullable
as int?,namaTips: freezed == namaTips ? _self.namaTips : namaTips // ignore: cast_nullable_to_non_nullable
as String?,keterangan: freezed == keterangan ? _self.keterangan : keterangan // ignore: cast_nullable_to_non_nullable
as String?,pivot: freezed == pivot ? _self.pivot : pivot // ignore: cast_nullable_to_non_nullable
as DiagnosisTipPivotModel?,
  ));
}
/// Create a copy of DiagnosisTipModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DiagnosisTipPivotModelCopyWith<$Res>? get pivot {
    if (_self.pivot == null) {
    return null;
  }

  return $DiagnosisTipPivotModelCopyWith<$Res>(_self.pivot!, (value) {
    return _then(_self.copyWith(pivot: value));
  });
}
}


/// Adds pattern-matching-related methods to [DiagnosisTipModel].
extension DiagnosisTipModelPatterns on DiagnosisTipModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DiagnosisTipModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DiagnosisTipModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DiagnosisTipModel value)  $default,){
final _that = this;
switch (_that) {
case _DiagnosisTipModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DiagnosisTipModel value)?  $default,){
final _that = this;
switch (_that) {
case _DiagnosisTipModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'kode_tips')  String? kodeTips, @StringToIntConverter()@JsonKey(name: 'id_user')  int? idUser, @JsonKey(name: 'nama_tips')  String? namaTips, @JsonKey(name: 'keterangan')  String? keterangan, @JsonKey(name: 'pivot')  DiagnosisTipPivotModel? pivot)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DiagnosisTipModel() when $default != null:
return $default(_that.kodeTips,_that.idUser,_that.namaTips,_that.keterangan,_that.pivot);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'kode_tips')  String? kodeTips, @StringToIntConverter()@JsonKey(name: 'id_user')  int? idUser, @JsonKey(name: 'nama_tips')  String? namaTips, @JsonKey(name: 'keterangan')  String? keterangan, @JsonKey(name: 'pivot')  DiagnosisTipPivotModel? pivot)  $default,) {final _that = this;
switch (_that) {
case _DiagnosisTipModel():
return $default(_that.kodeTips,_that.idUser,_that.namaTips,_that.keterangan,_that.pivot);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'kode_tips')  String? kodeTips, @StringToIntConverter()@JsonKey(name: 'id_user')  int? idUser, @JsonKey(name: 'nama_tips')  String? namaTips, @JsonKey(name: 'keterangan')  String? keterangan, @JsonKey(name: 'pivot')  DiagnosisTipPivotModel? pivot)?  $default,) {final _that = this;
switch (_that) {
case _DiagnosisTipModel() when $default != null:
return $default(_that.kodeTips,_that.idUser,_that.namaTips,_that.keterangan,_that.pivot);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DiagnosisTipModel implements DiagnosisTipModel {
  const _DiagnosisTipModel({@JsonKey(name: 'kode_tips') this.kodeTips, @StringToIntConverter()@JsonKey(name: 'id_user') this.idUser, @JsonKey(name: 'nama_tips') this.namaTips, @JsonKey(name: 'keterangan') this.keterangan, @JsonKey(name: 'pivot') this.pivot});
  factory _DiagnosisTipModel.fromJson(Map<String, dynamic> json) => _$DiagnosisTipModelFromJson(json);

@override@JsonKey(name: 'kode_tips') final  String? kodeTips;
@override@StringToIntConverter()@JsonKey(name: 'id_user') final  int? idUser;
@override@JsonKey(name: 'nama_tips') final  String? namaTips;
@override@JsonKey(name: 'keterangan') final  String? keterangan;
@override@JsonKey(name: 'pivot') final  DiagnosisTipPivotModel? pivot;

/// Create a copy of DiagnosisTipModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DiagnosisTipModelCopyWith<_DiagnosisTipModel> get copyWith => __$DiagnosisTipModelCopyWithImpl<_DiagnosisTipModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DiagnosisTipModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DiagnosisTipModel&&(identical(other.kodeTips, kodeTips) || other.kodeTips == kodeTips)&&(identical(other.idUser, idUser) || other.idUser == idUser)&&(identical(other.namaTips, namaTips) || other.namaTips == namaTips)&&(identical(other.keterangan, keterangan) || other.keterangan == keterangan)&&(identical(other.pivot, pivot) || other.pivot == pivot));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,kodeTips,idUser,namaTips,keterangan,pivot);

@override
String toString() {
  return 'DiagnosisTipModel(kodeTips: $kodeTips, idUser: $idUser, namaTips: $namaTips, keterangan: $keterangan, pivot: $pivot)';
}


}

/// @nodoc
abstract mixin class _$DiagnosisTipModelCopyWith<$Res> implements $DiagnosisTipModelCopyWith<$Res> {
  factory _$DiagnosisTipModelCopyWith(_DiagnosisTipModel value, $Res Function(_DiagnosisTipModel) _then) = __$DiagnosisTipModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'kode_tips') String? kodeTips,@StringToIntConverter()@JsonKey(name: 'id_user') int? idUser,@JsonKey(name: 'nama_tips') String? namaTips,@JsonKey(name: 'keterangan') String? keterangan,@JsonKey(name: 'pivot') DiagnosisTipPivotModel? pivot
});


@override $DiagnosisTipPivotModelCopyWith<$Res>? get pivot;

}
/// @nodoc
class __$DiagnosisTipModelCopyWithImpl<$Res>
    implements _$DiagnosisTipModelCopyWith<$Res> {
  __$DiagnosisTipModelCopyWithImpl(this._self, this._then);

  final _DiagnosisTipModel _self;
  final $Res Function(_DiagnosisTipModel) _then;

/// Create a copy of DiagnosisTipModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? kodeTips = freezed,Object? idUser = freezed,Object? namaTips = freezed,Object? keterangan = freezed,Object? pivot = freezed,}) {
  return _then(_DiagnosisTipModel(
kodeTips: freezed == kodeTips ? _self.kodeTips : kodeTips // ignore: cast_nullable_to_non_nullable
as String?,idUser: freezed == idUser ? _self.idUser : idUser // ignore: cast_nullable_to_non_nullable
as int?,namaTips: freezed == namaTips ? _self.namaTips : namaTips // ignore: cast_nullable_to_non_nullable
as String?,keterangan: freezed == keterangan ? _self.keterangan : keterangan // ignore: cast_nullable_to_non_nullable
as String?,pivot: freezed == pivot ? _self.pivot : pivot // ignore: cast_nullable_to_non_nullable
as DiagnosisTipPivotModel?,
  ));
}

/// Create a copy of DiagnosisTipModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DiagnosisTipPivotModelCopyWith<$Res>? get pivot {
    if (_self.pivot == null) {
    return null;
  }

  return $DiagnosisTipPivotModelCopyWith<$Res>(_self.pivot!, (value) {
    return _then(_self.copyWith(pivot: value));
  });
}
}

// dart format on
