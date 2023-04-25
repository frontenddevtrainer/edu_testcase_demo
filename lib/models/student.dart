import 'dart:convert';
import 'dart:io';

import 'package:edu_test_demo/models/person.dart';
import "package:http/http.dart" as http;

class Student {
  final Person person;
  final http.Client client;

  Student({required this.person, required this.client});

  reply() {
    return person.talk();
  }

  courses() async {
    final response = await client.get(Uri.parse("http://example.com/courses"));

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception("Failed");
    }
  }
}
