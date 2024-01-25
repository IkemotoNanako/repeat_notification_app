import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../feature/routine/ui/routine_add_page.dart';
import '../feature/routine/ui/routine_index_page.dart';

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
