import "package:flutter/material.dart";
import "package:flutter_test/flutter_test.dart";

import "../lib/application.dart";

void main() {
  testWidgets("Application Widget > should render successfully", (WidgetTester tester) async {

    await tester.pumpWidget(const Application());

    expect(tester.renderObject(find.byType(Application)), isNotNull);

  });
}