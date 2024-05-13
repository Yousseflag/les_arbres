typedef Trees = List<Tree>;

class Tree {
  // frensh name
  String? name;
  String? espece;
  // meter value
  int? hauteur;
  // centimeter value
  int? circonfe;
  String? address;

  Tree({
    this.name,
    this.espece,
    this.hauteur,
    this.circonfe,
    this.address
  });

  static const emptyList = <Tree>[];
}
