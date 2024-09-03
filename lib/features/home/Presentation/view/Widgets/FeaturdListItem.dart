import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class featurdListItem extends StatelessWidget {
  const featurdListItem({
    super.key,
    required this.image,
  });
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 15),
      child: ClipRRect(
        
        borderRadius: BorderRadius.circular(16),
        child: AspectRatio(
          aspectRatio: 2.6 / 4,
          child: CachedNetworkImage(
            fit: BoxFit.fill
            ,imageUrl: image,
            errorWidget:(context, url, error) =>  Icon(Icons.error),
            ),
        ),
      ),
    );
  }
}
