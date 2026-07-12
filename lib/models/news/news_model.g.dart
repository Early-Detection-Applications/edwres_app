// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_NewsModel _$NewsModelFromJson(Map<String, dynamic> json) => _NewsModel(
  idBerita: json['id_berita'] as String?,
  idKategori: json['id_kategori'] as String?,
  idUser: json['id_user'] as String?,
  judul: json['judul'] as String?,
  isiBerita: json['isi_berita'] as String?,
  gambar: json['gambar'] as String?,
  tanggal: json['tanggal'] == null
      ? null
      : DateTime.parse(json['tanggal'] as String),
  counter: json['counter'] as String?,
  jenisBerita: json['jenis_berita'] as String?,
  kategori: json['kategori'] == null
      ? null
      : KategoriModel.fromJson(json['kategori'] as Map<String, dynamic>),
  user: json['user'] == null
      ? null
      : UserModel.fromJson(json['user'] as Map<String, dynamic>),
);

Map<String, dynamic> _$NewsModelToJson(_NewsModel instance) =>
    <String, dynamic>{
      'id_berita': instance.idBerita,
      'id_kategori': instance.idKategori,
      'id_user': instance.idUser,
      'judul': instance.judul,
      'isi_berita': instance.isiBerita,
      'gambar': instance.gambar,
      'tanggal': instance.tanggal?.toIso8601String(),
      'counter': instance.counter,
      'jenis_berita': instance.jenisBerita,
      'kategori': instance.kategori,
      'user': instance.user,
    };
