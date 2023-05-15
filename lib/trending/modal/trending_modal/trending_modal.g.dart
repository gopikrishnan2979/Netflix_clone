// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trending_modal.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TrendingModal _$TrendingModalFromJson(Map<String, dynamic> json) =>
    TrendingModal(
      backdropPath: json['backdrop_path'] as String?,
      id: json['id'] as int?,
      title: json['title'] as String?,
      originalTitle: json['original_title'] as String?,
      posterPath: json['poster_path'] as String?,
      mediaType: json['media_type'] as String?,
      genreIds:
          (json['genre_ids'] as List<dynamic>?)?.map((e) => e as int).toList(),
      adult: json['adult'] as bool? ?? false,
    );

Map<String, dynamic> _$TrendingModalToJson(TrendingModal instance) =>
    <String, dynamic>{
      'adult': instance.adult,
      'backdrop_path': instance.backdropPath,
      'id': instance.id,
      'title': instance.title,
      'original_title': instance.originalTitle,
      'poster_path': instance.posterPath,
      'media_type': instance.mediaType,
      'genre_ids': instance.genreIds,
    };
