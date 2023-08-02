import 'package:injectable/injectable.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_example/core/services/reactive_counter_service/reactive_counter_service.dart';

@injectable
class ReactiveExampleViewModel extends ReactiveViewModel {
  final ReactiveCounterService _reactiveCounterService;

  @override
  List<ListenableServiceMixin> get listenableServices =>
      [_reactiveCounterService];

  ReactiveExampleViewModel(this._reactiveCounterService);

  void onClearNumber() {
    _reactiveCounterService.clear();
  }
}
