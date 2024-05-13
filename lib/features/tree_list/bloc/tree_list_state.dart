
part of 'tree_list_bloc.dart';

enum TreeListStatus { initial, success, failure }

final class TreeListState extends Equatable {

  const TreeListState({
    this.status = TreeListStatus.initial,
    this.trees = Tree.emptyList,
    this.exception
   });


  final Trees trees;
  final Exception? exception;
  final TreeListStatus status;

  TreeListState copyWith({
    TreeListStatus? status,
    Trees? trees,
    Exception? exception,
  }) {
    return TreeListState(
      status: status ?? this.status,
      trees: trees ?? this.trees,
      exception: exception ?? this.exception,
    );
  }

  @override
  List<Object?> get props => [trees];

}
