import 'package:flutter/material.dart';

class upi extends StatefulWidget {
  const upi({super.key});

  @override
  State<upi> createState() => _upiState();
}

class _upiState extends State<upi> {
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
      body: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 100),
            child: Text(
              "Enter UPI ID or number",
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 40),
            child: Text(
              "Pay any UPI app using UPI ID or number",
              style: TextStyle(color: Colors.white),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              Expanded(
                child: TextFormField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: "UPI ID or number",
                    hintStyle: TextStyle(color: Colors.white),
                    labelText: "UPI ID or number",
                    labelStyle: TextStyle(color: Colors.white),
                    fillColor: Color(0xff1f2022),
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Container(
              width: 250,
              height: 40,
              decoration: BoxDecoration(
                  color: Colors.grey[800],
                  borderRadius: BorderRadius.circular(20)),
              child: Center(
                  child: Text(
                "submit",
                style: TextStyle(color: Colors.grey),
              )),
            ),
          )
        ],
      ),
    );
  }
}
