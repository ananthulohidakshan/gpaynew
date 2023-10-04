import 'package:flutter/material.dart';
import 'package:googlepay/peoplepage/gpayanimation.dart';

class pay extends StatefulWidget {
  const pay({super.key});

  @override
  State<pay> createState() => _payState();
}

class _payState extends State<pay> {
  String variableValue = '';
  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff161719),
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 80),
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            CircleAvatar(
              radius: 40,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "paying to User",
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "+91 6238250000",
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "Banking name: User",
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 150,
              height: 50,
              child: TextField(
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white),
                controller: _controller,
                onChanged: (newValue) {
                  setState(() {
                    variableValue = newValue;
                  });
                },
                decoration: InputDecoration(
                    disabledBorder: UnderlineInputBorder(),
                    hintText: "Enter amount",
                    hintStyle: TextStyle(color: Colors.white54),
                    enabledBorder: InputBorder.none),
              ),
            ),
            Container(
              width: 200,
              height: 80,
              child: TextField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                    fillColor: Colors.grey[500],
                    filled: true,
                    hintText: "Add a note",
                    hintStyle: TextStyle(color: Colors.white54),
                    enabledBorder: InputBorder.none),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 2),
              child: SizedBox(
                width: 100,
                height: 50,
                child: FloatingActionButton(
                    shape: BeveledRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      showModalBottomSheet(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(20))),
                          context: context,
                          builder: (BuildContext context) {
                            return Container(
                              decoration: BoxDecoration(
                                  color: Color(0xff1f2022),
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                      topRight: Radius.circular(20))),
                              height: 250,
                              child: Column(
                                children: [
                                  Text(
                                    "Choose account to pay",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "Union bank of india",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  Text(
                                    "........7870",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  Text(
                                    "savings account",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  SizedBox(
                                    height: 40,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => animation(
                                              firstvalue: '$variableValue',
                                            ),
                                          ));
                                    },
                                    child: Container(
                                      width: 300,
                                      height: 40,
                                      decoration: BoxDecoration(
                                          color: Colors.blue,
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: Center(
                                          child: Text(
                                        " pay  Rs.$variableValue",
                                        style: TextStyle(color: Colors.white),
                                      )),
                                    ),
                                  )
                                ],
                              ),
                            );
                          });
                    }),
              ),
            )
          ],
        ),
      ),
    );
  }
}
