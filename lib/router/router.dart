import 'package:auto_route/auto_route.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../feature/routine/ui/routine_add_page.dart';
import '../feature/routine/ui/routine_index_page.dart';
import '../feature/routine/ui/routine_router_page.dart';

part 'router.g.dart';
part 'router.gr.dart';

@riverpod
Raw<AppRouter> appRouter(AppRouterRef ref) {
  final router = AppRouter(ref);
  ref.onDispose(router.dispose);
  return router;
}

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends _$AppRouter {
  AppRouter(this.ref);

  final Ref ref;

  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          path: '/',
          page: RoutineRouterRoute.page,
          children: [
            AutoRoute(
              initial: true,
              page: RoutineIndexRoute.page,
            ),
            AutoRoute(
              path: 'add',
              page: RoutineAddRoute.page,
            ),
          ],
        ),
      ];
}
