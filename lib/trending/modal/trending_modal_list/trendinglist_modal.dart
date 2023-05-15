import 'package:json_annotation/json_annotation.dart';
import 'package:netflics/trending/modal/trending_modal/trending_modal.dart';

part 'trendinglist_modal.g.dart';
@JsonSerializable()
class Getalltrending {
  @JsonKey(name: 'results')
  List<TrendingModal>? data;
  Getalltrending({this.data});

  factory Getalltrending.fromJson(Map<String, dynamic> json) {
    return _$GetalltrendingFromJson(json);
  }
  Map<String, dynamic> toJson() =>  _$GetalltrendingToJson(this);
}
