part of 'basic_form_bloc.dart';

@immutable
sealed class BasicFormState {}

final class BasicFormInitial extends BasicFormState {}

class BasicFormBuildState extends BasicFormState {}

class BasicFormActionState extends BasicFormState {}

class BasicFormSubmittedActionState extends BasicFormActionState {
  final String email;
  final String password;

  BasicFormSubmittedActionState({required this.email, required this.password});
}
