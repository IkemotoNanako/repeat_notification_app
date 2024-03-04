import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:timezone/timezone.dart' as tz;
import 'package:timezone/timezone.dart';

import '../../../feature/routine/data/routine.dart';
import 'routine.dart';

part 'local_notifications.freezed.dart';

@freezed
class RoutineLocalNotification with _$RoutineLocalNotification {
  const factory RoutineLocalNotification({
    required int routineId,
    required int? week,
    required TZDateTime scheduledDate,
    required DateTimeComponents? dateTimeComponents,
  }) = _RoutineLocalNotification;
  const RoutineLocalNotification._();

  /// 通知ID
  ///
  /// 通知をキャンセルするために使用する。
  /// 例えば、ルーティンIDが52で、月曜日の場合、通知IDは521になる（月〜日＝1〜7）。
  /// 例えば、ルーティンIDが105で、曜日がない場合、通知IDは1050になる。
  int get notificationId => routineId * 10 + (week ?? 0);
}

extension FlutterLocalNotificationsPluginX on FlutterLocalNotificationsPlugin {
  /// ローカル通知を登録する
  ///
  /// 繰り返しがない場合は、1回だけ登録する。
  /// 繰り返しがある場合は、曜日の数だけ登録する。
  Future<void> register(Routine routine) async {
    final notifications = routine.toNotifications();
    for (final notification in notifications) {
      await zonedSchedule(
        notification.notificationId,
        'ルーティン',
        '時間になりました',
        notification.scheduledDate,
        NotificationDetails(
          android: AndroidNotificationDetails(
            'repeat-notification-${notification.notificationId}',
            'repeat-notification',
          ),
        ),
        uiLocalNotificationDateInterpretation:
            UILocalNotificationDateInterpretation.absoluteTime,
        androidScheduleMode: AndroidScheduleMode.exactAllowWhileIdle,
        matchDateTimeComponents: notification.dateTimeComponents,
      );
    }
  }
}

extension on Routine {
  List<RoutineLocalNotification> toNotifications() {
    if (repetitionWeeks.isEmpty) {
      return [
        RoutineLocalNotification(
          routineId: id,
          week: null,
          scheduledDate: tz.TZDateTime.from(firstNotificationDtime, tz.local),
          dateTimeComponents: null,
        ),
      ];
    }
    return repetitionNotificationDtimes.map((dtime) {
      return RoutineLocalNotification(
        routineId: id,
        week: dtime.weekday,
        scheduledDate: tz.TZDateTime.from(dtime, tz.local),
        dateTimeComponents: DateTimeComponents.dayOfWeekAndTime,
      );
    }).toList();
  }
}
