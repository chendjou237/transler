// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'translate_cubit.dart';

class TranslateState extends Equatable {
  const TranslateState({
    this.translatedText = '',
  });
  final String translatedText;

  @override
  List<Object> get props => [translatedText];
}

class TranslateInitial extends TranslateState {}

class TranslateLoading extends TranslateState {
  
}

class TranslateLoaded extends TranslateState {
  const TranslateLoaded({required super.translatedText});
  

}

class TranslateError extends TranslateState {
  const TranslateError({required this.message});
  final String message;

  @override
  List<Object> get props => [message];
}
