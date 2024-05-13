import 'package:core/model/data_event.dart';
import 'package:data/mapper/tree_mapper.dart';
import 'package:data/model/remote/tree_response_model.dart';
import 'package:data/network/api_network_expection.dart';
import 'package:data/network/apis/tree_api.dart';
import 'package:data/network/dio_client.dart';
import 'package:dio/dio.dart';
import 'package:domain/data_source/remote/tree_remote_data_source.dart';
import 'package:domain/model/tree.dart';

final class TreeRemoteDataSourceImpl implements TreeRemoteDataSource {

  final TreeApi _treeApi;
  final TreeMapper _treeMapper;

  TreeRemoteDataSourceImpl(this._treeApi, this._treeMapper);

  @override
  Future<DataEvent<Trees>> getTrees(int limits) async {
    try {
      Response<dynamic>? resultJson = await _treeApi.call(path: "/api/explore/v2.1/catalog/datasets/les-arbres/records", type: Method.get, queryParameters: {"limit": limits});
      TreeResponseModel? treeModels = TreeResponseModel.fromJson(resultJson.data);
      Trees trees = treeModels.results?.map((data) => _treeMapper.mapFromEntity(data)).toList() ?? [];
      return Success(trees);
      } on DioException catch (dioError) {
          final error = ApiNetworkException.fromDioError(dioError);
          return Failure(error, null);
      } on Exception catch (e) {
          return Failure(e, null);
      }
  }
}
