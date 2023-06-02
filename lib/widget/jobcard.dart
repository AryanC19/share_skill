import 'package:flutter/material.dart';

class JobListScreen extends StatefulWidget {
  @override
  _JobListScreenState createState() => _JobListScreenState();
}

class _JobListScreenState extends State<JobListScreen> {
  List<Widget> jobCards = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Job List'),
      ),
      body: ListView(
        children: jobCards,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            jobCards.add(
              JobCard(
                title: "Food delivery from enzo",
                price: "Price: 50 Rs",
                description: "Please get me an Enzo burger",
              ),
            );
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

class JobCard extends StatelessWidget {
  final String title;
  final String price;
  final String description;

  const JobCard({
    required this.title,
    required this.price,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(title),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(price),
            Text(description),
          ],
        ),
      ),
    );
  }
}
