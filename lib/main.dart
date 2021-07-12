import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final List<Container> myList = List.generate(
      100,
      (index) => Container(
            height: 50,
            width: 150,
            color: Color.fromARGB(
              255,
              Random().nextInt(256),
              Random().nextInt(256),
              Random().nextInt(256),
            ),
          ));
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Grid View",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Grid View"),
        ),
        // body: GridView(
        //   padding: const EdgeInsets.all(10),
        //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        //       crossAxisCount: 3,
        //       crossAxisSpacing: 10,
        //       mainAxisSpacing: 10,
        //       childAspectRatio: 3 / 4),
        //   children: myList,
        // ),
        body: GridView.count(
          crossAxisCount: 3,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 3 / 4,
          children: myList,
        ),
      ),
    );
  }
}
