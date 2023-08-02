import 'package:stacked/stacked.dart';

abstract class ReactiveCounterService with ListenableServiceMixin{
  int get number;

  void addNumber(int number);

  void clear();
}