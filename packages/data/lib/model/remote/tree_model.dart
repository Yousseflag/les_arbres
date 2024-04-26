import 'package:json_annotation/json_annotation.dart';

part 'tree_model.g.dart';

@JsonSerializable()
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
  String? hauteur;

  @JsonKey(name: "circonferenceencm")
  String? circonfe;
  
  @JsonKey(name: "adresse")
  String? address;
  
  @JsonKey(name: "complementadresse")
  String? complementOfAddress;
  

  Map<String, dynamic> toJson() => _$TreeModelToJson(this);
  
  factory TreeModel.fromJson(Map<String, dynamic> json) => _$TreeModelFromJson(json);
  
}
