import 'package:flutter/material.dart';

class people extends StatefulWidget {
  const people({super.key});

  @override
  State<people> createState() => _peopleState();
}

class _peopleState extends State<people> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            height: 40,
            width: double.infinity,
            color: Color(0xff161719),
            child: Title(
              color: Color(0xff161719),
              child: Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Text(
                  "People",
                  style: TextStyle(color: Colors.white, fontSize: 23),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
