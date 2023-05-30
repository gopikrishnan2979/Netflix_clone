import 'package:json_annotation/json_annotation.dart';
import 'package:netflics/search/modal/search_value/search_value.dart';
part 'searchlist.g.dart';

@JsonSerializable()
class Searchlist {

  @JsonKey(name: 'results')
  List<Search>? data;

  Searchlist({this.data});

  factory Searchlist.fromJson(Map<String, dynamic> json) {
    return _$SearchlistFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SearchlistToJson(this);
}
