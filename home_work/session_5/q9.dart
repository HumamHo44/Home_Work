// Create a system to manage books in a library.
// Implement a Book class with properties like title, author, isbn, and isAvailable.
// Implement a Library class with methods:
// - addBook(Book book): Adds a book to the library.
// - borrowBook(String isbn): Marks a book as borrowed if available.
// - returnBook(String isbn): Marks a book as available again.
// - searchByTitle(String title): Returns books matching the title.
// Ensure that the system correctly updates the book's availability.
// .___________________________________________________________________.
//                        |Answer|

import 'book.dart';
import 'library.dart';

void main() {
  Book book1 = Book(title: 'Rodrick Rules', author: 'Jeff Kinney', isbn: '1');
  Book book2 = Book(title: 'Ghosts', author: 'Raina Telgemeier', isbn: '2');

  Library library = Library();

  library.addBook(book1);
  library.addBook(book2);

  library.searchByTitle('Rodrick Rules');
  library.borrowBook('1');
  library.borrowBook('4');

  library.returnBook('1');
}
