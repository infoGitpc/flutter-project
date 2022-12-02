import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SecondPage extends StatelessWidget {
  String? accept;
  SecondPage({Key? key, required this.accept}) : super(key: key);
  String url =
      'https://images.unsplash.com/photo-1669723008642-b00fa9d10b76?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80';

  @override
  Widget build(BuildContext context) {
    String? v = accept ?? "blank";
    return Scaffold(
        appBar: AppBar(
          title: Text(v),
        ),
        body: Center(
          child: Column(
            children: [
              Container(
                child: Image.asset('ass'),
              ),
              SizedBox(
                child: Image.network(
                  url,
                  fit: BoxFit.fitWidth,
                ),
                height: 400,
                width: double.infinity,
              ),
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  width: 190,
                  height: 70,
                  color: Colors.amber,
                  child: const Center(child: Text("goto First Page")),
                ),
              ),
            ],
          ),
        ));
  }
}
