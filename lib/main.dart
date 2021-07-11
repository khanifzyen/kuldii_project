import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static List<Color> myColor = [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.yellow,
  ];

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
            return Container(
              height: 10,
              color: Colors.black,
            );
          },
          itemCount: myColor.length,
          itemBuilder: (context, index) {
            return Container(
              height: 300,
              width: 300,
              color: myColor[index],
            );
          },
        ),
      ),
    );
  }
}
