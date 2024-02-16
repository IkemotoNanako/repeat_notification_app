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
    RootRouterRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const RootRouterPage(),
      );
    },
    RoutineAddRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const RoutineAddPage(),
      );
    },
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
    RoutineUpdateRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<RoutineUpdateRouteArgs>(
          orElse: () => RoutineUpdateRouteArgs(
              routineId: pathParams.getInt('routineId')));
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: RoutineUpdatePage(
          key: args.key,
          routineId: args.routineId,
          cache: args.cache,
        ),
      );
    },
  };
}

/// generated route for
/// [RootRouterPage]
class RootRouterRoute extends PageRouteInfo<void> {
  const RootRouterRoute({List<PageRouteInfo>? children})
      : super(
          RootRouterRoute.name,
          initialChildren: children,
        );

  static const String name = 'RootRouterRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [RoutineAddPage]
class RoutineAddRoute extends PageRouteInfo<void> {
  const RoutineAddRoute({List<PageRouteInfo>? children})
      : super(
          RoutineAddRoute.name,
          initialChildren: children,
        );

  static const String name = 'RoutineAddRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
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

/// generated route for
/// [RoutineUpdatePage]
class RoutineUpdateRoute extends PageRouteInfo<RoutineUpdateRouteArgs> {
  RoutineUpdateRoute({
    Key? key,
    required int routineId,
    Routine? cache,
    List<PageRouteInfo>? children,
  }) : super(
          RoutineUpdateRoute.name,
          args: RoutineUpdateRouteArgs(
            key: key,
            routineId: routineId,
            cache: cache,
          ),
          rawPathParams: {'routineId': routineId},
          initialChildren: children,
        );

  static const String name = 'RoutineUpdateRoute';

  static const PageInfo<RoutineUpdateRouteArgs> page =
      PageInfo<RoutineUpdateRouteArgs>(name);
}

class RoutineUpdateRouteArgs {
  const RoutineUpdateRouteArgs({
    this.key,
    required this.routineId,
    this.cache,
  });

  final Key? key;

  final int routineId;

  final Routine? cache;

  @override
  String toString() {
    return 'RoutineUpdateRouteArgs{key: $key, routineId: $routineId, cache: $cache}';
  }
}
