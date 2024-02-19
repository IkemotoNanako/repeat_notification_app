import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../data/routine.dart';
import '../state/current_routine.dart';

@RoutePage()
class CurrentRoutineRouterPage extends AutoRouter {
  const CurrentRoutineRouterPage({
    super.key,
    @PathParam() required this.routineId,
    this.cache,
  });

  final int routineId;
  final Routine? cache;

  @override
  Widget Function(BuildContext context, Widget content)? get builder =>
      (context, child) {
        return ProviderScope(
          overrides: [
            currentRoutineParamsProvider.overrideWithValue(
              RoutineParams(routineId: routineId, cache: cache),
            ),
          ],
          child: child,
        );
      };
}
