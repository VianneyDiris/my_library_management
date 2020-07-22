
CREATE SEQUENCE author_id_seq;

CREATE TABLE author (
                id BIGINT NOT NULL DEFAULT nextval('author_id_seq'),
                name VARCHAR NOT NULL,
                CONSTRAINT author_pk PRIMARY KEY (id)
);


ALTER SEQUENCE author_id_seq OWNED BY author.id;

CREATE SEQUENCE type_id_seq;

CREATE TABLE type (
                id BIGINT NOT NULL DEFAULT nextval('type_id_seq'),
                name VARCHAR NOT NULL,
                CONSTRAINT type_pk PRIMARY KEY (id)
);


ALTER SEQUENCE type_id_seq OWNED BY type.id;

CREATE TABLE book (
                id BIGINT NOT NULL,
                title VARCHAR NOT NULL,
                type_id BIGINT NOT NULL,
                image_path VARCHAR NOT NULL,
                resume VARCHAR NOT NULL,
                author_id BIGINT NOT NULL,
                CONSTRAINT book_pk PRIMARY KEY (id)
);


CREATE TABLE console (
                id BIGINT NOT NULL,
                name VARCHAR NOT NULL,
                CONSTRAINT console_pk PRIMARY KEY (id)
);


CREATE TABLE game (
                id BIGINT NOT NULL,
                title VARCHAR NOT NULL,
                console_id BIGINT NOT NULL,
                image_path VARCHAR NOT NULL,
                physical BOOLEAN NOT NULL,
                CONSTRAINT game_pk PRIMARY KEY (id)
);


ALTER TABLE book ADD CONSTRAINT author_book_fk
FOREIGN KEY (author_id)
REFERENCES author (id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE book ADD CONSTRAINT type_book_fk
FOREIGN KEY (type_id)
REFERENCES type (id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE game ADD CONSTRAINT console_game_fk
FOREIGN KEY (console_id)
REFERENCES console (id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;
