//import 'package:flutter/cupertino.dart';

import 'package:bookly/features/home/Presentation/view/Widgets/BodyDetailspage.dart';
import 'package:flutter/material.dart';

class BookDetailsPage extends StatelessWidget {
  const  BookDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: BodydetailsPage(),
      ),
    );
  }
}