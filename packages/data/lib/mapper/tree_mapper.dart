import 'package:core/mapper/mapper.dart';
import 'package:data/model/remote/tree_model.dart';
import 'package:domain/model/tree.dart';

final class TreeMapper implements Mapper<TreeModel, Tree> {
  
  @override
  Tree mapFromEntity(TreeModel type) => Tree(
      name: type.name,
      espece: type.espece,
      hauteur: type.hauteur,
      circonfe: type.circonfe,
      address: type.address
    );

  @override
  TreeModel mapToEntity(Tree type) {
    // Temp unimplemented method
    throw UnimplementedError();
  }
}
