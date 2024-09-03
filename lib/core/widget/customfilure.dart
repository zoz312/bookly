import 'package:flutter/material.dart';

class customFilure extends StatelessWidget {
  const customFilure({super.key, required this.errormsge});
  final String errormsge;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        errormsge,
        style: TextStyle(fontSize: 18),
      ),
    );
  }
}
