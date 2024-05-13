// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tree_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TreeModel _$TreeModelFromJson(Map<String, dynamic> json) => TreeModel(
      json['libellefrancais'] as String?,
      json['espece'] as String?,
      (json['hauteurenm'] as num?)?.toInt(),
      (json['circonferenceencm'] as num?)?.toInt(),
      json['adresse'] as String?,
      json['complementadresse'] as String?,
    )..arrondissement = json['arrondissement'] as String?;

Map<String, dynamic> _$TreeModelToJson(TreeModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('libellefrancais', instance.name);
  writeNotNull('espece', instance.espece);
  writeNotNull('hauteurenm', instance.hauteur);
  writeNotNull('circonferenceencm', instance.circonfe);
  writeNotNull('adresse', instance.address);
  writeNotNull('complementadresse', instance.complementOfAddress);
  writeNotNull('arrondissement', instance.arrondissement);
  return val;
}
