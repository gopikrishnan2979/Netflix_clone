import 'package:json_annotation/json_annotation.dart';

part 'search_value.g.dart';

@JsonSerializable()
class Search{
  @JsonKey(name: 'poster_path')
  String? posterPath;
  @JsonKey(name: "original_title")
  String? originaltitle;
  @JsonKey(name: 'title')
  String? title;

  Search({
    this.posterPath,
    this.originaltitle,
    this.title,
  });

  factory Search.fromJson(Map<String, dynamic> json) {
    return _$SearchFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SearchToJson(this);
}
