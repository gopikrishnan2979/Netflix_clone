import 'package:json_annotation/json_annotation.dart';
import 'package:netflics/upcoming/modal/upcoming_modal/upcoming_model.dart';
part 'upcoming_model_list.g.dart';
@JsonSerializable()
class UpcomingModalList {
  @JsonKey(name: 'results')
  List<UpcomingModal>? data;
  UpcomingModalList({this.data});
  
  factory UpcomingModalList.fromJson(Map<String, dynamic> json) {
    return _$UpcomingModalListFromJson(json);
  }
  Map<String,dynamic> toJson( )=> _$UpcomingModalListToJson(this);
}
