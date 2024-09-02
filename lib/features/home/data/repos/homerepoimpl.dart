import 'package:bookly/core/ApiSevice.dart';
import 'package:bookly/core/failrue/failure.dart';
import 'package:bookly/features/home/data/Models/book_model/book_model.dart';
import 'package:bookly/features/home/data/repos/homeRepo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements RepoHome {
  final Apisevice apisevice;

  HomeRepoImpl(this.apisevice);
  @override
  Future<Either<Failrue, List<BookModel>>> fatchBestSellerBooks() async {
    try {
      var data = await apisevice.get(
          urlPath:
              "volumes?Filtering=free-ebooks&Sorting=newest &q=computer science");
      List<BookModel> books = [];
      for (var element in data['items']) {
        books.add(BookModel.fromJson(element));
      }
      return right(books);
    } on Exception catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }
  }

  @override
  Future<Either<Failrue,List<BookModel>>> fatchfeaturdaBooks()async {
    try {
      var data = await apisevice.get(
          urlPath:
              "volumes?Filtering=free-ebooks&q=computer science");
      List<BookModel> books = [];
      for (var element in data['items']) {
        books.add(BookModel.fromJson(element));
      }
      return right(books);
    } on Exception catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }
  }
  }

