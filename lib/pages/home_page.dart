import 'dart:math';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import '/models/product.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  Faker faker = Faker();

  @override
  Widget build(BuildContext context) {
    List<Product> dummyData = List.generate(
        100,
        (index) => Product(
              faker.food.cuisine(),
              "https://picsum.photos/id/$index/200/200",
              10000 + Random().nextInt(100000),
              faker.lorem.sentence(),
            ));
    return Scaffold(
      appBar: AppBar(
        title: const Text("Marketplace"),
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(10),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ),
        itemBuilder: (context, index) {
          return GridTile(
            child: Image.network(dummyData[index].imageURL),
            footer: Container(
              height: 75,
              padding: EdgeInsets.symmetric(horizontal: 10),
              color: Colors.green.withOpacity(0.75),
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    dummyData[index].judul,
                    maxLines: 1,
                    style: const TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  Text("Rp ${dummyData[index].harga}"),
                  Text(
                    dummyData[index].deskripsi,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  )
                ],
              ),
            ),
          );
        },
        itemCount: dummyData.length,
      ),
    );
  }
}
