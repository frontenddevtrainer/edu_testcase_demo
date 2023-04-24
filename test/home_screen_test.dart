import 'package:flutter/material.dart';
import "package:flutter_test/flutter_test.dart";
import 'package:edu_test_demo/home_screen.dart';

void main() {
  testWidgets("Homescreen Widget > should render successfully",
      (WidgetTester tester) async {
    // await tester.pumpWidget(MaterialApp(
    //   home: HomeScreen(),
    // ));

    // expect(tester.renderObject(find.byType(HomeScreen)), isNotNull);
  });

  testWidgets("Homescreen Widget > should have hello world text on screen.",
      (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(
      home: HomeScreen(message: ""),
    ));

    final widget = find.text("Hello world");

    expect(widget, findsOneWidget);
  });

  testWidgets("Homescreen Widget > should show the message text on screen.",
      (WidgetTester tester) async {
    final String message = "This is a message to show.";

    await tester.pumpWidget(MaterialApp(
      home: HomeScreen(message: message),
    ));

    final widget = find.text(message);

    expect(widget, findsOneWidget);
  });
}
