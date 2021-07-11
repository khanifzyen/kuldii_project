import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final List<Tab> myTab = const [
    Tab(
      icon: Icon(Icons.add_a_photo),
      text: "Tab 1",
    ),
    Tab(
      icon: Icon(Icons.ac_unit_rounded),
      text: "Tab 2",
    ),
    Tab(
      icon: Icon(Icons.access_time),
      text: "Tab 3",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "AppBar",
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: myTab.length,
        child: Scaffold(
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
            bottom: TabBar(
              tabs: myTab,
            ),
          ),
          body: const Center(
            child: Text("Halo"),
          ),
        ),
      ),
    );
  }
}
