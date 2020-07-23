
CREATE SEQUENCE public.serie_id_seq;

CREATE TABLE public.serie (
                id BIGINT NOT NULL DEFAULT nextval('public.serie_id_seq'),
                name VARCHAR NOT NULL,
                CONSTRAINT serie_pk PRIMARY KEY (id)
);


ALTER SEQUENCE public.serie_id_seq OWNED BY public.serie.id;

CREATE SEQUENCE public.status_id_seq;

CREATE TABLE public.status (
                id BIGINT NOT NULL DEFAULT nextval('public.status_id_seq'),
                name VARCHAR NOT NULL,
                CONSTRAINT status_pk PRIMARY KEY (id)
);


ALTER SEQUENCE public.status_id_seq OWNED BY public.status.id;

CREATE SEQUENCE public.author_id_seq;

CREATE TABLE public.author (
                id BIGINT NOT NULL DEFAULT nextval('public.author_id_seq'),
                name VARCHAR NOT NULL,
                CONSTRAINT author_pk PRIMARY KEY (id)
);


ALTER SEQUENCE public.author_id_seq OWNED BY public.author.id;

CREATE SEQUENCE public.type_id_seq;

CREATE TABLE public.type (
                id BIGINT NOT NULL DEFAULT nextval('public.type_id_seq'),
                name VARCHAR NOT NULL,
                CONSTRAINT type_pk PRIMARY KEY (id)
);


ALTER SEQUENCE public.type_id_seq OWNED BY public.type.id;

CREATE TABLE public.book (
                id BIGINT NOT NULL,
                title VARCHAR NOT NULL,
                type_id BIGINT NOT NULL,
                image_path VARCHAR NOT NULL,
                resume VARCHAR NOT NULL,
                author_id BIGINT NOT NULL,
                status_id BIGINT NOT NULL,
                serie_id BIGINT NOT NULL,
                CONSTRAINT book_pk PRIMARY KEY (id)
);


CREATE TABLE public.console (
                id BIGINT NOT NULL,
                name VARCHAR NOT NULL,
                CONSTRAINT console_pk PRIMARY KEY (id)
);


CREATE TABLE public.game (
                id BIGINT NOT NULL,
                title VARCHAR NOT NULL,
                console_id BIGINT NOT NULL,
                image_path VARCHAR NOT NULL,
                physical BOOLEAN NOT NULL,
                CONSTRAINT game_pk PRIMARY KEY (id)
);


ALTER TABLE public.book ADD CONSTRAINT serie_book_fk
FOREIGN KEY (serie_id)
REFERENCES public.serie (id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.book ADD CONSTRAINT status_book_fk
FOREIGN KEY (status_id)
REFERENCES public.status (id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.book ADD CONSTRAINT author_book_fk
FOREIGN KEY (author_id)
REFERENCES public.author (id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.book ADD CONSTRAINT type_book_fk
FOREIGN KEY (type_id)
REFERENCES public.type (id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.game ADD CONSTRAINT console_game_fk
FOREIGN KEY (console_id)
REFERENCES public.console (id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;
