// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    MainRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MainView(),
      );
    },
    StreamExampleRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const StreamExampleView(),
      );
    },
    FutureExampleRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const FutureExampleView(),
      );
    },
    ReactiveExampleRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ReactiveExampleView(),
      );
    },
    SimpleRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SimpleView(),
      );
    },
  };
}

/// generated route for
/// [MainView]
class MainRoute extends PageRouteInfo<void> {
  const MainRoute({List<PageRouteInfo>? children})
      : super(
          MainRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [StreamExampleView]
class StreamExampleRoute extends PageRouteInfo<void> {
  const StreamExampleRoute({List<PageRouteInfo>? children})
      : super(
          StreamExampleRoute.name,
          initialChildren: children,
        );

  static const String name = 'StreamExampleRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [FutureExampleView]
class FutureExampleRoute extends PageRouteInfo<void> {
  const FutureExampleRoute({List<PageRouteInfo>? children})
      : super(
          FutureExampleRoute.name,
          initialChildren: children,
        );

  static const String name = 'FutureExampleRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ReactiveExampleView]
class ReactiveExampleRoute extends PageRouteInfo<void> {
  const ReactiveExampleRoute({List<PageRouteInfo>? children})
      : super(
          ReactiveExampleRoute.name,
          initialChildren: children,
        );

  static const String name = 'ReactiveExampleRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SimpleView]
class SimpleRoute extends PageRouteInfo<void> {
  const SimpleRoute({List<PageRouteInfo>? children})
      : super(
          SimpleRoute.name,
          initialChildren: children,
        );

  static const String name = 'SimpleRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
