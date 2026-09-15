// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'diagnosis_tip_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DiagnosisTipModel _$DiagnosisTipModelFromJson(Map<String, dynamic> json) =>
    _DiagnosisTipModel(
      kodeTips: json['kode_tips'] as String?,
      idUser: const StringToIntConverter().fromJson(json['id_user']),
      namaTips: json['nama_tips'] as String?,
      keterangan: json['keterangan'] as String?,
      pivot: json['pivot'] == null
          ? null
          : DiagnosisTipPivotModel.fromJson(
              json['pivot'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$DiagnosisTipModelToJson(_DiagnosisTipModel instance) =>
    <String, dynamic>{
      'kode_tips': instance.kodeTips,
      'id_user': const StringToIntConverter().toJson(instance.idUser),
      'nama_tips': instance.namaTips,
      'keterangan': instance.keterangan,
      'pivot': instance.pivot,
    };
