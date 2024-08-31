import 'package:bookly/features/Splash/presentation/views/pages/SplashScreen.dart';
import 'package:bookly/features/home/Presentation/view/BookDetailsPage.dart';
import 'package:bookly/features/home/Presentation/view/homePage.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

abstract class Approte {
  static GoRouter router = GoRouter(routes: <RouteBase>[
  GoRoute(
    path: '/',
    builder: (BuildContext context, GoRouterState state) {
      return const Splashscreen();
    },
  ),
   GoRoute(
    path: '/m',
    builder: (BuildContext context, GoRouterState state) {
      return const Homepage();
    },
    
  ),GoRoute(
    path: '/det',
    builder: (BuildContext context, GoRouterState state) {
      return const BookDetailsPage();
    },)
]);

}