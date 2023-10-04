import 'package:flutter/material.dart';
import 'package:googlepay/homepages/users.dart';

import 'package:googlepay/image_constant/images.dart';

class operatorbuild extends StatefulWidget {
  const operatorbuild({super.key});

  @override
  State<operatorbuild> createState() => _operatorbuildState();
}

class _operatorbuildState extends State<operatorbuild> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 390,
        height: 500,
        color: Color(0xff161719),
        child: ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          itemCount: Operators.length,
          itemBuilder: (context, index) {
            return Container(
              width: 390,
              height: 100,
              child: ListTile(
                leading: CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage("${operatorsimage[index]}"),
                  //child: operatorsimage[index],
                ),
                title: Text(
                  Operators[index],
                  style: TextStyle(color: Colors.white),
                ),
              ),
            );
          },
        ));
  }
}
