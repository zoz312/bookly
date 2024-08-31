import 'package:bookly/core/asstes.dart';
import 'package:bookly/features/home/Presentation/view/Widgets/BestSalleritem.dart';
import 'package:bookly/features/home/Presentation/view/Widgets/FeatrueBookslist.dart';
import 'package:bookly/features/home/Presentation/view/Widgets/FeaturdListItem.dart';
import 'package:bookly/features/home/Presentation/view/Widgets/appBarHomePage.dart';
import 'package:bookly/features/home/Presentation/view/Widgets/listBestSoller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BodyHomePge extends StatelessWidget {
  const BodyHomePge({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverToBoxAdapter(
          child: CutomAppBar(),
        ),
         SliverToBoxAdapter(
          child: SizedBox(height: 20,),
        ),
          SliverToBoxAdapter(
          child:  FeatrueBookslist(),
        ),
         SliverToBoxAdapter(
          child:   Text("Best Seller", style: TextStyle(fontSize: 21,fontWeight: FontWeight.w600),),
        ),
         SliverToBoxAdapter(
          child: SizedBox(height: 20,),
        ),
         SliverToBoxAdapter(
          child:listBestSoller(),
        ),
          SliverToBoxAdapter(
          child: SizedBox(height: 20,),
        ),
      ],
    );
  }
}

