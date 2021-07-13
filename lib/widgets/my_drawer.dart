import 'package:flutter/material.dart';
import '/pages/page_setting.dart';
import '/pages/page_satu.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            child: Text(
              "Menu Pilihan",
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
            height: 150,
            alignment: Alignment.bottomLeft,
            color: Colors.red,
          ),
          ListTile(
            dense: true,
            leading: Icon(Icons.home),
            title: Text("Home"),
            onTap: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => PageSatu()));
            },
          ),
          ListTile(
            dense: true,
            leading: Icon(Icons.settings),
            title: Text("Setting"),
            onTap: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => PageSetting()));
            },
          ),
        ],
      ),
    );
  }
}
