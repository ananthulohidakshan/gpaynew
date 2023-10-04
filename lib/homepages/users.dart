import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

class Usermodels {
  final String Name, imgurl;

  Usermodels(this.Name, this.imgurl);
}

List<Usermodels> dummydata = [
  new Usermodels("hari",
      "https://images.unsplash.com/photo-1610088441520-4352457e7095?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTZ8fG1lbnxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60"),
  new Usermodels("amal",
      "https://plus.unsplash.com/premium_photo-1664015982598-283bcdc9cae8?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8bWVufGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60"),
  new Usermodels("shiyas",
      "https://images.unsplash.com/photo-1503443207922-dff7d543fd0e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8bWVufGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60"),
  new Usermodels("kambi",
      "https://images.unsplash.com/photo-1534030347209-467a5b0ad3e6?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1887&q=80"),
  new Usermodels("minnal",
      "https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8bWVufGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60"),
  new Usermodels("boss",
      "https://images.unsplash.com/photo-1508341591423-4347099e1f19?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8bWVufGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60"),
  new Usermodels("loki",
      "https://images.unsplash.com/photo-1500648767791-00dcc994a43e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTd8fG1lbnxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60"),
  new Usermodels("pakki",
      "https://images.unsplash.com/photo-1500648767791-00dcc994a43e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTd8fG1lbnxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60"),
];

List<String> Operators = ["Jio", "idea", "Airtel", "BSNL"];
List<String> Names = [
  "harikrishnan",
  "amal",
  "boss",
  "shiyas",
  "kambi",
];
List<String> Numbers = [
  "+91 6238527932",
  "+91 6536847952",
  "+91 8236478562",
  "+91 7000541028",
  "+91 8010203060",
];

class business {
  final String businessname, imageurl;
  business(this.businessname, this.imageurl);
}

List<business> businessdata = [
  new business("swiggy", "assets/swiggy.png"),
  new business("Zomato", "assets/Zomato_logo.png"),
  new business("Book Show", "assets/show.png"),
  new business("indian oil", "assets/oil.jpg"),
];
