// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'guestbook_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GuestbookModel _$GuestbookModelFromJson(Map<String, dynamic> json) =>
    _GuestbookModel(
      id: (json['id'] as num?)?.toInt(),
      nama: json['nama'] as String?,
      email: json['email'] as String?,
      message: json['pesan'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$GuestbookModelToJson(_GuestbookModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nama': instance.nama,
      'email': instance.email,
      'pesan': instance.message,
      'created_at': instance.createdAt?.toIso8601String(),
    };
