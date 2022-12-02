import 'package:flutter/material.dart';

class AssignOnePage extends StatelessWidget {
  const AssignOnePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            tile(Colors.amber),
            tile(Colors.black),
            tile(Colors.red),
            tile(Colors.blue),
            tile(Colors.orange),
            tile(Colors.purple),
            tile(Colors.green),
            tile(Colors.brown),
          ],
        ),
      ),
    );
  }

  Expanded tile(Color c) {
    return Expanded(
      child: Container(
        width: double.infinity,
        color: c,
      ),
    );
  }
}
