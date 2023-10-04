import 'package:flutter/material.dart';
import 'package:googlepay/homepages/users.dart';

class rechargebuild extends StatefulWidget {
  const rechargebuild({super.key});

  @override
  State<rechargebuild> createState() => _rechargebuildState();
}

class _rechargebuildState extends State<rechargebuild> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 390,
        height: 500,
        color: Color(0xff161719),
        child: ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          itemCount: Names.length,
          itemBuilder: (context, index) {
            return Container(
              width: 390,
              height: 100,
              child: ListTile(
                leading: CircleAvatar(
                    radius: 30, backgroundImage: AssetImage("assets/men.jpg")),
                title: Text(
                  Names[index],
                  style: TextStyle(color: Colors.white),
                ),
                subtitle:
                    Text(Numbers[index], style: TextStyle(color: Colors.white)),
              ),
            );
          },
        ));
  }
}
