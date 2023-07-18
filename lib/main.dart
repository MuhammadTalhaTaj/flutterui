import 'package:flutter/material.dart';
import 'package:task1/screens/homescreen/homescreen.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

import 'appbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _page = 0;
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor:
            Color(0xFF1d031c), // Set the background color here
      ),
      home: SafeArea(
        child: Scaffold(
          body: HomeScreen(),

          bottomNavigationBar: FABBottomAppBar(


            centerItemText: '',
            color: Colors.grey,
            backgroundColor: Color(0xFF281125),
            selectedColor: Colors.white,
            notchedShape: CircularNotchedRectangle(),
            onTabSelected: ((_) {}),
            items: [
              FABBottomAppBarItem(iconData: Icons.home_filled, text: 'Home'),
              FABBottomAppBarItem(iconData: Icons.history, text: 'History'),
              FABBottomAppBarItem(
                  iconData: Icons.notifications, text: 'Notification'),
              FABBottomAppBarItem(iconData: Icons.more_horiz, text: 'More'),
            ],
          ),
          // body: _list[_page],
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.white,
            onPressed: () {},
            child: Icon(Icons.settings_overscan,color: Color(0xFF281125),size: 35,),
            elevation: 0,
          ),
        ),
      ),
    );
  }
}
