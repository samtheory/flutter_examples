import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_examples/pages/carousel_slider.dart';

import 'package:flutter_examples/pages/home.dart';
import 'package:flutter_examples/pages/liquid_swipe.dart';
import 'package:flutter_examples/pages/loading_animation.dart';
import 'package:flutter_examples/pages/social_profile.dart';
import 'package:flutter_examples/pages/street_beer.dart';
import 'package:flutter_examples/pages/street_beer_detail.dart';

part 'router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: HomePage, initial: true),
    AutoRoute(
      page: LiquidSwipePage,
    ),
    AutoRoute(
      page: SocialProfilePage,
    ),
    AutoRoute(page: CarouselSliderPage),
    AutoRoute(page: LoadingAnimationPage),
    CustomRoute(
        page: StreetBeerPage,
        transitionsBuilder: TransitionsBuilders.slideLeft,
        ),
    CustomRoute(
        page: StreetBeerDetailPage,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade, 
        durationInMilliseconds: 600 ),
  ],
)
class AppRouter extends _$AppRouter {}
