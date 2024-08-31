import 'package:bookly/features/home/Presentation/view/Widgets/RetaBestSeller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BestSalleritem extends StatelessWidget {
  const BestSalleritem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(children: [
       Container(
    
                 width: MediaQuery.of(context).size.height*.12,
                 height: MediaQuery.of(context).size.height*.2,
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(10),
                   image: DecorationImage(
                     image: AssetImage('assets/images/test_image.png'),
                     fit: BoxFit.fill,
                   ),
                 ),
         //        child: null /* add child content here */,
               ),
               SizedBox(width: 30,),
               Container(
                 height: 150,
                 child: Column(
                  
                  crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                    SizedBox(width: MediaQuery.of(context).size.width*.5,
                      child: Text("Harry potter and the Goblet of fire ",style: TextStyle(fontSize: 20,fontWeight:  FontWeight.w600),overflow: TextOverflow.ellipsis,maxLines:2 ,softWrap: true,))
        ,const SizedBox(height: 3,)   ,       
         Text("j.k.Rowling ", style: TextStyle(fontSize: 18,color: Colors.white.withOpacity(.5))),
           
           const SizedBox(height: 3,)   ,   Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("19.99€", style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                SizedBox(width: 25,),
          RetaBestSeller()
             ],)
                ], ),
               )
    ],);
  }
}

