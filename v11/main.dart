import 'vid11.dart';

void main() {
  StudentWithConstructor newStudent = StudentWithConstructor(gpa: 2.0, isFailing: false, university: "Yale");
  StudentWithConstructor otherStudent = StudentWithConstructor.positional(1.5, false, "UCL");

  List newList = [];
  List otherList = List.filled(100, 1);

  print(otherList);
}