import 'package:bookly/features/home/Presentation/view/Widgets/CustomTextFiled.dart';
import 'package:bookly/features/home/Presentation/view/Widgets/listBestSoller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SeachViewBody extends StatelessWidget {
  const SeachViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         const SizedBox(height: 9,),
          CustomTextFiled(),
            const SizedBox(height: 16,),
          Text("Search Result",
          style: TextStyle(fontSize: 18),
          ),
            const SizedBox(height: 16,),
            Expanded(child: listBestSoller())
        ],
      ),
    );
  }
}

