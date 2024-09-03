import 'package:bookly/features/home/Presentation/view/Widgets/FeaturdListItem.dart';
import 'package:bookly/features/home/Presentation/view/Widgets/RetaBestSeller.dart';
import 'package:bookly/features/home/Presentation/view/Widgets/buttonAction.dart';
import 'package:flutter/material.dart';

class SectiondetaiesBook  extends StatelessWidget {
  const SectiondetaiesBook({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
          const SizedBox(
                  height: 30,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width*.43,
                    height: MediaQuery.of(context).size.height*.32,
                  child: featurdListItem(image: 'https://tse2.mm.bing.net/th?id=OIP.WXSgEEDN0tIXutWNxql1xQHaHC&pid=Api&P=0&h=220',)),
            SizedBox(
                  height: 30,
                ),
                const SizedBox(
                    //   width: MediaQuery.of(context).size.width * .5,
                    child: Text(
                  "the jomange book ",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
                  overflow: TextOverflow.ellipsis,
                  //    maxLines: 2,
                  softWrap: true,
                )),
                const SizedBox(
                  height: 3,
                ),
                Text("j.k.Rowling ",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.italic,
                        fontSize: 24,
                        color: Colors.white.withOpacity(.7))),
                const SizedBox(
                  height: 18,
                ),
                const RetaBestSeller(rate: '3,8',count: '7',),
                const SizedBox(
                  height: 37,
                ),
                const buttonAction(),
      ],
    );
  }
}
