import 'package:bookly/features/home/Presentation/view/Widgets/BestSalleritem.dart';
import 'package:flutter/material.dart';

class listBestSoller extends StatelessWidget {
  const listBestSoller({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
    shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
    padding: EdgeInsets.zero,
    itemCount: 5,
    itemBuilder: (BuildContext context, int index) {
      return BestSalleritem();
    },
            );
  }
}
/**
 *  
      
        
      //  BestSalleritem()
      Expanded(
        child: ListView.builder(
          padding: EdgeInsets.zero,
          itemCount: 5,
          itemBuilder: (BuildContext context, int index) {
            return BestSalleritem();
          },
        ),
      ),
 */