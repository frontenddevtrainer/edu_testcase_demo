import 'package:edu_test_demo/models/person.dart';

class Student {
  final Person person;

  Student({required this.person});

  reply(){
    return person.talk();
  }

}