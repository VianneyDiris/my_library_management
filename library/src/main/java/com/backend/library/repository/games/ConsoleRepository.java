package com.backend.library.repository.games;

import com.backend.library.model.games.Console;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ConsoleRepository extends JpaRepository<Console,Long> {

}
