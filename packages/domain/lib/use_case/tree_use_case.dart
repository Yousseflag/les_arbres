import 'package:core/model/data_event.dart';
import 'package:core/use_case/base_use_case.dart'; 
import 'package:domain/model/tree.dart';
import 'package:domain/repository/tree_repository.dart';

class TreetUseCase implements BaseUseCase<DataEvent<Trees> , int> {

  late final TreeRepository _treeRepository;

  TreetUseCase(this._treeRepository);
  
  @override
  Future<DataEvent<Trees>> call(int params) async => _treeRepository.getTrees(params);
}
