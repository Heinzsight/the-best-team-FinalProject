package com.qa.repositories;


import com.qa.models.Author;
import com.qa.models.Book;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface BookRepository extends CrudRepository<Book, Integer> {
    Iterable<Book> findBooksByTitleLikeOrPaperISBNLike(String title, String ISBN);
    Iterable<Book> findBooksByAuthors(List<Author> authors);
}
