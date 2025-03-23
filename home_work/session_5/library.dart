import 'book.dart';

class Library {
  List<Book> books = [];

  void addBook(Book book) {
    books.add(book);
    print('${book.title} It has been added to the library');
  }

  void borrowBook(String isbn) {
    try {
      Book book = books.firstWhere((book) => book.isbn == isbn);
      if (book.isAvailable) {
        book.isAvailable = false;
        print('The book is borrowed: ${book.title}');
      } else {
        print('The book is not available : ${book.title}');
      }
    } catch (e) {
      print('This book was not found from this number');
    }
  }

  void returnBook(String isbn) {
    try {
      Book book = books.firstWhere((book) => book.isbn == isbn);
      if (book.isAvailable == false) {
        book.isAvailable = true;
        print('The book has been successfully returned: ${book.title}');
      } else if (book.isAvailable == true) {
        print('The book was not originally borrowed: ${book.title}');
      }
    } catch (e) {
      print('This book was not found from this number');
    }
  }

  List<Book> searchByTitle(String title) {
    List<Book> book =
        books
            .where(
              (book) => book.title.toLowerCase().contains(title.toLowerCase()),
            )
            .toList();

    if (book.isEmpty) {
      print('There are no books with this title');
    }
    return book;
  }
}
