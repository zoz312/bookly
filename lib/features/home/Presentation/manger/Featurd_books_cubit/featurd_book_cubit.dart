import 'package:bloc/bloc.dart';
import 'package:bookly/features/home/data/Models/book_model/book_model.dart';
import 'package:bookly/features/home/data/repos/homeRepo.dart';
import 'package:equatable/equatable.dart';

part 'featurd_book_state.dart';

class FeaturdBookCubit extends Cubit<FeaturdBookState> {
  FeaturdBookCubit(this.repoHome) : super(FeaturdBookInitial());
  final RepoHome repoHome;

  Future<void> Fatchfeaturdbooks() async {
    emit(FeaturdBookLoding());
    var result = await repoHome.fatchfeaturdaBooks();
    result.fold((failure) {
      emit(FeaturdBookfailure(failure.errormassage));
    }, (books) {
      emit(FeaturdBookLoaded(books));
    });
  }
}
