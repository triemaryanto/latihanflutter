import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text("Text Widget")),
        body: const Center(
          child: Text(
            "Haloasdaslhdkahskldlaskdlkasdlkahsdklhaskld;ljasj;ldjaskjasgkjdgasasdlkasjjjjjjjdhlasfhjkaskdhaslkhdlashdlsahdlksahdlksalkd",
            // maxLines: 2,
            // overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: TextStyle(
              backgroundColor: Colors.amber,
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.bold,
              letterSpacing: 10,
              fontFamily: 'Roboto-Black',
              decorationStyle: TextDecorationStyle.wavy,
              decoration: TextDecoration.lineThrough,
              decorationColor: Colors.white,
              decorationThickness: 2,
            ),
          ),
        ),
      ),
    );
  }
}
