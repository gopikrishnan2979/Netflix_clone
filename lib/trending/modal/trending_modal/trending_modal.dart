import 'package:json_annotation/json_annotation.dart';

part 'trending_modal.g.dart';

@JsonSerializable()
class TrendingModal {
  @JsonKey(name: 'adult')
	bool? adult;
	@JsonKey(name: 'backdrop_path') 
	String? backdropPath;
  @JsonKey(name: 'id')
	int? id;
  @JsonKey(name: 'title')
	String? title;
	@JsonKey(name: 'original_title') 
	String? originalTitle;
	@JsonKey(name: 'poster_path') 
	String? posterPath;
	@JsonKey(name: 'media_type') 
	String? mediaType;
	@JsonKey(name: 'genre_ids') 
	List<int>? genreIds;

	TrendingModal({
		this.backdropPath, 
		this.id, 
		this.title, 
		this.originalTitle,
		this.posterPath, 
		this.mediaType, 
		this.genreIds,
    this.adult=false,
	});

	factory TrendingModal.fromJson(Map<String, dynamic> json) {
		return _$TrendingModalFromJson(json);
	}

	Map<String, dynamic> toJson() => _$TrendingModalToJson(this);
}

