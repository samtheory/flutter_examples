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
    }
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(HomeRoute.name, path: '/'),
        RouteConfig(LiquidSwipeRoute.name, path: '/liquid-swipe-page'),
        RouteConfig(SocialProfileRoute.name, path: '/social-profile-page'),
        RouteConfig(CarouselSliderRoute.name, path: '/carousel-slider-page'),
        RouteConfig(LoadingAnimationRoute.name, path: '/loading-animation-page')
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
