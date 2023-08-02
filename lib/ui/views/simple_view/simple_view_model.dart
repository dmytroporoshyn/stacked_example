import 'package:stacked/stacked.dart';

class SimpleViewModel extends BaseViewModel {

  int number = 0;

  void addNumber() {
    number = number + 1;
    notifyListeners();
  }

}