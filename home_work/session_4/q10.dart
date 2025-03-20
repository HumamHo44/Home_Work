// Create a list of 5 words.
// - Iterate through the list using a for-each loop.
// - Convert each word to uppercase.
// - Print each word in uppercase.
// .___________________________________________________________________.
//                        |Answer|

void main() {
  List<String> words = ['world', 'hi', 'humam', 'ali', 'error'];
  words.forEach((item) {
    print(item.toUpperCase());
  });
}
