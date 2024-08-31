import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RetaBestSeller extends StatelessWidget {
  const RetaBestSeller({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Icon(CupertinoIcons.star_fill,color: Colors.yellow,),

           Text(" 4.8", style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
            Text(" (2390) ", style: TextStyle(fontSize: 16,color: Colors.white.withOpacity(.5))),
            
    ],);
  }
}


