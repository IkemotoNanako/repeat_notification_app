import 'package:collection/collection.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/data/isar/isar.dart';
import '../../routine/data/routine.dart';
import '../../routine/state/local_notifications.dart';
import '../data/pending_notification_request.dart';

part 'local_notifications.g.dart';

/// 端末に登録済みの通知要求の一覧を取得して、[RoutineLocalNotification] に変換して返す。
@riverpod
FutureOr<List<RoutineLocalNotification>> registeredRoutineLocalNotifications(
  RegisteredRoutineLocalNotificationsRef ref,
) async {
  final pendingNotificationRequests =
      await ref.watch(pendingNotificationRequestsProvider.future);
  final allRoutineIds = pendingNotificationRequests
      .map((e) => RoutineLocalNotification.extractRoutineId(e.id))
      .toSet();
  final isar = ref.watch(isarProvider);
  final allRoutines = await Future.wait(
    allRoutineIds.map((id) async {
      return isar.routines.get(id);
    }),
  );
  final allLocalNotifications =
      allRoutines.whereType<Routine>().expand((routine) {
    return routine.toNotifications();
  }).toList();
  return allLocalNotifications.where((localNotification) {
    return pendingNotificationRequests.firstWhereOrNull(
          (request) => request.id == localNotification.notificationId,
        ) !=
        null;
  }).toList();
}
