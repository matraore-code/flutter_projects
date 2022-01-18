import 'package:bcarte/components/custom_social_icon.dart';
import 'package:bcarte/constants.dart';
import 'package:bcarte/size_config.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
                      color: Colors.green,
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
            Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  child: TextField(
                      decoration: InputDecoration(
                    // border: InputBorder.none,
                    hintText: "Prefix",
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.green),
                    ),
                  )),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  child: TextField(
                      decoration: InputDecoration(
                    // border: InputBorder.none,
                    hintText: "First Name",
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.green),
                    ),
                  )),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  child: TextField(
                      decoration: InputDecoration(
                    // border: InputBorder.none,
                    hintText: "Last Name",
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.green),
                    ),
                  )),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  child: TextField(
                      decoration: InputDecoration(
                    // border: InputBorder.none,
                    hintText: "Title",
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.green),
                    ),
                  )),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  child: TextField(
                      decoration: InputDecoration(
                    // border: InputBorder.none,
                    hintText: "Departement",
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.green),
                    ),
                  )),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  child: TextField(
                      decoration: InputDecoration(
                    // border: InputBorder.none,
                    hintText: "Entreprise",
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.green),
                    ),
                  )),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  child: TextField(
                      maxLines: 5,
                      decoration: InputDecoration(
                        // border: InputBorder.none,
                        hintText: "Bio",
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.green),
                        ),
                      )),
                ),
                SizedBox(height: 50),
                Container(
                  height: getProportionateScreenHeight(1000),
                  width: getProportionateScreenWidth(400),
                  padding: EdgeInsets.symmetric(vertical: 30),
                  decoration: BoxDecoration(
                    color: kSecondaryColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: <Widget>[
                      Text(
                        "Add Item",
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        "Click on Icon to add item",
                        style: TextStyle(
                            fontSize: 10,
                            color: Colors.black38,
                            fontStyle: FontStyle.italic),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 20,
                            horizontal: getProportionateScreenWidth(50)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                Icon(
                                  Icons.mail_rounded,
                                  size: 40,
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text("Email"),
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Icon(Icons.phone_rounded, size: 40),
                                SizedBox(
                                  height: 5,
                                ),
                                Text("Phone"),
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Icon(Icons.add_location_alt_rounded, size: 40),
                                SizedBox(
                                  height: 5,
                                ),
                                Text("Adress"),
                              ],
                            ),
                          ],
                        ),
                      ),
                                            Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 20,
                            horizontal: getProportionateScreenWidth(40)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                IconButton(
                                    onPressed: () {},
                                    icon: FaIcon(FontAwesomeIcons.link, size: 40,)),
                                SizedBox(
                                  height: 5,
                                ),
                                Text("Link"),
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                IconButton(
                                    onPressed: () {},
                                    icon: FaIcon(FontAwesomeIcons.globe, size: 40,)),                                SizedBox(
                                  height: 5,
                                ),
                                Text("Website"),
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                IconButton(
                                    onPressed: () {},
                                    icon: FaIcon(FontAwesomeIcons.calendar, size: 40,)),                                SizedBox(
                                  height: 5,
                                ),
                                Text("Calendly"),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 20,
                            horizontal: getProportionateScreenWidth(40)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                Icon(
                                  Icons.facebook_sharp,
                                  size: 40,
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text("facebook"),
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                IconButton(
                                    onPressed: () {},
                                    icon: FaIcon(FontAwesomeIcons.instagram, size: 40,)),
                                SizedBox(
                                  height: 5,
                                ),
                                Text("Instagram"),
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                IconButton(
                                    onPressed: () {},
                                    icon: FaIcon(FontAwesomeIcons.linkedin, size: 40,)),                                SizedBox(
                                  height: 5,
                                ),
                                Text("LinkedIn"),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 20,
                            horizontal: getProportionateScreenWidth(50)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                IconButton(
                                    onPressed: () {},
                                    icon: FaIcon(FontAwesomeIcons.twitter, size: 40,)),
                                SizedBox(
                                  height: 5,
                                ),
                                Text("Twitter"),
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                IconButton(
                                    onPressed: () {},
                                    icon: FaIcon(FontAwesomeIcons.whatsapp, size: 40,)),                                SizedBox(
                                  height: 5,
                                ),
                                Text("Whatsapp"),
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                IconButton(
                                    onPressed: () {},
                                    icon: FaIcon(FontAwesomeIcons.github, size: 40,)),                                SizedBox(
                                  height: 5,
                                ),
                                Text("Github"),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 20,
                            horizontal: getProportionateScreenWidth(50)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                 IconButton(
                                    onPressed: () {},
                                    icon: FaIcon(FontAwesomeIcons.skype, size: 40,)),                                SizedBox(
                                  height: 5,
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text("Skype"),
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                 IconButton(
                                    onPressed: () {},
                                    icon: FaIcon(FontAwesomeIcons.discord, size: 38,)),                                SizedBox(
                                  height: 5,
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text("Discord"),
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                 IconButton(
                                    onPressed: () {},
                                    icon: FaIcon(FontAwesomeIcons.twitch, size: 40,)),                                SizedBox(
                                  height: 5,
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text("Twitch"),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 20,
                            horizontal: getProportionateScreenWidth(50)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                 IconButton(
                                    onPressed: () {},
                                    icon: FaIcon(FontAwesomeIcons.tiktok, size: 40,)),                                SizedBox(
                                  height: 5,
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text("Tiktok"),
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                 IconButton(
                                    onPressed: () {},
                                    icon: FaIcon(FontAwesomeIcons.paypal, size: 40,)),                                SizedBox(
                                  height: 5,
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text("Paypal"),
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                 IconButton(
                                    onPressed: () {},
                                    icon: FaIcon(FontAwesomeIcons.snapchat, size: 40,)),                                SizedBox(
                                  height: 5,
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text("Snapchat"),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ]
                  ),
                ),
              ],
            )
          ],
        ),
      ),
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
