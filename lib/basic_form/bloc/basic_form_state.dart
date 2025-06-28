part of 'basic_form_bloc.dart';

// basic_form_state.dart
class BasicFormState {
  final String email;
  final String password;

  BasicFormState({this.email = '', this.password = ''});

  BasicFormState copyWith({String? email, String? password}) {
    return BasicFormState(
      email: email ?? this.email,
      password: password ?? this.password,
    );
  }
}

final class BasicFormInitial extends BasicFormState {}

class BasicFormBuildState extends BasicFormState {}

class BasicFormActionState extends BasicFormState {}
