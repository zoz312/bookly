part of 'featurd_book_cubit.dart';

sealed class FeaturdBookState extends Equatable {
  const FeaturdBookState();

  @override
  List<Object> get props => [];
}

final class FeaturdBookInitial extends FeaturdBookState {}
final class FeaturdBookLoding extends FeaturdBookState {}
final class FeaturdBookLoaded extends FeaturdBookState {
   final List<BookModel> books;

  const FeaturdBookLoaded(this.books);
}
final class FeaturdBookfailure extends FeaturdBookState {
    final String errMessage;

  const FeaturdBookfailure(this.errMessage);
}

