import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  final String name = "button";

  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "MY First App",
      home: Scaffold(
        body: Center(
          child: TextButton(onPressed: () {}, child: Text(name)),
          /* child: IconButton(
            color: Colors.lightGreen,
            splashColor: Colors.deepOrange,
            onPressed: () {},
            icon: const Icon(Icons.ac_unit_rounded),*/
          /*child: MaterialButton(
              color: Colors.lightGreen,
              splashColor: Colors.grey,
              textColor: Colors.white,
              onPressed: () {},
              child: Text(name)),*/
        ),
      ),
    );
  }
}
