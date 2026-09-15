// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'panduan_aplikasi_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PanduanAplikasiModel _$PanduanAplikasiModelFromJson(
  Map<String, dynamic> json,
) => _PanduanAplikasiModel(
  id: (json['id'] as num?)?.toInt(),
  judul: json['judul'] as String?,
  isi_panduan: json['isi_panduan'] as String?,
  gambar: json['gambar'] as String?,
  videoUrl: json['video_url'] as String?,
);

Map<String, dynamic> _$PanduanAplikasiModelToJson(
  _PanduanAplikasiModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'judul': instance.judul,
  'isi_panduan': instance.isi_panduan,
  'gambar': instance.gambar,
  'video_url': instance.videoUrl,
};
