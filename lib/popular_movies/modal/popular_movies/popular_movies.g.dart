// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'popular_movies.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PopularMovies _$PopularMoviesFromJson(Map<String, dynamic> json) =>
    PopularMovies(
      posterPath: json['poster_path'] as String?,
      originaltitle: json['original_title'] as String?,
      title: json['title'] as String?,
    );

Map<String, dynamic> _$PopularMoviesToJson(PopularMovies instance) =>
    <String, dynamic>{
      'poster_path': instance.posterPath,
      'original_title': instance.originaltitle,
      'title': instance.title,
    };
