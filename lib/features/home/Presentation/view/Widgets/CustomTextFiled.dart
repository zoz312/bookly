import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTextFiled extends StatelessWidget {
  const CustomTextFiled({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(hintText: 'Search',
      suffixIcon: Icon(CupertinoIcons.search),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white,width: 2)
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white,width: 9)
        )
      ),
    );
  }
}