// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entrepreneurship_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_EntrepreneurshipResponseModel _$EntrepreneurshipResponseModelFromJson(
  Map<String, dynamic> json,
) => _EntrepreneurshipResponseModel(
  data: (json['berwirausaha'] as List<dynamic>?)
      ?.map((e) => EntrepreneurshipModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  limit: (json['limit'] as num?)?.toInt(),
  currentPage: (json['current_page'] as num?)?.toInt(),
  totalRecords: (json['total_records'] as num?)?.toInt(),
);

Map<String, dynamic> _$EntrepreneurshipResponseModelToJson(
  _EntrepreneurshipResponseModel instance,
) => <String, dynamic>{
  'berwirausaha': instance.data,
  'limit': instance.limit,
  'current_page': instance.currentPage,
  'total_records': instance.totalRecords,
};
