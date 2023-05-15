import 'package:json_annotation/json_annotation.dart';
import 'package:netflics/popular_movies/modal/popular_movies/popular_movies.dart';
part 'popular_movies_list.g.dart';

@JsonSerializable()
class PopularMoviesList {

  @JsonKey(name: 'results')
  List<PopularMovies>? data;

  PopularMoviesList({this.data});

  factory PopularMoviesList.fromJson(Map<String, dynamic> json) {
    return _$PopularMoviesListFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PopularMoviesListToJson(this);
}
