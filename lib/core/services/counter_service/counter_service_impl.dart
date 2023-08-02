import 'dart:async';

import 'package:injectable/injectable.dart';
import 'package:stacked_example/core/services/counter_service/counter_service.dart';

@Injectable(as: CounterService)
class CounterServiceImpl extends CounterService {
  final StreamController<int> _streamController = StreamController();

  int _number = 0;

  @override
  Stream<int> get stream => _streamController.stream;

  CounterServiceImpl() {
    _streamController.add(_number);
  }

  @override
  void addNumber(int number) {
    _number += number;
    _streamController.add(_number);
  }

  @override
  void dispose() {
    _streamController.close();
  }
}
