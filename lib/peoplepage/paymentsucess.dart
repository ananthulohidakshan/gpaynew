import 'package:flutter/material.dart';
import 'package:googlepay/homepages/homepage.dart';

class sucess extends StatefulWidget {
  final String newvalue;
  const sucess({super.key, required this.newvalue});

  @override
  State<sucess> createState() => _sucessState();
}

class _sucessState extends State<sucess> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff161719),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            CircleAvatar(
              radius: 50,
              child: Icon(
                Icons.done_outline,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              widget.newvalue,
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "paid to User",
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "user@okhdfcbank",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              "UPI transaction ID :1234567890",
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(
              height: 300,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 160,
                  height: 30,
                  decoration: BoxDecoration(
                      color: Colors.grey[500],
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(
                        Icons.share,
                        color: Colors.blue,
                      ),
                      Text(
                        "share screenshot",
                        style: TextStyle(color: Colors.blue),
                      )
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => homescreen(),
                        ));
                  },
                  child: Container(
                    height: 30,
                    width: 100,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(
                      child: Text(
                        "Done",
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
