import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

part 'basic_form_event.dart';
part 'basic_form_state.dart';

class BasicFormBloc extends Bloc<BasicFormEvent, BasicFormState> {
  BasicFormBloc() : super(BasicFormInitial()) {
    on<BasicFormSubmittedEvent>(basicFormSubmittedEvent);
    on<EmailChanged>(emailChanged);
    on<PasswordChanged>(passwordChanged);
  }

  FutureOr<void> emailChanged(
    EmailChanged event,
    Emitter<BasicFormState> emit,
  ) {
    emit(state.copyWith(email: event.email));
  }

  FutureOr<void> passwordChanged(
    PasswordChanged event,
    Emitter<BasicFormState> emit,
  ) {
    emit(state.copyWith(password: event.password));
  }

  FutureOr<void> basicFormSubmittedEvent(
    BasicFormSubmittedEvent event,
    Emitter<BasicFormState> emit,
  ) {
    debugPrint('${state.email} and ${state.password}');
  }
}
