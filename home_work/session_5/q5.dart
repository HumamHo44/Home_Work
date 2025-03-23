// Write a function that takes a sentence as input and returns the longest word in the sentence.
// If multiple words have the same longest length, return the first one that appears.
// .___________________________________________________________________.
//                        |Answer|
void main() {
  print(longestWord('Hello world i am humam'));
}

String longestWord(String sentence) {
  sentence = sentence.replaceAll(RegExp(r'[^\w\s]'), '');
  List<String> words = sentence.split(' ');
  String longestWord = '';
  for (String word in words) {
    if (word.length > longestWord.length) {
      longestWord = word;
    }
  }
  return longestWord;
}
