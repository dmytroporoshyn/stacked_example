import 'package:injectable/injectable.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_example/core/services/counter_service/counter_service.dart';

@injectable
class StreamExampleViewModel extends StreamViewModel<int> {
  final CounterService _counterService;

  StreamExampleViewModel(this._counterService);

  @override
  Stream<int> get stream => _counterService.stream;

  void onAddNumber() {
    _counterService.addNumber(1);
  }

  @override
  void dispose() {
    _counterService.dispose();
    super.dispose();
  }
}
