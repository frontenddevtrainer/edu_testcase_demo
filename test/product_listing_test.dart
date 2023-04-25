import "package:flutter/material.dart";
import "package:flutter_test/flutter_test.dart";
import "package:http/testing.dart";
import "package:mockito/annotations.dart";
import 'package:mockito/mockito.dart';
import "package:http/http.dart" as http;

import "package:edu_test_demo/api.dart";

import "product_listing_test.mocks.dart" as Mock;

@GenerateMocks([http.Client])
void main() {
  // testWidgets("load data for mock api and renders product listing",
  //     (WidgetTester tester) async {
  //   final apiClient = Mock.MockClient();
  //   final ProductsAPI productsAPI = ProductsAPI();

  //   when(apiClient
  //           .get(Uri.parse("https://jsonplaceholder.typicode.com/photos")))
  //       .thenAnswer((realInvocation) async => http.Response('[]', 200));

  //   final response = await productsAPI.getProducts();

  //   verify(apiClient
  //       .get(Uri.parse("https://jsonplaceholder.typicode.com/photos")));
  // });
}
