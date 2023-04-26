import "package:edu_test_demo/models/products.dart";
import "package:edu_test_demo/setup_locator.dart";
import 'package:get_it/get_it.dart';
import "package:mockito/annotations.dart";
import "package:mockito/mockito.dart";
import "package:edu_test_demo/products.dart";

final getItMock = GetIt.instance;


@GenerateMocks([Products])
void setupLocatorWithMocks() {
  
  when(MockProducts().getAllProducts()).thenReturn(["apple"]);

  getItMock.registerSingleton<Products>(MockProducts());
}
