import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final TextEditingController myController = TextEditingController();

  String hasil = "HASIL INPUT";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Text Field",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Text Field"),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextField(
                  controller: myController,
                  onChanged: (value) {
                    print("onchange");
                  },
                  onSubmitted: (value) {
                    print(value);
                    setState(() {
                      hasil = value;
                      myController.clear();
                    });
                  },
                  onEditingComplete: () {
                    print("edit sukses");
                    print(myController.text);
                  },
                ),
                Text(hasil),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
