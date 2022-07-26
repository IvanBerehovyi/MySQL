--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (first_name, second_name, year)
VALUES ('Taras', 'Shevchenho', 1814),
       ('Ivan', 'Franko', 1850),
       ('Lesia', 'Ukrainka', 1930),
       ('Ivan', 'Kotlyarevsky', 1838),
       ('Olga', 'Kobylanska', 1863),
       ('Mykhailo', 'Kotsiubynsky', 1864);

--
-- Dumping data for table `books`
--

INSERT INTO `books`
VALUES (1, 'Kobzar', 1837),
       (2, 'Zakhar Berkut', 1883),
       (3, 'Forest Song', 1912),
       (4, 'Natalka Poltavka', 1819),
       (5, 'Man', 1886),
       (6, 'Duel', 1902);


--
-- Dumping data for table `authors_books`
--

INSERT INTO `authors_books`
VALUES (19, 1, 2),
       (25, 1, 4),
       (28, 1, 5),
       (26, 2, 2),
       (20, 2, 3),
       (29, 2, 4),
       (21, 3, 4),
       (27, 4, 3),
       (22, 4, 5),
       (31, 4, 6),
       (23, 5, 6),
       (24, 6, 1);

--
-- Dumping data for table `genres`
--

INSERT INTO `genres`
VALUES (1, 'lirika'),
       (2, 'poema'),
       (3, 'fantasntick'),
       (4, 'stihi'),
       (5, 'prikluchenia'),
       (6, 'drama');

--
-- Dumping data for table `genre_authors_books`
--

INSERT INTO `genre_authors_books`
VALUES (1, 19),
       (2, 19),
       (3, 21),
       (2, 22),
       (4, 22),
       (5, 23),
       (6, 24),
       (4, 25),
       (3, 27);
