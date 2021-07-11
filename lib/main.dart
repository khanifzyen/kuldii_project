import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  var faker = Faker();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Exrract Widget",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Extract Widget"),
        ),
        body: ListView(
          children: [
            ChatItem(
              imageUrl: "https://picsum.photos/id/1/200/300",
              title: faker.person.name(),
              subtitle: faker.lorem.sentence(),
            ),
            ChatItem(
              imageUrl: "https://picsum.photos/id/2/200/300",
              title: faker.person.name(),
              subtitle: faker.lorem.sentence(),
            ),
            ChatItem(
              imageUrl: "https://picsum.photos/id/3/200/300",
              title: faker.person.name(),
              subtitle: faker.lorem.sentence(),
            ),
          ],
        ),
      ),
    );
  }
}

class ChatItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subtitle;

  const ChatItem({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(imageUrl),
      ),
      title: Text(title),
      subtitle: Text(
        subtitle,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
      trailing: const Text("10.00 PM"),
    );
  }
}
