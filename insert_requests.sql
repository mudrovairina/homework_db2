INSERT INTO Genres(name)
values('rock'), ('pop'), ('hip-hop');

INSERT INTO Musicians(name)
values
  ('Metallica'),
  ('Nirvana'),
  ('Alla Pugacheva'),
  ('Britney Spears'),
  ('Eminem');

--DELETE FROM  Musicians;

INSERT INTO Albums(name, "year")
values ('The Black Album', 1991),
	   ('MTV Unplugged', 1994),
	   ('Yes!', 1998),
	   ('Oops!... I Did It Again', 2000),
	   ('In the Zone', 2003),
	   ('The Marshall Mathers LP', 2000),
	   ('The Eminem Show', 2002);

INSERT INTO Tracks(id_album, name, duration)
values (1, 'The Unforgiven', 386),
       (2, 'The Man Who Sold The World', 235),
       (3, 'Pozovi menya s soboj', 257),
       (4, 'Oops!... I Did It Again', 210),
       (5, 'Toxic', 199),
       (6, 'Stan', 332),
       (6, 'The Real Slim Shady', 284),
       (7, 'Without me', 290);

INSERT INTO Genres_Musicians(id_genre, id_musican)
VALUES (1, 1),
	   (1, 2),
	   (2, 3),
	   (2, 4),
	   (3, 5);

INSERT INTO Albums_Musicians(id_album, id_musican)
VALUES (1, 1),
	   (2, 2),
	   (3, 3),
	   (4, 4),
	   (5, 4),
	   (6, 5),
	   (7, 5);

INSERT INTO Collections(name, "year")
VALUES ('Rock hits', 2000),
	   ('Pop hits', 2005),
	   ('Hip-hop hits', 2004),
	   ('Super hits', 2005);

INSERT INTO Collections_Tracks(id_track, id_collection)
VALUES (1, 1),
	   (2, 1),
	   (3, 2),
	   (4, 2),
	   (5, 2),
	   (6, 3),
	   (7, 3),
	   (8, 3),
	   (1, 4),
	   (5, 4),
	   (8, 4);

INSERT INTO Collections(name, "year")
VALUES ('Super hits 2', 2019);

INSERT INTO Collections_Tracks(id_track, id_collection)
VALUES (2, 5),
	   (4, 5),
	   (6, 5);

INSERT INTO Tracks(id_album, name, duration)
values (3, 'My world', 305);