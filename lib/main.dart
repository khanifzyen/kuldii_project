import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool statusSwitch = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Switch"),
      ),
      body: Center(
        child: Column(
          children: [
            Switch(
              inactiveThumbColor: Colors.red,
              activeColor: Colors.green,
              activeTrackColor: Colors.green[200],
              inactiveTrackColor: Colors.red[100],
              value: statusSwitch,
              onChanged: (value) {
                setState(() {
                  statusSwitch = !statusSwitch;
                  print(statusSwitch);
                });
              },
            ),
            Text(
              (statusSwitch == true) ? "Switch On" : "Switch Off",
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
