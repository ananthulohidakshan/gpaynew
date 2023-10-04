import 'package:flutter/material.dart';
import 'package:googlepay/Home_icons/icons.dart';
import 'package:googlepay/homepages/backgroundimage.dart';

import 'package:googlepay/homepages/people.dart';
import 'package:googlepay/homepages/peoplelist.dart';

import 'customappbar.dart';

class homescreen extends StatefulWidget {
  const homescreen({super.key});

  @override
  State<homescreen> createState() => _homescreen();
}

class _homescreen extends State<homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1f2022),
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            image(),
            transactionicon(),
            people(),
            peoplelist(),
          ],
        ),
      ),
    );
  }
}
