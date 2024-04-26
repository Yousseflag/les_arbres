// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tree_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TreeModel _$TreeModelFromJson(Map<String, dynamic> json) => TreeModel(
      json['libellefrancais'] as String?,
      json['espece'] as String?,
      json['hauteurenm'] as String?,
      json['circonferenceencm'] as String?,
      json['adresse'] as String?,
      json['complementadresse'] as String?,
    );

Map<String, dynamic> _$TreeModelToJson(TreeModel instance) => <String, dynamic>{
      'libellefrancais': instance.name,
      'espece': instance.espece,
      'hauteurenm': instance.hauteur,
      'circonferenceencm': instance.circonfe,
      'adresse': instance.address,
      'complementadresse': instance.complementOfAddress,
    };
