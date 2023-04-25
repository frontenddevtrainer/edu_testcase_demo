import "package:edu_test_demo/models/student.dart";
import "package:flutter_test/flutter_test.dart";
import "package:mockito/annotations.dart";
import "package:mockito/mockito.dart";
import "package:edu_test_demo/models/person.dart";

import "person_test.mocks.dart";


@GenerateMocks([Person])
void main() {

    final person = MockPerson();
    final Student student = Student(person: person);

    test("verify person can talk", (){
      
      when(person.talk()).thenReturn("hello world");

      person.talk();

      verify(person.talk());

    });

    test("verify student can reply", (){

      when(person.talk()).thenReturn("hello world");

      student.reply();

      verify(person.talk());


    });

}
