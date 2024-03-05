import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/data/local_notifications/local_notifications.dart';
import '../data/pending_notification_request.dart';

part 'clear_all_local_notification.g.dart';

@riverpod
class ClearAllLocalNotificationUseCase
    extends _$ClearAllLocalNotificationUseCase {
  @override
  FutureOr<void> build() => null;

  Future<void> invoke() async {
    if (state.isLoading) {
      return;
    }
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      await ref.read(localNotificationsPluginProvider).cancelAll();
      ref.invalidate(pendingNotificationRequestsProvider);
    });
  }
}
