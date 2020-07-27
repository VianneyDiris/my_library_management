package com.backend.library.repository.books;

import com.backend.library.model.books.Book;
import org.springframework.data.jpa.repository.JpaRepository;

public interface BookRepository extends JpaRepository<Book,Long> {

}
