import 'package:flutter/material.dart';

class TripListScreen extends StatefulWidget {
  @override
  _TripListScreenState createState() => _TripListScreenState();
}

class _TripListScreenState extends State<TripListScreen> {
  // This would typically come from a database or state management solution
  final List<Map<String, dynamic>> _trips = [
    {'destination': 'Paris', 'budget': 1500.0},
    {'destination': 'Tokyo', 'budget': 2000.0},
    {'destination': 'New York', 'budget': 1800.0},
    {'destination': 'London', 'budget': 1200.0},
    {'destination': 'Sydney', 'budget': 2500.0},
    {'destination': 'Dubai', 'budget': 3000.0},
    {'destination': 'Rome', 'budget': 1400.0},
    {'destination': 'Barcelona', 'budget': 1600.0},
    {'destination': 'Cape Town', 'budget': 2200.0},
    {'destination': 'Rio de Janeiro', 'budget': 1900.0},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Trips'),
      ),
      body: ListView.builder(
        itemCount: _trips.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(_trips[index]['destination']),
            subtitle: Text('Budget: \$${_trips[index]['budget']}'),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              // Navigate to a detail screen for this trip
            },
          );
        },
      ),
    );
  }
}

