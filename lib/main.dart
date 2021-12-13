import 'package:flutter/material.dart';
import 'package:flutter_examples/pages/liquid_swipe.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Examples',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const LiquidSwipePage());
  }
}
