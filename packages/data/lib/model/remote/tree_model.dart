import 'package:json_annotation/json_annotation.dart';

part 'tree_model.g.dart';

@JsonSerializable(includeIfNull: false)
class TreeModel {
  
  TreeModel(
    this.name,
    this.espece,
    this.hauteur,
    this.circonfe,
    this.address,
    this.complementOfAddress
    );
  @JsonKey(name: "libellefrancais")
  String? name;
  
  String? espece;

  @JsonKey(name: "hauteurenm")
  int? hauteur;

  @JsonKey(name: "circonferenceencm")
  int? circonfe;
  
  @JsonKey(name: "adresse")
  String? address;
  
  @JsonKey(name: "complementadresse")
  String? complementOfAddress;

  String? arrondissement;  

  Map<String, dynamic> toJson() => _$TreeModelToJson(this);
  
  factory TreeModel.fromJson(Map<String, dynamic> json) => _$TreeModelFromJson(json);
  
}
