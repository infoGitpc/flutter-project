import 'package:flutter/material.dart';
import 'package:flutter_demo/home_page.dart';

void main() {
  runApp(const CounterApp());
}

class CounterApp extends StatelessWidget {
  const CounterApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        title: "MyNewApp",
        //theme: ThemeData(brightness: Brightness.dark),
        home: HomePage());
  }
}
