import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class selftransfer extends StatefulWidget {
  const selftransfer({super.key});

  @override
  State<selftransfer> createState() => _selftransferState();
}

class _selftransferState extends State<selftransfer> {
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
        backgroundColor: Color(0xff1f2022),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10, right: 120),
            child: Container(
              width: 200,
              height: 50,
              color: Color(0xff161719),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Self transfer",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 10),
            child: Container(
              width: 350,
              height: 45,
              color: Color(0xff161719),
              child: Text(
                "Manage your money better by adding another accounts to make self transfers",
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: 100,
                height: 70,
                child: Image.asset(
                  "assets/ubi.jpg",
                  fit: BoxFit.fill,
                ),
              ),
              Container(
                width: 200,
                height: 82,
                color: Color(0xff161719),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Union bank of india",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Text(".........0056",
                        style: TextStyle(color: Colors.white, fontSize: 16)),
                    SizedBox(
                      height: 2,
                    ),
                    Text("savings account",
                        style: TextStyle(
                          color: Colors.grey,
                        )),
                  ],
                ),
              )
            ],
          ),
          Row(
            //mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                width: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, right: 40),
                child: DottedBorder(
                  color: Colors.blue,
                  strokeWidth: 1,
                  child: Container(
                    width: 100,
                    height: 70,
                    child: Center(
                        child: Icon(
                      Icons.account_balance,
                      color: Colors.blue,
                    )),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20, top: 20),
                child: Text(
                  "Add bank account",
                  style: TextStyle(color: Colors.blue, fontSize: 20),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Container(
              width: 300,
              height: 270,
              child: Image.asset("assets/bank-removebg.png"),
            ),
          )
        ],
      ),
    );
  }
}
