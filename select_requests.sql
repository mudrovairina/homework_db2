--Название и продолжительность самого длительного трека
SELECT name, duration
FROM Tracks
ORDER BY duration DESC
LIMIT 1;

--SELECT name, duration
--FROM tracks t
--WHERE duration = (SELECT MAX(duration) FROM tracks t2 );

--Название треков, продолжительность которых не менее 3,5 минут
SELECT name, duration
FROM Tracks
WHERE duration > 210;

--Названия сборников, вышедших в период с 2018 по 2020 год включительно
SELECT name
FROM Collections
WHERE year BETWEEN 2018 AND 2020;

--Исполнители, чьё имя состоит из одного слова
SELECT name
FROM Musicians
WHERE name NOT LIKE '% %';

--Название треков, которые содержат слово «мой» или «my».
SELECT name
FROM Tracks
WHERE name ILIKE '%my%';

--Задание 3
--Количество исполнителей в каждом жанре
SELECT name, COUNT(id_musican)
FROM Genres_Musicians AS gm
JOIN Genres AS g
ON gm.id_genre = g.id
GROUP BY name;

--Количество треков, вошедших в альбомы 2019–2020 годов
SELECT name, COUNT(id_track)
FROM Collections_Tracks AS ct
JOIN Collections AS c
ON ct.id_collection = c.id
GROUP BY name;

--Средняя продолжительность треков по каждому альбому
SELECT a.name, avg(duration)
FROM Tracks AS t
JOIN Albums AS a
ON t.id_album  = a.id
GROUP BY a.name;

--Все исполнители, которые не выпустили альбомы в 2020 году
SELECT m.name
FROM Albums_Musicians AS am
JOIN Musicians AS m
ON am.id_musican = m.id
JOIN Albums AS a
ON am.id_album = a.id
WHERE "year" != 2020
GROUP BY m.name;

--Названия сборников, в которых присутствует конкретный исполнитель (выберите его сами)
SELECT c."name"
FROM Collections_Tracks AS ct
JOIN Collections AS c
ON ct.id_collection = c.id
JOIN Tracks AS t
ON ct.id_track  = t.id
JOIN Albums_Musicians AS am
ON t.id_album = am.id_album
JOIN musicians AS m
ON am.id_musican = m.id
WHERE m.name = 'Metallica';