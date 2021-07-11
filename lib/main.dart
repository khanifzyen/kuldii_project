import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

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
            DateFormat.yMMMMd().add_Hms().format(DateTime.now()),
            style: const TextStyle(fontSize: 25),
          ),
        ),
      ),
    );
  }
}
