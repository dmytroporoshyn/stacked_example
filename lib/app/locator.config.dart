// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:stacked_example/app/app_router.dart' as _i3;
import 'package:stacked_example/core/services/app_router_module.dart' as _i16;
import 'package:stacked_example/core/services/counter_service/counter_service.dart'
    as _i5;
import 'package:stacked_example/core/services/counter_service/counter_service_impl.dart'
    as _i6;
import 'package:stacked_example/core/services/data_service/data_service.dart'
    as _i7;
import 'package:stacked_example/core/services/data_service/data_service_impl.dart'
    as _i8;
import 'package:stacked_example/core/services/reactive_counter_service/reactive_counter_service.dart'
    as _i11;
import 'package:stacked_example/core/services/reactive_counter_service/reactive_counter_service_impl.dart'
    as _i12;
import 'package:stacked_example/ui/views/app_view/app_view_model.dart' as _i4;
import 'package:stacked_example/ui/views/future_example_view/future_example_view_model.dart'
    as _i9;
import 'package:stacked_example/ui/views/main_view/main_view_model.dart'
    as _i10;
import 'package:stacked_example/ui/views/reactive_example_view/other_item_view/other_item_view_model.dart'
    as _i15;
import 'package:stacked_example/ui/views/reactive_example_view/reactive_example_view_model.dart'
    as _i13;
import 'package:stacked_example/ui/views/stream_example_view/stream_example_view_model.dart'
    as _i14;

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// initializes the registration of main-scope dependencies inside of GetIt
_i1.GetIt $initGetIt(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final appRouterModule = _$AppRouterModule();
  gh.lazySingleton<_i3.AppRouter>(() => appRouterModule.appRouter);
  gh.factory<_i4.AppViewModel>(() => _i4.AppViewModel(gh<_i3.AppRouter>()));
  gh.factory<_i5.CounterService>(() => _i6.CounterServiceImpl());
  gh.factory<_i7.DataService>(() => _i8.DataServiceImpl());
  gh.factory<_i9.FutureExampleViewModel>(
      () => _i9.FutureExampleViewModel(gh<_i7.DataService>()));
  gh.factory<_i10.MainViewModel>(() => _i10.MainViewModel(gh<_i3.AppRouter>()));
  gh.lazySingleton<_i11.ReactiveCounterService>(
      () => _i12.ReactiveCounterServiceImpl());
  gh.factory<_i13.ReactiveExampleViewModel>(
      () => _i13.ReactiveExampleViewModel(gh<_i11.ReactiveCounterService>()));
  gh.factory<_i14.StreamExampleViewModel>(
      () => _i14.StreamExampleViewModel(gh<_i5.CounterService>()));
  gh.factoryParam<_i15.OtherItemViewModel, int, dynamic>((
    number,
    _,
  ) =>
      _i15.OtherItemViewModel(
        gh<_i11.ReactiveCounterService>(),
        number: number,
      ));
  return getIt;
}

class _$AppRouterModule extends _i16.AppRouterModule {}
