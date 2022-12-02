import 'package:flutter/material.dart';

class BillHomePage extends StatefulWidget {
  const BillHomePage({Key? key}) : super(key: key);

  @override
  State<BillHomePage> createState() => _BillHomePageState();
}

class _BillHomePageState extends State<BillHomePage> {
  TextEditingController mytext = TextEditingController();
  double? price = 0.0;
  int totalperson = 1;
  double tipPercentage = 0.0;
  double billcalculate() {
    double result = ((price! + ((tipPercentage / 100) * price!)) / totalperson);
    return result;
  }

  @override
  Widget build(BuildContext context) {
    var mystyle = const TextStyle(fontSize: 20);
    var textstyle = const TextStyle(fontSize: 35, color: Colors.white);

    return Scaffold(
      // resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        //type karne par scroll ho jayega uper
        child: Padding(
          padding: const EdgeInsets.all(28.0),
          child: Column(
            children: [
              Text(
                "Bill and Tip Calculator",
                textAlign: TextAlign.center,
                style: mystyle,
              ),
              Container(
                height: 170,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.purple.withOpacity(0.5),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                  ),
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Per person bill is",
                        style: textstyle,
                      ),
                      Text(
                        "${billcalculate().toStringAsFixed(1)}Rs",
                        style: textstyle,
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 15),
              TextField(
                keyboardType: TextInputType.number,
                controller: mytext,
                onChanged: (v) {
                  setState(() {
                    price = double.parse(mytext.text);
                  });
                },
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Please Enter Bill ",
                  labelText: "Please Enter bill",
                  prefixIcon: Icon(Icons.price_change_outlined),
                ),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Split By',
                    //style: mystyle,
                  ),
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {
                            setState(() {
                              if (totalperson > 1) totalperson--;
                            });
                          },
                          icon: const Icon(Icons.exposure_minus_1)),
                      Text(
                        '$totalperson',
                        style: mystyle,
                      ),
                      IconButton(
                          onPressed: () {
                            setState(() {
                              totalperson++;
                            });
                          },
                          icon: const Icon(Icons.exposure_plus_1)),
                    ],
                  ),
                ],
              ),
              const Divider(thickness: 5, color: Colors.black),
              Row(
                children: [
                  Text(
                    "Tip Percentage",
                    style: mystyle,
                  ),
                  Text(
                    "$tipPercentage",
                    style: mystyle,
                  ),
                ],
              ),
              Slider(
                divisions: 20,
                value: tipPercentage,
                onChanged: (v) {
                  setState(() {
                    tipPercentage = v;
                  });
                },
                min: 0,
                max: 100,
              )
            ],
          ),
        ),
      ),
    );
  }
}
