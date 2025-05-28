import 'package:flutter/material.dart';

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
              onChanged: (value) => {},
              decoration: InputDecoration(
                border: OutlineInputBorder(borderSide: BorderSide(width: 2.0)),
                hintText: "email",
                labelText: "Email",
              ),
            ),
            SizedBox(height: 20),
            TextField(
              onChanged: (value) => {},
              decoration: InputDecoration(
                border: OutlineInputBorder(borderSide: BorderSide(width: 2.0)),
                hintText: "password",
                labelText: "Password",
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(onPressed: () {}, child: Text("Submit")),
          ],
        ),
      ),
    );
  }
}
