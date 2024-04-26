// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tree_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TreeResponseModel _$TreeResponseModelFromJson(Map<String, dynamic> json) =>
    TreeResponseModel(
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => TreeModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TreeResponseModelToJson(TreeResponseModel instance) =>
    <String, dynamic>{
      'results': instance.results,
    };
