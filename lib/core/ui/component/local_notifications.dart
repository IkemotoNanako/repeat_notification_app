import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../util/logger.dart';
import '../../data/local_notifications/local_notifications.dart';

class LocalNotifications extends ConsumerStatefulWidget {
  const LocalNotifications({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  ConsumerState<LocalNotifications> createState() => _LocalNotificationsState();
}

class _LocalNotificationsState extends ConsumerState<LocalNotifications> {
  @override
  void initState() {
    super.initState();
    final plugin = ref.read(localNotificationsPluginProvider);
    unawaited(plugin.requestPermission());
    unawaited(
      plugin.initialize(
        InitializationSettings(
          android: const AndroidInitializationSettings(
            '@mipmap/ic_launcher',
          ),
          iOS: DarwinInitializationSettings(
            onDidReceiveLocalNotification: _onDidReceiveLocalNotification,
          ),
        ),
        onDidReceiveNotificationResponse: _onDidReceiveNotificationResponse,
      ),
    );
  }

  Future<void> _onDidReceiveLocalNotification(
    int id,
    String? title,
    String? body,
    String? payload,
  ) async {
    await showDialog<void>(
      context: context,
      builder: (BuildContext context) => CupertinoAlertDialog(
        title: Text(title ?? ''),
        content: Text(body ?? ''),
        actions: [
          CupertinoDialogAction(
            isDefaultAction: true,
            child: const Text('Ok'),
            onPressed: () async {
              Navigator.of(context, rootNavigator: true).pop();
            },
          ),
        ],
      ),
    );
  }

  /// ローカル通知をタップしたときに呼ばれる
  ///
  /// アプリ起動中のみ呼ばれる。アプリがキルされている場合は呼ばれない。
  Future<void> _onDidReceiveNotificationResponse(
    NotificationResponse notificationResponse,
  ) async {
    logger.i('notification payload = ${notificationResponse.payload}');
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}
