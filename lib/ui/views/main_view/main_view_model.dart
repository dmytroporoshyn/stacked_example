import 'package:injectable/injectable.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_example/app/app_router.dart';

@injectable
class MainViewModel extends BaseViewModel {
  final AppRouter _router;

  MainViewModel(this._router);

  void onStreamExample() {
    _router.push(const StreamExampleRoute());
  }

  void onFutureExample() {
    _router.push(const FutureExampleRoute());
  }

  void onReactiveExample() {
    _router.push(const ReactiveExampleRoute());
  }

  void onSimpleExample() {
    _router.push(const SimpleRoute());
  }
}