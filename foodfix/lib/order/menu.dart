import 'package:flutter/material.dart';

@immutable
class MenuRoute extends StatefulWidget {
  MenuRoute({Key? key}) : super(key: key);

  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<MenuRoute> {
  var chickenBurger = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Edit today`s menu"),
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
            subtitle: Text("Chicken burger"),
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
