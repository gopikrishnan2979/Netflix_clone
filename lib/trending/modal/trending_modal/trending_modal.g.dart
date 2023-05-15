// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trending_modal.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TrendingModal _$TrendingModalFromJson(Map<String, dynamic> json) =>
    TrendingModal(
      backdropPath: json['backdrop_path'] as String?,
      title: json['title'] as String?,
      originalTitle: json['original_title'] as String?,
      posterPath: json['poster_path'] as String?,
    );

Map<String, dynamic> _$TrendingModalToJson(TrendingModal instance) =>
    <String, dynamic>{
      'backdrop_path': instance.backdropPath,
      'title': instance.title,
      'original_title': instance.originalTitle,
      'poster_path': instance.posterPath,
    };
