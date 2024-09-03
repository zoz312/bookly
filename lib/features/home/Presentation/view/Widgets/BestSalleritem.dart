import 'package:bookly/features/home/Presentation/view/Widgets/RetaBestSeller.dart';
import 'package:bookly/features/home/data/Models/book_model/book_model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BestSalleritem extends StatelessWidget {
  const BestSalleritem({
    super.key,
    required this.imageurl,
    required this.title,
    required this.erther,
    required this.price, required this.bookModel,
  });
  final String imageurl;
  final String title;
  final String erther;
  final String price;
 final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        GoRouter.of(context).push('/det');
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 10),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Container(
                width: MediaQuery.of(context).size.width * .2,
                height: MediaQuery.of(context).size.height * .17,
                child: CachedNetworkImage(
                  fit: BoxFit.fill,
                  imageUrl: imageurl,
                  errorWidget: (context, url, error) => Icon(Icons.error),
                ),
              ),
            ),
            SizedBox(
              width: 30,
            ),
            Container(
              height: 150,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                      width: MediaQuery.of(context).size.width * .50,
                      child: Text(
                        title,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                        overflow: TextOverflow.clip,
                        maxLines: 2,
                        softWrap: true,
                      )),
                  const SizedBox(
                    height: 3,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .4,
                    child: Text(erther,
                        maxLines: 1,
                        overflow: TextOverflow.clip,
                        style: TextStyle(
                            fontSize: 18, color: Colors.white.withOpacity(.5))),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("${price} ",
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.bold)),
                      SizedBox(
                        width: 25,
                      ),
                      RetaBestSeller(
                        rate: bookModel.volumeInfo.averageRating.toString(),
                        count: bookModel.volumeInfo.ratingsCount.toString(),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
