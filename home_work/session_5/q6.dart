// Write a function that counts the number of words in a given sentence.
// Words are separated by spaces, and the function should ignore extra spaces.
// .___________________________________________________________________.
//                        |Answer|
void main() {
  print(words('Hello world i am humam'));
  print(words('humam              hi           age 23  '));
}

int words(String sentence) {
  List<String> words = sentence.trim().split(' ');
  words = words.where((word) => word.isNotEmpty).toList();
  int wordCount = words.length;
  return wordCount;
}
