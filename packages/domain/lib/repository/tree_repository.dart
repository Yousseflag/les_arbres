import 'package:core/model/data_event.dart';
import 'package:domain/model/tree.dart';

abstract interface class TreeRepository {
  Future<DataEvent<Trees>> getTrees(int limits);
} 
