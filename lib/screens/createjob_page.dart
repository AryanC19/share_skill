import 'package:flutter/material.dart';
import 'package:shareskill1/screens/home_page.dart';
import 'package:shareskill1/screens/login_page.dart';
import 'package:shareskill1/screens/createjob_page.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});
  static String id = "CreateJobPage";

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Color.fromARGB(217, 153, 186, 218),
        body: Column(
          children: [
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
          ],
        ),
      );
}
