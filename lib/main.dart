import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<Widget> myNumbering = List.generate(
      100,
      (index) => Text(
            "${index + 1}",
            style: TextStyle(
              fontSize: 20 + double.parse(index.toString()),
            ),
          ));
  final List<Color> myColor = [
    Colors.blue,
    Colors.green,
    Colors.amber,
    Colors.red
  ];
  final List<Widget> myList = [
    Container(
      width: 300,
      height: 300,
      color: Colors.green,
    ),
    Container(
      width: 300,
      height: 300,
      color: Colors.blue,
    ),
    Container(
      width: 300,
      height: 300,
      color: Colors.amber,
    ),
    Container(
      width: 300,
      height: 300,
      color: Colors.red,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text("List View")),
        // body: ListView.separated( untuk ngasih spasi antar listview
        //   separatorBuilder: (context, index) {
        //     return Divider( -> opsi 1
        //       color: Colors.black,
        //     );
        //     return Container( -> opsi 2
        //       height: 10,
        //     );
        //   },
        // body: ListView.builder(
        //   itemCount: myColor.length,
        //   itemBuilder: (context, index) {
        //     return Container(
        //       width: 300,
        //       height: 300,
        //       color: myColor[index],
        //     );
        //   },
        // ),
        // body: ListView(
        //   // scrollDirection: Axis.horizontal, buat ke samping
        //   children: myList,
        // ),
        body: ListView(
          children: myNumbering,
        ),
      ),
    );
  }
}
