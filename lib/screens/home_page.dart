import 'package:flutter/material.dart';
import 'package:shareskill1/screens/createjob_page.dart';
import 'package:shareskill1/screens/profile_page.dart';
import 'package:shareskill1/widget/jobcard.dart';
import 'package:shareskill1/screens/login_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:list_wheel_scroll_view_nls/list_wheel_scroll_view_nls.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:expand_widget/expand_widget.dart';
import 'package:expandable/expandable.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  static String id = "HomePage";

  final int i = 1;
/*    final user = FirebaseAuth.instance.currentUser!;
 */
  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 2,
        child: Container(
          decoration: BoxDecoration(),
          height: double.infinity,
          width: double.infinity,
          child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: Colors.black,
            appBar: AppBar(
              backgroundColor: Colors.black,
              title: Row(
                children: [
                  SizedBox(
                    width: 15,
                  ),
                  const Text(
                    "Share Skill",
                    style: TextStyle(
                      fontSize: 35,
                      fontFamily: "Poppins",
                      color: Color(0xFFEBE86E),
                    ),
                  ),
                  SizedBox(
                    width: 27,
                  ),
                  IconButton(
                    color: Colors.white,
                    onPressed: () {
                      Navigator.pushNamed(context, ProfilePage.id);
                    },
                    icon: const Icon(Icons.account_circle_sharp),
                  )
                ],
              ),
              centerTitle: true,
              leading: IconButton(
/*                Color: ColorColors.white,
 */
                icon: const Icon(Icons.menu, color: Colors.white),
                onPressed: () {
                  Navigator.pushNamed(context, LoginPage.id);
                },
              ),
              bottom: const TabBar(
                indicatorColor: Colors.white,
                indicatorWeight: 6,
                tabs: [
                  Tab(
                    icon: Icon(
                      Icons.pan_tool_sharp,
                      color: Colors.white,
                    ),
                    child: Text(
                      "Ask",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Tab(
                    icon: Icon(
                      Icons.work,
                      color: Colors.white,
                    ),
                    child: Text(
                      "Do",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        color: Colors.white,
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
                        backgroundColor: Color.fromARGB(255, 85, 85, 101),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, CreateJobPage.id);
                      },
                      icon: const FaIcon(
                        FontAwesomeIcons.plus,
                        color: Colors.blue,
                      ),
                      label: const Center(
                        child: Text(
                          "CreateJob",
                          style: TextStyle(
                              color: Colors.white,
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
                    child: Text(
                      "Active :",
                      style: TextStyle(
                        color: Color.fromARGB(255, 60, 167, 50),
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Poppins',
                        fontSize: 20,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 200,
                    child: ListView(
                      padding: const EdgeInsets.all(8),
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: JobCard("Delivery from main gate", "Rs.30",
                              "By 8pm 4/6/23"),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: JobCard("Need Differential Tutorials",
                              "Rs.100/hour", "By 10pm 4/6/23"),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: JobCard(
                              "Need HairCut", "Rs.100/hour", "By 10pm 7/6/23"),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 10, top: 20.0),
                    child: Text("Pending :",
                        style: TextStyle(
                          color: Color.fromARGB(255, 186, 176, 72),
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Poppins',
                          fontSize: 20,
                        )),
                  ),
                  SizedBox(
                    height: 200,
                    child: ListView(
                      padding: const EdgeInsets.all(8),
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: JobCard("Need Calculus Tutorials",
                              "Rs.20/hour", "By 10pm 7/6/23"),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: JobCard(
                              "Need HairCut", "Rs.30/hour", "By 10pm 7/6/23"),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                child: ListView(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 20.0, left: 10),
                      child: Text(
                        "Available Jobs:",
                        style: TextStyle(
                            color: Colors.black,
                            // color: const Color(0xFFEFEAE2),

                            fontWeight: FontWeight.w500,
                            fontFamily: 'Poppins',
                            fontSize: 23),
                      ),
                    ),
                    SizedBox(
                      height: 70,
                      child: ListWheelScrollViewX(
                        scrollDirection: Axis.horizontal,
                        itemExtent: 200,
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              "Development",
                              style: pop(),
                            ),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black,
                              side: BorderSide(
                                width: 3.0,
                                color: Colors.white,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              "Custom",
                              style: pop(),
                            ),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black,
                              side: BorderSide(
                                width: 3.0,
                                color: Colors.white,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              "Tutoring",
                              style: pop(),
                            ),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black,
                              side: BorderSide(
                                width: 3.0,
                                color: Colors.white,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              "Services",
                              style: pop(),
                            ),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black,
                              side: BorderSide(
                                width: 3.0,
                                color: Colors.white,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(18.0),
                      child: CardJob(),
                    ),
                    Padding(
                      padding: EdgeInsets.all(18.0),
                      child: CardJob(),
                    ),
                    Padding(
                      padding: EdgeInsets.all(18.0),
                      child: CardJob(),
                    ),
                    Padding(
                      padding: EdgeInsets.all(18.0),
                      child: CardJob(),
                    ),

/*                     JobListScreen(),
 */
                    /*  buildCard(0),
                    buildCard(1),
                    buildCard(2),
                    buildCard(0),
                    buildCard(3), */
                  ],
                ),
              ),
            ]),
          ),
        ),
      );

  TextStyle pop() {
    return TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w500,
      fontFamily: 'Poppins',
      fontSize: 20,
    );
  }
}

Widget JobCard(String title, String Price, String Date) => Container(
      color: Colors.transparent,
      /*  decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: const DecorationImage(
          image: AssetImage("images/2.png"),
          fit: BoxFit.cover,
        ),
      ), */
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        color: Color.fromARGB(255, 85, 85, 101),
        child: ExpandablePanel(
          header: Padding(
            padding: EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    title,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Poppins",
                      color: Color(0xFFEFEAE2),
                    ),
                  ),
                ),
              ],
            ),
          ),
          collapsed: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                /* StreamBuilder<QuerySnapshot>(
                  stream: FirebaseFirestore.instance
                      .collection("Cards")
                      .snapshots(),
                  builder: (context, AsyncSnapshot snapshot) {
                    if (!snapshot.hasData) return Text("Loading pls wait");

                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          //snapshot.data.docs[1]["desc"],
                          "I will teach you differential equations!",
                          style: const TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Poppins",
                            color: const Color(0xFFEFEAE2),
                          ),
                        ),
                        Text(
                          // snapshot.data.docs[0]["price"],
                          "20",
                          style: const TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Poppins",
                            color: const Color(0xFFEFEAE2),
                          ),
                        ),
                        Text(
                          // snapshot.data.docs[2]["title"],
                          "Tutor",
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
          expanded: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Text(
                  Date,
/*                               snapshot.data.docs[i]["org"],
 */
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Poppins",
                    color: Color(0xFFEFEAE2),
                  ),
                ),
                Text(
                  Price,
/*                               snapshot.data.docs[i]["time"].toString(),
 */
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Poppins",
                    color: Color(0xFFEFEAE2),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );

class CardJob extends StatelessWidget {
  const CardJob({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        color: Color.fromARGB(255, 85, 85, 101),
        child: ExpandablePanel(
          header: const Padding(
            padding: const EdgeInsets.only(bottom: 10, left: 10, right: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Delivery",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Poppins",
                      color: Color(0xFFEFEAE2),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
          collapsed: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "3/5/23",
/*                               snapshot.data.docs[i]["org"],
 */
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Poppins",
                    color: Color(0xFFEFEAE2),
                  ),
                ),
                Text(
                  "Rs.50",
/*                               snapshot.data.docs[i]["time"].toString(),
 */
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Poppins",
                    color: Color(0xFFEFEAE2),
                  ),
                ),
                Text(
                  "By 7pm",
/*                               snapshot.data.docs[i]["date"].toString(),
 */
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Poppins",
                    color: Color(0xFFEFEAE2),
                  ),
                ),
              ],
            ),
          ),
          expanded: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: "Poppins",
                      color: Color(0xFFEFEAE2),
                    ),
                    "Need someone to pickup my Amazon Parcel form library pickup point at 3pm tomorrow.It is a fragile package please handle it with care",
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /*   Widget buildCard(int i) => Padding(
        padding: EdgeInsets.all(10),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              image: AssetImage("images/bghero.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            color: Colors.transparent,
            child: ExpandablePanel(
              header: Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "VIT",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Poppins",
                        color: Color(0xFFEFEAE2),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
              collapsed: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    StreamBuilder<QuerySnapshot>(
                      stream: FirebaseFirestore.instance
                          .collection("events")
                          .snapshots(),
                      builder: (context, AsyncSnapshot snapshot) {
                        if (!snapshot.hasData) return Text("Loading pls wait");

                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              snapshot.data.docs[i]["org"],
                              style: const TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Poppins",
                                color: const Color(0xFFEFEAE2),
                              ),
                            ),
                            Text(
                              snapshot.data.docs[i]["venue"].toString(),
                              style: const TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Poppins",
                                color: const Color(0xFFEFEAE2),
                              ),
                            ),
                            Text(
                              snapshot.data.docs[i]["time"].toString(),
                              style: const TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Poppins",
                                color: const Color(0xFFEFEAE2),
                              ),
                            ),
                            Text(
                              snapshot.data.docs[i]["date"].toString(),
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
                    ),
                  ],
                ),
              ),
              expanded: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(width: 5),
                        borderRadius: BorderRadius.circular(12), //<-- SEE HERE
                      ),
                      child: Image.asset('images/poster.png'),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: "Poppins",
                          color: const Color(0xFFEFEAE2),
                        ),
                        "A fun 36 hour long hackathon conducted by Vinnovate IT",
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ); */
}
