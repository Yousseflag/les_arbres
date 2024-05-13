import 'package:core/model/data_event.dart';
import 'package:domain/model/tree.dart';
import 'package:domain/use_case/tree_use_case.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'tree_list_state.dart';
part 'tree_list_event.dart';


class TreeListBloc
    extends Bloc<TreeListEvent, TreeListState> {
  TreeListBloc({
    required TreetUseCase treetUseCase,
  }) : _treetUseCase = treetUseCase,
        super(const TreeListState()) {
    on<LoadTreeList>(_onLoadTreeList);
  }

  Future<void> _onLoadTreeList(
    LoadTreeList event,
    Emitter<TreeListState> emit,
  ) async {
    final result = await _treetUseCase.call(event.limits);
    switch(result) {
       case Success() : return emit(TreeListState(status: TreeListStatus.success, trees: result.data, exception: null));
       case Failure() : return emit(TreeListState(status: TreeListStatus.failure, exception: result.error));
    }
  }

  final TreetUseCase _treetUseCase;
}
