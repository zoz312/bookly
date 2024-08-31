import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustumBookDetailsappbar extends StatelessWidget {
  const CustumBookDetailsappbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
            onPressed: () {
              GoRouter.of(context).pop();
            },
            icon: Icon(CupertinoIcons.xmark)),
              IconButton(
            onPressed: () {
              GoRouter.of(context).pop();
            },
            icon: Icon(CupertinoIcons.cart)),
      ],
    );
  }
}
