import 'package:core/utils/di_instance.dart';
import 'package:domain/use_case/tree_use_case.dart';

Future<void> init() async {

  // Use Cases 
  DI.diInstance.registerLazySingleton<TreetUseCase>(() => TreetUseCase(DI.diInstance()));
}
