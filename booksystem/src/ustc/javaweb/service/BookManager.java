package ustc.javaweb.service;
import java.util.List;

import ustc.javaweb.eo.Book;

public interface BookManager {
    public abstract boolean exists(Book b) throws Exception;
    public abstract void add(Book b) throws Exception;
    public List<Book> getBooks();
    public Book loadByBooknumber(String booknumber);
    public List<Book> loadByBookname(String bookname);
    public List<Book> loadByPubilsher(String publisher);
    public List<Book> loadByAuthor(String author);
}
