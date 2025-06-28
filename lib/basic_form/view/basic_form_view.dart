import 'package:basic_form/basic_form/bloc/basic_form_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BasicForm extends StatelessWidget {
  const BasicForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Form")),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              onChanged: (value) =>
                  context.read<BasicFormBloc>().add(EmailChanged(email: value)),
              decoration: InputDecoration(
                border: OutlineInputBorder(borderSide: BorderSide(width: 2.0)),
                hintText: "email",
                labelText: "Email",
              ),
            ),
            SizedBox(height: 20),
            TextField(
              onChanged: (value) => context.read<BasicFormBloc>().add(
                PasswordChanged(password: value),
              ),
              decoration: InputDecoration(
                border: OutlineInputBorder(borderSide: BorderSide(width: 2.0)),
                hintText: "password",
                labelText: "Password",
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                context.read<BasicFormBloc>().add(BasicFormSubmittedEvent());
              },
              child: Text("Submit"),
            ),
          ],
        ),
      ),
    );
  }
}
