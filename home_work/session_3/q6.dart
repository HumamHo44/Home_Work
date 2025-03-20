// - Task 1: Create a map representing a student with keys for name, age, and grade. Add, update,
// and remove entries from the map, printing the map after each operation.
// - Task 2: Iterate over the map and print each key-value pair.
// .___________________________________________________________________.
//                        |Answer|

void main() {
  Map<String, dynamic> student = createStudent('humam', 23, 'B');
  print(student);
  // - Task 1: Create a map representing a student with keys for name, age, and grade. Add, update,
  student = addEntry(student, 'city', 'Syria');
  student = updateEntry(student, 'age', 22);
  student = removeEntry(student, 'age');
  print(student);
  // - Task 2: Iterate over the map and print each key-value pair.
  iterateMap(student);
}

// Create a map
Map<String, dynamic> createStudent(String name, int age, String grade) {
  Map<String, dynamic> student = {'name': name, 'age': age, 'grade': grade};

  return student;
}

// Add a new element to the map
Map<String, dynamic> addEntry(
  Map<String, dynamic> map,
  String key,
  dynamic value,
) {
  map[key] = value;
  return map;
}

// To update an item on the map
Map<String, dynamic> updateEntry(
  Map<String, dynamic> map,
  String key,
  dynamic value,
) {
  map.containsKey(key);
  map[key] = value;
  return map;
}

// To delete an item in the map
Map<String, dynamic> removeEntry(Map<String, dynamic> map, String key) {
  map.containsKey(key);
  map.remove(key);
  return map;
}

// Duplicate map
void iterateMap(Map<String, dynamic> map) {
  map.forEach((key, value) {
    print('$key: $value');
  });
}
