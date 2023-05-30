// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_value.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Search _$SearchFromJson(Map<String, dynamic> json) => Search(
      posterPath: json['poster_path'] as String?,
      originaltitle: json['original_title'] as String?,
      title: json['title'] as String?,
    );

Map<String, dynamic> _$SearchToJson(Search instance) => <String, dynamic>{
      'poster_path': instance.posterPath,
      'original_title': instance.originaltitle,
      'title': instance.title,
    };
