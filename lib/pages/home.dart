import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_examples/Router/router.dart';
import 'package:flutter_examples/pages/street_beer.dart';
import 'package:google_fonts/google_fonts.dart';

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
  PageModel(
      name: 'Street beer',
      image: 'assets/images/cone_1.png',
      route: const StreetBeerRoute()),
  PageModel(
      name: 'Social Profile',
      image: 'assets/images/screenshot/Sc_social-profile.png',
      route: const SocialProfileRoute()),
  PageModel(
      name: 'carousel slider',
      image: 'assets/images/screenshot/SC-carousel-slider.png',
      route: const CarouselSliderRoute()),
  PageModel(
      name: 'liquid swipe',
      image: 'assets/images/screenshot/SC_liquid_swip.png',
      route: const LiquidSwipeRoute()),
  PageModel(
      name: 'Custom Loading Animation',
      image: 'assets/images/screenshot/SC_loading_animation.png',
      route: const LoadingAnimationRoute()),
];

class HomePage extends ConsumerWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[900],
        title:const Text('Flutter Example'),
      ),
      body: SafeArea(
        child: ListView.builder(
            itemCount: pages.length,
            itemBuilder: (_, int i) {
              return GestureDetector(
                onTap: () => context.navigateTo(pages[i].route),
                child: Container(
                  margin:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                  height: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blueGrey[900],
                  ),
                  child: Center(
                    child: Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Stack(
                            fit: StackFit.expand,
                            children: [
                              Image.asset(
                                'assets/images/house-in-tree.jpg',
                                fit: BoxFit.cover,
                              ),
                              ClipRRect(
                                // Clip it cleanly.
                                child: BackdropFilter(
                                  filter:
                                      ImageFilter.blur(sigmaX: 3, sigmaY: 3),
                                  child: Container(
                                    color: Colors.grey[900]!.withOpacity(0.4),
                                    alignment: Alignment.center,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Center(child: Image.asset(pages[i].image)),
                        Positioned(
                            bottom: 0,
                            left: 0,
                            right: 0,
                            child: Container(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 4),
                                color: Colors.white.withOpacity(.8),
                                child: Center(
                                    child: Text(
                                  pages[i].name,
                                  style:
                                      GoogleFonts.sansitaSwashed(fontSize: 16),
                                )))),
                      ],
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
