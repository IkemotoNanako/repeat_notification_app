import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../feature/debug/ui/debug_page.dart';
import '../feature/debug/ui/debug_router_page.dart';
import '../feature/debug/ui/registered_local_notification_index_page.dart';
import '../feature/root/ui/root_router_page.dart';
import '../feature/routine/data/routine.dart';
import '../feature/routine/ui/current_routine_router_page.dart';
import '../feature/routine/ui/repetition_add_page.dart';
import '../feature/routine/ui/repetition_update_page.dart';
import '../feature/routine/ui/routine_add_page.dart';
import '../feature/routine/ui/routine_index_page.dart';
import '../feature/routine/ui/routine_router_page.dart';
import '../feature/routine/ui/routine_update_page.dart';

part 'router.g.dart';
part 'router.gr.dart';

@riverpod
Raw<AppRouter> appRouter(AppRouterRef ref) {
  return AppRouter(ref);
}

final routerProvider = Provider((ref) {
  return AppRouter(ref);
});

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends _$AppRouter {
  AppRouter(this.ref);

  final Ref ref;

  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          path: '/',
          page: RootRouterRoute.page,
          children: [
            routineRouterRoute,
            debugRouterRoute,
          ],
        ),
      ];

  AutoRoute get routineRouterRoute => AutoRoute(
        initial: true,
        path: 'routine',
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
          AutoRoute(
            path: 'repetition',
            page: RepetitionAddRoute.page,
          ),
          AutoRoute(
            path: ':routineId',
            page: CurrentRoutineRouterRoute.page,
            children: [
              AutoRoute(
                initial: true,
                path: 'update',
                page: RoutineUpdateRoute.page,
              ),
              AutoRoute(
                path: 'update/repetition',
                page: RepetitionUpdateRoute.page,
              ),
            ],
          ),
        ],
      );

  AutoRoute get debugRouterRoute => AutoRoute(
        path: 'debug',
        page: DebugRouterRoute.page,
        children: [
          AutoRoute(
            initial: true,
            page: DebugRoute.page,
          ),
          AutoRoute(
            path: 'registered-local-notification',
            page: RegisteredLocalNotificationIndexRoute.page,
          ),
        ],
      );
}
