part of 'tree_list_bloc.dart';

sealed class TreeListEvent {
  const TreeListEvent();
}

final class LoadTreeList extends TreeListEvent {
  final int limits;

  // limits default 20;
  LoadTreeList({this.limits = 20});
}
