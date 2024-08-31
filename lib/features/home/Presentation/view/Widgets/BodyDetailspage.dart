import 'package:bookly/features/home/Presentation/view/Widgets/CustumBookDetailsappbar.dart';
import 'package:bookly/features/home/Presentation/view/Widgets/FeaturdListItem.dart';
import 'package:bookly/features/home/Presentation/view/Widgets/LikeList.dart';
import 'package:bookly/features/home/Presentation/view/Widgets/RetaBestSeller.dart';
import 'package:bookly/features/home/Presentation/view/Widgets/SectionSimlerBooks.dart';
import 'package:bookly/features/home/Presentation/view/Widgets/SectiondetaiesBook.dart';
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
              const SectiondetaiesBook(),
                Expanded(
                  child: const SizedBox(
                    height: 40,
                  ),
                ),
            SectionsimlerBooks()
              ],
            ),
          ),
        )
      ],
    );
  }
}

