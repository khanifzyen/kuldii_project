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
      title: "AppBar",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.facebook),
          title: const Text("My App Bar"),
          actions: const [
            Icon(Icons.search),
            SizedBox(
              width: 10,
            ),
            Icon(Icons.add),
            SizedBox(
              width: 10,
            ),
          ],
        ),
        body: const Center(
          child: Text("Halo"),
        ),
      ),
    );
  }
}
