import 'dart:math';

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

  testWidgets("Homescreen Widget > counter value should increase.",
      (WidgetTester tester) async {
    final String message = "This is a message to show.";

    await tester.pumpWidget(MaterialApp(
      home: HomeScreen(message: message),
    ));

    // counter start with 0 value.
    final widget = find.text("0");
    expect(widget, findsOneWidget);

    // Trigger tap event
    final button = find.byType(ElevatedButton);
    await tester.tap(button);

    // Rebuild
    await tester.pump();

    // counter start with 1 value.
    final widgetCounter = find.text("1");
    expect(widgetCounter, findsOneWidget);

  });
}
