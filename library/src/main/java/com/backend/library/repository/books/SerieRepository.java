package com.backend.library.repository.books;

import com.backend.library.model.books.Serie;
import org.springframework.data.jpa.repository.JpaRepository;

public interface SerieRepository extends JpaRepository<Serie,Long> {

}
