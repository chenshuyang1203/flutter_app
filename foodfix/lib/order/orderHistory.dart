import 'package:flutter/material.dart';

@immutable
class OrderHistoryRoute extends StatefulWidget {
  OrderHistoryRoute({Key? key}) : super(key: key);

  @override
  _OrderHistoryState createState() => _OrderHistoryState();
}

class _OrderHistoryState extends State<OrderHistoryRoute> {
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
            const Text('2022-04-01: Chicken burger'),
            const Text('2022-04-02: Beef burger'),
            const Text('2022-04-03: Cheese sandwich'),
          ],
        )
      ]),
    );
  }
}
