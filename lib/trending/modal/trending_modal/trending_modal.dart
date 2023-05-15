import 'package:json_annotation/json_annotation.dart';

part 'trending_modal.g.dart';

@JsonSerializable()
class TrendingModal {
	@JsonKey(name: 'backdrop_path') 
	String? backdropPath;
  @JsonKey(name: 'title')
	String? title;
	@JsonKey(name: 'original_title') 
	String? originalTitle;
	@JsonKey(name: 'poster_path') 
	String? posterPath;

	TrendingModal({
		this.backdropPath,
		this.title, 
		this.originalTitle,
		this.posterPath,
	});

	factory TrendingModal.fromJson(Map<String, dynamic> json) {
		return _$TrendingModalFromJson(json);
	}

	Map<String, dynamic> toJson() => _$TrendingModalToJson(this);
}

