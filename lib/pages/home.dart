import 'package:flutter/material.dart';
import 'package:flutter_examples/Router/router.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:auto_route/auto_route.dart';

class HomePage extends ConsumerWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // context.router.pushNamed('/liquid-swipe-page');
            context.router.push(LiquidSwipeRoute());
            // context.navigateTo(AboutRoute());
          },
          child: const Text('liquid'),
        ),
      ),
    );
  }
}
