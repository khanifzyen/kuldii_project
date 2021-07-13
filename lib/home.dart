import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);

  Faker faker = Faker();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dismissable"),
      ),
      body: ListView.builder(
        itemCount: 100, //myList.length,
        itemBuilder: (context, index) {
          return Dismissible(
            key: Key(index.toString()),
            onDismissed: (direction) {
              return print("dismissed ${index}");
            },
            confirmDismiss: (direction) {
              return showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text("Confirm"),
                      content: Text("Are you sure want to delete?"),
                      actions: [
                        TextButton(
                          onPressed: () {
                            print("deleted");
                            Navigator.of(context).pop(true);
                          },
                          child: Text("Yes"),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            print("false");
                            Navigator.of(context).pop(false);
                          },
                          child: Text("No"),
                        ),
                      ],
                    );
                  });
            },
            direction: DismissDirection.endToStart,
            background: Container(
              color: Colors.red,
              child: const Icon(
                Icons.delete,
                color: Colors.white,
              ),
              alignment: Alignment.centerRight,
              padding: const EdgeInsets.only(right: 10),
            ),
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage:
                    NetworkImage("https://picsum.photos/id/${index}/200/200"),
              ),
              title: Text(faker.person.name()),
              subtitle: Text(
                faker.lorem.sentence(),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              trailing: Text(faker.date.time()),
            ),
          );
        },
      ),
    );
  }
}
