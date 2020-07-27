package com.backend.library.repository.games;

import com.backend.library.model.games.Game;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface GameRepository extends JpaRepository<Game,Long> {

}
