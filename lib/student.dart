import 'package:flutter/material.dart';
import "package:edu_test_demo/models/student.dart";

class Student extends StatefulWidget {
  final StudentModel studentModel;
  const Student({super.key, required this.studentModel});

  @override
  State<Student> createState() => _StudentState();
}

class _StudentState extends State<Student> {
  dynamic _courses = [];

  @override
  initState() {
    super.initState();
    widget.studentModel.courses().then((value) {
      setState(() {
        // print(value);
        _courses = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_courses.length > 0) {
      return Text(_courses[0]);
    } else {
      return Center(
        child: CircularProgressIndicator(),
      );
    }
  }
}
