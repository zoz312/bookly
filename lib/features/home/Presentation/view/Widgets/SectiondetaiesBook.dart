import 'package:bookly/features/home/Presentation/view/Widgets/FeaturdListItem.dart';
import 'package:bookly/features/home/Presentation/view/Widgets/RetaBestSeller.dart';
import 'package:bookly/features/home/Presentation/view/Widgets/buttonAction.dart';
import 'package:bookly/features/home/data/Models/book_model/book_model.dart';
import 'package:flutter/material.dart';

class SectiondetaiesBook extends StatelessWidget {
  const SectiondetaiesBook({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 30,
        ),
        SizedBox(
            width: MediaQuery.of(context).size.width * .43,
            height: MediaQuery.of(context).size.height * .3,
            child: featurdListItem(
              image:bookModel.volumeInfo.imageLinks!.thumbnail
                )),
        SizedBox(
          height: 30,
        ),
      SizedBox(
            //   width: MediaQuery.of(context).size.width * .5,
            child: Text(
          bookModel.volumeInfo.title.toString(),
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
          overflow: TextOverflow.ellipsis,
          //    maxLines: 2,
          softWrap: true,
        )),
        const SizedBox(
          height: 3,
        ),
        Text(bookModel.volumeInfo.authors.toString(),
        maxLines:1,
            style: TextStyle(
              
                fontWeight: FontWeight.w500,
                fontStyle: FontStyle.italic,
                fontSize: 24,
                color: Colors.white.withOpacity(.7))),
        const SizedBox(
          height: 18,
        ),
         RetaBestSeller(
          rate: bookModel.volumeInfo.averageRating.toString(),
          count: bookModel.volumeInfo.ratingsCount.toString(),
        ),
        const SizedBox(
          height: 37,
        ),
        const buttonAction(),
      ],
    );
  }
}
