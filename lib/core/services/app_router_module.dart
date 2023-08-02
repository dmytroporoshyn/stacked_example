import 'package:injectable/injectable.dart';
import 'package:stacked_example/app/app_router.dart';

@module
abstract class AppRouterModule {
  @lazySingleton
  AppRouter get appRouter => AppRouter();
}
