import 'package:flutter/material.dart';
import 'package:flutter_demo/assign_1.dart';
//import 'package:flutter_demo/bill_tip_calculator/bill_home_page.dart';

void main() {
  runApp(const BillMain());
}

class BillMain extends StatelessWidget {
  const BillMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Bill Trip Counter",
      home: AssignOnePage(),
    );
  }
}
