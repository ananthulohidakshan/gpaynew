import 'package:flutter/material.dart';
import 'package:googlepay/balace&transaction/_Balance.dart';

import 'package:percent_indicator/linear_percent_indicator.dart';

class balancepage extends StatefulWidget {
  const balancepage({super.key});

  @override
  State<balancepage> createState() => _balancepageState();
}

class _balancepageState extends State<balancepage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2)).then((value) =>
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => ab())));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff161719),
        body: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            Text(
              "Checking balance",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            SizedBox(
              height: 10,
            ),
            new LinearPercentIndicator(
              width: 360,
              animation: true,
              lineHeight: 6.0,
              animationDuration: 2000,
              percent: 0.9,
              progressColor: Colors.blue,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Gathering upi informations....",
              style: TextStyle(color: Colors.white, fontSize: 17),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 470),
              child: Container(
                width: 300,
                height: 50,
                child: Center(
                    child: Text(
                  "Powerd by HDFC bank",
                  style: TextStyle(color: Colors.white30),
                )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
