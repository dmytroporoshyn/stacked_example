import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:stacked_example/ui/views/future_example_view/future_example_view.dart';
import 'package:stacked_example/ui/views/main_view/main_view.dart';
import 'package:stacked_example/ui/views/reactive_example_view/reactive_example_view.dart';
import 'package:stacked_example/ui/views/simple_view/simple_view.dart';
import 'package:stacked_example/ui/views/stream_example_view/stream_example_view.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'View,Route')
// extend the generated private router
class AppRouter extends _$AppRouter {
  BuildContext? get context => navigatorKey.currentContext;

  @override
  List<AutoRoute> get routes => <AutoRoute>[
        MaterialRoute(
          page: MainRoute.page,
          initial: true,
        ),
        MaterialRoute(
          page: StreamExampleRoute.page,
        ),
        MaterialRoute(
          page: FutureExampleRoute.page,
        ),
        MaterialRoute(
          page: ReactiveExampleRoute.page,
        ),
        MaterialRoute(
          page: SimpleRoute.page,
        ),
        RedirectRoute(path: '*', redirectTo: '/')
      ];
}
