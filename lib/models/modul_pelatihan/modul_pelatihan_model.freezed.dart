// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'modul_pelatihan_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ModulPelatihanModel {

@JsonKey(name: 'id') int? get id;@JsonKey(name: 'judul') String? get judul;@JsonKey(name: 'deskripsi') String? get deskripsi;@JsonKey(name: 'durasi') String? get durasi;@JsonKey(name: 'file_modul') String? get file_modul;
/// Create a copy of ModulPelatihanModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ModulPelatihanModelCopyWith<ModulPelatihanModel> get copyWith => _$ModulPelatihanModelCopyWithImpl<ModulPelatihanModel>(this as ModulPelatihanModel, _$identity);

  /// Serializes this ModulPelatihanModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ModulPelatihanModel&&(identical(other.id, id) || other.id == id)&&(identical(other.judul, judul) || other.judul == judul)&&(identical(other.deskripsi, deskripsi) || other.deskripsi == deskripsi)&&(identical(other.durasi, durasi) || other.durasi == durasi)&&(identical(other.file_modul, file_modul) || other.file_modul == file_modul));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,judul,deskripsi,durasi,file_modul);

@override
String toString() {
  return 'ModulPelatihanModel(id: $id, judul: $judul, deskripsi: $deskripsi, durasi: $durasi, file_modul: $file_modul)';
}


}

/// @nodoc
abstract mixin class $ModulPelatihanModelCopyWith<$Res>  {
  factory $ModulPelatihanModelCopyWith(ModulPelatihanModel value, $Res Function(ModulPelatihanModel) _then) = _$ModulPelatihanModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'judul') String? judul,@JsonKey(name: 'deskripsi') String? deskripsi,@JsonKey(name: 'durasi') String? durasi,@JsonKey(name: 'file_modul') String? file_modul
});




}
/// @nodoc
class _$ModulPelatihanModelCopyWithImpl<$Res>
    implements $ModulPelatihanModelCopyWith<$Res> {
  _$ModulPelatihanModelCopyWithImpl(this._self, this._then);

  final ModulPelatihanModel _self;
  final $Res Function(ModulPelatihanModel) _then;

/// Create a copy of ModulPelatihanModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? judul = freezed,Object? deskripsi = freezed,Object? durasi = freezed,Object? file_modul = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,judul: freezed == judul ? _self.judul : judul // ignore: cast_nullable_to_non_nullable
as String?,deskripsi: freezed == deskripsi ? _self.deskripsi : deskripsi // ignore: cast_nullable_to_non_nullable
as String?,durasi: freezed == durasi ? _self.durasi : durasi // ignore: cast_nullable_to_non_nullable
as String?,file_modul: freezed == file_modul ? _self.file_modul : file_modul // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ModulPelatihanModel].
extension ModulPelatihanModelPatterns on ModulPelatihanModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ModulPelatihanModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ModulPelatihanModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ModulPelatihanModel value)  $default,){
final _that = this;
switch (_that) {
case _ModulPelatihanModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ModulPelatihanModel value)?  $default,){
final _that = this;
switch (_that) {
case _ModulPelatihanModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'judul')  String? judul, @JsonKey(name: 'deskripsi')  String? deskripsi, @JsonKey(name: 'durasi')  String? durasi, @JsonKey(name: 'file_modul')  String? file_modul)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ModulPelatihanModel() when $default != null:
return $default(_that.id,_that.judul,_that.deskripsi,_that.durasi,_that.file_modul);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'judul')  String? judul, @JsonKey(name: 'deskripsi')  String? deskripsi, @JsonKey(name: 'durasi')  String? durasi, @JsonKey(name: 'file_modul')  String? file_modul)  $default,) {final _that = this;
switch (_that) {
case _ModulPelatihanModel():
return $default(_that.id,_that.judul,_that.deskripsi,_that.durasi,_that.file_modul);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'judul')  String? judul, @JsonKey(name: 'deskripsi')  String? deskripsi, @JsonKey(name: 'durasi')  String? durasi, @JsonKey(name: 'file_modul')  String? file_modul)?  $default,) {final _that = this;
switch (_that) {
case _ModulPelatihanModel() when $default != null:
return $default(_that.id,_that.judul,_that.deskripsi,_that.durasi,_that.file_modul);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ModulPelatihanModel implements ModulPelatihanModel {
  const _ModulPelatihanModel({@JsonKey(name: 'id') this.id, @JsonKey(name: 'judul') this.judul, @JsonKey(name: 'deskripsi') this.deskripsi, @JsonKey(name: 'durasi') this.durasi, @JsonKey(name: 'file_modul') this.file_modul});
  factory _ModulPelatihanModel.fromJson(Map<String, dynamic> json) => _$ModulPelatihanModelFromJson(json);

@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'judul') final  String? judul;
@override@JsonKey(name: 'deskripsi') final  String? deskripsi;
@override@JsonKey(name: 'durasi') final  String? durasi;
@override@JsonKey(name: 'file_modul') final  String? file_modul;

/// Create a copy of ModulPelatihanModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ModulPelatihanModelCopyWith<_ModulPelatihanModel> get copyWith => __$ModulPelatihanModelCopyWithImpl<_ModulPelatihanModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ModulPelatihanModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ModulPelatihanModel&&(identical(other.id, id) || other.id == id)&&(identical(other.judul, judul) || other.judul == judul)&&(identical(other.deskripsi, deskripsi) || other.deskripsi == deskripsi)&&(identical(other.durasi, durasi) || other.durasi == durasi)&&(identical(other.file_modul, file_modul) || other.file_modul == file_modul));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,judul,deskripsi,durasi,file_modul);

@override
String toString() {
  return 'ModulPelatihanModel(id: $id, judul: $judul, deskripsi: $deskripsi, durasi: $durasi, file_modul: $file_modul)';
}


}

/// @nodoc
abstract mixin class _$ModulPelatihanModelCopyWith<$Res> implements $ModulPelatihanModelCopyWith<$Res> {
  factory _$ModulPelatihanModelCopyWith(_ModulPelatihanModel value, $Res Function(_ModulPelatihanModel) _then) = __$ModulPelatihanModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'judul') String? judul,@JsonKey(name: 'deskripsi') String? deskripsi,@JsonKey(name: 'durasi') String? durasi,@JsonKey(name: 'file_modul') String? file_modul
});




}
/// @nodoc
class __$ModulPelatihanModelCopyWithImpl<$Res>
    implements _$ModulPelatihanModelCopyWith<$Res> {
  __$ModulPelatihanModelCopyWithImpl(this._self, this._then);

  final _ModulPelatihanModel _self;
  final $Res Function(_ModulPelatihanModel) _then;

/// Create a copy of ModulPelatihanModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? judul = freezed,Object? deskripsi = freezed,Object? durasi = freezed,Object? file_modul = freezed,}) {
  return _then(_ModulPelatihanModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,judul: freezed == judul ? _self.judul : judul // ignore: cast_nullable_to_non_nullable
as String?,deskripsi: freezed == deskripsi ? _self.deskripsi : deskripsi // ignore: cast_nullable_to_non_nullable
as String?,durasi: freezed == durasi ? _self.durasi : durasi // ignore: cast_nullable_to_non_nullable
as String?,file_modul: freezed == file_modul ? _self.file_modul : file_modul // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
