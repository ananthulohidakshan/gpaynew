import 'package:flutter/material.dart';
import 'package:googlepay/homepages/loadmore.dart';
import 'package:googlepay/homepages/users.dart';
import 'package:googlepay/peoplepage/peoplepage.dart';

class peoplelist extends StatefulWidget {
  const peoplelist({super.key});

  @override
  State<peoplelist> createState() => _peoplelistState();
}

class _peoplelistState extends State<peoplelist> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Color(0xff161719),
          height: 190,
          width: double.infinity,
          child: GridView.builder(
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
            ),
            itemCount: dummydata.length,
            itemBuilder: (context, i) {
              return GridTile(
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => peoplepage()));
                      },
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                          dummydata[i].imgurl,
                        ),
                        radius: 30,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      dummydata[i].Name,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
        loadmore()
      ],
    );
  }
}
