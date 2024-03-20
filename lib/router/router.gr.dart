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
    CurrentRoutineRouterRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<CurrentRoutineRouterRouteArgs>(
          orElse: () => CurrentRoutineRouterRouteArgs(
              routineId: pathParams.getInt('routineId')));
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: CurrentRoutineRouterPage(
          key: args.key,
          routineId: args.routineId,
          cache: args.cache,
        ),
      );
    },
    DebugRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const DebugPage(),
      );
    },
    DebugRouterRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const DebugRouterPage(),
      );
    },
    RegisteredLocalNotificationIndexRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const RegisteredLocalNotificationIndexPage(),
      );
    },
    RepetitionAddRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const RepetitionAddPage(),
      );
    },
    RepetitionUpdateRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<RepetitionUpdateRouteArgs>(
          orElse: () => RepetitionUpdateRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: RepetitionUpdatePage(
          key: args.key,
          routineId: pathParams.getInt('routineId'),
        ),
      );
    },
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
          orElse: () => RoutineUpdateRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: RoutineUpdatePage(
          key: args.key,
          routineId: pathParams.getInt('routineId'),
        ),
      );
    },
  };
}

/// generated route for
/// [CurrentRoutineRouterPage]
class CurrentRoutineRouterRoute
    extends PageRouteInfo<CurrentRoutineRouterRouteArgs> {
  CurrentRoutineRouterRoute({
    Key? key,
    required int routineId,
    Routine? cache,
    List<PageRouteInfo>? children,
  }) : super(
          CurrentRoutineRouterRoute.name,
          args: CurrentRoutineRouterRouteArgs(
            key: key,
            routineId: routineId,
            cache: cache,
          ),
          rawPathParams: {'routineId': routineId},
          initialChildren: children,
        );

  static const String name = 'CurrentRoutineRouterRoute';

  static const PageInfo<CurrentRoutineRouterRouteArgs> page =
      PageInfo<CurrentRoutineRouterRouteArgs>(name);
}

class CurrentRoutineRouterRouteArgs {
  const CurrentRoutineRouterRouteArgs({
    this.key,
    required this.routineId,
    this.cache,
  });

  final Key? key;

  final int routineId;

  final Routine? cache;

  @override
  String toString() {
    return 'CurrentRoutineRouterRouteArgs{key: $key, routineId: $routineId, cache: $cache}';
  }
}

/// generated route for
/// [DebugPage]
class DebugRoute extends PageRouteInfo<void> {
  const DebugRoute({List<PageRouteInfo>? children})
      : super(
          DebugRoute.name,
          initialChildren: children,
        );

  static const String name = 'DebugRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [DebugRouterPage]
class DebugRouterRoute extends PageRouteInfo<void> {
  const DebugRouterRoute({List<PageRouteInfo>? children})
      : super(
          DebugRouterRoute.name,
          initialChildren: children,
        );

  static const String name = 'DebugRouterRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [RegisteredLocalNotificationIndexPage]
class RegisteredLocalNotificationIndexRoute extends PageRouteInfo<void> {
  const RegisteredLocalNotificationIndexRoute({List<PageRouteInfo>? children})
      : super(
          RegisteredLocalNotificationIndexRoute.name,
          initialChildren: children,
        );

  static const String name = 'RegisteredLocalNotificationIndexRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [RepetitionAddPage]
class RepetitionAddRoute extends PageRouteInfo<void> {
  const RepetitionAddRoute({List<PageRouteInfo>? children})
      : super(
          RepetitionAddRoute.name,
          initialChildren: children,
        );

  static const String name = 'RepetitionAddRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [RepetitionUpdatePage]
class RepetitionUpdateRoute extends PageRouteInfo<RepetitionUpdateRouteArgs> {
  RepetitionUpdateRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          RepetitionUpdateRoute.name,
          args: RepetitionUpdateRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'RepetitionUpdateRoute';

  static const PageInfo<RepetitionUpdateRouteArgs> page =
      PageInfo<RepetitionUpdateRouteArgs>(name);
}

class RepetitionUpdateRouteArgs {
  const RepetitionUpdateRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'RepetitionUpdateRouteArgs{key: $key}';
  }
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
    List<PageRouteInfo>? children,
  }) : super(
          RoutineUpdateRoute.name,
          args: RoutineUpdateRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'RoutineUpdateRoute';

  static const PageInfo<RoutineUpdateRouteArgs> page =
      PageInfo<RoutineUpdateRouteArgs>(name);
}

class RoutineUpdateRouteArgs {
  const RoutineUpdateRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'RoutineUpdateRouteArgs{key: $key}';
  }
}
