package com.backend.library.repository.books;

import com.backend.library.model.books.Status;
import org.springframework.data.jpa.repository.JpaRepository;

public interface StatusRepository extends JpaRepository<Status,Long> {

}
