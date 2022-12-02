import 'package:flutter/material.dart';

void main() {
  runApp(const AppDes());
}

class AppDes extends StatelessWidget {
  const AppDes({Key? key}) : super(key: key);

  Widget box(double width, double height, [Color? c]) {
    return Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
            color: c ?? Colors.blue,
            border: Border.all(color: Colors.black, width: 5)));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              box(120, 70, Colors.blue),
              box(120, 70, Colors.blue),
              box(120, 70, Colors.blue),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [box(70, 70, Colors.red), box(70, 70, Colors.red)])
            ],
          ),
        ),
      ),
    );
  }
}
