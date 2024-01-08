import 'package:apps_with_flutter/src/features/home/views/home_screen.dart';
import 'package:apps_with_flutter/src/features/plants_app/views/plants_app_screen.dart';
import 'package:apps_with_flutter/src/features/wallet_app/views/wallet_app_screen.dart';
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

  static const walletApp = {
    "name": 'Wallet App',
    "path": '/wallet-app',
  };

  static const travelApp = {
    "name": 'Travel App',
    "path": '/travel-app',
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
    name: Routes.walletApp['name'],
    path: Routes.walletApp['path']!,
    builder: (context, state) => const WalletAppScreen(),
  ),
];

final routesProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: Routes.home['path'],
    routes: appsWithFlutterRoutes,
  );
});
