import "dart:io";

import "package:edu_test_demo/models/student.dart";
import "package:flutter_test/flutter_test.dart";
import "package:mockito/annotations.dart";
import "package:mockito/mockito.dart";
import "package:edu_test_demo/models/person.dart";
import "package:http/http.dart" as http;

import "person_test.mocks.dart";

@GenerateMocks([Person, http.Client])
void main() {
  final person = MockPerson();
  final client = MockClient();
  final Student student =
      Student(person: person, client: client);

  test("verify person can talk", () {
    when(person.talk()).thenReturn("hello world");

    person.talk();

    verify(person.talk());
  });

  test("verify student can reply", () {
    when(person.talk()).thenReturn("hello world");

    student.reply();

    verify(person.talk());
  });

  test("verify student get courses", () {
    when(client.get(Uri.parse("http://example.com/courses")))
        .thenAnswer((realInvocation) async => http.Response('{}', 200));

    student.courses();

    verify(client.get(Uri.parse("http://example.com/courses")));
  });
}
