// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trendinglist_modal.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Getalltrending _$GetalltrendingFromJson(Map<String, dynamic> json) =>
    Getalltrending(
      data: (json['results'] as List<dynamic>?)
          ?.map((e) => TrendingModal.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GetalltrendingToJson(Getalltrending instance) =>
    <String, dynamic>{
      'results': instance.data,
    };
