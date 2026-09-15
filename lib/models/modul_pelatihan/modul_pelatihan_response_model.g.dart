// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modul_pelatihan_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ModulPelatihanResponseModel _$ModulPelatihanResponseModelFromJson(
  Map<String, dynamic> json,
) => _ModulPelatihanResponseModel(
  success: json['success'] as bool?,
  message: json['message'] as String?,
  data: (json['data'] as List<dynamic>?)
      ?.map((e) => ModulPelatihanModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  pagination: json['pagination'] == null
      ? null
      : PaginationModel.fromJson(json['pagination'] as Map<String, dynamic>),
);

Map<String, dynamic> _$ModulPelatihanResponseModelToJson(
  _ModulPelatihanResponseModel instance,
) => <String, dynamic>{
  'success': instance.success,
  'message': instance.message,
  'data': instance.data,
  'pagination': instance.pagination,
};
