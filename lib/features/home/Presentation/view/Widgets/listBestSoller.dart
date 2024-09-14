import 'dart:ffi';

import 'package:bookly/core/widget/customfilure.dart';
import 'package:bookly/features/home/Presentation/manger/newest_books_cubit/newest_books_cubit.dart';
import 'package:bookly/features/home/Presentation/view/Widgets/BestSalleritem.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shimmer/shimmer.dart';

class listBestSoller extends StatelessWidget {
  const listBestSoller({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewsetBooksSuccess) {
          return ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            itemCount: state.books.length,
            itemBuilder: (BuildContext context, int index) {
              return BestSalleritem(
imageurl: state.books[index].volumeInfo.imageLinks!.thumbnail,
title: state.books[index].volumeInfo.title.toString(),
erther: state.books[index].volumeInfo.authors.toString(),
price: state.books[index].saleInfo!.saleability.toString(),
bookModel: state.books[index],
              );
            },
          );
        } else if (state is NewsetBooksFailure) {
          return customFilure(errormsge: state.errMessage);
        } else {
          return ListView.builder(
             shrinkWrap: true,
           physics: const NeverScrollableScrollPhysics(),
                    padding: EdgeInsets.symmetric(vertical: 10),
             itemCount: 4,
             itemBuilder: (BuildContext context, int index) {
               return   Shimmer.fromColors(child: 
           Row(
             children: [
                ClipRRect(
             borderRadius: BorderRadius.circular(16),
             child: Container(
              margin: EdgeInsets.symmetric(vertical: 10),
               width: MediaQuery.of(context).size.width * .2,
               height: MediaQuery.of(context).size.height * .17,
              color: Colors.grey,
             ),),
            SizedBox( width: 10,) ,
             Container(
               color: Colors.grey,
               height:MediaQuery.of(context).size.height * .17 ,
             width:  MediaQuery.of(context).size.width * .6,
             )
             ],
           )
           
           , baseColor:  Colors.grey, highlightColor:  Colors.white,);
                   
           
          },
           );
        }
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