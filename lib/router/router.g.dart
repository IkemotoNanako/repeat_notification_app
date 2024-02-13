// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $routineIndexRoute,
    ];

RouteBase get $routineIndexRoute => GoRouteData.$route(
      path: '/routine',
      factory: $RoutineIndexRouteExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: 'add',
          factory: $RoutineAddRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: ':routineId/update',
          factory: $RoutineUpdateRouteExtension._fromState,
        ),
      ],
    );

extension $RoutineIndexRouteExtension on RoutineIndexRoute {
  static RoutineIndexRoute _fromState(GoRouterState state) =>
      const RoutineIndexRoute();

  String get location => GoRouteData.$location(
        '/routine',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $RoutineAddRouteExtension on RoutineAddRoute {
  static RoutineAddRoute _fromState(GoRouterState state) =>
      const RoutineAddRoute();

  String get location => GoRouteData.$location(
        '/routine/add',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $RoutineUpdateRouteExtension on RoutineUpdateRoute {
  static RoutineUpdateRoute _fromState(GoRouterState state) =>
      RoutineUpdateRoute(
        routineId: int.parse(state.pathParameters['routineId']!),
        $extra: state.extra as Routine?,
      );

  String get location => GoRouteData.$location(
        '/routine/${Uri.encodeComponent(routineId.toString())}/update',
      );

  void go(BuildContext context) => context.go(location, extra: $extra);

  Future<T?> push<T>(BuildContext context) =>
      context.push<T>(location, extra: $extra);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location, extra: $extra);

  void replace(BuildContext context) =>
      context.replace(location, extra: $extra);
}

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$appRouterHash() => r'973f91c555455210e634544899d0a758d6a4cb79';

/// See also [appRouter].
@ProviderFor(appRouter)
final appRouterProvider = AutoDisposeProvider<GoRouter>.internal(
  appRouter,
  name: r'appRouterProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$appRouterHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef AppRouterRef = AutoDisposeProviderRef<GoRouter>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
