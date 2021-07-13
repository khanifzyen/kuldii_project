import 'package:flutter/material.dart';
import '/widgets/my_drawer.dart';

class PageSatu extends StatelessWidget {
  const PageSatu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page Satu"),
      ),
      body: Center(
        child: Text(
          "Page Satu",
          style: TextStyle(fontSize: 20),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
