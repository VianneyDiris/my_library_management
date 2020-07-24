package com.backend.library.model.books;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Entity
@Table(name = "book")
public class Book {
  @Id
  @GeneratedValue(strategy = GenerationType.AUTO)
  private Long id;

  @Column(name = "title")
  private String title;

  @Column(name = "image_path")
  private String imagePath;

  @Column(name = "resume")
  private String resume;

  @ManyToOne
  @JoinColumn(name = "status_id")
  private Status status;

  @ManyToOne
  @JoinColumn(name = "author_id")
  private Author author;

  @ManyToOne
  @JoinColumn(name = "type_id")
  private Type type;

  @ManyToOne
  @JoinColumn(name = "serie_id")
  private Serie serie;


}
