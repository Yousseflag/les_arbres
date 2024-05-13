import 'package:domain/model/tree.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'tree_details_event.dart';
part 'tree_details_state.dart';

class TreeDetailsBloc
    extends Bloc<TreeDetailsEvent, TreeDetailsState> {
  TreeDetailsBloc({required Tree tree})
      : super(TreeDetailsState(tree: tree));
}
