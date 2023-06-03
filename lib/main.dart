import 'package:flutter/material.dart';
import 'package:shareskill1/screens/login_page.dart';
import 'package:shareskill1/screens/customer_page.dart';
import 'package:shareskill1/screens/createjob_page.dart';
import 'package:shareskill1/screens/home_page.dart';
import 'package:shareskill1/screens/profile_page.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:provider/provider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:cloud_firestore/cloud_firestore.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final GoogleSignIn _googleSignIn = GoogleSignIn();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Skill share',
      debugShowCheckedModeBanner: false,
      initialRoute: LoginPage.id,
      routes: {
        LoginPage.id: (context) => LoginPage(),
        CustomerPage.id: (context) => CustomerPage(),
        HomePage.id: (context) => HomePage(),
        CreateJobPage.id: (context) => CreateJobPage(),
        ProfilePage.id: (context) => ProfilePage(),
      },
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
        useMaterial3: true,
      ),
    );
  }
}
