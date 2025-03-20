/// Question:If you need a variable that can hold any type of value and may change during
///execution, which data type would you use? Write a code example to show this.

/// Answer: dynamic
void main() {
  dynamic value = 10;
  value = 23.0;
  value = true;
  print(value);
}
