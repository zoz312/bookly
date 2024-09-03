import 'package:bloc/bloc.dart';
import 'package:bookly/features/home/data/Models/book_model/book_model.dart';
import 'package:equatable/equatable.dart';

part 'featurd_book_state.dart';

class FeaturdBookCubit extends Cubit<FeaturdBookState> {
  FeaturdBookCubit() : super(FeaturdBookInitial());
}
