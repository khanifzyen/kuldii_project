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
        initialIndex: 1,
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
              labelColor: Colors.black54,
              unselectedLabelColor: Colors.white,
              labelStyle: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
              unselectedLabelStyle: const TextStyle(
                fontWeight: FontWeight.normal,
              ),
              //indicatorColor: Colors.green,
              //indicatorPadding: EdgeInsets.all(10),
              //indicatorWeight: 5,
              tabs: myTab,
              indicator: const BoxDecoration(
                color: Colors.amber,
                //borderRadius: BorderRadius.circular(20),
                border: Border(
                  bottom: BorderSide(
                    color: Colors.black,
                    width: 5,
                  ),
                ),
              ),
            ),
          ),
          body: const TabBarView(
            children: [
              Center(
                child: Text(
                  "Tab 1",
                  style: TextStyle(fontSize: 25),
                ),
              ),
              Center(
                child: Text(
                  "Tab 2",
                  style: TextStyle(fontSize: 25),
                ),
              ),
              Center(
                child: Text(
                  "Tab 3",
                  style: TextStyle(fontSize: 25),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
