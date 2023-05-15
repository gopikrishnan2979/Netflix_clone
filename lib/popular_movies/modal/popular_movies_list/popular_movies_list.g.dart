// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'popular_movies_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PopularMoviesList _$PopularMoviesListFromJson(Map<String, dynamic> json) =>
    PopularMoviesList(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => PopularMovies.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PopularMoviesListToJson(PopularMoviesList instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
