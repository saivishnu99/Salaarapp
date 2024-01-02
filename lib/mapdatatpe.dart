void main() {
  Map<String, dynamic> person = {
    "name": "ramesh",
    "age": 34,
    "salary": 4532542.999
  };
  print(person);

  print(person["name"]); //

  person["phone"] = 34523523;
  print(person);

  person["salary"] = 345245.44;
  print(person["salary"]); //

  print(person.keys);

  print(person.values);

  person.remove("phone");

  printTheValue();

  final sum = addTwoValues(45, 20);
  print(sum);
  
  
}

void printTheValue() {
  print("print valuem method called");
}

int addTwoValues(int a, int b) {
  return a + b;
}

/*
retuntype functionName(parameters) {

  retrun value;
}

 */