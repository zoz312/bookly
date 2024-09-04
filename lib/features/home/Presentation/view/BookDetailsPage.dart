//import 'package:flutter/cupertino.dart';

import 'package:bookly/features/home/Presentation/manger/smila_books_cubit/smila_books_cubit.dart';
import 'package:bookly/features/home/Presentation/view/Widgets/BodyDetailspage.dart';
import 'package:bookly/features/home/data/Models/book_model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookDetailsPage extends StatefulWidget {
  const BookDetailsPage({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  State<BookDetailsPage> createState() => _BookDetailsPageState();
}

class _BookDetailsPageState extends State<BookDetailsPage> {
  @override
  void initState() {
    BlocProvider.of<SmilaBooksCubit>(context).FatchSimilar(cat: widget.bookModel.volumeInfo.categories![0]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: BodydetailsPage(bookModel: widget.bookModel,),
      ),
    );
  }
}
