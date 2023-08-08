import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:transler/translate/features/translate/data/repositories/translate_repository.dart';

part 'translate_state.dart';

class TranslateCubit extends Cubit<TranslateState> {
  TranslateCubit() : super(TranslateInitial());
  final repo = TranslateRepository();

  Future<void> translate(
    String text,
  ) async {
    emit(TranslateLoading());
    try {
      final response = repo.translate(
        text,
      );
      emit(TranslateLoaded(translatedText: response));
    } catch (e) {
      emit(TranslateError(message: e.toString()));
    }
  }
}
