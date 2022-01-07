import 'package:bcarte/constants.dart';
import 'package:bcarte/model.dart/card.dart';
import 'package:bcarte/screens/card_screen/card_details/card_details.dart';
import 'package:bcarte/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  Body({Key? key}) : super(key: key);
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 8),
      child: ListView(
        physics: ClampingScrollPhysics(),
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 20, bottom: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Hi,",
                  style: TextStyle(
                      fontSize: 20,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w400),
                ),
                Text(
                  "Mamadou Moctar",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
                )
              ],
            ),
          ),
          SizedBox(
            height: getProportionateScreenHeight(260),
            //height: 300,
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, CardDetail.routeName);
              },
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.only(left: 16, right: 6),
                  itemCount: cards.length,
                  itemBuilder: (context, index) {
                    return Container(
                      height: getProportionateScreenHeight(260),
                      width: getProportionateScreenHeight(344),
                      child: Stack(
                        // alignment: Alignment.topCenter,
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 10),
                            height: getProportionateScreenHeight(199),
                            width: getProportionateScreenHeight(344),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(28),
                                color: Color(int.parse(cards[index].bgColor)),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.white60,
                                      blurRadius: 4,
                                      offset: Offset(4, 8))
                                ]),
                          ),
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Container(
                              height: 150,
                              width: 150,
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  image: AssetImage(cards[index].imageProfile),
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment(-0.4, 1),
                            child: Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  image: AssetImage(cards[index].logo),
                                ),
                              ),
                            ),
                          ),
                          // Positioned(
                          //   top: 20,
                          //   left: 20,
                          //   child: Text(
                          //     cards[index].title,
                          //     style: TextStyle(
                          //         fontSize: 20,
                          //         fontWeight: FontWeight.w900,
                          //         color: Colors.white,
                          //         backgroundColor: kPrimaryColor),
                          //   ),
                          // ),
                          Positioned(
                              bottom: 80,
                              right: 20,
                              child: Icon(Icons.edit_rounded))
                        ],
                      ),
                    );
                  }),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 30, left: 30, right: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Insights",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.w700),
                ),
                TextButton(
                  onPressed: () {},
                  child: Row(
                    children: [Text("Refresh"), Icon(Icons.refresh)],
                  ),
                  style: ButtonStyle(
                      side: MaterialStateProperty.all(
                          const BorderSide(width: 0.5, color: Colors.black38)),
                      foregroundColor: MaterialStateProperty.all(Colors.black),
                      padding: MaterialStateProperty.all(
                          const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 30)),
                      textStyle: MaterialStateProperty.all(
                          const TextStyle(fontSize: 16)),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                      )),
                )
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            height: getProportionateScreenHeight(424),
            width: double.infinity,
            child: Stack(
              children: [
                Container(
                  color: Colors.grey[100],
                  margin: EdgeInsets.only(top: 24),
                  padding: EdgeInsets.only(right: 15.0, left: 15, top: 40),
                  //width: getProportionateScreenWidth(200),
                  //height: getProportionateScreenHeight(430),
                  child: GridView.count(
                    crossAxisCount: 2,
                    primary: false,
                    crossAxisSpacing: 10.0,
                    mainAxisSpacing: 15.0,
                    childAspectRatio: 1,
                    children: <Widget>[
                      _buildCard("Tap", 12, context),
                      _buildCard("View in App", 34, context),
                      _buildCard("New Connection", 54, context),
                      _buildCard1("Tap Trough Rate", 5, context)
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: TextButton(
                    onPressed: () {},
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "This Week",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(kPrimaryColor),
                        foregroundColor:
                            MaterialStateProperty.all(Colors.black),
                        padding: MaterialStateProperty.all(
                            const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 30)),
                        textStyle: MaterialStateProperty.all(
                            const TextStyle(fontSize: 16)),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                        )),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget _buildCard(String textTAp, int InsightsData, context) {
  return Padding(
      padding: EdgeInsets.only(top: 5.0, bottom: 5.0, left: 5.0, right: 5.0),
      child: InkWell(
          onTap: () {},
          child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 3.0,
                        blurRadius: 5.0)
                  ],
                  color: Colors.white),
              child: Column(children: [
                Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [Icon(Icons.info_outline_rounded)])),
                SizedBox(height: 20),
                Text(
                  "$InsightsData",
                  style: TextStyle(fontSize: 50),
                ),
                Text(textTAp)
              ]))));
}

Widget _buildCard1(String textTAp, int InsightsData, context) {
  return Padding(
      padding: EdgeInsets.only(top: 5.0, bottom: 5.0, left: 5.0, right: 5.0),
      child: InkWell(
          onTap: () {},
          child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 3.0,
                        blurRadius: 5.0)
                  ],
                  color: Colors.white),
              child: Column(children: [
                Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [Icon(Icons.info_outline_rounded)])),
                SizedBox(height: 20),
                Text(
                  "$InsightsData%",
                  style: TextStyle(fontSize: 50),
                ),
                Text(textTAp)
              ]))));
}
