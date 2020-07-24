package com.backend.library.model.games;

import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@Builder
public class Game {
  private Long id;
  private String title;
  private String imagePath;
  private Console console;
  private Boolean physical;


}
