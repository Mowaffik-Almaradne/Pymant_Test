import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:new_experinse/features/auth/presentation/pages/login_page.dart';
import 'package:new_experinse/features/home/presentation/pages/home_page.dart';
import 'package:new_experinse/features/intro/presentation/pages/splash_page.dart';
class AppRouter {
  static GoRouter router = GoRouter(
    debugLogDiagnostics: true,
    routes: <RouteBase>[
      GoRoute(
        path: RouteNamedScreens.introScreenNameRoute,
        builder: (BuildContext context, GoRouterState state) {
          return const SplashPage();
        },
      ),
      GoRoute(
        path: RouteNamedScreens.loginScreenNameRoute,
        builder: (BuildContext context, GoRouterState state) {
          return const LoginPage();
        },
      ),
      GoRoute(
        path: RouteNamedScreens.homeScreenNameRoute,
        builder: (BuildContext context, GoRouterState state) {
          return const HomePage();
        },
      ),
      
    ],
  );
}

class RouteNamedScreens {
  static const introScreenNameRoute = '/';
  //? Start Auth Feature :
  static const loginScreenNameRoute = '/login-screen';
  //? End Auth Feature :

  //? Strart Home Feature :
  static const homeScreenNameRoute = '/home-screen';
}
