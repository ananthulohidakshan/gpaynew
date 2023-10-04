import 'package:flutter/material.dart';

class ab extends StatefulWidget {
  const ab({super.key});

  @override
  State<ab> createState() => _abState();
}

class _abState extends State<ab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff1f2022),
      ),
      backgroundColor: Color(0xff161719),
      body: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Text(
            "Check balance",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          SizedBox(
            height: 50,
          ),
          Text(
            "Savings account",
            style: TextStyle(color: Colors.white, fontSize: 17),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Text(
              "Union bank of india 5358",
              style: TextStyle(color: Colors.white, fontSize: 17),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Text(
            "Account balance",
            style: TextStyle(color: Colors.white, fontSize: 17),
          ),
          Text(
            "10000.67",
            style: TextStyle(color: Colors.white, fontSize: 17),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 330, left: 140),
            child: Container(
              width: 100,
              height: 50,
              child: Center(
                  child: Text(
                "Powerd by HDFC bank",
                style: TextStyle(color: Colors.white30),
              )),
            ),
          ),
        ],
      ),
    );
  }
}
