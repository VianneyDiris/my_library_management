package com.backend.library.repository.games;

import com.backend.library.model.games.Game;
import org.springframework.data.jpa.repository.JpaRepository;

public interface GameRepository extends JpaRepository<Game,Long> {

}
