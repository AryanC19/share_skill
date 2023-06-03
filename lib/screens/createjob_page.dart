import 'package:flutter/material.dart';
import 'package:shareskill1/screens/home_page.dart';

class CreateJobPage extends StatelessWidget {
  const CreateJobPage({super.key});
  static String id = "CreateJobPage";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black,
      body: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          const Row(
            children: [
/*               Icon(Icons.arrow_back),
 */
              Padding(
                padding: EdgeInsets.only(left: 18.0),
                child: Text(
                  "Job Creation:",
                  style: TextStyle(
                      color: Colors.white,
                      // color: const Color(0xFFEFEAE2),

                      fontWeight: FontWeight.w500,
                      fontFamily: 'Poppins',
                      fontSize: 23),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(
                icon: Icon(Icons.person),
                hintText: 'Job Decription',
                labelText: 'Description ',
              ),
              onSaved: (String? value) {},
              validator: (String? value) {
                return (value != null && value.contains('@'))
                    ? 'Do not use the @ char.'
                    : null;
              },
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(
                icon: Icon(Icons.person),
                labelText: 'Timings',
              ),
              onSaved: (String? value) {},
              validator: (String? value) {
                return (value != null && value.contains('@'))
                    ? 'Do not use the @ char.'
                    : null;
              },
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(
                icon: Icon(Icons.person),
                labelText: 'Date ',
              ),
              onSaved: (String? value) {},
              validator: (String? value) {
                return (value != null && value.contains('@'))
                    ? 'Do not use the @ char.'
                    : null;
              },
            ),
          ),
          SizedBox(
            height: 40,
          ),
          SizedBox(
            width: 160,
            height: 50,
            child: ElevatedButton(
              onPressed: () {},
              child: const Row(
                children: [
                  Center(
                    child: Text(
                      "Submit",
                      style: TextStyle(
                          color: Colors.black,
                          // color: const Color(0xFFEFEAE2),

                          fontWeight: FontWeight.w500,
                          fontFamily: 'Poppins',
                          fontSize: 23),
                    ),
                  ),
                  Icon(Icons.verified),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
