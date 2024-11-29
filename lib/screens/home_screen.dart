import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Travel Budget Planner'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome to Your Travel Budget Planner',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              child: Text('Add New Trip'),
              onPressed: () {
                Navigator.pushNamed(context, '/add_trip');
              },
            ),
            SizedBox(height: 20),
            ElevatedButton(
              child: Text('View Trips'),
              onPressed: () {
                Navigator.pushNamed(context, '/trip_list');
              },
            ),
          ],
        ),
      ),
    );
  }
}

