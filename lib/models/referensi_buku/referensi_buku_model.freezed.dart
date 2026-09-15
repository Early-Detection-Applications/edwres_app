// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'referensi_buku_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ReferensiBukuModel {

@JsonKey(name: 'id') int? get id;@JsonKey(name: 'judul') String? get judul;@JsonKey(name: 'penulis') String? get penulis;@JsonKey(name: 'penerbit') String? get penerbit;@JsonKey(name: 'tahun') String? get tahun;@JsonKey(name: 'gambar') String? get gambar;@JsonKey(name: 'file_dokumen') String? get file_dokumen;
/// Create a copy of ReferensiBukuModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReferensiBukuModelCopyWith<ReferensiBukuModel> get copyWith => _$ReferensiBukuModelCopyWithImpl<ReferensiBukuModel>(this as ReferensiBukuModel, _$identity);

  /// Serializes this ReferensiBukuModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReferensiBukuModel&&(identical(other.id, id) || other.id == id)&&(identical(other.judul, judul) || other.judul == judul)&&(identical(other.penulis, penulis) || other.penulis == penulis)&&(identical(other.penerbit, penerbit) || other.penerbit == penerbit)&&(identical(other.tahun, tahun) || other.tahun == tahun)&&(identical(other.gambar, gambar) || other.gambar == gambar)&&(identical(other.file_dokumen, file_dokumen) || other.file_dokumen == file_dokumen));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,judul,penulis,penerbit,tahun,gambar,file_dokumen);

@override
String toString() {
  return 'ReferensiBukuModel(id: $id, judul: $judul, penulis: $penulis, penerbit: $penerbit, tahun: $tahun, gambar: $gambar, file_dokumen: $file_dokumen)';
}


}

/// @nodoc
abstract mixin class $ReferensiBukuModelCopyWith<$Res>  {
  factory $ReferensiBukuModelCopyWith(ReferensiBukuModel value, $Res Function(ReferensiBukuModel) _then) = _$ReferensiBukuModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'judul') String? judul,@JsonKey(name: 'penulis') String? penulis,@JsonKey(name: 'penerbit') String? penerbit,@JsonKey(name: 'tahun') String? tahun,@JsonKey(name: 'gambar') String? gambar,@JsonKey(name: 'file_dokumen') String? file_dokumen
});




}
/// @nodoc
class _$ReferensiBukuModelCopyWithImpl<$Res>
    implements $ReferensiBukuModelCopyWith<$Res> {
  _$ReferensiBukuModelCopyWithImpl(this._self, this._then);

  final ReferensiBukuModel _self;
  final $Res Function(ReferensiBukuModel) _then;

/// Create a copy of ReferensiBukuModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? judul = freezed,Object? penulis = freezed,Object? penerbit = freezed,Object? tahun = freezed,Object? gambar = freezed,Object? file_dokumen = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,judul: freezed == judul ? _self.judul : judul // ignore: cast_nullable_to_non_nullable
as String?,penulis: freezed == penulis ? _self.penulis : penulis // ignore: cast_nullable_to_non_nullable
as String?,penerbit: freezed == penerbit ? _self.penerbit : penerbit // ignore: cast_nullable_to_non_nullable
as String?,tahun: freezed == tahun ? _self.tahun : tahun // ignore: cast_nullable_to_non_nullable
as String?,gambar: freezed == gambar ? _self.gambar : gambar // ignore: cast_nullable_to_non_nullable
as String?,file_dokumen: freezed == file_dokumen ? _self.file_dokumen : file_dokumen // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ReferensiBukuModel].
extension ReferensiBukuModelPatterns on ReferensiBukuModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReferensiBukuModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReferensiBukuModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReferensiBukuModel value)  $default,){
final _that = this;
switch (_that) {
case _ReferensiBukuModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReferensiBukuModel value)?  $default,){
final _that = this;
switch (_that) {
case _ReferensiBukuModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'judul')  String? judul, @JsonKey(name: 'penulis')  String? penulis, @JsonKey(name: 'penerbit')  String? penerbit, @JsonKey(name: 'tahun')  String? tahun, @JsonKey(name: 'gambar')  String? gambar, @JsonKey(name: 'file_dokumen')  String? file_dokumen)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReferensiBukuModel() when $default != null:
return $default(_that.id,_that.judul,_that.penulis,_that.penerbit,_that.tahun,_that.gambar,_that.file_dokumen);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'judul')  String? judul, @JsonKey(name: 'penulis')  String? penulis, @JsonKey(name: 'penerbit')  String? penerbit, @JsonKey(name: 'tahun')  String? tahun, @JsonKey(name: 'gambar')  String? gambar, @JsonKey(name: 'file_dokumen')  String? file_dokumen)  $default,) {final _that = this;
switch (_that) {
case _ReferensiBukuModel():
return $default(_that.id,_that.judul,_that.penulis,_that.penerbit,_that.tahun,_that.gambar,_that.file_dokumen);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'judul')  String? judul, @JsonKey(name: 'penulis')  String? penulis, @JsonKey(name: 'penerbit')  String? penerbit, @JsonKey(name: 'tahun')  String? tahun, @JsonKey(name: 'gambar')  String? gambar, @JsonKey(name: 'file_dokumen')  String? file_dokumen)?  $default,) {final _that = this;
switch (_that) {
case _ReferensiBukuModel() when $default != null:
return $default(_that.id,_that.judul,_that.penulis,_that.penerbit,_that.tahun,_that.gambar,_that.file_dokumen);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReferensiBukuModel implements ReferensiBukuModel {
  const _ReferensiBukuModel({@JsonKey(name: 'id') this.id, @JsonKey(name: 'judul') this.judul, @JsonKey(name: 'penulis') this.penulis, @JsonKey(name: 'penerbit') this.penerbit, @JsonKey(name: 'tahun') this.tahun, @JsonKey(name: 'gambar') this.gambar, @JsonKey(name: 'file_dokumen') this.file_dokumen});
  factory _ReferensiBukuModel.fromJson(Map<String, dynamic> json) => _$ReferensiBukuModelFromJson(json);

@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'judul') final  String? judul;
@override@JsonKey(name: 'penulis') final  String? penulis;
@override@JsonKey(name: 'penerbit') final  String? penerbit;
@override@JsonKey(name: 'tahun') final  String? tahun;
@override@JsonKey(name: 'gambar') final  String? gambar;
@override@JsonKey(name: 'file_dokumen') final  String? file_dokumen;

/// Create a copy of ReferensiBukuModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReferensiBukuModelCopyWith<_ReferensiBukuModel> get copyWith => __$ReferensiBukuModelCopyWithImpl<_ReferensiBukuModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReferensiBukuModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReferensiBukuModel&&(identical(other.id, id) || other.id == id)&&(identical(other.judul, judul) || other.judul == judul)&&(identical(other.penulis, penulis) || other.penulis == penulis)&&(identical(other.penerbit, penerbit) || other.penerbit == penerbit)&&(identical(other.tahun, tahun) || other.tahun == tahun)&&(identical(other.gambar, gambar) || other.gambar == gambar)&&(identical(other.file_dokumen, file_dokumen) || other.file_dokumen == file_dokumen));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,judul,penulis,penerbit,tahun,gambar,file_dokumen);

@override
String toString() {
  return 'ReferensiBukuModel(id: $id, judul: $judul, penulis: $penulis, penerbit: $penerbit, tahun: $tahun, gambar: $gambar, file_dokumen: $file_dokumen)';
}


}

/// @nodoc
abstract mixin class _$ReferensiBukuModelCopyWith<$Res> implements $ReferensiBukuModelCopyWith<$Res> {
  factory _$ReferensiBukuModelCopyWith(_ReferensiBukuModel value, $Res Function(_ReferensiBukuModel) _then) = __$ReferensiBukuModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'judul') String? judul,@JsonKey(name: 'penulis') String? penulis,@JsonKey(name: 'penerbit') String? penerbit,@JsonKey(name: 'tahun') String? tahun,@JsonKey(name: 'gambar') String? gambar,@JsonKey(name: 'file_dokumen') String? file_dokumen
});




}
/// @nodoc
class __$ReferensiBukuModelCopyWithImpl<$Res>
    implements _$ReferensiBukuModelCopyWith<$Res> {
  __$ReferensiBukuModelCopyWithImpl(this._self, this._then);

  final _ReferensiBukuModel _self;
  final $Res Function(_ReferensiBukuModel) _then;

/// Create a copy of ReferensiBukuModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? judul = freezed,Object? penulis = freezed,Object? penerbit = freezed,Object? tahun = freezed,Object? gambar = freezed,Object? file_dokumen = freezed,}) {
  return _then(_ReferensiBukuModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,judul: freezed == judul ? _self.judul : judul // ignore: cast_nullable_to_non_nullable
as String?,penulis: freezed == penulis ? _self.penulis : penulis // ignore: cast_nullable_to_non_nullable
as String?,penerbit: freezed == penerbit ? _self.penerbit : penerbit // ignore: cast_nullable_to_non_nullable
as String?,tahun: freezed == tahun ? _self.tahun : tahun // ignore: cast_nullable_to_non_nullable
as String?,gambar: freezed == gambar ? _self.gambar : gambar // ignore: cast_nullable_to_non_nullable
as String?,file_dokumen: freezed == file_dokumen ? _self.file_dokumen : file_dokumen // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
