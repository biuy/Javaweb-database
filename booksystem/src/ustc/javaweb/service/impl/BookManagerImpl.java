package ustc.javaweb.service.impl;
import java.util.List;

//import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ustc.javaweb.eo.Book;
import ustc.javaweb.po.BookMapper;
import ustc.javaweb.service.BookManager;

@Service("bookManager")
public class BookManagerImpl implements BookManager{
    @Autowired
    private BookMapper bookMapper;

    public BookMapper getBookMapper() {
        return bookMapper;
    }

    public void setBookMapper(BookMapper bookMapper) {
        this.bookMapper = bookMapper;
    }

    public boolean exists(Book b) throws Exception {
        System.out.println(b.getBooknumber());
        return (bookMapper.loadByBooknumber(b.getBooknumber())).getStore() >= 1;
    }
    public void add(Book b) throws Exception {
        bookMapper.add(b);
    }
    public List<Book> getBooks() {
        return this.bookMapper.getBooks();
    }

    public Book loadByBooknumber(String booknumber) {
        return this.bookMapper.loadByBooknumber(booknumber);
    }

    public List<Book> loadByBookname(String bookname) {return this.bookMapper.loadByBookname(bookname);}

    public List<Book> loadByPubilsher(String publisher) {return this.bookMapper.loadByPubilsher(publisher);}

    public List<Book> loadByAuthor(String author) {return this.bookMapper.loadByAuthor(author);}
}
