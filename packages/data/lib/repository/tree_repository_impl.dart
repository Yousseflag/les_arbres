import 'package:core/model/data_event.dart';
import 'package:domain/data_source/remote/tree_remote_data_source.dart';
import 'package:domain/model/tree.dart';
import 'package:domain/repository/tree_repository.dart';

final class TreeRepositoryImpl implements TreeRepository {

  final TreeRemoteDataSource treeRemoteDataSource;

  TreeRepositoryImpl({ required this.treeRemoteDataSource});

  @override
  Future<DataEvent<List<Tree>>> getTrees() async  => treeRemoteDataSource.getTrees();

}
