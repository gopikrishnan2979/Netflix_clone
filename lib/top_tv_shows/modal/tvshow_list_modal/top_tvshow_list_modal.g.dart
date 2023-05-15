// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'top_tvshow_list_modal.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TopTvShowList _$TopTvShowListFromJson(Map<String, dynamic> json) =>
    TopTvShowList(
      data: (json['results'] as List<dynamic>?)
          ?.map((e) => TopTvShows.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TopTvShowListToJson(TopTvShowList instance) =>
    <String, dynamic>{
      'results': instance.data,
    };
