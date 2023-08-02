import 'package:injectable/injectable.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_example/core/services/data_service/data_service.dart';

@injectable
class FutureExampleViewModel extends FutureViewModel<List<int>> {
  final DataService _dataService;

  @override
  Future<List<int>> futureToRun() {
    return _dataService.fetchList();
  }

  FutureExampleViewModel(this._dataService);
}
