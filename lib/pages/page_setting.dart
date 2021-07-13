import 'package:flutter/material.dart';
import '/widgets/my_drawer.dart';

class PageSetting extends StatelessWidget {
  const PageSetting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page Setting"),
      ),
      body: Center(
        child: Text(
          "Page Setting",
          style: TextStyle(fontSize: 20),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
