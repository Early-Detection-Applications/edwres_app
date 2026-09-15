// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'referensi_hasil_penelitian_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ReferensiHasilPenelitianResponseModel
_$ReferensiHasilPenelitianResponseModelFromJson(
  Map<String, dynamic> json,
) => _ReferensiHasilPenelitianResponseModel(
  success: json['success'] as bool?,
  message: json['message'] as String?,
  data: (json['data'] as List<dynamic>?)
      ?.map(
        (e) =>
            ReferensiHasilPenelitianModel.fromJson(e as Map<String, dynamic>),
      )
      .toList(),
  pagination: json['pagination'] == null
      ? null
      : PaginationModel.fromJson(json['pagination'] as Map<String, dynamic>),
);

Map<String, dynamic> _$ReferensiHasilPenelitianResponseModelToJson(
  _ReferensiHasilPenelitianResponseModel instance,
) => <String, dynamic>{
  'success': instance.success,
  'message': instance.message,
  'data': instance.data,
  'pagination': instance.pagination,
};
