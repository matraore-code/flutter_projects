// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:bcarte/screens/card_screen/card_screen.dart';
import 'package:bcarte/screens/contact_screen/contact_screen.dart';
import 'package:bcarte/screens/scan_screen/scan_screen.dart';
import 'package:bcarte/screens/setting_screen/setting_screen.dart';
import 'package:bcarte/size_config.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static String routeName = "/home_screen";
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
final PageController _pageController = PageController();
    final List<Widget> _screens = [
      CardScreen(),
      ContactScreen(),
      ScanScreen(),
      SettingScreen()
    ];
    int _currentIndex = 0;
    // void _onPageChanged(int index) {
    //   setState(() {
    //     _currentIndex = index;
    //   });
    // }

    void _onitemTapped(int selectedIndex) {
      setState(() {
        _currentIndex = selectedIndex;
      });
      _pageController.jumpToPage(selectedIndex);
    }
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: _screens,
        // onPageChanged: _onPageChanged,
        physics: NeverScrollableScrollPhysics(),
      ),
      // drawer: NavigationDrawerWidget(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        unselectedItemColor: Colors.black38,
        showUnselectedLabels: true,
        selectedItemColor: Color(0xFFEC595A),
        selectedFontSize: 13,
        iconSize: 20,
        unselectedFontSize: 13,
        onTap: _onitemTapped,
        items: [
          BottomNavigationBarItem(
            label: "Profile",
            icon: Icon(Icons.person_outline_outlined),
          ),
          BottomNavigationBarItem(
            label: "Contacts",
            icon: Icon(
              Icons.contacts,
            ),
          ),
          BottomNavigationBarItem(
              label: "Scan",
              icon: Icon(
                Icons.qr_code_scanner_outlined,
              )),
          BottomNavigationBarItem(
              label: "Settings",
              icon: Icon(
                Icons.settings_outlined,
              )),
        ],
      ),
    );
  }
}
