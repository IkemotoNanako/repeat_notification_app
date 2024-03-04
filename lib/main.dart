import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_timezone/flutter_timezone.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:timezone/data/latest_all.dart' as tz;
import 'package:timezone/timezone.dart' as tz;

import 'app.dart';
import 'core/data/isar/isar.dart';
import 'core/data/local_notifications/local_notifications.dart';
import 'feature/routine/data/routine.dart';
import 'util/logger.dart';
import 'util/provider_logger.dart';

const _logPrefix = '[MAIN]';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // isRelease
  logger.i('$_logPrefix isRelease = $kReleaseMode');

  // Isar
  final dir = await getApplicationDocumentsDirectory();
  final isar = await Isar.open(
    [RoutineSchema],
    directory: dir.path,
  );

  // TimeZone for local notifications
  tz.initializeTimeZones();
  final timeZoneName = await FlutterTimezone.getLocalTimezone();
  logger.i('$_logPrefix timeZoneName = $timeZoneName');
  tz.setLocalLocation(tz.getLocation(timeZoneName));

  // Local notifications plugin
  final localNotificationsPlugin = FlutterLocalNotificationsPlugin();

  // アプリがキルされた状態でローカル通知をタップしたときはペイロードがある
  final details =
      await localNotificationsPlugin.getNotificationAppLaunchDetails();
  logger.i(
    '$_logPrefix notification payload = '
    '${details?.notificationResponse?.payload}',
  );

  logger.i('$_logPrefix runApp() START');

  runApp(
    ProviderScope(
      overrides: [
        isarProvider.overrideWithValue(isar),
        localNotificationsPluginProvider
            .overrideWithValue(localNotificationsPlugin),
      ],
      observers: [
        ProviderLogger(),
      ],
      child: const App(),
    ),
  );
}
