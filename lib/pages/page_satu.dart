import 'package:flutter/material.dart';

import 'page_dua.dart';

class PageSatu extends StatelessWidget {
  const PageSatu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Page Satu"),
      ),
      body: const Center(
        child: Text(
          "Ini Page Satu",
          style: TextStyle(fontSize: 25),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            return PageDua();
          }));
          //  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) {
          //   return PageDua();
          // }));
        },
        child: const Icon(
          Icons.keyboard_arrow_right,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
