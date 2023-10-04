import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:googlepay/balace&transaction/balancepage.dart';
import 'package:googlepay/balace&transaction/showtransaction.dart';

class balancechecker extends StatefulWidget {
  const balancechecker({super.key});

  @override
  State<balancechecker> createState() => _balancecheckerState();
}

class _balancecheckerState extends State<balancechecker> {
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: MultipleRoundedCurveClipper(),
      child: Container(
          width: double.infinity,
          height: 210,
          child: Column(
            children: [
              ListTile(
                leading: Icon(
                  Icons.speed,
                  color: Colors.white,
                  size: 35,
                ),
                title: Text(
                  "Check Your CIBIL Score For",
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
                subtitle: Text(
                  "free",
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
                trailing: Icon(
                  Icons.arrow_right_outlined,
                  size: 50,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => showtransaction(),
                      ));
                },
                child: ListTile(
                  leading: Icon(
                    Icons.history,
                    color: Colors.white,
                    size: 35,
                  ),
                  title: Text(
                    "Show transaction history",
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                  trailing: Icon(
                    Icons.arrow_right_outlined,
                    size: 50,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => balancepage()));
                },
                child: ListTile(
                  leading: Icon(
                    Icons.account_balance,
                    color: Colors.white,
                    size: 35,
                  ),
                  title: Text(
                    "Check Balance",
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                  trailing: Icon(
                    Icons.arrow_right_outlined,
                    size: 50,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          )),
    );
  }
}
