import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

@immutable
class Routes {
  static const home = {
    "name": 'Home',
    "path": '/',
  };

  static const flutterAwesome = {
    "name": 'Flutter Awesome',
    "path": '/flutter-awesome:appId',
  };
}

final appsWithFlutterRoutes = <RouteBase>[
  GoRoute(
    name: Routes.home['name'],
    path: Routes.home['path']!,
    builder: (context, state) => const Text('HOME'),
  ),
  GoRoute(
    name: Routes.flutterAwesome['name'],
    path: Routes.flutterAwesome['path']!,
    builder: (context, state) => const Text('FLUTTER_AWESOME'),
  ),
];

final routesProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: Routes.home['path'],
    routes: appsWithFlutterRoutes,
  );
});
