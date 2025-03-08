/// Question: What is the difference between var and dynamic in Dart? Provide an example of each.

/// Answer:
/// var:
/// 1_ automatically determines the type at initialization and cannot be changed afterward.
/// 2_ If the variable var is not given a value, it will automatically take the value dynamic.
/// dynamic:
/// 1_ Allows the data type to be changed while the program is running.
///  It is more flexible with APIs.
/// 2_ Useful when the data type is not known in advance.

void main() {
  var name = "Humam";
  print(name);

  ///The type cannot be changed after we have set the string value.
  /// name = 23;
  /// output : Error: A value of type 'int' can't be assigned to a variable of type 'String'.

  ///It allows us to change the value and will print the last value given to it. (value => true)
  dynamic value = 10;
  value = 23.0;
  value = "Hello";
  value = true;
  print(value);
}
