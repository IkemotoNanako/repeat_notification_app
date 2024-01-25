import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../../router/router.dart';

class NavigateRoutineAddPageButton extends StatelessWidget {
  const NavigateRoutineAddPageButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => context.navigateTo(const RoutineAddRoute()),
      icon: const Icon(Icons.add),
      tooltip: 'ルーティン登録',
    );
  }
}
