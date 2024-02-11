import 'package:flutter/material.dart';
import 'package:kar_care_user/screens/home/home.dart';

import '../screens/profile/profile.dart';

import '../screens/confirm_time_date/confirm_time_date.dart';

import '../screens/vehicals/vehical.dart';

class BottomBar extends StatefulWidget {
  static const String routeName = '/actual-home';
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _page = 1;
  double bottomBarWidth = 42;
  double bottomBarBorderWidth = 5;

  List<Widget> pages = [
    const Vehical(),
    const ConfirmDateTime(),
    const Home(),
    const Text(
      'Coming Soon1',
      style: TextStyle(color: Colors.red, fontSize: 30),
    ),
    const Profile()
  ];

  void updatePage(int page) {
    setState(() {
      _page = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_page],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _page,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black,
        backgroundColor: Colors.white,
        iconSize: 28,
        onTap: updatePage,
        items: [
          // HOME
          BottomNavigationBarItem(
            icon: _page == 0
                ? Image.asset(
                    "assets/images/order.png",
                  )
                : Image.asset(
                    "assets/images/order_outline.png",
                  ),
            label: '',
          ),
          // ACCOUNT
          BottomNavigationBarItem(
            icon: _page == 1
                ? Image.asset(
                    "assets/images/home.png",
                  )
                : Image.asset(
                    "assets/images/home_outline.png",
                  ),
            label: '',
          ),
          // CART
          BottomNavigationBarItem(
            icon: _page == 2
                ? Image.asset(
                    "assets/images/profile.png",
                  )
                : Image.asset(
                    "assets/images/profile_outline.png",
                  ),
            label: '',
          ),
        ],
      ),
    );
  }
}
