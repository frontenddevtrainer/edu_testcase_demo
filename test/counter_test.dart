import 'package:flutter/material.dart';
import "package:flutter_test/flutter_test.dart";
import 'package:edu_test_demo/counter.dart';

void main() {
  testWidgets("Counter Widget > counter value should increase.",
      (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(
      home: Scaffold(
        body: Counter(),
      ),
    ));

    // counter start with 0 value.
    final widget = find.text("0");
    expect(widget, findsOneWidget);

    // Trigger tap event
    final button = find.byKey(ValueKey("increase_button"));
    await tester.tap(button);

    // Rebuild
    await tester.pump();

    // counter start with 1 value.
    final widgetCounter = find.text("1");
    expect(widgetCounter, findsOneWidget);
  });

  testWidgets("Counter Widget > counter value should decrease.",
      (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(
      home: Scaffold(
        body: Counter(),
      ),
    ));

    // counter start with 0 value.
    final widget = find.text("0");
    expect(widget, findsOneWidget);

    // Trigger tap event
    final button = find.byKey(ValueKey("decrease_button"));
    await tester.tap(button);

    // Rebuild
    await tester.pump();

    // counter start with 1 value.
    final widgetCounter = find.text("-1");
    expect(widgetCounter, findsOneWidget);
  });
}
