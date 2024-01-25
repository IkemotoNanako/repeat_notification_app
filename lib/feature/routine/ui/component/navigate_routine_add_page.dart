import 'package:flutter/material.dart';

import '../../../../router/router.dart';

class NavigateRoutineAddPageButton extends StatelessWidget {
  const NavigateRoutineAddPageButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => const RoutineAddRoute().go(context),
      icon: const Icon(Icons.add),
      tooltip: 'ルーティン登録',
    );
  }
}
