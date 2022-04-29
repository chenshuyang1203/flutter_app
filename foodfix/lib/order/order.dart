import 'package:flutter/material.dart';

@immutable
class OrderRoute extends StatefulWidget {
  OrderRoute({Key? key}) : super(key: key);

  @override
  _OrdereState createState() => _OrdereState();
}

class _OrdereState extends State<OrderRoute> {
  var chickenBurger = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Order today"),
      ),
      body: Column(children: [
        CheckboxListTile(
            value: this.chickenBurger,
            title: Text("Burger"),
            subtitle: Text("Chicken burger"),
            secondary: Icon(Icons.headset_mic),
            selected: this.chickenBurger,
            onChanged: (value) {
              setState(() {
                this.chickenBurger = value!;
              });
            }),
        CheckboxListTile(
            value: this.chickenBurger,
            title: Text("Burger"),
            subtitle: Text("Beef burger"),
            secondary: Icon(Icons.headset_mic),
            selected: this.chickenBurger,
            onChanged: (value) {
              setState(() {
                this.chickenBurger = value!;
              });
            }),
        CheckboxListTile(
            value: this.chickenBurger,
            title: Text("Sandwich"),
            subtitle: Text("Cheese sandwich"),
            secondary: Icon(Icons.headset_mic),
            selected: this.chickenBurger,
            onChanged: (value) {
              setState(() {
                this.chickenBurger = value!;
              });
            }),
        ElevatedButton(
          child: Text("Save"),
          onPressed: () {},
        ),
      ]),
    );
  }
}
