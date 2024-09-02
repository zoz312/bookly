import 'package:bookly/core/failrue/failure.dart';
import 'package:bookly/features/home/data/Models/book_model/book_model.dart';
import 'package:bookly/features/home/data/repos/homeRepo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpl implements RepoHome {
  @override
  Future<Either<Failrue, List<BookModel>>> fatchBestSellerBooks() {
    // TODO: implement fatchBestSellerBooks
    throw UnimplementedError();
  }

  @override
  Future<List<BookModel>> fatchfeaturdaBooks() {
    // TODO: implement fatchfeaturdaBooks
    throw UnimplementedError();
  }

}