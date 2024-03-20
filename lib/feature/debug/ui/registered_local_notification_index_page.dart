import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:timezone/timezone.dart' as tz;

import '../../../core/ui/component/button_loading.dart';
import '../../../core/ui/component/material.dart';
import '../../../core/ui/component/riverpod.dart';
import '../../routine/state/local_notifications.dart';
import '../state/local_notifications.dart';
import '../use_case/clear_all_local_notification.dart';

@RoutePage()
class RegisteredLocalNotificationIndexPage extends StatelessWidget {
  const RegisteredLocalNotificationIndexPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('登録済み通知一覧'),
        actions: const [
          _ClearAllButton(),
        ],
      ),
      body: const SafeArea(
        child: _Body(),
      ),
    );
  }
}

class _ClearAllButton extends ConsumerWidget {
  const _ClearAllButton();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listenAsync(clearAllLocalNotificationUseCaseProvider);
    final isLoading =
        ref.watch(clearAllLocalNotificationUseCaseProvider).isLoading;
    return IconButton(
      onPressed: isLoading
          ? null
          : () => ref
              .read(clearAllLocalNotificationUseCaseProvider.notifier)
              .invoke(),
      icon: isLoading ? const ButtonLoading() : const Icon(Icons.clear_all),
    );
  }
}

class _Body extends ConsumerWidget {
  const _Body();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncValue = ref.watch(registeredRoutineLocalNotificationsProvider);
    return asyncValue.whenWidget(
      data: (notifications) {
        if (notifications.isEmpty) {
          return const Center(
            child: Text('通知がありません'),
          );
        }
        return ListView.builder(
          itemCount: notifications.length,
          itemBuilder: (context, index) =>
              _ListTile(notification: notifications[index]),
        );
      },
    );
  }
}

class _ListTile extends ConsumerWidget {
  const _ListTile({
    required this.notification,
  });

  final RoutineLocalNotification notification;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final scheduledDtime = notification.scheduledDate.toDateTime();
    return ListTile(
      leading:
          Text('${notification.notificationId}', style: context.titleMedium),
      title: Text(
        '${DateFormat.yMEd('ja').format(scheduledDtime)} '
        '${DateFormat.Hm('ja').format(scheduledDtime)}',
      ),
      subtitle: Text('繰り返し: ${notification.dateTimeComponents?.name}'),
    );
  }
}

extension on tz.TZDateTime {
  DateTime toDateTime() {
    return DateTime.fromMillisecondsSinceEpoch(millisecondsSinceEpoch);
  }
}
