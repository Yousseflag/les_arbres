part of 'tree_details_bloc.dart';

class TreeDetailsState with EquatableMixin {
  TreeDetailsState({required this.tree});

  final Tree tree;

  @override
  List<Object?> get props => [tree];
}
