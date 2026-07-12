// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_list_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_NewsListResponseModel _$NewsListResponseModelFromJson(
  Map<String, dynamic> json,
) => _NewsListResponseModel(
  success: json['success'] as bool?,
  message: json['message'] as String?,
  data: (json['berita'] as List<dynamic>?)
      ?.map((e) => NewsModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  pagination: json['pagination'] == null
      ? null
      : PaginationModel.fromJson(json['pagination'] as Map<String, dynamic>),
);

Map<String, dynamic> _$NewsListResponseModelToJson(
  _NewsListResponseModel instance,
) => <String, dynamic>{
  'success': instance.success,
  'message': instance.message,
  'berita': instance.data,
  'pagination': instance.pagination,
};
