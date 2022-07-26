# Выбрать все книги с жанрами первого автора;
SELECT DISTINCT books.id, books.name, authors.first_name, authors.second_name, g.name as genre_name, g.id
FROM books
         LEFT JOIN authors_books ON authors_books.book_id = books.id
         LEFT JOIN authors ON authors_books.author_id = authors.id
         LEFT JOIN genre_authors_books as gab on authors_books.id = gab.authors_books_id
         LEFT JOIN genres as g on gab.genre_id = g.id
WHERE authors_books.author_id = 1;

-- Выбрать всех авторов которые написали книгу;
SELECT authors.first_name, authors.second_name
FROM authors
         LEFT JOIN authors_books ON authors.id = authors_books.author_id
WHERE book_id = 4;

-- Выбрать все книги одного автора;
SELECT books.name
FROM books
         LEFT JOIN authors_books ON books.id = authors_books.book_id
WHERE author_id = 4;

-- Выбрать все жанры в которых пишет автор;
SELECT genres.name
FROM genres
         LEFT JOIN genre_authors_books ON genres.id = genre_authors_books.genre_id
where authors_books_id = 22;

-- Выбрать все книги которые были написаны авторами рожденными с 1840 по 1880 года;
SELECT books.name
FROM books
         LEFT JOIN authors_books on books.id = authors_books.book_id
         LEFT JOIN authors a on authors_books.author_id = a.id
WHERE a.year BETWEEN 1840
          AND 1880;

# - Выбрать все книги которые были написаны авторами рожденными с 1840 по 1880 года;
SELECT books.name
FROM books
         LEFT JOIN authors_books on books.id = authors_books.book_id
         LEFT JOIN authors a on authors_books.author_id = a.id
WHERE a.year >= 1840
  AND a.year <= 1880;

-- Выбрать всех авторов которые пишут в конкретном жанре;
SELECT authors.first_name, authors.second_name
FROM authors
         LEFT JOIN authors_books on authors.id = authors_books.author_id
         LEFT JOIN genre_authors_books on authors_books.id = genre_authors_books.authors_books_id
WHERE genre_id = 2;

-- Выбрать все жанры книг написанных в 1883;
SELECT genres.name
FROM genres
         LEFT JOIN connections.genre_authors_books gab on genres.id = gab.genre_id
         LEFT JOIN authors_books ab on gab.authors_books_id = ab.id
         LEFT JOIN books b on ab.book_id = b.id
WHERE year = 1883;

-- Выбрать все жанры книг написанных в 1819;
SELECT genres.name
FROM genres
         RIGHT JOIN connections.genre_authors_books gab on genres.id = gab.genre_id
         RIGHT JOIN authors_books ab on ab.id = gab.authors_books_id
         RIGHT JOIN books a on a.id = ab.book_id
WHERE year = 1819;

-- Выбрать всех авторов которые написали больше 2-х книг;
SELECT authors.first_name, authors.second_name
FROM authors_books
         LEFT JOIN authors on authors_books.author_id = authors.id
GROUP BY author_id
HAVING count(authors_books.id) > 2;

-- Выбрать все книги у которых больше 2-х авторов.
SELECT books.name
FROM authors_books
         LEFT JOIN books on books.id = authors_books.book_id
GROUP BY book_id
HAVING count(distinct authors_books.id) > 2;
