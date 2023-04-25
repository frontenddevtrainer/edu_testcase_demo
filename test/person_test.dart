import "dart:io";
import "dart:math";

import "package:edu_test_demo/models/student.dart";
import "package:edu_test_demo/student.dart";
import "package:flutter/material.dart";
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
  final StudentModel student = StudentModel(person: person, client: client);

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
    when(client.get(Uri.parse("http://example.com/courses"))).thenAnswer(
        (realInvocation) async => http.Response('["flutter"]', 200));

    student.courses();

    verify(client.get(Uri.parse("http://example.com/courses")));
  });

  testWidgets("verify student widget works", (WidgetTester tester) async {
    when(client.get(Uri.parse("http://example.com/courses"))).thenAnswer(
        (realInvocation) async => http.Response('["flutter"]', 200));

    await tester.pumpWidget(MaterialApp(
      home: Scaffold(body: Student(studentModel: student)),
    ));

    await tester.pump();

    expect(find.text("flutter"), findsOneWidget);

    verify(client.get(Uri.parse("http://example.com/courses")));
  });
}
