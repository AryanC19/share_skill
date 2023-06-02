import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:shareskill1/screens/home_page.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/services.dart' show rootBundle;

import 'package:collection/collection.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

/* import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shareskill1/screens/profile_page.dart';
import 'package:shareskill1/screens/worker_page.dart';
import 'package:shareskill1/screens/home_page.dart';
 */
class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  final GoogleSignIn _googleSignIn = GoogleSignIn();

  final int index = 2;
  static String id = "LoginPage";
  final navigationKey = GlobalKey<CurvedNavigationBarState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color.fromARGB(217, 153, 186, 218),
      body: Column(
        children: <Widget>[
          const SizedBox(
            height: 80,
          ),
          const Text(
            "Share skill",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: 'Poppins',
              fontSize: 60,
              color: const Color(0xFFEFEAE2),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Get any services done ",
            style: TextStyle(
              fontFamily: 'Poppins',
              color: Colors.white,
              fontSize: 14,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: const InputDecoration(
                icon: Icon(Icons.person),
                hintText: 'Enter Name',
                labelText: 'Name ',
              ),
              onSaved: (String? value) {},
              validator: (String? value) {
                return (value != null && value.contains('@'))
                    ? 'Do not use the @ char.'
                    : null;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: const InputDecoration(
                icon: Icon(Icons.password),
                hintText: 'Enter Password',
                labelText: 'Password',
              ),
              onSaved: (String? value) {
                // This optional block of code can be used to run
                // code when the user saves the form.
              },
              validator: (String? value) {
                return (value != null && value.contains('@'))
                    ? 'Do not use the @ char.'
                    : null;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: 100, right: 100, top: 20, bottom: 10),
            child: ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFEFEAE2),
              ),
              onPressed: () {
                /* _googleSignIn.signIn().then((value) {
                  String userName = value!.displayName!;
                  String profilePicture = value!.photoUrl!;
                }); */
                Navigator.pushNamed(context, HomePage.id);
                // final provider =
                //     Provider.of<GoogleSignInProvider>(context, listen: false);
                // provider.googleLogin();
                // GoogleSignIn().signIn();

                // Navigator.pushNamed(context, HomePage.id);
              },
              icon: const FaIcon(
                FontAwesomeIcons.google,
                color: Colors.blue,
              ),
              label: const Text(
                "Sign in with google",
                style: TextStyle(
                    color: Colors.black,
                    // color: const Color(0xFFEFEAE2),

                    fontWeight: FontWeight.w500,
                    fontFamily: 'Poppins',
                    fontSize: 13),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: 100, right: 100, top: 10, bottom: 20),
            child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, HomePage.id);
                },
                child: Text("Already a User?  Sign In")),
          ),
        ],
      ),
    );
  }
}
