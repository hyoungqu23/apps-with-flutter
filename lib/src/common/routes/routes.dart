import 'package:apps_with_flutter/src/features/home/views/home_screen.dart';
import 'package:apps_with_flutter/src/features/plants_app/views/plants_app_screen.dart';
import 'package:apps_with_flutter/src/features/stock_app/views/stock_app_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

@immutable
class Routes {
  static const home = {
    "name": 'Home',
    "path": '/',
  };

  static const plantApp = {
    "name": 'Plant App',
    "path": '/plant-app',
  };

  static const stockApp = {
    "name": 'Stock App',
    "path": '/stock-app',
  };
}

final appsWithFlutterRoutes = <RouteBase>[
  GoRoute(
    name: Routes.home['name'],
    path: Routes.home['path']!,
    builder: (context, state) => const HomeScreen(),
  ),
  GoRoute(
    name: Routes.plantApp['name'],
    path: Routes.plantApp['path']!,
    builder: (context, state) => const PlantAppScreen(),
  ),
  GoRoute(
    name: Routes.stockApp['name'],
    path: Routes.stockApp['path']!,
    builder: (context, state) => const StockAppScreen(),
  ),
];

final routesProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: Routes.home['path'],
    routes: appsWithFlutterRoutes,
  );
});
