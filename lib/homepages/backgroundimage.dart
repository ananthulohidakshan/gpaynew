import 'package:flutter/material.dart';

class image extends StatefulWidget {
  const image({super.key});

  @override
  State<image> createState() => _imageState();
}

class _imageState extends State<image> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 390,
      height: 180,
      decoration: BoxDecoration(
          color: Color(0xff161719),
          image: DecorationImage(
              image: AssetImage("assets/gpay.jpeg"), fit: BoxFit.fill)),
    );
  }
}
