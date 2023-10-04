import 'package:flutter/material.dart';

class electricity extends StatefulWidget {
  const electricity({super.key});

  @override
  State<electricity> createState() => _electricityState();
}

class _electricityState extends State<electricity> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Color(0xff161719),
          appBar: AppBar(
            backgroundColor: Color(0xff1f2022),
            elevation: 0,
            title: Padding(
              padding: EdgeInsets.only(right: 10, top: 10, bottom: 5),
              child: TextFormField(
                decoration: InputDecoration(
                  fillColor: Color(0xff1f2022),
                  filled: true,
                  hintText: 'Search suppliers...',
                  hintStyle: TextStyle(color: Colors.white30),
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                ),
              ),
            ),
          ),
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Container(
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
                        "Kerala electricity board",
                        style: TextStyle(color: Colors.white),
                      ),
                      subtitle: Text(
                        "KSCB",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  );
                },
              ),
            ),
          )),
    );
  }
}
