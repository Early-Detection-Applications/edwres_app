// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'panduan_aplikasi_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PanduanAplikasiModel {

@JsonKey(name: 'id') int? get id;@JsonKey(name: 'judul') String? get judul;@JsonKey(name: 'isi_panduan') String? get isi_panduan;@JsonKey(name: 'gambar') String? get gambar;@JsonKey(name: 'video_url') String? get videoUrl;
/// Create a copy of PanduanAplikasiModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PanduanAplikasiModelCopyWith<PanduanAplikasiModel> get copyWith => _$PanduanAplikasiModelCopyWithImpl<PanduanAplikasiModel>(this as PanduanAplikasiModel, _$identity);

  /// Serializes this PanduanAplikasiModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PanduanAplikasiModel&&(identical(other.id, id) || other.id == id)&&(identical(other.judul, judul) || other.judul == judul)&&(identical(other.isi_panduan, isi_panduan) || other.isi_panduan == isi_panduan)&&(identical(other.gambar, gambar) || other.gambar == gambar)&&(identical(other.videoUrl, videoUrl) || other.videoUrl == videoUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,judul,isi_panduan,gambar,videoUrl);

@override
String toString() {
  return 'PanduanAplikasiModel(id: $id, judul: $judul, isi_panduan: $isi_panduan, gambar: $gambar, videoUrl: $videoUrl)';
}


}

/// @nodoc
abstract mixin class $PanduanAplikasiModelCopyWith<$Res>  {
  factory $PanduanAplikasiModelCopyWith(PanduanAplikasiModel value, $Res Function(PanduanAplikasiModel) _then) = _$PanduanAplikasiModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'judul') String? judul,@JsonKey(name: 'isi_panduan') String? isi_panduan,@JsonKey(name: 'gambar') String? gambar,@JsonKey(name: 'video_url') String? videoUrl
});




}
/// @nodoc
class _$PanduanAplikasiModelCopyWithImpl<$Res>
    implements $PanduanAplikasiModelCopyWith<$Res> {
  _$PanduanAplikasiModelCopyWithImpl(this._self, this._then);

  final PanduanAplikasiModel _self;
  final $Res Function(PanduanAplikasiModel) _then;

/// Create a copy of PanduanAplikasiModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? judul = freezed,Object? isi_panduan = freezed,Object? gambar = freezed,Object? videoUrl = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,judul: freezed == judul ? _self.judul : judul // ignore: cast_nullable_to_non_nullable
as String?,isi_panduan: freezed == isi_panduan ? _self.isi_panduan : isi_panduan // ignore: cast_nullable_to_non_nullable
as String?,gambar: freezed == gambar ? _self.gambar : gambar // ignore: cast_nullable_to_non_nullable
as String?,videoUrl: freezed == videoUrl ? _self.videoUrl : videoUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [PanduanAplikasiModel].
extension PanduanAplikasiModelPatterns on PanduanAplikasiModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PanduanAplikasiModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PanduanAplikasiModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PanduanAplikasiModel value)  $default,){
final _that = this;
switch (_that) {
case _PanduanAplikasiModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PanduanAplikasiModel value)?  $default,){
final _that = this;
switch (_that) {
case _PanduanAplikasiModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'judul')  String? judul, @JsonKey(name: 'isi_panduan')  String? isi_panduan, @JsonKey(name: 'gambar')  String? gambar, @JsonKey(name: 'video_url')  String? videoUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PanduanAplikasiModel() when $default != null:
return $default(_that.id,_that.judul,_that.isi_panduan,_that.gambar,_that.videoUrl);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'judul')  String? judul, @JsonKey(name: 'isi_panduan')  String? isi_panduan, @JsonKey(name: 'gambar')  String? gambar, @JsonKey(name: 'video_url')  String? videoUrl)  $default,) {final _that = this;
switch (_that) {
case _PanduanAplikasiModel():
return $default(_that.id,_that.judul,_that.isi_panduan,_that.gambar,_that.videoUrl);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'judul')  String? judul, @JsonKey(name: 'isi_panduan')  String? isi_panduan, @JsonKey(name: 'gambar')  String? gambar, @JsonKey(name: 'video_url')  String? videoUrl)?  $default,) {final _that = this;
switch (_that) {
case _PanduanAplikasiModel() when $default != null:
return $default(_that.id,_that.judul,_that.isi_panduan,_that.gambar,_that.videoUrl);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PanduanAplikasiModel implements PanduanAplikasiModel {
  const _PanduanAplikasiModel({@JsonKey(name: 'id') this.id, @JsonKey(name: 'judul') this.judul, @JsonKey(name: 'isi_panduan') this.isi_panduan, @JsonKey(name: 'gambar') this.gambar, @JsonKey(name: 'video_url') this.videoUrl});
  factory _PanduanAplikasiModel.fromJson(Map<String, dynamic> json) => _$PanduanAplikasiModelFromJson(json);

@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'judul') final  String? judul;
@override@JsonKey(name: 'isi_panduan') final  String? isi_panduan;
@override@JsonKey(name: 'gambar') final  String? gambar;
@override@JsonKey(name: 'video_url') final  String? videoUrl;

/// Create a copy of PanduanAplikasiModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PanduanAplikasiModelCopyWith<_PanduanAplikasiModel> get copyWith => __$PanduanAplikasiModelCopyWithImpl<_PanduanAplikasiModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PanduanAplikasiModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PanduanAplikasiModel&&(identical(other.id, id) || other.id == id)&&(identical(other.judul, judul) || other.judul == judul)&&(identical(other.isi_panduan, isi_panduan) || other.isi_panduan == isi_panduan)&&(identical(other.gambar, gambar) || other.gambar == gambar)&&(identical(other.videoUrl, videoUrl) || other.videoUrl == videoUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,judul,isi_panduan,gambar,videoUrl);

@override
String toString() {
  return 'PanduanAplikasiModel(id: $id, judul: $judul, isi_panduan: $isi_panduan, gambar: $gambar, videoUrl: $videoUrl)';
}


}

/// @nodoc
abstract mixin class _$PanduanAplikasiModelCopyWith<$Res> implements $PanduanAplikasiModelCopyWith<$Res> {
  factory _$PanduanAplikasiModelCopyWith(_PanduanAplikasiModel value, $Res Function(_PanduanAplikasiModel) _then) = __$PanduanAplikasiModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'judul') String? judul,@JsonKey(name: 'isi_panduan') String? isi_panduan,@JsonKey(name: 'gambar') String? gambar,@JsonKey(name: 'video_url') String? videoUrl
});




}
/// @nodoc
class __$PanduanAplikasiModelCopyWithImpl<$Res>
    implements _$PanduanAplikasiModelCopyWith<$Res> {
  __$PanduanAplikasiModelCopyWithImpl(this._self, this._then);

  final _PanduanAplikasiModel _self;
  final $Res Function(_PanduanAplikasiModel) _then;

/// Create a copy of PanduanAplikasiModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? judul = freezed,Object? isi_panduan = freezed,Object? gambar = freezed,Object? videoUrl = freezed,}) {
  return _then(_PanduanAplikasiModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,judul: freezed == judul ? _self.judul : judul // ignore: cast_nullable_to_non_nullable
as String?,isi_panduan: freezed == isi_panduan ? _self.isi_panduan : isi_panduan // ignore: cast_nullable_to_non_nullable
as String?,gambar: freezed == gambar ? _self.gambar : gambar // ignore: cast_nullable_to_non_nullable
as String?,videoUrl: freezed == videoUrl ? _self.videoUrl : videoUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
