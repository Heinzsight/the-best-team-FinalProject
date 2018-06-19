package com.qa.services;

import com.qa.models.Book;
import com.qa.repositories.BookRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BookService {
	
	@Autowired
	private BookRepository bookRepository;
	
	public Iterable<Book> findAllBooks()
	{
		return bookRepository.findAll();
		
	}

}
