import 'package:flutter/material.dart';
import 'package:googlepay/peoplepage/paymentsucess.dart';
import 'package:lottie/lottie.dart';

class animation extends StatefulWidget {
  final String firstvalue;
  const animation({super.key, required this.firstvalue});

  @override
  State<animation> createState() => _animationState();
}

class _animationState extends State<animation> {
  String? quvalue;
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2))
        .then((value) => Navigator.pushReplacement(
            context,
            MaterialPageRoute(
                builder: (context) => sucess(
                      newvalue: "$quvalue",
                    ))));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff161719),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              width: 390,
              height: 400,
              child: LottieBuilder.network(
                  "https://lottie.host/819ef9d6-d269-471e-83bf-5072bc9577a5/NknYIFTCeX.json"),
            ),
          )
        ],
      ),
    );
  }
}
