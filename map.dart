class Library {
  List<Map<String, dynamic>> books = [];

  // Method to add a book to the library
  void addBook(String title, String author, int year) {
    books.add({
      'title': title,
      'author': author,
      'year': year,
    });
  }

  // Method to print all books in the library
  void printAllBooks() {
    for (var book in books) {
      print('Title: ${book['title']}, Author: ${book['author']}, Year: ${book['year']}');
    }
  }
}

void main() {
  Library myLibrary = Library();

  // Adding books to the library
  myLibrary.addBook('1984', 'George Orwell', 1949);
  myLibrary.addBook('To Kill a Mockingbird', 'Harper Lee', 1960);
  myLibrary.addBook('The Great Gatsby', 'F. Scott Fitzgerald', 1925);

  // Printing all books in the library
  myLibrary.printAllBooks();
}