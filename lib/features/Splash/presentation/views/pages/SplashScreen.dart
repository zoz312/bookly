import 'package:bookly/features/Splash/presentation/views/widgets/bodySplash.dart';
import 'package:flutter/material.dart';

class Splashscreen extends StatelessWidget {
  const Splashscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:const BodySplash(),
    );
  }
}

