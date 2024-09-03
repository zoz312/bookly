import 'package:bookly/constants.dart';
import 'package:bookly/core/ApiSevice.dart';
import 'package:bookly/core/Rote.dart';
import 'package:bookly/features/Splash/presentation/views/pages/SplashScreen.dart';
import 'package:bookly/features/home/data/repos/homerepoimpl.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:google_fonts/google_fonts.dart';

void main() {
 
  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your adpplication.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData.dark().copyWith(
          textTheme:
              GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
          scaffoldBackgroundColor: KPaimaryColor),
      debugShowCheckedModeBanner: false,
      routerConfig: Approte.router,
    );
  }
}
