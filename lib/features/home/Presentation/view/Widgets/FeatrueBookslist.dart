import 'package:bookly/features/home/Presentation/view/Widgets/FeaturdListItem.dart';
import 'package:flutter/material.dart';

class FeatrueBookslist extends StatelessWidget {
  const FeatrueBookslist({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
     height: MediaQuery.of(context).size.height*.32,
       child: ListView.builder(
         scrollDirection: Axis.horizontal,
         itemCount: 6,
         itemBuilder: (BuildContext context, int index) {
           return featurdListItem() ;
         },
       ),
     );
  }
}
