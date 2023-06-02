import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:shareskill1/screens/home_page.dart';
import 'package:shareskill1/screens/login_page.dart';
import 'package:shareskill1/screens/createjob_page.dart';

class CustomerPage extends StatelessWidget {
  CustomerPage({super.key});
  static String id = "CustomerPage";
  int index = 2;
  final screens = [
    HomePage(),
    LoginPage(),
  ];
  final navigationKey = GlobalKey<CurvedNavigationBarState>();

  @override
  Widget build(BuildContext context) {
    final items = <Widget>[
      Icon(Icons.work, size: 30),
      Icon(Icons.list, size: 30),
      Icon(Icons.account_circle_sharp, size: 30),
    ];
    return Scaffold(
      extendBody: true,
      backgroundColor: Color.fromARGB(217, 153, 186, 218),
      body: screens[index],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          iconTheme: IconThemeData(color: Colors.white),
        ),
        child: CurvedNavigationBar(
          key: navigationKey,
          color: Colors.blue,
          buttonBackgroundColor: Colors.blue,
          backgroundColor: Colors.transparent,
          height: 60,
          index: index,
          items: items,
          /* onTap: (index) => setState(() => this.index = index), */
        ),
      ),
    );
  }
}
