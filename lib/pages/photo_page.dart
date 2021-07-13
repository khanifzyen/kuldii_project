import 'package:flutter/material.dart';

class PhotoPage extends StatelessWidget {
  const PhotoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Photo Page"),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              "PHOTO PAGE",
              style: TextStyle(fontSize: 25),
            ),
          ],
        ),
      ),
    );
  }
}
