// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    RoutineIndexRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const RoutineIndexPage(),
      );
    },
    RoutineRouterRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const RoutineRouterPage(),
      );
    },
  };
}

/// generated route for
/// [RoutineIndexPage]
class RoutineIndexRoute extends PageRouteInfo<void> {
  const RoutineIndexRoute({List<PageRouteInfo>? children})
      : super(
          RoutineIndexRoute.name,
          initialChildren: children,
        );

  static const String name = 'RoutineIndexRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [RoutineRouterPage]
class RoutineRouterRoute extends PageRouteInfo<void> {
  const RoutineRouterRoute({List<PageRouteInfo>? children})
      : super(
          RoutineRouterRoute.name,
          initialChildren: children,
        );

  static const String name = 'RoutineRouterRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
