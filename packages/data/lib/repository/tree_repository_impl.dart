import 'package:core/model/data_event.dart';
import 'package:domain/data_source/remote/tree_remote_data_source.dart';
import 'package:domain/model/tree.dart';
import 'package:domain/repository/tree_repository.dart';

final class TreeRepositoryImpl implements TreeRepository {

  late final TreeRemoteDataSource _treeRemoteDataSource;

  TreeRepositoryImpl(this._treeRemoteDataSource);

  @override
  Future<DataEvent<Trees>> getTrees(int limits) async  => _treeRemoteDataSource.getTrees(limits);

}
