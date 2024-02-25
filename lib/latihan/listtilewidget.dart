import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text("List Tile")),
        body: ListView(
          children: const [
            ListTile(
              contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 8),
              title: Text("Tri Maryanto"),
              subtitle: Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              leading: CircleAvatar(),
              trailing: Text("10 22 PM"),
              dense: true,
              // onTap: () {
              //   return;
              // },
            ),
            Divider(
              color: Colors.black,
            ),
            ListTile(
              title: Text("Tri Maryanto"),
              subtitle: Text("First Commit"),
              leading: CircleAvatar(),
              trailing: Text("10 22 PM"),
            ),
            Divider(
              color: Colors.black,
            ),
            ListTile(
              title: Text("Tri Maryanto"),
              subtitle: Text("First Commit"),
              leading: CircleAvatar(),
              trailing: Text("10 22 PM"),
            ),
            Divider(
              color: Colors.black,
            ),
            ListTile(
              title: Text("Tri Maryanto"),
              subtitle: Text("First Commit"),
              leading: CircleAvatar(),
              trailing: Text("10 22 PM"),
            ),
            Divider(
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
