class Book {
  String title;
  String author;
  String isbn;
  bool isAvailable;

  Book({
    required this.title,
    required this.author,
    this.isAvailable = true,
    required this.isbn,
  });
}
