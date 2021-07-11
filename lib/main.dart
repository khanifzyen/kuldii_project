import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Date Format",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Date Format"),
        ),
        body: Center(
          child: Text(
            DateTime(2021, 9, 15, 15, 20).toString(),
            style: TextStyle(fontSize: 25),
          ),
        ),
      ),
    );
  }
}
