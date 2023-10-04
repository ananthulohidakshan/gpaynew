import 'package:flutter/material.dart';

class Broadband extends StatefulWidget {
  const Broadband({super.key});

  @override
  State<Broadband> createState() => _BroadbandState();
}

class _BroadbandState extends State<Broadband> {
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
                  hintText: 'Search providers...',
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
                        "Barath sanjar nigam limited",
                        style: TextStyle(color: Colors.white),
                      ),
                      subtitle: Text(
                        "(BSNL)",
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
