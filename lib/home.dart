import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String data = "Belum ada input";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dialog"),
      ),
      body: Center(
        child: Text(
          data,
          style: const TextStyle(fontSize: 25),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("telah diklik");
          showDialog(
            context: context,
            builder: (builder) {
              return AlertDialog(
                title: const Text("Confirm"),
                content: const Text("Are you sure to delete this item?"),
                actions: [
                  OutlinedButton(
                    onPressed: () {
                      setState(() {
                        data = "false";
                      });
                      print("klik no");
                      Navigator.of(context).pop(false);
                    },
                    child: const Text("No"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        data = "true";
                      });
                      print("klik yes");
                      Navigator.of(context).pop(true);
                    },
                    child: const Text("Yes"),
                  ),
                ],
              );
            },
          ).then((value) => print(value));
        },
        child: const Icon(Icons.delete),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
