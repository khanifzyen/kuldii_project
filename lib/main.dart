import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Image",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Image"),
        ),
        body: Center(
          child: Container(
            width: 350,
            height: 500,
            color: Colors.amber,
            child: Image.network("https://picsum.photos/300/500"),
            // child: const Image(
            //   fit: BoxFit.scaleDown,
            //   image: AssetImage("images/conversionrate.jpg"),
            //   //image: NetworkImage("https://picsum.photos/200/300"),
            // ),
          ),
        ),
      ),
    );
  }
}
