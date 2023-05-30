// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'searchlist.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Searchlist _$SearchlistFromJson(Map<String, dynamic> json) => Searchlist(
      data: (json['results'] as List<dynamic>?)
          ?.map((e) => Search.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SearchlistToJson(Searchlist instance) =>
    <String, dynamic>{
      'results': instance.data,
    };
