import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final List<Map<String, dynamic>> myList = [
    {
      "name": "Akhmad",
      "age": 20,
      "favColor": [
        "Green",
        "Red",
        "Blue",
        "Yellow",
        "Green",
        "Red",
        "Blue",
        "Yellow",
      ],
    },
    {
      "name": "Khanif",
      "age": 23,
      "favColor": [
        "Purple",
        "Orange",
        "Black",
        "Amber",
      ],
    },
    {
      "name": "Zyen",
      "age": 25,
      "favColor": [
        "Matte",
        "Orchid",
        "Blue Ocean",
        "Red Velvet",
      ],
    },
    {
      "name": "Akhmad",
      "age": 20,
      "favColor": [
        "Green",
        "Red",
        "Blue",
        "Yellow",
        "Green",
        "Red",
        "Blue",
        "Yellow",
      ],
    },
    {
      "name": "Khanif",
      "age": 23,
      "favColor": [
        "Purple",
        "Orange",
        "Black",
        "Amber",
      ],
    },
    {
      "name": "Zyen",
      "age": 25,
      "favColor": [
        "Matte",
        "Orchid",
        "Blue Ocean",
        "Red Velvet",
      ],
    },
    {
      "name": "Akhmad",
      "age": 20,
      "favColor": [
        "Green",
        "Red",
        "Blue",
        "Yellow",
        "Green",
        "Red",
        "Blue",
        "Yellow",
      ],
    },
    {
      "name": "Khanif",
      "age": 23,
      "favColor": [
        "Purple",
        "Orange",
        "Black",
        "Amber",
      ],
    },
    {
      "name": "Zyen",
      "age": 25,
      "favColor": [
        "Matte",
        "Orchid",
        "Blue Ocean",
        "Red Velvet",
      ],
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ID Apps",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("ID Apps"),
        ),
        body: ListView(
          children: myList.map((data) {
            final List<String> favColor = data["favColor"];

            return Card(
              child: Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const CircleAvatar(),
                        const SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Name : ${data['name']}"),
                            Text("Age : ${data['age']}"),
                          ],
                        ),
                      ],
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: favColor.map((color) {
                          return Container(
                            child: Text(color),
                            color: Colors.amber,
                            margin: const EdgeInsets.symmetric(
                              horizontal: 5,
                              vertical: 5,
                            ),
                            padding: const EdgeInsets.all(5),
                          );
                        }).toList(),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
