import 'package:flutter/material.dart';
import 'package:googlepay/businesspage/businesspage.dart';
import 'package:googlepay/homepages/balancechecker.dart';
import 'package:googlepay/homepages/bill&recharge.dart';
import 'package:googlepay/homepages/invite.dart';
import 'package:googlepay/homepages/promotion.dart';
import 'package:googlepay/homepages/users.dart';

class loadmore extends StatefulWidget {
  const loadmore({super.key});

  @override
  State<loadmore> createState() => _loadmoreState();
}

class _loadmoreState extends State<loadmore> {
  @override
  Widget build(BuildContext context) {
    var _mediaquery = MediaQuery.of(context);
    return Container(
      child: Column(
        children: [
          Container(
            color: Color(0xff161719),
            height: 818,
            width: double.infinity,
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 70,
                  color: Color(0xff161719),
                  child: ListTile(
                    leading: Text("Businesses",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20)),
                    trailing: Container(
                      child: Row(
                        children: [
                          Icon(
                            Icons.shopping_bag_outlined,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "Explore",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w100),
                          )
                        ],
                      ),
                      width: 90,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: _mediaquery.size.width * 1,
                  height: _mediaquery.size.height * 0.13,
                  color: Color(0xff161719),
                  child: GridView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                      mainAxisSpacing: 2,
                      crossAxisSpacing: 2,
                    ),
                    itemCount: 4,
                    itemBuilder: (context, i) {
                      return GridTile(
                        child: Column(
                          children: [
                            SizedBox(
                              height: 5,
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => businesspage(),
                                    ));
                              },
                              child: CircleAvatar(
                                backgroundImage:
                                    AssetImage(businessdata[i].imageurl),
                                radius: 30,
                              ),
                            ),
                            SizedBox(
                              height: 0,
                            ),
                            Container(
                              width: _mediaquery.size.width * 1,
                              height: 22,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    businessdata[i].businessname,
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ),
                billsrecharge(),
                SizedBox(
                  height: 10,
                ),
                promo(),
                SizedBox(
                  height: 50,
                ),
                balancechecker()
              ],
            ),
          ),
          invite(),
        ],
      ),
    );
  }
}
