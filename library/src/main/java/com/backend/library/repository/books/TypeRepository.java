package com.backend.library.repository.books;

import com.backend.library.model.books.Type;
import org.springframework.data.jpa.repository.JpaRepository;

public interface TypeRepository extends JpaRepository<Type,Long> {

}
