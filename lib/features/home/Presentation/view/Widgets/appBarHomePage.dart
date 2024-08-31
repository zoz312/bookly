import 'package:bookly/core/asstes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CutomAppBar extends StatelessWidget {
  const CutomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(height: 24, child: Image.asset(AssetsData.logo)),
        IconButton(
            onPressed: () {
              GoRouter.of(context).push('/seach');
            },
            icon: Icon(
              CupertinoIcons.search,
              size: 24,
            ))
      ],
    );
  }
}
