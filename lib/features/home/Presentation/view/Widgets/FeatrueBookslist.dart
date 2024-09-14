import 'package:bookly/core/widget/customfilure.dart';
import 'package:bookly/features/home/Presentation/manger/Featurd_books_cubit/featurd_book_cubit.dart';
import 'package:bookly/features/home/Presentation/view/Widgets/FeaturdListItem.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:shimmer/shimmer.dart';

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
                return InkWell(
                  onTap: () {
                    GoRouter.of(context)
                        .push('/det', extra: state.books[index]);
                  },
                  child: featurdListItem(
                      image:
                          state.books[index].volumeInfo.imageLinks!.thumbnail),
                );
              },
            ),
          );
        } else if (state is FeaturdBookfailure) {
          return customFilure(errormsge: state.errMessage);
        } else {
          return SizedBox( height: MediaQuery.of(context).size.height * .32,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 6,
              itemBuilder: (BuildContext context, int index) {
              
                return Shimmer.fromColors(
                    baseColor: Colors.grey,
                    highlightColor: Colors.white,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Colors.grey,
                      ),
                      margin: EdgeInsets.only(right: 15),
                      child: ClipRRect(
                        child: AspectRatio(
                          aspectRatio: 2.6 / 4,
                        ),
                      ),
                    ));
              },
            ),
          );
        }
      },
    );
  }
}
