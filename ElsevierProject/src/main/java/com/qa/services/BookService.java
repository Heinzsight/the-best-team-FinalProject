package com.qa.services;

import com.qa.models.Author;
import com.qa.models.Book;
import com.qa.repositories.BookRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BookService {

    @Autowired
    private BookRepository bookRepository;

    public Iterable<Book> findAllBooks() {
        return bookRepository.findAll();

    }

    public Iterable<Book> searchBooksByTitle(String title, List<Author> authors, String isbn) {
        return bookRepository.findBooksByTitleLikeOrAuthorsLikeOrPaperISBNLike("%" + title + "%", authors, "%" + isbn + "%");
    }

//    public Iterable<Book> searchForBooks(String term) {
//        return bookRepository.findBooksByTitleIsLikeOrAuthors("%" + term + "%");
//    }



}
