// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

part of 'router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const HomePage());
    },
    LiquidSwipeRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const LiquidSwipePage());
    },
    SocialProfileRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const SocialProfilePage());
    },
    CarouselSliderRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const CarouselSliderPage());
    },
    LoadingAnimationRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const LoadingAnimationPage());
    },
    StreetBeerRoute.name: (routeData) {
      return CustomPage<dynamic>(
          routeData: routeData,
          child: const StreetBeerPage(),
          transitionsBuilder: TransitionsBuilders.slideLeft,
          opaque: true,
          barrierDismissible: false);
    },
    StreetBeerDetailRoute.name: (routeData) {
      final args = routeData.argsAs<StreetBeerDetailRouteArgs>();
      return CustomPage<dynamic>(
          routeData: routeData,
          child: StreetBeerDetailPage(key: args.key, image: args.image),
          transitionsBuilder: TransitionsBuilders.slideRight,
          opaque: true,
          barrierDismissible: false);
    }
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(HomeRoute.name, path: '/'),
        RouteConfig(LiquidSwipeRoute.name, path: '/liquid-swipe-page'),
        RouteConfig(SocialProfileRoute.name, path: '/social-profile-page'),
        RouteConfig(CarouselSliderRoute.name, path: '/carousel-slider-page'),
        RouteConfig(LoadingAnimationRoute.name,
            path: '/loading-animation-page'),
        RouteConfig(StreetBeerRoute.name, path: '/street-beer-page'),
        RouteConfig(StreetBeerDetailRoute.name,
            path: '/street-beer-detail-page')
      ];
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: '/');

  static const String name = 'HomeRoute';
}

/// generated route for
/// [LiquidSwipePage]
class LiquidSwipeRoute extends PageRouteInfo<void> {
  const LiquidSwipeRoute()
      : super(LiquidSwipeRoute.name, path: '/liquid-swipe-page');

  static const String name = 'LiquidSwipeRoute';
}

/// generated route for
/// [SocialProfilePage]
class SocialProfileRoute extends PageRouteInfo<void> {
  const SocialProfileRoute()
      : super(SocialProfileRoute.name, path: '/social-profile-page');

  static const String name = 'SocialProfileRoute';
}

/// generated route for
/// [CarouselSliderPage]
class CarouselSliderRoute extends PageRouteInfo<void> {
  const CarouselSliderRoute()
      : super(CarouselSliderRoute.name, path: '/carousel-slider-page');

  static const String name = 'CarouselSliderRoute';
}

/// generated route for
/// [LoadingAnimationPage]
class LoadingAnimationRoute extends PageRouteInfo<void> {
  const LoadingAnimationRoute()
      : super(LoadingAnimationRoute.name, path: '/loading-animation-page');

  static const String name = 'LoadingAnimationRoute';
}

/// generated route for
/// [StreetBeerPage]
class StreetBeerRoute extends PageRouteInfo<void> {
  const StreetBeerRoute()
      : super(StreetBeerRoute.name, path: '/street-beer-page');

  static const String name = 'StreetBeerRoute';
}

/// generated route for
/// [StreetBeerDetailPage]
class StreetBeerDetailRoute extends PageRouteInfo<StreetBeerDetailRouteArgs> {
  StreetBeerDetailRoute({Key? key, required String image})
      : super(StreetBeerDetailRoute.name,
            path: '/street-beer-detail-page',
            args: StreetBeerDetailRouteArgs(key: key, image: image));

  static const String name = 'StreetBeerDetailRoute';
}

class StreetBeerDetailRouteArgs {
  const StreetBeerDetailRouteArgs({this.key, required this.image});

  final Key? key;

  final String image;

  @override
  String toString() {
    return 'StreetBeerDetailRouteArgs{key: $key, image: $image}';
  }
}
