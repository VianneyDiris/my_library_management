package com.backend.library.model.books;

import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@Builder
public class Book {
  private Long id;
  private String title;
  private String imagePath;
  private String resume;
  private Status status;
  private Author author;
  private Type type;
  private Serie serie;


}
