package com.backend.library.controller.games;

import com.backend.library.model.games.Game;
import com.backend.library.repository.games.GameRepository;
import java.util.List;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class GameController {
  private GameRepository gameRepository;

  public GameController(GameRepository gameRepository) {
    this.gameRepository = gameRepository;
  }

  @GetMapping("/games")
  public List<Game> findAll(){
    List<Game> games = gameRepository.findAll();
    return games;
  }
}
