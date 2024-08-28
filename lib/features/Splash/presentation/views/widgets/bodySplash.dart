import 'package:bookly/core/asstes.dart';
import 'package:flutter/material.dart';

class BodySplash extends StatefulWidget {
  const BodySplash({
    super.key,
  });

  @override
  State<BodySplash> createState() => _BodySplashState();
}

class _BodySplashState extends State<BodySplash>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidinganmaition;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    slidinganmaition = Tween<Offset>(begin: Offset(0, 6), end: Offset(0, 0))
        .animate(animationController);
    animationController.forward();
    slidinganmaition.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(AssetsData.logo),
        SlideTransition(
          position: slidinganmaition,
          child: const Text(
            "Read free books",
            style: TextStyle(fontSize: 20),
            textAlign: TextAlign.center,
          ),
        )
      ],
    );
  }
}
