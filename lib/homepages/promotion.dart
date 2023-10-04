import 'package:flutter/material.dart';

class promo extends StatefulWidget {
  const promo({super.key});

  @override
  State<promo> createState() => _promoState();
}

class _promoState extends State<promo> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 40,
          color: Color(0xff161719),
          child: Padding(
            padding: EdgeInsets.only(left: 10),
            child: Text(
              "Promotions",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Container(
          width: double.infinity,
          height: 90,
          color: Color(0xff161719),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 10,
              ),
              CircleAvatar(
                backgroundImage: NetworkImage(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRsrGohYMV1CzqslLBQ5BCCgR3gOP7cR4Lqow&usqp=CAU",
                ),
                radius: 30,
              ),
              CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRsrGohYMV1CzqslLBQ5BCCgR3gOP7cR4Lqow&usqp=CAU"),
              ),
              CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRsrGohYMV1CzqslLBQ5BCCgR3gOP7cR4Lqow&usqp=CAU"),
              ),
              CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRsrGohYMV1CzqslLBQ5BCCgR3gOP7cR4Lqow&usqp=CAU"),
              ),
              SizedBox(
                width: 10,
              ),
            ],
          ),
        ),
        Container(
          width: double.infinity,
          height: 30,
          color: Color(0xff161719),
          child: Row(
            children: [
              SizedBox(
                width: 35,
              ),
              Text(
                "Reward",
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(
                width: 30,
              ),
              Text("Offers", style: TextStyle(color: Colors.white)),
              SizedBox(
                width: 40,
              ),
              Text("Refferals", style: TextStyle(color: Colors.white)),
              SizedBox(
                width: 26,
              ),
              Text("indi-home", style: TextStyle(color: Colors.white)),
            ],
          ),
        ),
      ],
    );
  }
}
