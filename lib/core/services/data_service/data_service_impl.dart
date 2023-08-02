import 'dart:async';

import 'package:injectable/injectable.dart';
import 'package:stacked_example/core/services/data_service/data_service.dart';

@Injectable(as: DataService)
class DataServiceImpl extends DataService {
  @override
  Future<List<int>> fetchList() async {
    await Future.delayed(const Duration(milliseconds: 500));
    return List.generate(5, (index) => index);
  }

}
