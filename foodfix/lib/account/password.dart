import 'package:flutter/material.dart';

@immutable
class PasswordRoute extends StatelessWidget {
  PasswordRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Change my password"),
      ),
      body: Column(children: [
        TextField(
          autofocus: true,
          decoration: InputDecoration(
              labelText: "Password",
              hintText: "password",
              prefixIcon: Icon(Icons.person)),
        ),
        ElevatedButton(
          child: Text("Save"),
          onPressed: () {},
        ),
      ]),
    );
  }
}
