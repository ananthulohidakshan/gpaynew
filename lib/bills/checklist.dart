import 'package:flutter/material.dart';

class checklist extends StatefulWidget {
  const checklist({super.key});

  @override
  State<checklist> createState() => _checklistState();
}

class _checklistState extends State<checklist> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 390,
        height: 500,
        color: Color(0xff1f2022),
        child: ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          itemCount: 5,
          itemBuilder: (context, index) {
            return Container(
              width: 390,
              height: 100,
              child: ListTile(
                leading: CircleAvatar(
                    radius: 30, backgroundImage: AssetImage("assets/men.jpg")),
                title: Text(
                  "harikrishnan",
                  style: TextStyle(color: Colors.white),
                ),
                subtitle: Text("Mobile Reacharge",
                    style: TextStyle(color: Colors.white)),
              ),
            );
          },
        ));
  }
}
