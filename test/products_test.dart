import "package:edu_test_demo/models/products.dart";
import "package:edu_test_demo/setup_locator.dart";
import "package:edu_test_demo/products.dart";
import "package:edu_test_demo/setup_locator_mock.dart";
import "package:flutter_test/flutter_test.dart";

void main() {
  setUpAll(() {
    setupLocatorWithMocks();
  });

  tearDownAll(() {
    getItMock.reset();
  });

  testWidgets("Product widget", (widgetTester) async {
    
    await widgetTester.pumpWidget(const ProductDetails());

    expect(find.text("apple"), findsOneWidget);
  });
}
