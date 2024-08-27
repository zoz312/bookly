import 'package:bookly/core/asstes.dart';
import 'package:flutter/material.dart';

class BodySplash extends StatelessWidget {
  const BodySplash({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
      Image.asset(AssetsData.logo)
    ],);
  }
}