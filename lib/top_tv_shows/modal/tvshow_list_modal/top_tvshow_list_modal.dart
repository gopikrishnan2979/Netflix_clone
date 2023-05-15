import 'package:json_annotation/json_annotation.dart';
import 'package:netflics/top_tv_shows/modal/tv_show_modal/top_tvshow_modal.dart';
part 'top_tvshow_list_modal.g.dart';
@JsonSerializable()
class TopTvShowList {
  @JsonKey(name: 'results')
  List<TopTvShows>? data;
  TopTvShowList({this.data});

  factory TopTvShowList.fromJson(Map<String, dynamic> json) {
    return _$TopTvShowListFromJson(json);
  }
  Map<String,dynamic> toJson( )=> _$TopTvShowListToJson(this);
}
