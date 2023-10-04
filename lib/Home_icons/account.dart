import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class account extends StatefulWidget {
  const account({super.key});

  @override
  State<account> createState() => _accountState();
}

class _accountState extends State<account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff161719),
      appBar: AppBar(
        backgroundColor: Color(0xff1f2022),
        actions: [
          Icon(
            Icons.more_vert,
            color: Colors.white,
          )
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 100),
              child: Container(
                width: 250,
                height: 50,
                child: Center(
                  child: Text(
                    'Enter recipient details',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextField(
                keyboardType: TextInputType.number,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xff1f2022),
                    border: OutlineInputBorder(),
                    hintText: "enter account number",
                    hintStyle: TextStyle(color: Colors.white)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xff1f2022),
                    border: OutlineInputBorder(),
                    hintText: "re-enter account number",
                    hintStyle: TextStyle(color: Colors.white)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xff1f2022),
                    border: OutlineInputBorder(),
                    hintText: "IFSC",
                    hintStyle: TextStyle(color: Colors.white),
                    suffixText: "search ifsc code",
                    suffixStyle: TextStyle(color: Colors.blue)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xff1f2022),
                    border: OutlineInputBorder(),
                    hintText: "bank account holder's name",
                    hintStyle: TextStyle(color: Colors.white)),
              ),
            ),
            Container(
              width: 200,
              height: 40,
              decoration: BoxDecoration(
                  color: Colors.grey[600],
                  borderRadius: BorderRadius.circular(8)),
              child: Center(
                  child: Text(
                "Submit",
                style: TextStyle(color: Colors.white),
              )),
            )
          ],
        ),
      ),
    );
  }
}
