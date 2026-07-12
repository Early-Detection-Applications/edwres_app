// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'news_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$NewsModel {

@JsonKey(name: 'id_berita') String? get idBerita;@JsonKey(name: 'id_kategori') String? get idKategori;@JsonKey(name: 'id_user') String? get idUser;@JsonKey(name: 'judul') String? get judul;@JsonKey(name: 'isi_berita') String? get isiBerita;@JsonKey(name: 'gambar') String? get gambar;@JsonKey(name: 'tanggal') DateTime? get tanggal;@JsonKey(name: 'counter') String? get counter;@JsonKey(name: 'jenis_berita') String? get jenisBerita;@JsonKey(name: 'kategori') KategoriModel? get kategori;@JsonKey(name: 'user') UserModel? get user;
/// Create a copy of NewsModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NewsModelCopyWith<NewsModel> get copyWith => _$NewsModelCopyWithImpl<NewsModel>(this as NewsModel, _$identity);

  /// Serializes this NewsModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NewsModel&&(identical(other.idBerita, idBerita) || other.idBerita == idBerita)&&(identical(other.idKategori, idKategori) || other.idKategori == idKategori)&&(identical(other.idUser, idUser) || other.idUser == idUser)&&(identical(other.judul, judul) || other.judul == judul)&&(identical(other.isiBerita, isiBerita) || other.isiBerita == isiBerita)&&(identical(other.gambar, gambar) || other.gambar == gambar)&&(identical(other.tanggal, tanggal) || other.tanggal == tanggal)&&(identical(other.counter, counter) || other.counter == counter)&&(identical(other.jenisBerita, jenisBerita) || other.jenisBerita == jenisBerita)&&(identical(other.kategori, kategori) || other.kategori == kategori)&&(identical(other.user, user) || other.user == user));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,idBerita,idKategori,idUser,judul,isiBerita,gambar,tanggal,counter,jenisBerita,kategori,user);

@override
String toString() {
  return 'NewsModel(idBerita: $idBerita, idKategori: $idKategori, idUser: $idUser, judul: $judul, isiBerita: $isiBerita, gambar: $gambar, tanggal: $tanggal, counter: $counter, jenisBerita: $jenisBerita, kategori: $kategori, user: $user)';
}


}

/// @nodoc
abstract mixin class $NewsModelCopyWith<$Res>  {
  factory $NewsModelCopyWith(NewsModel value, $Res Function(NewsModel) _then) = _$NewsModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id_berita') String? idBerita,@JsonKey(name: 'id_kategori') String? idKategori,@JsonKey(name: 'id_user') String? idUser,@JsonKey(name: 'judul') String? judul,@JsonKey(name: 'isi_berita') String? isiBerita,@JsonKey(name: 'gambar') String? gambar,@JsonKey(name: 'tanggal') DateTime? tanggal,@JsonKey(name: 'counter') String? counter,@JsonKey(name: 'jenis_berita') String? jenisBerita,@JsonKey(name: 'kategori') KategoriModel? kategori,@JsonKey(name: 'user') UserModel? user
});


$KategoriModelCopyWith<$Res>? get kategori;$UserModelCopyWith<$Res>? get user;

}
/// @nodoc
class _$NewsModelCopyWithImpl<$Res>
    implements $NewsModelCopyWith<$Res> {
  _$NewsModelCopyWithImpl(this._self, this._then);

  final NewsModel _self;
  final $Res Function(NewsModel) _then;

/// Create a copy of NewsModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? idBerita = freezed,Object? idKategori = freezed,Object? idUser = freezed,Object? judul = freezed,Object? isiBerita = freezed,Object? gambar = freezed,Object? tanggal = freezed,Object? counter = freezed,Object? jenisBerita = freezed,Object? kategori = freezed,Object? user = freezed,}) {
  return _then(_self.copyWith(
idBerita: freezed == idBerita ? _self.idBerita : idBerita // ignore: cast_nullable_to_non_nullable
as String?,idKategori: freezed == idKategori ? _self.idKategori : idKategori // ignore: cast_nullable_to_non_nullable
as String?,idUser: freezed == idUser ? _self.idUser : idUser // ignore: cast_nullable_to_non_nullable
as String?,judul: freezed == judul ? _self.judul : judul // ignore: cast_nullable_to_non_nullable
as String?,isiBerita: freezed == isiBerita ? _self.isiBerita : isiBerita // ignore: cast_nullable_to_non_nullable
as String?,gambar: freezed == gambar ? _self.gambar : gambar // ignore: cast_nullable_to_non_nullable
as String?,tanggal: freezed == tanggal ? _self.tanggal : tanggal // ignore: cast_nullable_to_non_nullable
as DateTime?,counter: freezed == counter ? _self.counter : counter // ignore: cast_nullable_to_non_nullable
as String?,jenisBerita: freezed == jenisBerita ? _self.jenisBerita : jenisBerita // ignore: cast_nullable_to_non_nullable
as String?,kategori: freezed == kategori ? _self.kategori : kategori // ignore: cast_nullable_to_non_nullable
as KategoriModel?,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserModel?,
  ));
}
/// Create a copy of NewsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$KategoriModelCopyWith<$Res>? get kategori {
    if (_self.kategori == null) {
    return null;
  }

  return $KategoriModelCopyWith<$Res>(_self.kategori!, (value) {
    return _then(_self.copyWith(kategori: value));
  });
}/// Create a copy of NewsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserModelCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $UserModelCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}


/// Adds pattern-matching-related methods to [NewsModel].
extension NewsModelPatterns on NewsModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NewsModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NewsModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NewsModel value)  $default,){
final _that = this;
switch (_that) {
case _NewsModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NewsModel value)?  $default,){
final _that = this;
switch (_that) {
case _NewsModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id_berita')  String? idBerita, @JsonKey(name: 'id_kategori')  String? idKategori, @JsonKey(name: 'id_user')  String? idUser, @JsonKey(name: 'judul')  String? judul, @JsonKey(name: 'isi_berita')  String? isiBerita, @JsonKey(name: 'gambar')  String? gambar, @JsonKey(name: 'tanggal')  DateTime? tanggal, @JsonKey(name: 'counter')  String? counter, @JsonKey(name: 'jenis_berita')  String? jenisBerita, @JsonKey(name: 'kategori')  KategoriModel? kategori, @JsonKey(name: 'user')  UserModel? user)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NewsModel() when $default != null:
return $default(_that.idBerita,_that.idKategori,_that.idUser,_that.judul,_that.isiBerita,_that.gambar,_that.tanggal,_that.counter,_that.jenisBerita,_that.kategori,_that.user);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id_berita')  String? idBerita, @JsonKey(name: 'id_kategori')  String? idKategori, @JsonKey(name: 'id_user')  String? idUser, @JsonKey(name: 'judul')  String? judul, @JsonKey(name: 'isi_berita')  String? isiBerita, @JsonKey(name: 'gambar')  String? gambar, @JsonKey(name: 'tanggal')  DateTime? tanggal, @JsonKey(name: 'counter')  String? counter, @JsonKey(name: 'jenis_berita')  String? jenisBerita, @JsonKey(name: 'kategori')  KategoriModel? kategori, @JsonKey(name: 'user')  UserModel? user)  $default,) {final _that = this;
switch (_that) {
case _NewsModel():
return $default(_that.idBerita,_that.idKategori,_that.idUser,_that.judul,_that.isiBerita,_that.gambar,_that.tanggal,_that.counter,_that.jenisBerita,_that.kategori,_that.user);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id_berita')  String? idBerita, @JsonKey(name: 'id_kategori')  String? idKategori, @JsonKey(name: 'id_user')  String? idUser, @JsonKey(name: 'judul')  String? judul, @JsonKey(name: 'isi_berita')  String? isiBerita, @JsonKey(name: 'gambar')  String? gambar, @JsonKey(name: 'tanggal')  DateTime? tanggal, @JsonKey(name: 'counter')  String? counter, @JsonKey(name: 'jenis_berita')  String? jenisBerita, @JsonKey(name: 'kategori')  KategoriModel? kategori, @JsonKey(name: 'user')  UserModel? user)?  $default,) {final _that = this;
switch (_that) {
case _NewsModel() when $default != null:
return $default(_that.idBerita,_that.idKategori,_that.idUser,_that.judul,_that.isiBerita,_that.gambar,_that.tanggal,_that.counter,_that.jenisBerita,_that.kategori,_that.user);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _NewsModel implements NewsModel {
  const _NewsModel({@JsonKey(name: 'id_berita') this.idBerita, @JsonKey(name: 'id_kategori') this.idKategori, @JsonKey(name: 'id_user') this.idUser, @JsonKey(name: 'judul') this.judul, @JsonKey(name: 'isi_berita') this.isiBerita, @JsonKey(name: 'gambar') this.gambar, @JsonKey(name: 'tanggal') this.tanggal, @JsonKey(name: 'counter') this.counter, @JsonKey(name: 'jenis_berita') this.jenisBerita, @JsonKey(name: 'kategori') this.kategori, @JsonKey(name: 'user') this.user});
  factory _NewsModel.fromJson(Map<String, dynamic> json) => _$NewsModelFromJson(json);

@override@JsonKey(name: 'id_berita') final  String? idBerita;
@override@JsonKey(name: 'id_kategori') final  String? idKategori;
@override@JsonKey(name: 'id_user') final  String? idUser;
@override@JsonKey(name: 'judul') final  String? judul;
@override@JsonKey(name: 'isi_berita') final  String? isiBerita;
@override@JsonKey(name: 'gambar') final  String? gambar;
@override@JsonKey(name: 'tanggal') final  DateTime? tanggal;
@override@JsonKey(name: 'counter') final  String? counter;
@override@JsonKey(name: 'jenis_berita') final  String? jenisBerita;
@override@JsonKey(name: 'kategori') final  KategoriModel? kategori;
@override@JsonKey(name: 'user') final  UserModel? user;

/// Create a copy of NewsModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NewsModelCopyWith<_NewsModel> get copyWith => __$NewsModelCopyWithImpl<_NewsModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NewsModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NewsModel&&(identical(other.idBerita, idBerita) || other.idBerita == idBerita)&&(identical(other.idKategori, idKategori) || other.idKategori == idKategori)&&(identical(other.idUser, idUser) || other.idUser == idUser)&&(identical(other.judul, judul) || other.judul == judul)&&(identical(other.isiBerita, isiBerita) || other.isiBerita == isiBerita)&&(identical(other.gambar, gambar) || other.gambar == gambar)&&(identical(other.tanggal, tanggal) || other.tanggal == tanggal)&&(identical(other.counter, counter) || other.counter == counter)&&(identical(other.jenisBerita, jenisBerita) || other.jenisBerita == jenisBerita)&&(identical(other.kategori, kategori) || other.kategori == kategori)&&(identical(other.user, user) || other.user == user));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,idBerita,idKategori,idUser,judul,isiBerita,gambar,tanggal,counter,jenisBerita,kategori,user);

@override
String toString() {
  return 'NewsModel(idBerita: $idBerita, idKategori: $idKategori, idUser: $idUser, judul: $judul, isiBerita: $isiBerita, gambar: $gambar, tanggal: $tanggal, counter: $counter, jenisBerita: $jenisBerita, kategori: $kategori, user: $user)';
}


}

/// @nodoc
abstract mixin class _$NewsModelCopyWith<$Res> implements $NewsModelCopyWith<$Res> {
  factory _$NewsModelCopyWith(_NewsModel value, $Res Function(_NewsModel) _then) = __$NewsModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id_berita') String? idBerita,@JsonKey(name: 'id_kategori') String? idKategori,@JsonKey(name: 'id_user') String? idUser,@JsonKey(name: 'judul') String? judul,@JsonKey(name: 'isi_berita') String? isiBerita,@JsonKey(name: 'gambar') String? gambar,@JsonKey(name: 'tanggal') DateTime? tanggal,@JsonKey(name: 'counter') String? counter,@JsonKey(name: 'jenis_berita') String? jenisBerita,@JsonKey(name: 'kategori') KategoriModel? kategori,@JsonKey(name: 'user') UserModel? user
});


@override $KategoriModelCopyWith<$Res>? get kategori;@override $UserModelCopyWith<$Res>? get user;

}
/// @nodoc
class __$NewsModelCopyWithImpl<$Res>
    implements _$NewsModelCopyWith<$Res> {
  __$NewsModelCopyWithImpl(this._self, this._then);

  final _NewsModel _self;
  final $Res Function(_NewsModel) _then;

/// Create a copy of NewsModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? idBerita = freezed,Object? idKategori = freezed,Object? idUser = freezed,Object? judul = freezed,Object? isiBerita = freezed,Object? gambar = freezed,Object? tanggal = freezed,Object? counter = freezed,Object? jenisBerita = freezed,Object? kategori = freezed,Object? user = freezed,}) {
  return _then(_NewsModel(
idBerita: freezed == idBerita ? _self.idBerita : idBerita // ignore: cast_nullable_to_non_nullable
as String?,idKategori: freezed == idKategori ? _self.idKategori : idKategori // ignore: cast_nullable_to_non_nullable
as String?,idUser: freezed == idUser ? _self.idUser : idUser // ignore: cast_nullable_to_non_nullable
as String?,judul: freezed == judul ? _self.judul : judul // ignore: cast_nullable_to_non_nullable
as String?,isiBerita: freezed == isiBerita ? _self.isiBerita : isiBerita // ignore: cast_nullable_to_non_nullable
as String?,gambar: freezed == gambar ? _self.gambar : gambar // ignore: cast_nullable_to_non_nullable
as String?,tanggal: freezed == tanggal ? _self.tanggal : tanggal // ignore: cast_nullable_to_non_nullable
as DateTime?,counter: freezed == counter ? _self.counter : counter // ignore: cast_nullable_to_non_nullable
as String?,jenisBerita: freezed == jenisBerita ? _self.jenisBerita : jenisBerita // ignore: cast_nullable_to_non_nullable
as String?,kategori: freezed == kategori ? _self.kategori : kategori // ignore: cast_nullable_to_non_nullable
as KategoriModel?,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserModel?,
  ));
}

/// Create a copy of NewsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$KategoriModelCopyWith<$Res>? get kategori {
    if (_self.kategori == null) {
    return null;
  }

  return $KategoriModelCopyWith<$Res>(_self.kategori!, (value) {
    return _then(_self.copyWith(kategori: value));
  });
}/// Create a copy of NewsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserModelCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $UserModelCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}

// dart format on
