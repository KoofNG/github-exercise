import 'package:get_it/get_it.dart';
import 'package:github_exercise/dependency_injection/search_dependency_injection.dart';

class AppDependencyInjection {
  static final di = GetIt.instance;
  static registerDependencies() {
    registerSearchDependencies();
  }
}
