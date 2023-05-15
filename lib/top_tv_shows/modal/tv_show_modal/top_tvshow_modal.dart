import 'package:json_annotation/json_annotation.dart';
part 'top_tvshow_modal.g.dart';

@JsonSerializable()
class TopTvShows {
  @JsonKey(name: 'poster_path')
  String? posterpath;
  @JsonKey(name: 'name')
  String? name;


  TopTvShows(
    this.posterpath,
    this.name,
  );
  factory TopTvShows.fromJson(Map<String, dynamic> json) {
    return _$TopTvShowsFromJson(json);
  }
  Map<String, dynamic> toJson() => _$TopTvShowsToJson(this);
}
