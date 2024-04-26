import 'package:domain/use_case/tree_use_case.dart';
import 'package:get_it/get_it.dart';

final domainDi = GetIt.instance;

Future<void> init() async {

  // Use Cases 
  domainDi.registerLazySingleton<TreetUseCase>(() => TreetUseCase(treeRepository: domainDi()));
}
