import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:shareskill1/screens/home_page.dart';
import 'package:shareskill1/screens/profile_page.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/services.dart' show rootBundle;

import 'package:collection/collection.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});
  static String id = "ProfilePage";

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        alignment: Alignment.center,
        color: Colors.black,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            /* Row(
              children: [
                Text("Coins"),
                FaIcon(Icons(Icons.)),
              ],
            ), */
            Text(
              "Profile",
              style: TextStyle(
                  fontSize: 35, fontFamily: "Poppins", color: Colors.white),
            ),
            SizedBox(
              height: 10,
            ),
            CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage("images/1.jpg"),
              // backgroundImage: NetworkImage(user.photoURL!),
            ),
            Text(
              "Aryan",
              style: TextStyle(
                  fontSize: 35, fontFamily: "Poppins", color: Colors.white),
            ),
            Text(
              "aryanchaudhary1900@gmail.com",
              style: TextStyle(
                  fontSize: 15, fontFamily: "Poppins", color: Colors.white),
            ),
            /* StreamBuilder<QuerySnapshot>(
              stream:
                  FirebaseFirestore.instance.collection("Cards").snapshots(),
              builder: (context, AsyncSnapshot snapshot) {
                if (!snapshot.hasData) return Text("Loading pls wait");

                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      snapshot.data.docs[1]["desc"],
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Poppins",
                        color: const Color(0xFFEFEAE2),
                      ),
                    ),
                    Text(
                      snapshot.data.docs[0]["price"],
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Poppins",
                        color: const Color(0xFFEFEAE2),
                      ),
                    ),
                    Text(
                      snapshot.data.docs[2]["title"],
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Poppins",
                        color: const Color(0xFFEFEAE2),
                      ),
                    ),
                  ],
                );
              },
            ), */
          ],
        ),
      ),
    );
  }
}
