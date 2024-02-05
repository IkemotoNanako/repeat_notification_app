import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

import 'app.dart';
import 'core/data/isar/isar.dart';
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

  logger.i('$_logPrefix runApp() START');

  runApp(
    ProviderScope(
      overrides: [
        isarProvider.overrideWithValue(isar),
      ],
      observers: [
        ProviderLogger(),
      ],
      child: const App(),
    ),
  );
}
