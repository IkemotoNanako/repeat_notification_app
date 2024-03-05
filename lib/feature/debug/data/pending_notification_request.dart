import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/data/local_notifications/local_notifications.dart';

part 'pending_notification_request.g.dart';

@riverpod
FutureOr<List<PendingNotificationRequest>> pendingNotificationRequests(
  PendingNotificationRequestsRef ref,
) async {
  return ref
      .read(localNotificationsPluginProvider)
      .pendingNotificationRequests();
}
