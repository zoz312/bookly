import 'package:bookly/features/home/Presentation/view/Widgets/LikeList.dart';
import 'package:flutter/material.dart';

class SectionsimlerBooks extends StatelessWidget {
  const SectionsimlerBooks({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         Text(
           "You can also like",
           style:
               TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
           textAlign: TextAlign.start,
         ),
                const SizedBox(
                  height: 15,
                ),
                const likelist()
    ],);
  }
}