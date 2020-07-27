package com.backend.library.repository.books;

import com.backend.library.model.books.Author;
import org.springframework.data.jpa.repository.JpaRepository;

public interface AuthorRepository extends JpaRepository<Author,Long> {

}
