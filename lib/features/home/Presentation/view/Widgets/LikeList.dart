import 'package:flutter/material.dart';

class likelist extends StatelessWidget {
  const likelist({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .177,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 8,
        itemBuilder: (BuildContext context, int index) {
          return Container(
                    width: MediaQuery.of(context).size.width * .25,
                    height: MediaQuery.of(context).size.height * .19,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage('assets/images/test_image.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                    //        child: null /* add child content here */,
                  );
        },
      ),
    );
  }
}

