import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'basic_form_event.dart';
part 'basic_form_state.dart';

class BasicFormBloc extends Bloc<BasicFormEvent, BasicFormState> {
  BasicFormBloc() : super(BasicFormInitial()) {
    on<BasicFormEvent>((event, emit) {
      on<BasicFormSubmittedEvent>(basicFormSubmittedEvent);
    });
  }

  FutureOr<void> basicFormSubmittedEvent(
    BasicFormSubmittedEvent event,
    Emitter<BasicFormState> emit,
  ) {
    emit(
      BasicFormSubmittedActionState(
        email: event.email,
        password: event.password,
      ),
      print(event.email);
    );
  }
}
