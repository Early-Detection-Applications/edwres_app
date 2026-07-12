// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rss_news_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RssNewsModel _$RssNewsModelFromJson(Map<String, dynamic> json) =>
    _RssNewsModel(
      title: json['title'] as String?,
      link: json['link'] as String?,
      description: json['description'] as String?,
      pubDate: json['pubDate'] as String?,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$RssNewsModelToJson(_RssNewsModel instance) =>
    <String, dynamic>{
      'title': instance.title,
      'link': instance.link,
      'description': instance.description,
      'pubDate': instance.pubDate,
      'image': instance.image,
    };
