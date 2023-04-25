import "dart:io";

import "package:edu_test_demo/models/person.dart";
import "package:edu_test_demo/models/student.dart";
import "package:edu_test_demo/student.dart";
import "package:get_it/get_it.dart";
import "package:edu_test_demo/models/products.dart";
import "package:http/http.dart" as http;

final GetIt getIt = GetIt.instance;

void setupLocator() {

  final Person person = Person();
  final client = http.Client();

  getIt.registerSingleton<Products>(Products());
  getIt.registerSingleton<StudentModel>(StudentModel(person: person, client: client));
}
