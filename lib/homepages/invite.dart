import 'package:flutter/material.dart';

class invite extends StatefulWidget {
  const invite({super.key});

  @override
  State<invite> createState() => _inviteState();
}

class _inviteState extends State<invite> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 390,
      height: 300,
      color: Colors.grey[800],
      // decoration: BoxDecoration(
      //     gradient: LinearGradient(
      //         begin: Alignment.topCenter,
      //         end: Alignment.bottomCenter,
      //         colors: [Color(0xff161719), Colors.grey])),
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Center(
            child: Container(
              width: 300,
              height: 290,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "invite your friends to google pay",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  Text(
                    "invite your friends to google pay and get 200 when your friend sents their first payment.they get 21 !",
                    textAlign: TextAlign.start,
                    style: TextStyle(color: Colors.white, fontSize: 17),
                  ),
                  Text(
                    "copy your code wnc1220jc",
                    style: TextStyle(color: Colors.white, fontSize: 17),
                  ),
                  Container(
                    height: 40,
                    width: 80,
                    child: Center(
                      child: Text(
                        "invite",
                        style: TextStyle(
                          color: Colors.blue,
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.blue),
                        borderRadius: BorderRadius.circular(20)),
                  ),
                  SizedBox(
                    height: 50,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
