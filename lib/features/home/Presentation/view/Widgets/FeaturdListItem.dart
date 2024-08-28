import 'package:flutter/material.dart';

class featurdListItem extends StatelessWidget {
  const featurdListItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
     // margin: EdgeInsets.symmetric(vertical: 20),
                 width: MediaQuery.of(context).size.height*.22,
                 height: MediaQuery.of(context).size.height*.32,
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(10),
                   image: DecorationImage(
                     image: AssetImage('assets/images/test_image.png'),
                     fit: BoxFit.fill,
                   ),
                 ),
         //        child: null /* add child content here */,
               );
  }
}

