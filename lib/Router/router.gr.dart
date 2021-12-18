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
    }
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(HomeRoute.name, path: '/'),
        RouteConfig(LiquidSwipeRoute.name, path: '/liquid-swipe-page')
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
