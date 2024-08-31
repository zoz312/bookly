import 'package:bookly/features/home/Presentation/view/Widgets/CustumBookDetailsappbar.dart';
import 'package:bookly/features/home/Presentation/view/Widgets/FeaturdListItem.dart';
import 'package:bookly/features/home/Presentation/view/Widgets/LikeList.dart';
import 'package:bookly/features/home/Presentation/view/Widgets/RetaBestSeller.dart';
import 'package:bookly/features/home/Presentation/view/Widgets/buttonAction.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

class BodydetailsPage extends StatelessWidget {
  const BodydetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverFillRemaining(
          child: Padding(
            padding: const EdgeInsets.only(top: 30.0, left: 30, right: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const CustumBookDetailsappbar(),
                const SizedBox(
                  height: 30,
                ),
                const featurdListItem(),
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
                const RetaBestSeller(),
                const SizedBox(
                  height: 37,
                ),
                const buttonAction(),
                Expanded(
                  child: const SizedBox(
                    height: 40,
                  ),
                ),
                const Row(
                  children: [
                    Text(
                      "You can also like",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                      textAlign: TextAlign.start,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                const likelist()
              ],
            ),
          ),
        )
      ],
    );
  }
}
