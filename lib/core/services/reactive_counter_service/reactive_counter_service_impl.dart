import 'package:injectable/injectable.dart';
import 'package:stacked_example/core/services/reactive_counter_service/reactive_counter_service.dart';

@LazySingleton(as: ReactiveCounterService)
class ReactiveCounterServiceImpl extends ReactiveCounterService {
  int _number = 0;

  @override
  int get number => _number;

  @override
  void addNumber(int number) {
    _number += number;
    notifyListeners();
  }

  @override
  void clear() {
    _number = 0;
    notifyListeners();
  }
}
