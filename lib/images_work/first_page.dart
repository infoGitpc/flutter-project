import 'package:flutter/material.dart';
import 'package:flutter_demo/images_work/second_page.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);
  final String text = "hi i am good";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("First Page"),
        ),
        body: Center(
          child: Column(
            children: [
              Text(text),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return SecondPage(
                      accept: text,
                    );
                  }));
                },
                child: Container(
                  width: 190,
                  height: 70,
                  color: Colors.amber,
                  child: const Center(child: Text("goto Second Page")),
                ),
              ),
            ],
          ),
        ));
  }
}
