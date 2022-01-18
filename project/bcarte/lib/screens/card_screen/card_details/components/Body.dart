import 'package:bcarte/constants.dart';
import 'package:bcarte/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            Container(
              height: getProportionateScreenHeight(355),
              child: Stack(
                children: [
                  Opacity(
                    opacity: 0.5,
                    child: ClipPath(
                      clipper: Waveclipper(),
                      child: Container(
                        color: Colors.amberAccent,
                        height: getProportionateScreenHeight(355),
                      ),
                    ),
                  ),
                  ClipPath(
                    clipper: Waveclipper(),
                    child: Container(
                      color: Colors.red,
                      child: Image.asset(
                        "assets/images/profile.jpeg",
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                      height: getProportionateScreenHeight(340),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      width: 100,
                      height: 100,
                      margin: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50.0),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.4),
                              spreadRadius: 3.0,
                              blurRadius: 5.0)
                        ],
                      ),
                      child: Image.asset("assets/images/logon.png"),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: <Widget>[
                Image.asset("assets/images/tra.png"),
                Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Jennifer Eloundou",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 9,
                    ),
                    Text(
                      "Marketing Director",
                      style: TextStyle(
                          fontSize: 18,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w300),
                    ),
                    Text(
                      "at B-CARTE",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
                margin: EdgeInsets.only(left: 50, right: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "About Me",
                      style: TextStyle(fontSize: 22),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Militibus obscurissimis. quam Constantina exultans ut in tuto iam locata mariti salute muneratam vehiculoque inpositam per regiae ianuas emisit in publicum, ut his inlecebris alios quoque ad indicanda proliceret paria vel maiora",
                      style: TextStyle(fontSize: 15),
                    ),
                  ],
                )),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(left: 20, right: 15),
              child: Column(
                children: [
                  infosDetails("Personal phone", "+21260000000"),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        width: 50,
                        height: 50,
                        margin: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50.0),
                          color: kPrimaryColor,
                        ),
                        child: Icon(
                          Icons.mail,
                          color: Colors.white,
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "jennifer@gmail.com",
                            style: TextStyle(fontSize: 18),
                          ),
                          Text("Personal email")
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        width: 50,
                        height: 50,
                        margin: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50.0),
                          color: kPrimaryColor,
                        ),
                        child: Icon(
                          Icons.facebook,
                          color: Colors.white,
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "jennifer@gmail.com",
                            style: TextStyle(fontSize: 18),
                          ),
                          Text("Personal email")
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        width: 50,
                        height: 50,
                        margin: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50.0),
                          color: kPrimaryColor,
                        ),
                        child: Icon(
                          Icons.facebook,
                          color: Colors.white,
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "jennifer@gmail.com",
                            style: TextStyle(fontSize: 18),
                          ),
                          Text("Personal email")
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        width: 50,
                        height: 50,
                        margin: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50.0),
                          color: kPrimaryColor,
                        ),
                        child: Icon(
                          Icons.mail,
                          color: Colors.white,
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "jennifer@gmail.com",
                            style: TextStyle(fontSize: 18),
                          ),
                          Text("Personal email")
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        width: 50,
                        height: 50,
                        margin: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50.0),
                          color: kPrimaryColor,
                        ),
                        child: Icon(
                          Icons.mail,
                          color: Colors.white,
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "jennifer@gmail.com",
                            style: TextStyle(fontSize: 18),
                          ),
                          Text("Personal email")
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            // FloatingActionButton(onPressed: (){},
            // backgroundColor: kPrimaryColor, child: Icon(Icons.send),)
          ],
        ),
      ),
    );
  }

  Row infosDetails(String tex, String datas) {
    return Row(
      children: <Widget>[
        Container(
          width: 50,
          height: 50,
          margin: EdgeInsets.all(8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50.0),
            color: kPrimaryColor,
          ),
          child: Icon(
            Icons.phone,
            color: Colors.white,
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              datas,
              style: TextStyle(fontSize: 18),
            ),
            Text(tex)
          ],
        )
      ],
    );
  }
}

class Waveclipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    debugPrint(size.width.toString());
    var path = new Path();
    path.lineTo(0, size.height);
    var firstStart = Offset(size.width / 5, size.height);
    var firstEnd = Offset(size.width / 2.5, size.height - 50);
    path.quadraticBezierTo(
        firstStart.dx, firstStart.dy, firstEnd.dx, firstEnd.dy);

    var SecondStart =
        Offset(size.width - (size.width / 3.24), size.height - 105);
    var SecondEnd = Offset(size.width, size.height - 10);
    path.quadraticBezierTo(
        SecondStart.dx, SecondStart.dy, SecondEnd.dx, SecondEnd.dy);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
