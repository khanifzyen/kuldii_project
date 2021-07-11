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
  int counter = 50;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Dynamic Apps",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Dynamic Apps"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              counter.toString(),
              style: const TextStyle(fontSize: 50),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                OutlinedButton(
                  onPressed: () {
                    if (counter != 1) {
                      setState(() {
                        counter--;
                      });
                    }
                    //print(counter);
                  },
                  child: const Icon(Icons.remove),
                ),
                OutlinedButton(
                  onPressed: () {
                    setState(() {
                      counter++;
                    });
                    //print(counter);
                  },
                  child: const Icon(Icons.add),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
