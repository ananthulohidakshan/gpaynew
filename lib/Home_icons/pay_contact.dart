import 'package:flutter/material.dart';
import 'package:googlepay/recharge/rechargebuilder.dart';

class pay_contact extends StatefulWidget {
  const pay_contact({super.key});

  @override
  State<pay_contact> createState() => _pay_contactState();
}

class _pay_contactState extends State<pay_contact> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff161719),
      appBar: AppBar(
        actions: [
          Icon(
            Icons.more_vert,
            color: Colors.white,
          )
        ],
        backgroundColor: Color(0xff161719),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: Row(
                children: [
                  SizedBox(
                    width: 30,
                  ),
                  Text("Enter a phone number",
                      style: TextStyle(color: Colors.white, fontSize: 20)),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                SizedBox(
                  width: 30,
                ),
                Container(
                  width: 300,
                  height: 50,
                  color: Color(0xff1f2022),
                  child: TextField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        prefix: Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: Container(
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                      color: Colors.red,
                                      image: DecorationImage(
                                          image: AssetImage("assets/flag.png"),
                                          fit: BoxFit.fill)),
                                ),
                              )
                            ],
                          ),
                        ),
                        hintText: "+91 00000000..",
                        hintStyle: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        )),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                SizedBox(
                  width: 20,
                  height: 20,
                  child: Icon(
                    Icons.person_2_outlined,
                    color: Colors.white,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: EdgeInsets.only(right: 110),
              child: Container(
                width: 200,
                height: 20,
                child: Text(
                  "Ensure this is a valid mobile number",
                  style: TextStyle(color: Colors.white, fontSize: 10),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 140),
              child: SizedBox(
                width: 130,
                height: 50,
                child: Text(
                  "Recents",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
            rechargebuild(),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
