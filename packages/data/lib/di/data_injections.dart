import 'package:data/data_source/remote/tree_data_source_impl.dart';
import 'package:data/mapper/tree_mapper.dart';
import 'package:data/network/apis/tree_api.dart';
import 'package:data/network/http_params.dart';
import 'package:data/repository/tree_repository_impl.dart';
import 'package:domain/data_source/remote/tree_remote_data_source.dart';
import 'package:domain/repository/tree_repository.dart';
import 'package:get_it/get_it.dart';

final dataDi = GetIt.instance;

Future<void> init() async {

// Repository
  dataDi.registerLazySingleton<TreeRepository>(() => TreeRepositoryImpl(treeRemoteDataSource: dataDi()));

// Data Source
  dataDi.registerLazySingleton<TreeRemoteDataSource>(() => TreeRemoteDataSourceImpl(treeApi: dataDi(), treeMapper: dataDi()));

// Apis
  dataDi.registerFactory<TreeApi>(() => TreeApi(httpParams: dataDi()));

// Mappers
  dataDi.registerLazySingleton<TreeMapper>(() => TreeMapper());

// Various instances 
  // could be configurable
  dataDi.registerLazySingleton<HttpParams>(() => HttpParams(baseURL: "https://opendata.paris.fr"));
}
