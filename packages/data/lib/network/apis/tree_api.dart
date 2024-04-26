import 'package:data/network/dio_client.dart';
import 'package:data/network/http_params.dart';

final class TreeApi extends DioClient {
  TreeApi({required HttpParams httpParams}): super(httpParams: httpParams);
}
