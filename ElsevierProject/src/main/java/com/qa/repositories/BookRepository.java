package com.qa.repositories;


import com.qa.models.Book;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface BookRepository extends CrudRepository<Book, Integer> {

//    @Query("select b from Book b where b.title = :searchTerm or b.eBookISBN like :searchTerm or b.paperISBN like :searchTerm")
    Iterable<Book> findBooksByTitleIsLike(String title);

//    Iterable<Book> findBooksByTitleIsLikeOrAuthors(String titleOrAuthor);

}
