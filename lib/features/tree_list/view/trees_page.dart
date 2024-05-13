import 'package:core/utils/di_instance.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:les_arbres/features/tree_list/bloc/tree_list_bloc.dart';
import 'package:les_arbres/features/tree_list/view/trees_list_view.dart';

class TreesPage extends StatelessWidget {

  const TreesPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (_) => DI.get<TreeListBloc>(),
        child: const TreesListView(),
        ),
    );
  }

}
