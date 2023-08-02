abstract class CounterService {
  Stream<int> get stream;

  void addNumber(int number);

  void dispose();
}