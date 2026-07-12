// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'kategori_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$KategoriModel {

@JsonKey(name: 'id_kategori') int? get idKategori;@JsonKey(name: 'nama_kategori') String? get namaKategori;@JsonKey(name: 'keterangan') String? get Keterangan;
/// Create a copy of KategoriModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$KategoriModelCopyWith<KategoriModel> get copyWith => _$KategoriModelCopyWithImpl<KategoriModel>(this as KategoriModel, _$identity);

  /// Serializes this KategoriModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is KategoriModel&&(identical(other.idKategori, idKategori) || other.idKategori == idKategori)&&(identical(other.namaKategori, namaKategori) || other.namaKategori == namaKategori)&&(identical(other.Keterangan, Keterangan) || other.Keterangan == Keterangan));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,idKategori,namaKategori,Keterangan);

@override
String toString() {
  return 'KategoriModel(idKategori: $idKategori, namaKategori: $namaKategori, Keterangan: $Keterangan)';
}


}

/// @nodoc
abstract mixin class $KategoriModelCopyWith<$Res>  {
  factory $KategoriModelCopyWith(KategoriModel value, $Res Function(KategoriModel) _then) = _$KategoriModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id_kategori') int? idKategori,@JsonKey(name: 'nama_kategori') String? namaKategori,@JsonKey(name: 'keterangan') String? Keterangan
});




}
/// @nodoc
class _$KategoriModelCopyWithImpl<$Res>
    implements $KategoriModelCopyWith<$Res> {
  _$KategoriModelCopyWithImpl(this._self, this._then);

  final KategoriModel _self;
  final $Res Function(KategoriModel) _then;

/// Create a copy of KategoriModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? idKategori = freezed,Object? namaKategori = freezed,Object? Keterangan = freezed,}) {
  return _then(_self.copyWith(
idKategori: freezed == idKategori ? _self.idKategori : idKategori // ignore: cast_nullable_to_non_nullable
as int?,namaKategori: freezed == namaKategori ? _self.namaKategori : namaKategori // ignore: cast_nullable_to_non_nullable
as String?,Keterangan: freezed == Keterangan ? _self.Keterangan : Keterangan // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [KategoriModel].
extension KategoriModelPatterns on KategoriModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _KategoriModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _KategoriModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _KategoriModel value)  $default,){
final _that = this;
switch (_that) {
case _KategoriModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _KategoriModel value)?  $default,){
final _that = this;
switch (_that) {
case _KategoriModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id_kategori')  int? idKategori, @JsonKey(name: 'nama_kategori')  String? namaKategori, @JsonKey(name: 'keterangan')  String? Keterangan)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _KategoriModel() when $default != null:
return $default(_that.idKategori,_that.namaKategori,_that.Keterangan);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id_kategori')  int? idKategori, @JsonKey(name: 'nama_kategori')  String? namaKategori, @JsonKey(name: 'keterangan')  String? Keterangan)  $default,) {final _that = this;
switch (_that) {
case _KategoriModel():
return $default(_that.idKategori,_that.namaKategori,_that.Keterangan);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id_kategori')  int? idKategori, @JsonKey(name: 'nama_kategori')  String? namaKategori, @JsonKey(name: 'keterangan')  String? Keterangan)?  $default,) {final _that = this;
switch (_that) {
case _KategoriModel() when $default != null:
return $default(_that.idKategori,_that.namaKategori,_that.Keterangan);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _KategoriModel implements KategoriModel {
  const _KategoriModel({@JsonKey(name: 'id_kategori') this.idKategori, @JsonKey(name: 'nama_kategori') this.namaKategori, @JsonKey(name: 'keterangan') this.Keterangan});
  factory _KategoriModel.fromJson(Map<String, dynamic> json) => _$KategoriModelFromJson(json);

@override@JsonKey(name: 'id_kategori') final  int? idKategori;
@override@JsonKey(name: 'nama_kategori') final  String? namaKategori;
@override@JsonKey(name: 'keterangan') final  String? Keterangan;

/// Create a copy of KategoriModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$KategoriModelCopyWith<_KategoriModel> get copyWith => __$KategoriModelCopyWithImpl<_KategoriModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$KategoriModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _KategoriModel&&(identical(other.idKategori, idKategori) || other.idKategori == idKategori)&&(identical(other.namaKategori, namaKategori) || other.namaKategori == namaKategori)&&(identical(other.Keterangan, Keterangan) || other.Keterangan == Keterangan));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,idKategori,namaKategori,Keterangan);

@override
String toString() {
  return 'KategoriModel(idKategori: $idKategori, namaKategori: $namaKategori, Keterangan: $Keterangan)';
}


}

/// @nodoc
abstract mixin class _$KategoriModelCopyWith<$Res> implements $KategoriModelCopyWith<$Res> {
  factory _$KategoriModelCopyWith(_KategoriModel value, $Res Function(_KategoriModel) _then) = __$KategoriModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id_kategori') int? idKategori,@JsonKey(name: 'nama_kategori') String? namaKategori,@JsonKey(name: 'keterangan') String? Keterangan
});




}
/// @nodoc
class __$KategoriModelCopyWithImpl<$Res>
    implements _$KategoriModelCopyWith<$Res> {
  __$KategoriModelCopyWithImpl(this._self, this._then);

  final _KategoriModel _self;
  final $Res Function(_KategoriModel) _then;

/// Create a copy of KategoriModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? idKategori = freezed,Object? namaKategori = freezed,Object? Keterangan = freezed,}) {
  return _then(_KategoriModel(
idKategori: freezed == idKategori ? _self.idKategori : idKategori // ignore: cast_nullable_to_non_nullable
as int?,namaKategori: freezed == namaKategori ? _self.namaKategori : namaKategori // ignore: cast_nullable_to_non_nullable
as String?,Keterangan: freezed == Keterangan ? _self.Keterangan : Keterangan // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
