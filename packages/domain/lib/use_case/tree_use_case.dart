import 'package:core/model/data_event.dart';
import 'package:core/use_case/base_use_case.dart'; 
import 'package:domain/model/tree.dart';
import 'package:domain/repository/tree_repository.dart';

final class TreetUseCase implements BaseUseCase<DataEvent<List<Tree>> , void> {

  final TreeRepository treeRepository;

  TreetUseCase({required this.treeRepository});
  
  @override
  Future<DataEvent<List<Tree>>> call(void params) async => treeRepository.getTrees();
  
}
