import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'package:flutter_examples/pages/home.dart';
import 'package:flutter_examples/pages/liquid_swipe.dart';
import 'package:flutter_examples/pages/social_profile.dart';

part 'router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: HomePage, initial: true),
    AutoRoute(page: LiquidSwipePage),
    AutoRoute(page: SocialProfilePage),
  ],
)
class AppRouter extends _$AppRouter {}
