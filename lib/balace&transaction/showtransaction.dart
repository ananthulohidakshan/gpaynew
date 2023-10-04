import 'package:flutter/material.dart';

class showtransaction extends StatefulWidget {
  const showtransaction({super.key});

  @override
  State<showtransaction> createState() => _showtransactionState();
}

class _showtransactionState extends State<showtransaction> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                width: 390,
                height: 100,
                child: Center(
                    child: Text(
                  "Recent transaction History",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                )),
              ),
              Container(
                width: 390,
                height: 900,
                child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 390,
                      height: 100,
                      child: ListTile(
                        leading: CircleAvatar(
                          radius: 30,
                        ),
                        title: Text(
                          "Harikrishnan",
                          style: TextStyle(color: Colors.white),
                        ),
                        subtitle: Text(
                          "6238527932",
                          style: TextStyle(color: Colors.white),
                        ),
                        trailing: Text(
                          " + 500",
                          style: TextStyle(color: Colors.green[700]),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
