// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upcoming_model_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpcomingModalList _$UpcomingModalListFromJson(Map<String, dynamic> json) =>
    UpcomingModalList(
      data: (json['results'] as List<dynamic>?)
          ?.map((e) => UpcomingModal.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$UpcomingModalListToJson(UpcomingModalList instance) =>
    <String, dynamic>{
      'results': instance.data,
    };
