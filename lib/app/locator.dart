import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:stacked_example/app/locator.config.dart';

// flutter packages pub run build_runner build
// flutter pub run easy_localization:generate -f keys -o locale_keys.g.dart
final locator = GetIt.instance;

@InjectableInit(
  initializerName: r'$initGetIt', // default
  preferRelativeImports: false, // default
  asExtension: false,
  // default
)
Future<GetIt> configureDependencies() async {
  //External
  return $initGetIt(locator);
}
