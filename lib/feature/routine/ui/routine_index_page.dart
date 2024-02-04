import 'package:flutter/material.dart';

import 'component/navigate_routine_add_page.dart';

class RoutineIndexPage extends StatelessWidget {
  const RoutineIndexPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ルーティン一覧'),
        actions: const [
          NavigateRoutineAddPageButton(),
        ],
      ),
      body: const SafeArea(
        child: _Body(),
      ),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('ルーティン一覧'),
        ],
      ),
    );
  }
}
