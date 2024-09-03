//import 'package:bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly/core/Servicelecator.dart';
import 'package:bookly/features/Splash/presentation/views/pages/SplashScreen.dart';
import 'package:bookly/features/home/Presentation/manger/smila_books_cubit/smila_books_cubit.dart';
import 'package:bookly/features/home/Presentation/view/BookDetailsPage.dart';
import 'package:bookly/features/home/Presentation/view/Searchview.dart';
import 'package:bookly/features/home/Presentation/view/homePage.dart';
import 'package:bookly/features/home/data/Models/book_model/book_model.dart';

import 'package:bookly/features/home/data/repos/homerepoimpl.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class Approte {
  static var router = GoRouter(routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (context,  state) {
        return const Splashscreen();
      },
    ),
    GoRoute(
      path: '/m',
      builder: ( context,  state) {
        return const Homepage();
      },
    ),
    GoRoute(
      path: '/det',
      builder: ( context,  state) {
        return BlocProvider(
          create: (context) => SmilaBooksCubit(getIt.get<HomeRepoImpl>()),
          child:  BookDetailsPage(bookModel:state.extra as BookModel  ),
        );
      },
    ),
    GoRoute(
      path: '/seach',
      builder: (BuildContext context, GoRouterState state) {
        return const Searchview();
      },
    )
  ]);
}
