void main() {
  //   Library Management System
  // Create a system to manage books in a library.
  // Implement a Book class with properties like title, author, isbn, and isAvailable.
  // Implement a Library class with methods:
  // - addBook(Book book): Adds a book to the library.
  // - borrowBook(String isbn): Marks a book as borrowed if available.
  // - returnBook(String isbn): Marks a book as available again.
  // - searchByTitle(String title): Returns books matching the title.
  // Ensure that the system correctly updates the book's availability
  //------------------------------
  Book book = Book(
    title: "Dart programming",
    author: "Tharwat",
    isAvailable: false,
    isBorrwed: true,
  );
  Library library = Library();
  library.addBook(book);
  print(library.borrowBook(book));
  print(library.searchByTitle("Dart programming"));
}

class Book {
<<<<<<< HEAD
  final String title;
  final String author;
  final bool isBorrwed;
  final bool isAvailable;
=======
  String title;
  String author;
  bool isBorrwed;
  bool isAvailable;
>>>>>>> bde002c1fc2317d47cf306801e9bd1addecb0d13
  Book({
    required this.title,
    required this.author,
    this.isBorrwed = false,
    this.isAvailable = true,
  });
}

class Library {
<<<<<<< HEAD
  List<Book> _books = [];

  addBook(Book book) {
    _books.add(book);
  }

  borrowBook(Book book) {
    if (_books.contains(book)) {
      if (book.isAvailable == true) {
        book.isBorrwed = true;
        return book.isBorrwed;
      } else {
        return "Book is already borrowed";
      }
=======
  List<Book> books = [];

  addBook(Book book) {
    books.add(book);
  }

  borrowBook(Book book) {
    if (books.contains(book)) {
      if (book.isAvailable == true) {
        book.isBorrwed = true;
        return book.isBorrwed;
      } else
        return "Book is already borrowed";
>>>>>>> bde002c1fc2317d47cf306801e9bd1addecb0d13
    }
  }

  returnBook(Book book) {
<<<<<<< HEAD
    if (_books.contains(book)) {
=======
    if (books.contains(book)) {
>>>>>>> bde002c1fc2317d47cf306801e9bd1addecb0d13
      if (book.isAvailable == false) {
        book.isAvailable = true;
        return book.isAvailable;
      } else
        return book.isAvailable;
    }
  }

  searchByTitle(String title) {
    bool isFound = false;
<<<<<<< HEAD
    for (var book in _books) {
      if (title == book.title) {
        isFound = true;
        break;
=======
    for (var book in books) {
      if (title == book.title) {
        isFound = true;
>>>>>>> bde002c1fc2317d47cf306801e9bd1addecb0d13
      }
    }
    if (isFound) {
      return "Book is Found";
    } else {
      return "Didn't find the book";
    }
  }
}
