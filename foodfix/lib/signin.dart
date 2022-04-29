import 'package:flutter/material.dart';

@immutable
class SigninRoute extends StatelessWidget {
  SigninRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Signin"),
      ),
      body: Column(children: [
        TextField(
          autofocus: true,
          decoration: InputDecoration(
              labelText: "Username",
              hintText: "Username or email",
              prefixIcon: Icon(Icons.person)),
        ),
        TextField(
          autofocus: true,
          decoration: InputDecoration(
              labelText: "Password",
              hintText: "password",
              prefixIcon: Icon(Icons.person)),
        ),
        ElevatedButton(
          child: Text("Sign in"),
          onPressed: () {},
        ),
      ]),
    );
  }
}
