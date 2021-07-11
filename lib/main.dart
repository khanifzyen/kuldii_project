import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "List Tile",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("List Tile"),
        ),
        body: ListView(
          children: [
            ListTile(
              //contentPadding: EdgeInsets.all(16),
              title: const Text("Akhmad Khanif Zyen"),
              subtitle: const Text(
                "This is subtitle okay This is subtitle okay This is subtitle okay This is subtitle okay",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              leading: const CircleAvatar(),
              trailing: const Text("10:00 PM"),
              //tileColor: Colors.amber,
              onTap: () {
                return print("Halo guys");
              },
            ),
            const Divider(color: Colors.black),
            const ListTile(
              title: Text("Akhmad Khanif Zyen"),
              subtitle: Text("This is subtitle okay"),
              leading: CircleAvatar(),
              trailing: Text("10:00 PM"),
            ),
            const Divider(color: Colors.black),
            const ListTile(
              title: Text("Akhmad Khanif Zyen"),
              subtitle: Text("This is subtitle okay"),
              leading: CircleAvatar(),
              trailing: Text("10:00 PM"),
            ),
            const Divider(color: Colors.black),
            const ListTile(
              title: Text("Akhmad Khanif Zyen"),
              subtitle: Text("This is subtitle okay"),
              leading: CircleAvatar(),
              trailing: Text("10:00 PM"),
            ),
            const Divider(color: Colors.black),
            const ListTile(
              title: Text("Akhmad Khanif Zyen"),
              subtitle: Text("This is subtitle okay"),
              leading: CircleAvatar(),
              trailing: Text("10:00 PM"),
            ),
          ],
        ),
      ),
    );
  }
}
