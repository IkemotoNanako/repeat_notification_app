import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../../router/router.dart';

class NavigateDebugButton extends StatelessWidget {
  const NavigateDebugButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => context.navigateTo(const DebugRouterRoute()),
      icon: const Icon(Icons.build_rounded),
    );
  }
}
