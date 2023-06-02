import 'package:flutter/material.dart';
import 'package:shareskill1/widget/jobcard.dart';
import 'package:shareskill1/screens/login_page.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  static String id = "HomePage";

  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 3,
        child: Container(
          decoration: BoxDecoration(),
          height: double.infinity,
          width: double.infinity,
          child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: Color.fromARGB(217, 153, 186, 218),
            appBar: AppBar(
              title: const Text(
                "Share Skill",
                style: TextStyle(
                  fontSize: 35,
                  fontFamily: "Poppins",
                  color: Color.fromARGB(217, 153, 186, 218),
                ),
              ),
              centerTitle: true,
              leading: IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () {
                  Navigator.pushNamed(context, LoginPage.id);
                },
              ),
              bottom: const TabBar(
                indicatorColor: Color.fromARGB(255, 51, 51, 176),
                indicatorWeight: 6,
                tabs: [
                  Tab(
                    icon: Icon(Icons.pan_tool_sharp),
                    child: Text(
                      "Customer",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        color: Color.fromARGB(255, 31, 28, 177),
                      ),
                    ),
                  ),
                  Tab(
                    icon: Icon(Icons.work),
                    child: Text(
                      "Worker",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        color: Color.fromARGB(255, 51, 51, 176),
                      ),
                    ),
                  ),
                  Tab(
                    icon: Icon(Icons.account_box_sharp),
                    child: Text(
                      "Profile",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        color: Color.fromARGB(255, 51, 51, 176),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            body: TabBarView(children: [
              ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFEFEAE2),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, HomePage.id);
                      },
                      icon: const FaIcon(
                        FontAwesomeIcons.plus,
                        color: Colors.blue,
                      ),
                      label: const Center(
                        child: Text(
                          "CreateJob",
                          style: TextStyle(
                              color: Colors.black,
                              // color: const Color(0xFFEFEAE2),

                              fontWeight: FontWeight.w500,
                              fontFamily: 'Poppins',
                              fontSize: 23),
                        ),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 10, top: 20.0),
                    child: Text("Pending Job Requests:",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Poppins',
                          fontSize: 20,
                        )),
                  ),
                ],
              ),
              SizedBox(
                child: ListView(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0, left: 10),
                      child: Text(
                        "Available Jobs:",
                        style: TextStyle(
                            color: Colors.black,
                            // color: const Color(0xFFEFEAE2),

                            fontWeight: FontWeight.w500,
                            fontFamily: 'Poppins',
                            fontSize: 23),
                      ),
                    )
/*                     JobListScreen(),
 */ /*  buildCard(0),
                    buildCard(1),
                    buildCard(2),
                    buildCard(0),
                    buildCard(3), */
                  ],
                ),
              ),
              ListView(
                children: [
                  Container(
                    alignment: Alignment.center,
                    color: Colors.transparent,
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Profile",
                          style: TextStyle(fontSize: 35, fontFamily: "Poppins"),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        CircleAvatar(
                          radius: 40,
/*                           backgroundImage: AssetImage("images/ggpfp.jpg"),
 */ // backgroundImage: NetworkImage(user.photoURL!),
                        ),
                        Text(
                          "Aryan",
                          style: TextStyle(fontSize: 35, fontFamily: "Poppins"),
                        ),
                        Text(
                          "aryanchaudhary1900@gmail.com",
                          style: TextStyle(fontSize: 15, fontFamily: "Poppins"),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ]),
          ),
        ),
      );

  Widget buildCard(int i) => Padding(
        padding: EdgeInsets.all(10),
        child: Container(
          /* decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              image: AssetImage("images/bghero.png"),
              fit: BoxFit.cover,
            ),
          ), */
          child: Text("ABCD$i"),
        ),
      );
}
