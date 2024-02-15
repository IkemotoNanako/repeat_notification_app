import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../feature/routine/data/routine.dart';
import '../feature/routine/state/current_routine.dart';
import '../feature/routine/ui/routine_add_page.dart';
import '../feature/routine/ui/routine_index_page.dart';
import '../feature/routine/ui/routine_update_page.dart';

part 'router.g.dart';

@riverpod
GoRouter appRouter(AppRouterRef ref) {
  final router = GoRouter(
    initialLocation: '/routine',
    routes: $appRoutes,
  );
  ref.onDispose(router.dispose);
  return router;
}

@TypedGoRoute<RoutineIndexRoute>(
  path: '/routine',
  routes: [
    TypedGoRoute<RoutineAddRoute>(
      path: 'add',
    ),
    TypedGoRoute<RoutineUpdateRoute>(
      path: ':routineId/update',
    ),
  ],
)
class RoutineIndexRoute extends GoRouteData {
  const RoutineIndexRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const RoutineIndexPage();
  }
}

class RoutineAddRoute extends GoRouteData {
  const RoutineAddRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const RoutineAddPage();
  }
}

class RoutineUpdateRoute extends GoRouteData {
  const RoutineUpdateRoute({
    required this.routineId,
    this.$extra,
  });

  factory RoutineUpdateRoute.fromRoutine(Routine routine) => RoutineUpdateRoute(
        routineId: routine.id,
        $extra: routine,
      );

  final int routineId;
  final Routine? $extra;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return ProviderScope(
      overrides: [
        currentRoutineParamsProvider.overrideWithValue(
          RoutineParams(routineId: routineId, cache: $extra),
        ),
      ],
      child: const RoutineUpdatePage(),
    );
  }
}
