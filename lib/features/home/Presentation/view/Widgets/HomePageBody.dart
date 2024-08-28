import 'package:bookly/core/asstes.dart';
import 'package:bookly/features/home/Presentation/view/Widgets/appBarHomePage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BodyHomePge  extends StatelessWidget {
  const BodyHomePge ({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CutomAppBar()
      ],
    );
  }
}

