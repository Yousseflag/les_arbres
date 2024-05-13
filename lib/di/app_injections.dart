import 'package:core/utils/di_instance.dart';
import 'package:les_arbres/features/tree_list/bloc/tree_list_bloc.dart';


Future<void> init() async {

  DI.diInstance.registerFactory<TreeListBloc>(() => TreeListBloc(treetUseCase: DI.diInstance()));

  DI.diInstance.registerFactory<TreeListState>(() => const TreeListState());

}