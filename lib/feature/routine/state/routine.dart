import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/data/isar/isar.dart';
import '../data/routine.dart';

part 'routine.g.dart';

extension RoutineX on Routine {
  TimeOfDay get notificationTimeOfDay => TimeOfDay(
        hour: notificationTime ~/ 3600,
        minute: (notificationTime % 3600) ~/ 60,
      );

  /// 最初の通知日時
  DateTime get firstNotificationDtime {
    final now = DateTime.now();
    var dtime = DateTime(
      now.year,
      now.month,
      now.day,
      notificationTimeOfDay.hour,
      notificationTimeOfDay.minute,
    );
    if (dtime.isBefore(now)) {
      // 過去の時間の場合は翌日にする
      dtime = dtime.add(const Duration(days: 1));
    }
    return dtime;
  }

  /// 繰り返し通知の日時
  List<DateTime> get repetitionNotificationDtimes {
    final firstNotificationDtime = this.firstNotificationDtime;
    return repetitionWeeks.map((e) {
      var dtime = firstNotificationDtime;
      // 曜日が一致するまで進める
      while (dtime.weekday != e.index + 1) {
        dtime = dtime.add(const Duration(days: 1));
      }
      return dtime;
    }).toList();
  }

  String get title {
    if (repetitionWeeks.isEmpty) {
      return label;
    }
    return '$label、 ${repetitionWeeks.title}';
  }
}

extension RepetitionWeekX on RepetitionWeek {
  String get label => switch (this) {
        RepetitionWeek.monday => '毎月曜日',
        RepetitionWeek.tuesday => '毎火曜日',
        RepetitionWeek.wednesday => '毎水曜日',
        RepetitionWeek.thursday => '毎木曜日',
        RepetitionWeek.friday => '毎金曜日',
        RepetitionWeek.saturday => '毎土曜日',
        RepetitionWeek.sunday => '毎日曜日',
      };

  String get shortLabel => switch (this) {
        RepetitionWeek.monday => '月',
        RepetitionWeek.tuesday => '火',
        RepetitionWeek.wednesday => '水',
        RepetitionWeek.thursday => '木',
        RepetitionWeek.friday => '金',
        RepetitionWeek.saturday => '土',
        RepetitionWeek.sunday => '日',
      };
}

extension RepetitionWeeksX on List<RepetitionWeek> {
  String get title {
    if (isEmpty) {
      return 'しない';
    }
    if (length == RepetitionWeek.values.length) {
      return '毎日';
    }
    if (length == 1) {
      return first.label;
    }
    return map((e) => e.shortLabel).join(' ');
  }
}

@riverpod
Stream<List<Routine>> routines(RoutinesRef ref) {
  final isar = ref.watch(isarProvider);

  // 本来は無限スクロール対応などして部分取得したほうがパフォーマンス的に望ましいが
  // 現状は全件取得して表示している。
  // ORDER BY createdAt DESC
  return isar.routines
      .where()
      .sortByCreatedAtDesc()
      .watch(fireImmediately: true);
}
