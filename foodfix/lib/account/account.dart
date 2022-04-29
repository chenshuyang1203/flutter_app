import 'package:flutter/material.dart';

@immutable
class AccountRoute extends StatelessWidget {
  AccountRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My account"),
      ),
      body: Column(children: [
        TextField(
          autofocus: true,
          decoration: InputDecoration(
              labelText: "Username",
              hintText: "Username or email",
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
