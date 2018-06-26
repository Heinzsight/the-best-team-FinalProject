package com.qa.services;

import com.qa.models.Author;
import com.qa.models.Book;
import com.qa.repositories.AuthorsRepository;
import com.qa.repositories.BookRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AuthorService {

    @Autowired
    private AuthorsRepository authorsRepository;

    public Iterable<Author> findAllBooks() {
        return authorsRepository.findAll();

    }

    public Author findAuthorByAuthorName(String authorName) {
        return authorsRepository.findAuthorByAuthorName(authorName);
    }

//    public Iterable<Book> searchForBooks(String term) {
//        return bookRepository.findBooksByTitleIsLikeOrAuthors("%" + term + "%");
//    }



}
