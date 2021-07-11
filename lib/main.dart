import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final List<Color> myColor = [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.yellow,
  ];

  final List<Widget> myList =
      List.generate(100, (index) => Text("Halo " + index.toString()));

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My App",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("My ListView"),
        ),
        body: ListView.separated(
          separatorBuilder: (context, index) {
            return const Divider(
              height: 10,
              color: Colors.black,
            );
          },
          itemCount: myList.length,
          itemBuilder: (context, index) {
            return myList[index];
          },
        ),
      ),
    );
  }
}
