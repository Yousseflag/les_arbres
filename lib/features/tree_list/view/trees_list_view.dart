import 'package:domain/model/tree.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:core/extension/string_extensions.dart';
import 'package:go_router/go_router.dart';
import 'package:les_arbres/features/tree_list/bloc/tree_list_bloc.dart';
import 'package:les_arbres/routes/app_router.dart';

class TreesListView extends StatefulWidget {
  const TreesListView({super.key});

  @override
  State<TreesListView> createState() => _TreesListState();
}

class _TreesListState extends State<TreesListView> {
  
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TreeListBloc, TreeListState>(builder: (context, state) {
      switch(state.status) {
        case TreeListStatus.initial : return const Center(child: CircularProgressIndicator());
        case TreeListStatus.failure : return Center(child: Text(state.exception?.toString() ?? 'Unknown error'));
        case TreeListStatus.success : return  ListView.builder(
          itemCount: state.trees.length, itemBuilder:
           (BuildContext context, int index) => 
            ListTile(
            title: Text(state.trees[index].name.stringOrEmptyLabel),
            isThreeLine: true,
            subtitle: Text(state.trees[index].espece.stringOrEmptyLabel),
            dense: true,
            onTap: () {
              _onTapItem(state.trees[index]);
                })
           );
      }
    });
  }

  @override
  void initState() {
    super.initState();
    context.read<TreeListBloc>().add(LoadTreeList());
  }

  void _onTapItem(Tree tree) {
    context.go(RoutesName.details.goName, extra: tree);
  }

}
