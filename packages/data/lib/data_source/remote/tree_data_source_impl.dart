import 'package:core/model/data_event.dart';
import 'package:data/mapper/tree_mapper.dart';
import 'package:data/model/remote/tree_response_model.dart';
import 'package:data/network/apis/tree_api.dart';
import 'package:data/network/dio_client.dart';
import 'package:domain/data_source/remote/tree_remote_data_source.dart';
import 'package:domain/model/tree.dart';

final class TreeRemoteDataSourceImpl implements TreeRemoteDataSource {

  final TreeApi treeApi;
  final TreeMapper treeMapper;

  TreeRemoteDataSourceImpl({ 
    required this.treeApi,
    required this.treeMapper
    });

  @override
  Future<DataEvent<List<Tree>>> getTrees() async {
    try {
      final resultJson = await treeApi.call(path: "path", type: Method.get);
      final treeModels = TreeResponseModel.fromJson(resultJson);
      final trees = treeModels.results?.map((data) => treeMapper.mapFromEntity(data)).toList() ?? [];
      return Success(trees);
    } on Exception catch (exception) {
      return Failure(exception, null);
    }
  }
}
