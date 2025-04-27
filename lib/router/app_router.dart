import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:new_experinse/features/auth/presentation/domain/entities/req/loing_request_entity.dart';
import 'package:new_experinse/features/auth/presentation/pages/login_page.dart';
import 'package:new_experinse/features/home/presentation/pages/home_page.dart';
import 'package:new_experinse/features/intro/presentation/pages/splash_page.dart';
import 'package:new_experinse/features/payment/presentation/pages/payment_card_info_page.dart';
import 'package:new_experinse/features/payment/presentation/pages/type_paymant_page.dart';
import 'package:new_experinse/features/products/presentation/pages/select_product_page.dart';
import 'package:new_experinse/features/profile/presentation/pages/info_profile_customer_page.dart';

class AppRouter {
  static GoRouter router = GoRouter(
    debugLogDiagnostics: true,
    routes: <RouteBase>[
      //! Start Intro Feature
      //? Splash Page :
      GoRoute(
        path: RouteNamedScreens.introScreenNameRoute,
        builder: (BuildContext context, GoRouterState state) {
          return const SplashPage();
        },
      ), //?
      //! End Intro Feature
      //! Start Pymant Feature :
      //? Select Product Page :
      GoRoute(
        path: RouteNamedScreens.selectProductScreenNameRoute,
        builder: (BuildContext context, GoRouterState state) {
          final extra = state.extra as LoingRequestEntity;
          return SelectProductPage(
            data: extra,
          );
        },
      ),
      //?
      //! End Pymant Feature :
      //! Start Auth Feature
      //? Login Page :
      GoRoute(
        path: RouteNamedScreens.loginScreenNameRoute,
        builder: (BuildContext context, GoRouterState state) {
          return const LoginPage();
        },
      ), //?
      //! End Auth Feature
      //! Start Home Feature
      GoRoute(
        path: RouteNamedScreens.homeScreenNameRoute,
        builder: (BuildContext context, GoRouterState state) {
          return const HomePage();
        },
      ),
      //! End Home Feature
      //! Start Profile Feature
      GoRoute(
        path: RouteNamedScreens.infoProfileScreenNameRoute,
        builder: (BuildContext context, GoRouterState state) {
          final extra = state.extra as LoingRequestEntity;

          return InfoProfileCustomerPage(
            entity: extra,
          );
        },
      ),
      //! End Profile Feature
      //! Start Payment Feature
      GoRoute(
        path: RouteNamedScreens.paymentTypeNameRoute,
        builder: (BuildContext context, GoRouterState state) {
          return const TypePaymantPage();
        },
      ),
      GoRoute(
        path: RouteNamedScreens.paymentCardInfoNameRoute,
        builder: (BuildContext context, GoRouterState state) {
          final objCard = state.extra as String;
          return PaymentCardInfoPage(
            nameCard: objCard,
          );
        },
      ),
      //! End Payment Feature
    ],
  );
}

class RouteNamedScreens {
  static const introScreenNameRoute = '/';
  //? Start Product Feature :
  static const selectProductScreenNameRoute = '/select-product-page';
  //? End Product Feature :
  //? Start Auth Feature :
  static const loginScreenNameRoute = '/login-page';
  //? End Auth Feature :
  //? Strart Home Feature :
  static const homeScreenNameRoute = '/home-page';
  //? End Home Feature :
  //? Strart Profile Feature :
  static const infoProfileScreenNameRoute = '/profile-page';
  //? End Profile Feature :
  //? Strart payman Feature :
  static const paymentTypeNameRoute = '/payment-type-page';
  static const paymentCardInfoNameRoute = '/payment-card-info-page';
  //? End payman Feature :
}
