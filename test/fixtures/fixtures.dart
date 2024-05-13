import 'package:domain/model/tree.dart';

final tree1 = Tree(
  name: 'Abricotier',
  espece: 'Prunus armeniaca',
  hauteur: 20,
  circonfe: 10,
  address: '12 Rue Hubert de Lisle'
);

final tree2 = Tree(
  name: 'Prunellier',
  espece: 'Hermaphrodite',
  hauteur: 15,
  circonfe: 8,
  address: '38 rue de Lille'
);

final treeList1 = [tree1, tree2];

final treeList2 = [tree2, tree1];
