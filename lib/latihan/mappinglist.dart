import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<Map<String, dynamic>> myList = [
    {
      "name": "Sandhika",
      "age": 23,
      "favcolor": [
        "Black",
        "Red",
        "Amber",
        "Red",
        "Amber",
        "Red",
        "Amber",
        "Red",
        "Amber",
        "Red",
        "Amber",
        "Red",
        "Amber"
      ]
    },
    {
      "name": "Yusuf",
      "age": 23,
      "favcolor": ["White", "Red", "Green"]
    }
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text("Mapping list")),
        body: ListView(
          children: myList.map((data) {
            List myfavcolor = data["favcolor"];
            return Card(
              margin: EdgeInsets.all(20),
              child: Container(
                margin: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Name: ${data['name']}"),
                            Text("Age: ${data['age']}"),
                          ],
                        )
                      ],
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: myfavcolor.map((color) {
                          return Container(
                            color: Colors.amber,
                            margin: EdgeInsets.symmetric(
                              vertical: 15,
                              horizontal: 8,
                            ),
                            child: Text(color),
                          );
                        }).toList(),
                      ),
                    )
                  ],
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
