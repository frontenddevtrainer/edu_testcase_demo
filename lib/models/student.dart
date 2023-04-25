import 'dart:convert';
import 'dart:io';

import 'package:edu_test_demo/models/person.dart';
import "package:http/http.dart" as http;

class StudentModel {
  final Person person;
  final http.Client client;

  StudentModel({required this.person, required this.client});

  reply() {
    return person.talk();
  }

  Future<List<dynamic>> courses() async {
    final response = await client.get(Uri.parse("http://example.com/courses"));

    print(response.body);


    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception("Failed");
    }
  }
}
