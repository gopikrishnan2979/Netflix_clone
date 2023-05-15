import 'package:json_annotation/json_annotation.dart';
part 'upcoming_model.g.dart';
@JsonSerializable()
class UpcomingModal {
  @JsonKey(name: "overview")
  String? overview;
  @JsonKey(name: 'poster_path')
  String? posterpath;
  @JsonKey(name: "backdrop_path")
  String? backdropath;
  @JsonKey(name: "release_date")
  String? releasedate;
  @JsonKey(name: "title")
  String? title;
  UpcomingModal(this.overview,this.posterpath,this.releasedate,this.backdropath,this.title);
  factory UpcomingModal.fromJson(Map<String, dynamic> json) {
    return _$UpcomingModalFromJson(json);
  }
  Map<String, dynamic> toJson() => _$UpcomingModalToJson(this);
}
