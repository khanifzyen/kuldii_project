import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My App",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("My ListView"),
        ),
        body: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Container(
              height: 200,
              width: 100,
              color: Colors.red,
            ),
            Container(
              height: 200,
              width: 100,
              color: Colors.green,
            ),
            Container(
              height: 200,
              width: 100,
              color: Colors.blue,
            ),
            Container(
              height: 200,
              width: 100,
              color: Colors.yellow,
            )
          ],
        ),
      ),
    );
  }
}
