import 'package:bookly/core/asstes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
            onPressed: () {},
            icon: Icon(
              CupertinoIcons.search,
              size: 24,
            ))
      ],
    );
  }
}
