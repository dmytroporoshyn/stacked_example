import 'package:injectable/injectable.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_example/app/app_router.dart';

@injectable
class AppViewModel extends BaseViewModel {
  final AppRouter router;

  AppViewModel(this.router);
}