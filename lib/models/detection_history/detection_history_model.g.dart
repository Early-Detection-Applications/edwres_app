// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detection_history_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DetectionHistoryModel _$DetectionHistoryModelFromJson(
  Map<String, dynamic> json,
) => _DetectionHistoryModel(
  riwayatId: (json['riwayat_id'] as num?)?.toInt(),
  tanggal: json['tanggal'] as String?,
  hasil: (json['hasil'] as Map<String, dynamic>?)?.map(
    (k, e) =>
        MapEntry(k, DiagnosisResultModel.fromJson(e as Map<String, dynamic>)),
  ),
);

Map<String, dynamic> _$DetectionHistoryModelToJson(
  _DetectionHistoryModel instance,
) => <String, dynamic>{
  'riwayat_id': instance.riwayatId,
  'tanggal': instance.tanggal,
  'hasil': instance.hasil,
};
