import 'package:bookly/features/home/data/Models/book_model/book_model.dart';
import 'package:flutter/material.dart';

class buttonAction extends StatelessWidget {
  const buttonAction({
    super.key,
    required this.ontap, required this.bookModel,
  });
  final BookModel bookModel;
  final void Function() ontap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomLeft: Radius.circular(20)),
            ),
            child: Center(
                child: Text(
              'Free',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            )),
            width: MediaQuery.of(context).size.width * .42,
            height: MediaQuery.of(context).size.height * .06,
          ),
          Container(
            decoration: BoxDecoration(
              color: Color(0xffEf8262),
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  bottomRight: Radius.circular(20)),
            ),
            child: Center(
                child: Text(
              'free preview',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            )),
            width: MediaQuery.of(context).size.width * .42,
            height: MediaQuery.of(context).size.height * .06,
          )
        ],
      ),
    );
  }
}
