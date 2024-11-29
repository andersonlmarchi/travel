import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';
import 'screens/home_screen.dart';
import 'screens/add_trip_screen.dart';
import 'screens/trip_list_screen.dart';

void main() {
  runApp(TravelBudgetPlannerApp());
}

class TravelBudgetPlannerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Travel Budget Planner',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        '/home': (context) => HomeScreen(),
        '/add_trip': (context) => AddTripScreen(),
        '/trip_list': (context) => TripListScreen(),
      },
    );
  }
}
