part of 'basic_form_bloc.dart';

@immutable
sealed class BasicFormEvent {}

class BasicFormSubmittedEvent extends BasicFormEvent {}

class EmailChanged extends BasicFormEvent {
  final String email;
  EmailChanged({required this.email});
}

class PasswordChanged extends BasicFormEvent {
  final String password;
  PasswordChanged({required this.password});
}
