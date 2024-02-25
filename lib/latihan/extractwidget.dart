import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  var faker = Faker();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text("Extract Widget")),
        body: ListView.builder(
          itemCount: 100,
          itemBuilder: (context, index) {
            return Chatitem(
              imageUrl: "https://picsum.photos/id/$index/200/300",
              title: faker.person.name(),
              subtitle: faker.lorem.sentence(),
            );
          },
        ),
        // body: ListView(
        //   children: [
        //     Chatitem(
        //       imageUrl: "https://picsum.photos/id/1/200/300",
        //       title: faker.person.name(),
        //       subtitle: faker.lorem.sentence(),
        //     ),
        //     Chatitem(
        //       imageUrl: "https://picsum.photos/id/2/200/300",
        //       title: faker.person.name(),
        //       subtitle: faker.lorem.sentence(),
        //     ),
        //     Chatitem(
        //       imageUrl: "https://picsum.photos/id/3/200/300",
        //       title: faker.person.name(),
        //       subtitle: faker.lorem.sentence(),
        //     ),
        //   ],
        // ),
      ),
    );
  }
}

class Chatitem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subtitle;

  const Chatitem(
      {required this.imageUrl, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      subtitle: Text(subtitle),
      leading: CircleAvatar(
        backgroundImage: NetworkImage(imageUrl),
      ),
      trailing: Text("10 22 PM"),
    );
  }
}
