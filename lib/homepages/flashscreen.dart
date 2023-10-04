import 'package:flutter/material.dart';
import 'package:googlepay/homepages/homepage.dart';

class splashscreen extends StatefulWidget {
  const splashscreen({super.key});

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3)).then((value) =>
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => homescreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff161719),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 300,
          ),
          Center(
            child: Image.asset(
              'assets/gpaylogo.png',
              width: 150,
              height: 150,
            ),
          ),
          SizedBox(
            height: 200,
          ),
          Image.asset(
            'assets/pngwing.com.png',
            width: 100,
            height: 100,
          )
        ],
      ),
    );
  }
}
