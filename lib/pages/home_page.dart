import 'package:flutter/material.dart';
import 'gallery_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  static const nameRoute = '/homepage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: Center(
        child: Text(
          "HOMEPAGE",
          style: TextStyle(fontSize: 25),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed(GalleryPage.nameRoute);
        },
        child: Icon(Icons.keyboard_arrow_right),
      ),
    );
  }
}
