import 'package:flutter/material.dart';

@immutable
class OrderListRoute extends StatefulWidget {
  OrderListRoute({Key? key}) : super(key: key);

  @override
  _OrderListState createState() => _OrderListState();
}

class _OrderListState extends State<OrderListRoute> {
  var chickenBurger = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("View my order history"),
      ),
      body: Column(children: [
        ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.all(20.0),
          children: <Widget>[
            const Text('Chicken burger: 5'),
            const Text('Beef burger: 10'),
            const Text('Cheese sandwich: 8'),
          ],
        )
      ]),
    );
  }
}
