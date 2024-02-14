import 'package:isar/isar.dart';

part 'routine.g.dart';

@collection
class Routine {
  Id id = Isar.autoIncrement;

  /// 通知時間
  ///
  /// 00:00:00からの経過秒数
  @Index()
  int notificationTime = 0;

  /// 繰り返す曜日
  @Enumerated(EnumType.name)
  List<RepetitionWeek> repetitionWeeks = [];

  /// サウンド通知の有無
  bool enableSound = true;

  /// プッシュ通知の有無
  bool enablePush = true;

  /// 作成日時
  DateTime createdAt = DateTime.now();

  /// 更新日時
  DateTime updatedAt = DateTime.now();

  /// 有効フラグ
  bool state = true;
}

enum RepetitionWeek {
  monday,
  tuesday,
  wednesday,
  thursday,
  friday,
  saturday,
  sunday,
  ;
}
