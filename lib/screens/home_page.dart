import 'package:flutter/material.dart';
import 'package:shareskill1/screens/login_page.dart';

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
                children: const [
                  Text("bruh"),
                  Text("bruh"),
                  Text("bruh"),
                ],
              ),
              ListView(
                children: const [
                  Text("brsssuh"),
                  Text("brsssuh"),
                  Text("brusssh"),
                ],
              ),
              ListView(
                children: [
                  Container(
                    alignment: Alignment.center,
                    color: Colors.transparent,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
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
}
