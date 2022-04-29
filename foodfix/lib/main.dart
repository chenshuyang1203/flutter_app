import 'package:flutter/material.dart';
import 'package:foodfix/signin.dart';
import 'package:foodfix/account/account.dart';
import 'package:foodfix/account/password.dart';
import 'package:foodfix/order/menu.dart';
import 'package:foodfix/order/order.dart';
import 'package:foodfix/order/orderHistory.dart';
import 'package:foodfix/order/orderList.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    debugPrint("myapp build.");

    return MaterialApp(
      title: 'Home',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Welcome to Lunch Booking'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  //check my token is valid.
  Future<void> checkSignin() async {
    debugPrint("start check signin.");
    await Future.delayed(Duration(seconds: 3));
    debugPrint("after 3 seconds.");
    //goto sign in page.
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) {
        return SigninRoute();
      }),
    );
  }

  @override
  void initState() {
    super.initState();
    debugPrint("initStaet in MyHome.");
    checkSignin();
  }

  @override
  void didUpdateWidget(MyHomePage oldWidget) {
    super.didUpdateWidget(oldWidget);
    debugPrint("did update widget in my home page state.");
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.

    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              child: Text("Edit menu items(DH staff)"),
              onPressed: () {
                debugPrint("go to menu page");
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return MenuRoute();
                  }),
                );
              },
            ),
            ElevatedButton(
              child: Text("View order list(DH staff)"),
              onPressed: () {
                debugPrint("go to order list page");
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return OrderListRoute();
                  }),
                );
              },
            ),
            ElevatedButton(
              child: Text("Place order(customer)"),
              onPressed: () {
                debugPrint("go to place order page");
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return OrderRoute();
                  }),
                );
              },
            ),
            ElevatedButton(
              child: Text("View my order history(customer)"),
              onPressed: () {
                debugPrint("go to my order history page");
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return OrderHistoryRoute();
                  }),
                );
              },
            ),
            ElevatedButton(
              child: Text("My account"),
              onPressed: () {
                debugPrint("go to account page");
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return AccountRoute();
                  }),
                );
              },
            ),
            ElevatedButton(
              child: Text("Change my password"),
              onPressed: () {
                debugPrint("go to change my password page");
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return PasswordRoute();
                  }),
                );
              },
            ),
            // const Text(
            //   'You have pushed the button this many times:',
            // ),
            // Text(
            //   '$_counter',
            //   style: Theme.of(context).textTheme.headline4,
            // ),
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      // ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
