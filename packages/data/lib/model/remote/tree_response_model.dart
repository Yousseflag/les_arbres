import 'package:data/model/remote/tree_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'tree_response_model.g.dart';

@JsonSerializable()
class TreeResponseModel {
  List<TreeModel>? results;

  TreeResponseModel({this.results});

  Map<String, dynamic> toJson() => _$TreeResponseModelToJson(this);
  
  factory TreeResponseModel.fromJson(Map<String, dynamic> json) => _$TreeResponseModelFromJson(json);
}
