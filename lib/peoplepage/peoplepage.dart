import 'package:flutter/material.dart';
import 'package:googlepay/peoplepage/pay.dart';

class peoplepage extends StatefulWidget {
  const peoplepage({super.key});

  @override
  State<peoplepage> createState() => _peoplepageState();
}

class _peoplepageState extends State<peoplepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff161719),
      appBar: AppBar(
        actions: [
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.phone,
            color: Colors.white,
          ),
          SizedBox(
            width: 20,
          ),
          Icon(
            Icons.more_vert,
            color: Colors.white,
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 350,
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '''Say "Hello! ''',
                  style: TextStyle(color: Colors.blue, fontSize: 19),
                ),
                Icon(
                  Icons.waving_hand,
                  color: Colors.amber,
                  size: 19,
                ),
                Text(
                  '''"''',
                  style: TextStyle(color: Colors.blue, fontSize: 19),
                )
              ],
            ),
          ),
          SizedBox(
            height: 215,
          ),
          Container(
            width: 390,
            height: 60,
            color: Color(0xff161719),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => pay(),
                        ));
                  },
                  child: Container(
                    height: 40,
                    width: 80,
                    child: Center(
                      child: Text(
                        "Pay",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                    ),
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(20)),
                  ),
                ),
                Container(
                  height: 40,
                  width: 120,
                  child: Center(
                    child: Text(
                      "Request",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(20)),
                ),
                Container(
                  height: 40,
                  width: 140,
                  child: Center(
                    child: Text(
                      "Message",
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.bold),
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: Color(0xff1f2022),
                      borderRadius: BorderRadius.circular(20)),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
