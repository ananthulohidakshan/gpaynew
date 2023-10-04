import 'package:flutter/material.dart';
import 'package:googlepay/bills/billsbuilder.dart';
import 'package:googlepay/bills/checklist.dart';

class bills extends StatefulWidget {
  const bills({super.key});

  @override
  State<bills> createState() => _billsState();
}

class _billsState extends State<bills> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff1f2022),
        appBar: AppBar(
          backgroundColor: Color(0xff1f2022),
          elevation: 0,
          title: Padding(
            padding: EdgeInsets.only(right: 10, top: 10, bottom: 5),
            child: TextFormField(
              decoration: InputDecoration(
                fillColor: Color(0xff1f2022),
                filled: true,
                hintText: 'Search Billers...',
                hintStyle: TextStyle(color: Colors.white30),
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.only(right: 100),
                child: Container(
                  height: 30,
                  width: 200,
                  child: Text(
                    "Payment Categories",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              billbuilder(),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 200,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.blue),
                  color: Color(0xff161719),
                ),
                child: Center(
                  child: Text(
                    "See All",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 150),
                child: SizedBox(
                  width: 200,
                  height: 50,
                  child: Center(
                      child: Text(
                    "Your Checklist",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  )),
                ),
              ),
              checklist(),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 200,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.blue),
                  color: Color(0xff161719),
                ),
                child: Center(
                  child: Text(
                    "See All",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Container(
                width: 390,
                height: 50,
                color: Color(0xff1f2022),
              )
            ],
          ),
        ),
      ),
    );
  }
}
