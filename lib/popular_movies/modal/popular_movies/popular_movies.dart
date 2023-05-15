import 'package:json_annotation/json_annotation.dart';

part 'popular_movies.g.dart';

@JsonSerializable()
class PopularMovies {
  @JsonKey(name: 'poster_path')
  String? posterPath;
  @JsonKey(name: "original_title")
  String? originaltitle;
  @JsonKey(name: 'title')
  String? title;
  @JsonKey(name: 'id')
  int? id;

  PopularMovies({
    this.posterPath,
    this.originaltitle,
    this.title,
    this.id,
  });

  factory PopularMovies.fromJson(Map<String, dynamic> json) {
    print('Json datapopularmovies$json');
    return _$PopularMoviesFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PopularMoviesToJson(this);
}
