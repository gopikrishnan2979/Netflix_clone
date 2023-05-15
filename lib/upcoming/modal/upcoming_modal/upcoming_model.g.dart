// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upcoming_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpcomingModal _$UpcomingModalFromJson(Map<String, dynamic> json) =>
    UpcomingModal(
      json['overview'] as String?,
      json['poster_path'] as String?,
      json['release_date'] as String?,
      json['backdrop_path'] as String?,
      json['title'] as String?,
    );

Map<String, dynamic> _$UpcomingModalToJson(UpcomingModal instance) =>
    <String, dynamic>{
      'overview': instance.overview,
      'poster_path': instance.posterpath,
      'backdrop_path': instance.backdropath,
      'release_date': instance.releasedate,
      'title': instance.title,
    };
