import 'package:get_it/get_it.dart';


class DI {
  static final diInstance = GetIt.instance;
  static T get<T extends Object>() => diInstance.get<T>();
}