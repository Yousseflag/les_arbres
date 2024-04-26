import 'package:core/model/data_event.dart';
import 'package:domain/model/tree.dart';

abstract interface class TreeRemoteDataSource {
    Future<DataEvent<List<Tree>>> getTrees();
}
