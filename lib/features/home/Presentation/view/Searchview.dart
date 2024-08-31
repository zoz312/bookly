import 'package:bookly/features/home/Presentation/view/Widgets/Searchviewbody.dart';
import 'package:flutter/material.dart';

class Searchview extends StatelessWidget {
  const Searchview({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SeachViewBody(),
      ),
    );
  }
}

