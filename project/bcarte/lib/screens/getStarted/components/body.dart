import 'package:bcarte/constants.dart';
import 'package:bcarte/screens/sign_in/sign_in_screen.dart';
import 'package:bcarte/screens/sign_up/sign_up_screen.dart';
import 'package:bcarte/size_config.dart';
import 'package:flutter/material.dart';

import '../components/splash_content.dart';
import '../../../components/default_button.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  List<Map<String, String>> splashData = [
    {
      "text":
          "Nem quaeso miretur, si post Nemo quaeso miretur,Nemo quaeso miretur",
      "image": "assets/images/splash2.png"
    },
    {
      "text":
          "Nem quaeso miretur, si post Nemo quaeso miretur,Nemo quaeso miretur",
      "image": "assets/images/splash1.png"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SizedBox(
            width: double.infinity,
            child: Column(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Image.asset(
                    'assets/images/logon.png',
                    width: getProportionateScreenWidth(150),
                  ),
                ),
                Expanded(
                    flex: 3,
                    child: PageView.builder(
                      onPageChanged: (value) {
                        setState(() {
                          currentPage = value;
                        });
                      },
                      itemCount: splashData.length,
                      itemBuilder: (context, index) => SplashContent(
                        image: splashData[index]["image"],
                        text: splashData[index]["text"],
                      ),
                    )),
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: getProportionateScreenWidth(20)
                    ),
                    child: Column(
                      children: <Widget>[
                        const Spacer(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(splashData.length,
                              (index) => buildDots(index: index)),
                        ),
                        const Spacer(flex: 2),
                        DefaultButton(
                          text: "Create an account",
                          press: (){
                            Navigator.pushNamed(context, SignUpScreen.routeName);
                          },
                        ),
                        const Spacer(flex: 1),
                        DefaultButton(
                          text: "Connect to account",
                          press: (){
                            Navigator.pushNamed(context, SignInScreen.routeName);
                          },
                        ),
                        const Spacer(),
                      ],
                    ),
                  ),
                )
              ],
            )));
  }

  AnimatedContainer buildDots({int? index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: EdgeInsets.only(right: 5),
      height: 10,
      width: currentPage == index ? 24 : 10,
      decoration: BoxDecoration(
          color: currentPage == index ? kPrimaryColor : Color(0xFFD8D8D8),
          borderRadius: BorderRadius.circular(3)),
    );
  }
}
