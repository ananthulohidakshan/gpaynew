import 'package:flutter/material.dart';
import 'package:googlepay/Home_icons/account.dart';
import 'package:googlepay/Home_icons/pay_contact.dart';
import 'package:googlepay/Home_icons/pay_phone.dart';
import 'package:googlepay/Home_icons/scanner.dart';
import 'package:googlepay/Home_icons/selftransfer.dart';
import 'package:googlepay/Home_icons/upi.dart';
import 'package:googlepay/bills/bills.dart';

import 'package:googlepay/recharge/recharge.dart';

class transactionicon extends StatefulWidget {
  const transactionicon({super.key});

  @override
  State<transactionicon> createState() => transactioniconstate();
}

class transactioniconstate extends State<transactionicon> {
  @override
  Widget build(BuildContext context) {
    var _mediaQuery = MediaQuery.of(context);
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(color: Color(0xff161719)),
          width: 390,
          height: 250,
          child: GridView(
            padding: EdgeInsets.all(10),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4, mainAxisSpacing: 8, crossAxisSpacing: 8),
            children: [
              InkWell(
                child: Container(
                  width: _mediaQuery.size.width * 0.5,
                  height: _mediaQuery.size.height * 0.5,
                  child: Column(
                    children: [
                      IconButton(
                          iconSize: 30,
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => scanner()));
                          },
                          icon: Icon(
                            Icons.qr_code_scanner,
                            color: Colors.white,
                          )),
                      Text(
                        '''Scan QR ''',
                        style: TextStyle(color: Colors.white60),
                      ),
                    ],
                  ),
                ),
              ),
              InkWell(
                child: Container(
                  width: _mediaQuery.size.width * 0.5,
                  height: _mediaQuery.size.height * 0.5,
                  child: Column(
                    children: [
                      IconButton(
                          iconSize: 30,
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => recharge()));
                          },
                          icon: Icon(
                            Icons.charging_station,
                            color: Colors.white,
                          )),
                      Text(" Recharge", style: TextStyle(color: Colors.white60))
                    ],
                  ),
                ),
              ),
              InkWell(
                child: Container(
                  width: _mediaQuery.size.width * 0.5,
                  height: _mediaQuery.size.height * 0.5,
                  child: Column(
                    children: [
                      IconButton(
                          iconSize: 30,
                          onPressed: () {
                            setState(() {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => upi(),
                                  ));
                            });
                          },
                          icon: Icon(
                            Icons.payment_outlined,
                            color: Colors.white,
                          )),
                      Text(" Upi pay", style: TextStyle(color: Colors.white60))
                    ],
                  ),
                ),
              ),
              InkWell(
                child: Container(
                  width: _mediaQuery.size.width * 0.5,
                  height: _mediaQuery.size.height * 0.5,
                  child: Column(
                    children: [
                      IconButton(
                          iconSize: 30,
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => account()));
                          },
                          icon: Icon(
                            Icons.account_balance,
                            color: Colors.white,
                          )),
                      Text(" Account", style: TextStyle(color: Colors.white60))
                    ],
                  ),
                ),
              ),
              InkWell(
                child: Container(
                  width: _mediaQuery.size.width * 0.5,
                  height: _mediaQuery.size.height * 0.5,
                  child: Column(
                    children: [
                      IconButton(
                          iconSize: 30,
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => pay_contact()));
                          },
                          icon: Icon(
                            Icons.perm_contact_calendar,
                            color: Colors.white,
                          )),
                      Text("pay contact",
                          style: TextStyle(color: Colors.white60))
                    ],
                  ),
                ),
              ),
              InkWell(
                child: Container(
                  width: _mediaQuery.size.width * 0.5,
                  height: _mediaQuery.size.height * 0.5,
                  child: Column(
                    children: [
                      IconButton(
                          iconSize: 30,
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => selftransfer()));
                          },
                          icon: Icon(
                            Icons.person,
                            color: Colors.white,
                          )),
                      Text(" Transfer", style: TextStyle(color: Colors.white60))
                    ],
                  ),
                ),
              ),
              InkWell(
                child: Container(
                  width: _mediaQuery.size.width * 0.5,
                  height: _mediaQuery.size.height * 0.5,
                  child: Column(
                    children: [
                      IconButton(
                          iconSize: 30,
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => bills()));
                          },
                          icon: Icon(
                            Icons.receipt_long,
                            color: Colors.white,
                          )),
                      Text("Bills", style: TextStyle(color: Colors.white60)),
                    ],
                  ),
                ),
              ),
              InkWell(
                child: Container(
                  width: _mediaQuery.size.width * 0.5,
                  height: _mediaQuery.size.height * 0.5,
                  child: Column(
                    children: [
                      IconButton(
                          iconSize: 30,
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => pay_phone()));
                          },
                          icon: Icon(
                            Icons.send_to_mobile,
                            color: Colors.white,
                          )),
                      Text(" Pay phone",
                          style: TextStyle(color: Colors.white60))
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 15,
          left: 40,
          child: Container(
            child: Center(
              child: Text(
                "UPI ID :hari@ubl1234okbank",
                style: TextStyle(color: Colors.white70),
              ),
            ),
            decoration: BoxDecoration(
              color: Color(0xff1f2022),
              borderRadius: BorderRadius.circular(20),
            ),
            width: 300,
            height: 30,
          ),
        )
      ],
    );
  }
}
