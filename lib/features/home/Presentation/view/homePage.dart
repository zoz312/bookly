import 'package:bookly/core/asstes.dart';
import 'package:bookly/features/home/Presentation/view/Widgets/HomePageBody.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
         body: Padding(
           padding: const EdgeInsets.only(left: 30.0,right: 30, top: 30),
           child: BodyHomePge(),
         ),
      ),
    );
  }
}