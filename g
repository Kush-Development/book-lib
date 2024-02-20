public class Book {
    private String title;
    private String author;
    private int id;

    public Book(String title, String author, int id) {
        this.title = title;
        this.author = author;
        this.id = id;
    }

    // Getters and Setters
    public String getTitle() { return title; }
    public void setTitle(String title) { this.title = title; }
    public String getAuthor() { return author; }
    public void setAuthor(String author) { this.author = author; }
    public int getId() { return id; }
}








=======================================



Here is a coding-based problem related to the ArrayList program:

Problem: Write a program to implement a custom library system that manages books. Each book should have a title, author, and a unique ID. The library system should have the following functionalities:

1. Add a new book to the library.
2. Remove a book from the library by its ID.
3. Update the details of a book (title or author) by its ID.
4. Search for a book by its title or author.
5. Display all books in the library.

Solution:

First, create a Book class with title, author, and ID attributes.

```java
public class Book {
    private String title;
    private String author;
    private int id;

    public Book(String title, String author, int id) {
        this.title = title;
        this.author = author;
        this.id = id;
    }

    // Getters and Setters
    public String getTitle() { return title; }
    public void setTitle(String title) { this.title = title; }
    public String getAuthor() { return author; }
    public void setAuthor(String author) { this.author = author; }
    public int getId() { return id; }
}
```

Next, create the Library class that utilizes an ArrayList to store the books.

```java
import java.util.ArrayList;
import java.util.List;

public class Library {
    private List<Book> books;

    public Library() {
        books = new ArrayList<>();
    }

    // Add a new book to the library
    public void addBook(Book book) {
        books.add(book);
    }

    // Remove a book from the library by its ID
    public void removeBook(int bookId) {
        for (int i = 0; i < books.size(); i++) {
            if (books.get(i).getId() == bookId) {
                books.remove(i);
                break;
            }
        }
    }

    // Update the details of a book (title or author) by its ID
    public void updateBook(int bookId, String updatedDetail, String detailToUpdate) {
        for (Book book : books) {
            if (book.getId() == bookId) {
                if (detailToUpdate.equals("title")) {
                    book.setTitle(updatedDetail);
                } else if (detailToUpdate.equals("author")) {
                    book.setAuthor(updatedDetail);
                }
                break;
            }
        }
    }

    // Search for a book by its title or author
    public Book searchBook(String searchCriteria, String searchTerm) {
        for (Book book : books) {
            if (searchCriteria.equals("title") && book.getTitle().equals(searchTerm)) {
                return book;
            } else if (searchCriteria.equals("author") && book.getAuthor().equals(searchTerm)) {
                return book;
            }
        }
        return null;
    }

    // Display all books in the library
    public void displayBooks() {
        for (Book book : books) {
            System.out.println("Title: " + book.getTitle() + ", Author: " + book.getAuthor() + ", ID: " + book.getId());
        }
    }
}
```

You can now use the Library class to manage books in your custom library system.











==============================================


To run the provided program, you need to create an instance of the Library class and call its methods. Here's a simple example:

```java
public class Main {
    public static void main(String[] args) {
        Library library = new Library();

        // Adding books
        Book book1 = new Book("Book1", "Author1", 1);
        library.addBook(book1);
        Book book2 = new Book("Book2", "Author2", 2);
        library.addBook(book2);

        // Displaying books
        library.displayBooks();

        // Updating a book
        library.updateBook(1, "Updated Title", "title");

        // Searching for a book
        Book searchedBook = library.searchBook("title", "Updated Title");
        if (searchedBook != null) {
            System.out.println("Found Book: " + searchedBook.getTitle() + ", " + searchedBook.getAuthor() + ", " + searchedBook.getId());
        } else {
            System.out.println("Book not found.");
        }

        // Removing a book
        library.removeBook(2);

        // Displaying books after removal
        library.displayBooks();
    }
}
```

This program creates a Library instance, adds two books, displays them, updates the title of the first book, searches for the updated book by title, removes the second book, and finally displays the remaining books in the library.

