package ustc.javaweb.action;
import com.opensymphony.xwork2.ModelDriven;

import java.io.*;
import java.util.*;
import java.text.SimpleDateFormat;
import java.sql.Timestamp;

import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;

import ustc.javaweb.baseaction.McBaseAction;
import ustc.javaweb.eo.Book;
import ustc.javaweb.service.BookManager;
import ustc.javaweb.vo.BookInfo;

public class BookInfoAction extends McBaseAction implements ModelDriven<BookInfo>{
    private BookInfo info = new BookInfo();

    @Autowired
    private BookManager bookManager;

    private List<Book> books;

    private Book book;

    //图书查询


    public String add() throws Exception {
        System.out.println(info.getBookname());
        Book b = new Book();
        b.setBookname(info.getBookname());
        b.setBooknumber(info.getBooknumber());
        b.setPrice(info.getPrice());
        b.setPublisher(info.getPublisher());
        b.setPublish_time(info.getPublish_time());
        b.setStore(info.getStore());
        if (bookManager.exists(b)) {
            b.setStore(b.getStore() + info.getStore());
        } else {
            bookManager.add(b);
        }
        this.books = this.bookManager.getBooks();
        return "list";//
    }

    /*图书查询*/
    //按书名查
    public String name() {
        System.out.println(info.getBookname());
        this.books = this.bookManager.loadByBookname(info.getBookname());
        return "bookname";
    }
    //按索书号查
    public String number() {
        this.book = this.bookManager.loadByBooknumber(info.getBooknumber());
        return "booknumber";
    }
    //按作者查
    public String author() {
        this.books = this.bookManager.loadByAuthor(info.getAuthor());
        return "bookauthor";
    }
    //按出版社查
    public String publisher() {
        this.books = this.bookManager.loadByPubilsher(info.getPublisher());
        return "bookpublisher";
    }


    public BookInfo getModel() {
        return info;
    }

    public BookInfo getInfo() {
        return info;
    }

    public void setInfo(BookInfo info) {
        this.info = info;
    }

    public BookManager getBookManager() {
        return bookManager;
    }

    public void setBookManager(BookManager bookManager) {
        this.bookManager = bookManager;
    }

    public List<Book> getBooks() {
        return books;
    }

    public void setBooks(List<Book> books) {
        this.books = books;
    }

    public Book getBook() {
        return book;
    }

    public void setBook(Book book) {
        this.book = book;
    }
}