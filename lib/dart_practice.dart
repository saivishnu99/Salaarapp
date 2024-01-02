// ignore_for_file: unused_local_variable

void main() {
  //datatype variablename = value;
  int a = 10;
  double b = 12.00;
  bool isValid = false;
  List<dynamic> students = ["ramesh"];
  print(students);
  students.add("rahul");
  students.addAll([]);
  // print(students[5]);
  students.insert(1, "dravid");
  print(students[1]);

  students.clear();
  print(students.length);
}
