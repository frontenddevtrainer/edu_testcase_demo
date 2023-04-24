import "package:flutter/material.dart";
import "package:flutter_test/flutter_test.dart";
import 'package:mockito/mockito.dart';

import 'package:edu_test_demo/product_listing.dart';
import "package:edu_test_demo/api.dart";

class MockProductAPI extends Mock implements ProductsAPI {}

void main() {
  testWidgets("load data for mock api and renders product listing",
      (WidgetTester tester) async {
    final mockApi = MockProductAPI();

    when(mockApi.getProducts()).thenAnswer((realInvocation) => Future.value([
          {"title": "this is mock product"}
        ]));

    await tester.pumpWidget(MaterialApp(
      home: Scaffold(
        body: ProductListing(api: mockApi),
      ),
    ));

    expect(find.text("this is mock product"), findsOneWidget);
  });
}
