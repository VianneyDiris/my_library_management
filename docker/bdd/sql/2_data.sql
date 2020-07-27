INSERT INTO public.author VALUES (1, 'Masashi Kishimoto');
INSERT INTO public.author VALUES (2, 'Gosho Aoyama');
INSERT INTO public.author VALUES (3, 'Tsugumi Oba');

INSERT INTO public.serie VALUES (1, 'Naruto');
INSERT INTO public.serie VALUES (2, 'Détective Conan');
INSERT INTO public.serie VALUES (3, 'Death Note');

INSERT INTO public.status VALUES (1, 'fini');
INSERT INTO public.status VALUES (2, 'en cours');
INSERT INTO public.status VALUES (3, 'oneshot');

INSERT INTO public.type VALUES (1, 'manga');
INSERT INTO public.type VALUES (2, 'BD');
INSERT INTO public.type VALUES (3, 'roman');
INSERT INTO public.type VALUES (4, 'comics');

INSERT INTO public.book VALUES (1, 'Naruto', 1, 'https://fr.web.img2.acsta.net/pictures/19/08/02/15/12/4423178.jpg', 'Naruto est un garçon qui vit à Konoha,il rêve de devenir Hokage. il est détesté de tout le monde, car il a un démon enfermé en lui (Kuybi). Puis, petit à petit, il va se faire des amis, jusqu''à devenir le héros de son village.', 1, 2, 1);
INSERT INTO public.book VALUES (2, 'Death Note', 1, 'https://images-na.ssl-images-amazon.com/images/I/514bhU7bSML._AC_.jpg', 'Light Yagami , étudiant studieux de 17 ans , découvre le DEATH NOTE , cahier permettant de tuer une personne dont le nom est est écrit à l''intérieur . Light rencontre le posseseur du cahier , le Dieu de la Mort Ryuk . Light est surnommé Kira et il tue tout les criminels pour créer un nouveau monde .', 2, 1, 2);


INSERT INTO public.console VALUES (1, 'Switch');
INSERT INTO public.console VALUES (2, 'Xbox 360');
INSERT INTO public.console VALUES (3, 'Xbox One');
INSERT INTO public.console VALUES (4, 'PSP');
INSERT INTO public.console VALUES (5, '3DS');

INSERT INTO public.game VALUES (1, 'Spyro : Reignited Trilogy', 1, 'https://images-na.ssl-images-amazon.com/images/I/81Uvu9PE9uL._AC_SY445_.jpg', true);
INSERT INTO public.game VALUES (2, 'Super mario Odyssey', 1, 'https://images-na.ssl-images-amazon.com/images/I/91JZdTYcjFL._AC_SY445_.jpg', true);

SELECT pg_catalog.setval('public.author_id_seq', 3, false);

SELECT pg_catalog.setval('public.serie_id_seq', 3, false);

SELECT pg_catalog.setval('public.status_id_seq', 3, false);

SELECT pg_catalog.setval('public.type_id_seq', 4, false);
