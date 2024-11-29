// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';

import 'package:travel/main.dart';

void main() {
  testWidgets('Test the app', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(TravelBudgetPlannerApp());

    // Verify that the app starts with the SplashScreen.
    expect(find.text('Travel Budget Planner'), findsOneWidget);

    // Wait for the SplashScreen to finish.
    await tester.pumpAndSettle();

    // Verify that the app navigates to the HomeScreen.
    expect(find.text('Welcome to Your Travel Budget Planner'), findsOneWidget);

    // Tap the 'Add New Trip' button and wait for the transition.
    await tester.tap(find.text('Add New Trip'));
    await tester.pumpAndSettle();

    // Verify that the app navigates to the AddTripScreen.
    expect(find.text('Add New Trip'), findsOneWidget);

    // Tap the 'View Trips' button and wait for the transition.
    await tester.tap(find.text('View Trips'));
    await tester.pumpAndSettle();

    // Verify that the app navigates to the TripListScreen.
    expect(find.text('Trips'), findsOneWidget);
  });
}
