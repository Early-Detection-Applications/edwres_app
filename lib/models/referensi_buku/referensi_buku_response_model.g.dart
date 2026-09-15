// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'referensi_buku_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ReferensiBukuResponseModel _$ReferensiBukuResponseModelFromJson(
  Map<String, dynamic> json,
) => _ReferensiBukuResponseModel(
  success: json['success'] as bool?,
  message: json['message'] as String?,
  data: (json['data'] as List<dynamic>?)
      ?.map((e) => ReferensiBukuModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  pagination: json['pagination'] == null
      ? null
      : PaginationModel.fromJson(json['pagination'] as Map<String, dynamic>),
);

Map<String, dynamic> _$ReferensiBukuResponseModelToJson(
  _ReferensiBukuResponseModel instance,
) => <String, dynamic>{
  'success': instance.success,
  'message': instance.message,
  'data': instance.data,
  'pagination': instance.pagination,
};
