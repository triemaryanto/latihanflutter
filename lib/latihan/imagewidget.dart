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
        appBar: AppBar(title: const Text("Image Widget")),
        body: Center(
            child: Container(
          height: 500,
          width: 350,
          color: Colors.amber,
          child: Image.network(
            "images/mpp.png",
            fit: BoxFit.contain,
          ),
          // child: const Image(
          //   // fit: BoxFit.contain,
          //   // fit: BoxFit.fill,
          //   fit: BoxFit.cover,

          //   image: AssetImage("images/mpp.png"),
          //   // image: NetworkImage("https://picsum.photos/200/300")
          // ),
        )),
      ),
    );
  }
}
