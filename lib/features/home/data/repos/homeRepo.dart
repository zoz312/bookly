import 'package:bookly/core/failrue/failure.dart';
import 'package:bookly/features/home/data/Models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class RepoHome {
 Future<Either<Failrue,List<BookModel>>> fatchBestSellerBooks();
   Future<Either<Failrue,List<BookModel>>> fatchfeaturdaBooks(); 
    Future<Either<Failrue,List<BookModel>>>  fatchSimlar({required String cat});
}
