// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entrepreneurship_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_EntrepreneurshipModel _$EntrepreneurshipModelFromJson(
  Map<String, dynamic> json,
) => _EntrepreneurshipModel(
  id: (json['id'] as num?)?.toInt(),
  title: json['title'] as String?,
  image: json['image'] as String?,
  link: json['link'] as String?,
);

Map<String, dynamic> _$EntrepreneurshipModelToJson(
  _EntrepreneurshipModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
  'image': instance.image,
  'link': instance.link,
};
