// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'links_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LinksModel _$LinksModelFromJson(Map<String, dynamic> json) => _LinksModel(
  url: json['url'] as String?,
  label: json['label'] as String?,
  page: (json['page'] as num?)?.toInt(),
  active: json['active'] as bool?,
);

Map<String, dynamic> _$LinksModelToJson(_LinksModel instance) =>
    <String, dynamic>{
      'url': instance.url,
      'label': instance.label,
      'page': instance.page,
      'active': instance.active,
    };
