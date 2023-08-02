import 'package:injectable/injectable.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_example/core/services/reactive_counter_service/reactive_counter_service.dart';

@injectable
class OtherItemViewModel extends ReactiveViewModel {
  final ReactiveCounterService _reactiveCounterService;
  final int number;

  int get currentNumber => _reactiveCounterService.number;

  @override
  List<ListenableServiceMixin> get listenableServices =>
      [_reactiveCounterService];

  OtherItemViewModel(this._reactiveCounterService,
      {@factoryParam this.number = 1});

  void onAddNumber() {
    _reactiveCounterService.addNumber(number);
  }
}
