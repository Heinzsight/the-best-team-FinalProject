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

//    @Query("select b from Book b where b.title = :searchTerm or b.eBookISBN like :searchTerm or b.paperISBN like :searchTerm")
    Iterable<Book> findBooksByTitleIsLike(String title);

    Iterable<Book> findBooksByTitleLikeOrAuthorsLikeOrPaperISBNLike(String title, List<Author> Authors, String ISBN);
}
