// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'panduan_aplikasi_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PanduanAplikasiResponseModel _$PanduanAplikasiResponseModelFromJson(
  Map<String, dynamic> json,
) => _PanduanAplikasiResponseModel(
  success: json['success'] as bool?,
  message: json['message'] as String?,
  data: (json['data'] as List<dynamic>?)
      ?.map((e) => PanduanAplikasiModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  pagination: json['pagination'] == null
      ? null
      : PaginationModel.fromJson(json['pagination'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PanduanAplikasiResponseModelToJson(
  _PanduanAplikasiResponseModel instance,
) => <String, dynamic>{
  'success': instance.success,
  'message': instance.message,
  'data': instance.data,
  'pagination': instance.pagination,
};
