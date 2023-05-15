import 'package:json_annotation/json_annotation.dart';
part 'top_tvshow_modal.g.dart';

@JsonSerializable()
class TopTvShows {
  @JsonKey(name: 'poster_path')
  String? posterpath;
  @JsonKey(name: 'name')
  String? name;
  @JsonKey(name: 'id')
  int? id;

  TopTvShows(
    this.posterpath,
    this.name,
    this.id,
  );
  factory TopTvShows.fromJson(Map<String, dynamic> json) {
    return _$TopTvShowsFromJson(json);
  }
  Map<String, dynamic> toJson() => _$TopTvShowsToJson(this);
}
