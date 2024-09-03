import 'package:bloc/bloc.dart';
import 'package:bookly/features/home/data/Models/book_model/book_model.dart';
import 'package:bookly/features/home/data/repos/homeRepo.dart';
import 'package:equatable/equatable.dart';

part 'smila_books_state.dart';

class SmilaBooksCubit extends Cubit<SmilaBooksState> {
  SmilaBooksCubit(this.repoHome) : super(SmilaBooksInitial());

  final RepoHome repoHome;

  Future<void> FatchSimilar({required dynamic cat}) async {
    emit(SimilarBooksLoading());
    var result = await repoHome.fatchSimlar(cat: cat);
    result.fold((failure) {
      emit(SimilarBooksFailure(failure.errormassage));
    }, (books) {
      emit(SimilarBooksSuccess(books));
    });
  }
}
