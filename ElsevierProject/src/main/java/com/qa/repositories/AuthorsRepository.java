package com.qa.repositories;

import com.qa.models.Author;
import org.springframework.data.repository.CrudRepository;

public interface AuthorsRepository extends CrudRepository<Author, Integer> {
    Author findAuthorByAuthorName(String authorName);
}
