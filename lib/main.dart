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
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Fitur Text Field"),
        ),
        body: const Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              autocorrect: false,
              autofocus: true,
              enableSuggestions: true,
              enableInteractiveSelection: true,
              enabled: true,
              obscureText: true,
              //obscuringCharacter: "*",
              keyboardType: TextInputType.number,
              readOnly: true,
            ),
          ),
        ),
      ),
    );
  }
}
