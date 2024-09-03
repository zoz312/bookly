import 'package:bookly/core/widget/customfilure.dart';
import 'package:bookly/features/home/Presentation/manger/Featurd_books_cubit/featurd_book_cubit.dart';
import 'package:bookly/features/home/Presentation/view/Widgets/FeaturdListItem.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeatrueBookslist extends StatelessWidget {
  const FeatrueBookslist({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturdBookCubit, FeaturdBookState>(
      builder: (context, state) {
        if (state is FeaturdBookLoaded) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .32,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 6,
              itemBuilder: (BuildContext context, int index) {
                return featurdListItem(
            image:state.books[index].volumeInfo.imageLinks!.thumbnail
                );
              },
            ),
          );
        } else if (state is FeaturdBookfailure) {
          return customFilure(errormsge: state.errMessage);
        } else {
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
