import 'package:bloc/bloc.dart';
import 'package:bookly/features/home/data/Models/book_model/book_model.dart';
import 'package:bookly/features/home/data/repos/homeRepo.dart';
import 'package:equatable/equatable.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.repoHome) : super(NewestBooksInitial());
  final RepoHome repoHome;

  Future<void> fatchnewest() async {
    emit(NewsetBooksLoading());
    var result = await repoHome.fatchBestSellerBooks();
    result.fold((failure) {
      emit(NewsetBooksFailure(failure.errormassage));
    }, (books) {
      emit(NewsetBooksSuccess(books));
    });
  }
}
