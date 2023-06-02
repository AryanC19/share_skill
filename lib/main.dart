import 'package:flutter/material.dart';
import 'package:shareskill1/screens/login_page.dart';
import 'package:shareskill1/screens/customer_page.dart';
import 'package:shareskill1/screens/profile_page.dart';
import 'package:shareskill1/screens/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Skill share',
      debugShowCheckedModeBanner: false,
      initialRoute: LoginPage.id,
      routes: {
        LoginPage.id: (context) => LoginPage(),
        CustomerPage.id: (context) => CustomerPage(),
        ProfilePage.id: (context) => ProfilePage(),
        HomePage.id: (context) => HomePage(),
      },
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
        useMaterial3: true,
      ),
    );
  }
}
