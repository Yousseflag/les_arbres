import 'package:core/utils/di_instance.dart';
import 'package:data/data_source/remote/tree_data_source_impl.dart';
import 'package:data/mapper/tree_mapper.dart';
import 'package:data/network/apis/tree_api.dart';
import 'package:data/network/http_params.dart';
import 'package:data/repository/tree_repository_impl.dart';
import 'package:domain/data_source/remote/tree_remote_data_source.dart';
import 'package:domain/repository/tree_repository.dart';


Future<void> init() async {

// Repository
  DI.diInstance.registerLazySingleton<TreeRepository>(() => TreeRepositoryImpl(DI.diInstance()));

// Data Source
  DI.diInstance.registerLazySingleton<TreeRemoteDataSource>(() => TreeRemoteDataSourceImpl(DI.diInstance(), DI.diInstance()));

// Apis
  DI.diInstance.registerFactory<TreeApi>(() => TreeApi(httpParams: HttpParams(baseURL: "https://opendata.paris.fr")));

// Mappers
  DI.diInstance.registerLazySingleton<TreeMapper>(() => TreeMapper());
}
