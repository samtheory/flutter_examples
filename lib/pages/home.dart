import 'package:flutter/material.dart';
import 'package:flutter_examples/Router/router.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:auto_route/auto_route.dart';

class PageModel {
  String name;
  String image;
  PageRouteInfo route;
  PageModel({
    required this.name,
    required this.image,
    required this.route,
  });
}

List<PageModel> pages = [
  PageModel(name: 'Social Profile', image: 'assets/images/screenshot/Sc_social-profile.png', route:const SocialProfileRoute()),
  PageModel(name: 'carousel slider', image: 'assets/images/screenshot/SC-carousel-slider.png', route:const CarouselSliderRoute()),
  PageModel(name: 'liquid swipe', image: 'assets/images/screenshot/SC_liquid_swip.png', route:const LiquidSwipeRoute()),
  PageModel(name: 'Custom Loading Animation', image: 'assets/images/screenshot/SC_loading_animation.png', route:const LoadingAnimationRoute()),
];

class HomePage extends ConsumerWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: SafeArea(
        child: ListView.builder(
            itemCount: pages.length,
            itemBuilder: (_, int i) {
              return GestureDetector(
                onTap: () => context.pushRoute(pages[i].route),
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 15),
                  height: 200,
                  color: Colors.cyan,
                  child: Center(
                    child: Text(pages[i].name),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
