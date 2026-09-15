// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'referensi_hasil_penelitian_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ReferensiHasilPenelitianModel {

@JsonKey(name: 'id') int? get id;@JsonKey(name: 'judul') String? get judul;@JsonKey(name: 'peneliti') String? get peneliti;@JsonKey(name: 'institusi') String? get institusi;@JsonKey(name: 'tahun') String? get tahun;@JsonKey(name: 'deskripsi') String? get deskripsi;@JsonKey(name: 'file_dokumen') String? get fileDokumen;
/// Create a copy of ReferensiHasilPenelitianModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReferensiHasilPenelitianModelCopyWith<ReferensiHasilPenelitianModel> get copyWith => _$ReferensiHasilPenelitianModelCopyWithImpl<ReferensiHasilPenelitianModel>(this as ReferensiHasilPenelitianModel, _$identity);

  /// Serializes this ReferensiHasilPenelitianModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReferensiHasilPenelitianModel&&(identical(other.id, id) || other.id == id)&&(identical(other.judul, judul) || other.judul == judul)&&(identical(other.peneliti, peneliti) || other.peneliti == peneliti)&&(identical(other.institusi, institusi) || other.institusi == institusi)&&(identical(other.tahun, tahun) || other.tahun == tahun)&&(identical(other.deskripsi, deskripsi) || other.deskripsi == deskripsi)&&(identical(other.fileDokumen, fileDokumen) || other.fileDokumen == fileDokumen));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,judul,peneliti,institusi,tahun,deskripsi,fileDokumen);

@override
String toString() {
  return 'ReferensiHasilPenelitianModel(id: $id, judul: $judul, peneliti: $peneliti, institusi: $institusi, tahun: $tahun, deskripsi: $deskripsi, fileDokumen: $fileDokumen)';
}


}

/// @nodoc
abstract mixin class $ReferensiHasilPenelitianModelCopyWith<$Res>  {
  factory $ReferensiHasilPenelitianModelCopyWith(ReferensiHasilPenelitianModel value, $Res Function(ReferensiHasilPenelitianModel) _then) = _$ReferensiHasilPenelitianModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'judul') String? judul,@JsonKey(name: 'peneliti') String? peneliti,@JsonKey(name: 'institusi') String? institusi,@JsonKey(name: 'tahun') String? tahun,@JsonKey(name: 'deskripsi') String? deskripsi,@JsonKey(name: 'file_dokumen') String? fileDokumen
});




}
/// @nodoc
class _$ReferensiHasilPenelitianModelCopyWithImpl<$Res>
    implements $ReferensiHasilPenelitianModelCopyWith<$Res> {
  _$ReferensiHasilPenelitianModelCopyWithImpl(this._self, this._then);

  final ReferensiHasilPenelitianModel _self;
  final $Res Function(ReferensiHasilPenelitianModel) _then;

/// Create a copy of ReferensiHasilPenelitianModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? judul = freezed,Object? peneliti = freezed,Object? institusi = freezed,Object? tahun = freezed,Object? deskripsi = freezed,Object? fileDokumen = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,judul: freezed == judul ? _self.judul : judul // ignore: cast_nullable_to_non_nullable
as String?,peneliti: freezed == peneliti ? _self.peneliti : peneliti // ignore: cast_nullable_to_non_nullable
as String?,institusi: freezed == institusi ? _self.institusi : institusi // ignore: cast_nullable_to_non_nullable
as String?,tahun: freezed == tahun ? _self.tahun : tahun // ignore: cast_nullable_to_non_nullable
as String?,deskripsi: freezed == deskripsi ? _self.deskripsi : deskripsi // ignore: cast_nullable_to_non_nullable
as String?,fileDokumen: freezed == fileDokumen ? _self.fileDokumen : fileDokumen // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ReferensiHasilPenelitianModel].
extension ReferensiHasilPenelitianModelPatterns on ReferensiHasilPenelitianModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReferensiHasilPenelitianModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReferensiHasilPenelitianModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReferensiHasilPenelitianModel value)  $default,){
final _that = this;
switch (_that) {
case _ReferensiHasilPenelitianModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReferensiHasilPenelitianModel value)?  $default,){
final _that = this;
switch (_that) {
case _ReferensiHasilPenelitianModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'judul')  String? judul, @JsonKey(name: 'peneliti')  String? peneliti, @JsonKey(name: 'institusi')  String? institusi, @JsonKey(name: 'tahun')  String? tahun, @JsonKey(name: 'deskripsi')  String? deskripsi, @JsonKey(name: 'file_dokumen')  String? fileDokumen)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReferensiHasilPenelitianModel() when $default != null:
return $default(_that.id,_that.judul,_that.peneliti,_that.institusi,_that.tahun,_that.deskripsi,_that.fileDokumen);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'judul')  String? judul, @JsonKey(name: 'peneliti')  String? peneliti, @JsonKey(name: 'institusi')  String? institusi, @JsonKey(name: 'tahun')  String? tahun, @JsonKey(name: 'deskripsi')  String? deskripsi, @JsonKey(name: 'file_dokumen')  String? fileDokumen)  $default,) {final _that = this;
switch (_that) {
case _ReferensiHasilPenelitianModel():
return $default(_that.id,_that.judul,_that.peneliti,_that.institusi,_that.tahun,_that.deskripsi,_that.fileDokumen);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'judul')  String? judul, @JsonKey(name: 'peneliti')  String? peneliti, @JsonKey(name: 'institusi')  String? institusi, @JsonKey(name: 'tahun')  String? tahun, @JsonKey(name: 'deskripsi')  String? deskripsi, @JsonKey(name: 'file_dokumen')  String? fileDokumen)?  $default,) {final _that = this;
switch (_that) {
case _ReferensiHasilPenelitianModel() when $default != null:
return $default(_that.id,_that.judul,_that.peneliti,_that.institusi,_that.tahun,_that.deskripsi,_that.fileDokumen);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReferensiHasilPenelitianModel implements ReferensiHasilPenelitianModel {
  const _ReferensiHasilPenelitianModel({@JsonKey(name: 'id') this.id, @JsonKey(name: 'judul') this.judul, @JsonKey(name: 'peneliti') this.peneliti, @JsonKey(name: 'institusi') this.institusi, @JsonKey(name: 'tahun') this.tahun, @JsonKey(name: 'deskripsi') this.deskripsi, @JsonKey(name: 'file_dokumen') this.fileDokumen});
  factory _ReferensiHasilPenelitianModel.fromJson(Map<String, dynamic> json) => _$ReferensiHasilPenelitianModelFromJson(json);

@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'judul') final  String? judul;
@override@JsonKey(name: 'peneliti') final  String? peneliti;
@override@JsonKey(name: 'institusi') final  String? institusi;
@override@JsonKey(name: 'tahun') final  String? tahun;
@override@JsonKey(name: 'deskripsi') final  String? deskripsi;
@override@JsonKey(name: 'file_dokumen') final  String? fileDokumen;

/// Create a copy of ReferensiHasilPenelitianModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReferensiHasilPenelitianModelCopyWith<_ReferensiHasilPenelitianModel> get copyWith => __$ReferensiHasilPenelitianModelCopyWithImpl<_ReferensiHasilPenelitianModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReferensiHasilPenelitianModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReferensiHasilPenelitianModel&&(identical(other.id, id) || other.id == id)&&(identical(other.judul, judul) || other.judul == judul)&&(identical(other.peneliti, peneliti) || other.peneliti == peneliti)&&(identical(other.institusi, institusi) || other.institusi == institusi)&&(identical(other.tahun, tahun) || other.tahun == tahun)&&(identical(other.deskripsi, deskripsi) || other.deskripsi == deskripsi)&&(identical(other.fileDokumen, fileDokumen) || other.fileDokumen == fileDokumen));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,judul,peneliti,institusi,tahun,deskripsi,fileDokumen);

@override
String toString() {
  return 'ReferensiHasilPenelitianModel(id: $id, judul: $judul, peneliti: $peneliti, institusi: $institusi, tahun: $tahun, deskripsi: $deskripsi, fileDokumen: $fileDokumen)';
}


}

/// @nodoc
abstract mixin class _$ReferensiHasilPenelitianModelCopyWith<$Res> implements $ReferensiHasilPenelitianModelCopyWith<$Res> {
  factory _$ReferensiHasilPenelitianModelCopyWith(_ReferensiHasilPenelitianModel value, $Res Function(_ReferensiHasilPenelitianModel) _then) = __$ReferensiHasilPenelitianModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'judul') String? judul,@JsonKey(name: 'peneliti') String? peneliti,@JsonKey(name: 'institusi') String? institusi,@JsonKey(name: 'tahun') String? tahun,@JsonKey(name: 'deskripsi') String? deskripsi,@JsonKey(name: 'file_dokumen') String? fileDokumen
});




}
/// @nodoc
class __$ReferensiHasilPenelitianModelCopyWithImpl<$Res>
    implements _$ReferensiHasilPenelitianModelCopyWith<$Res> {
  __$ReferensiHasilPenelitianModelCopyWithImpl(this._self, this._then);

  final _ReferensiHasilPenelitianModel _self;
  final $Res Function(_ReferensiHasilPenelitianModel) _then;

/// Create a copy of ReferensiHasilPenelitianModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? judul = freezed,Object? peneliti = freezed,Object? institusi = freezed,Object? tahun = freezed,Object? deskripsi = freezed,Object? fileDokumen = freezed,}) {
  return _then(_ReferensiHasilPenelitianModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,judul: freezed == judul ? _self.judul : judul // ignore: cast_nullable_to_non_nullable
as String?,peneliti: freezed == peneliti ? _self.peneliti : peneliti // ignore: cast_nullable_to_non_nullable
as String?,institusi: freezed == institusi ? _self.institusi : institusi // ignore: cast_nullable_to_non_nullable
as String?,tahun: freezed == tahun ? _self.tahun : tahun // ignore: cast_nullable_to_non_nullable
as String?,deskripsi: freezed == deskripsi ? _self.deskripsi : deskripsi // ignore: cast_nullable_to_non_nullable
as String?,fileDokumen: freezed == fileDokumen ? _self.fileDokumen : fileDokumen // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
