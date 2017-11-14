Find the author with the name 'Kara Melton' and then select all the articles she has written.

SELECT name, id FROM authors;
       name        | id
-------------------+----
 Terry Burns       |  6
 Anjuan Simmons    |  7
 Kara Melton       |  8
(7 rows)


SELECT author_id, title, id FROM articles WHERE author_id = 8;
 author_id |                                              title                                               | id
-----------+--------------------------------------------------------------------------------------------------+----
         8 | How Tech Business Models Come From Marginalized Communities, But Startups Are Still Mostly White |  9
         8 | Confronting the Assumption of Whiteness in Virtual Spaces                                        | 10
(2 rows)


Find Ontario in the provinces table and then find all the cities in that province.

SELECT * FROM provinces;
 id |           name            | year_founded | country_id
----+---------------------------+--------------+------------
 14 | Ontario                   |         1867 |          1
 15 | Quebec                    |         1867 |          1

 SELECT * FROM cities WHERE province_id = 14;
 id |  name   | year_founded | province_id
----+---------+--------------+-------------
  8 | Toronto |         1793 |          14
 11 | Ottawa  |         1826 |          14
(2 rows)

Who wrote the article called 'Coding Bootcamps and Emotional Labor'?

SELECT id, name FROM authors;
 id |       name
----+-------------------
  2 | Aditya Mukerjee
  3 | Alyx Baldwin
  4 | Tilde Ann Thurium
  5 | Kortney Ziegler
  6 | Terry Burns
  7 | Anjuan Simmons
  8 | Kara Melton
(7 rows)

SELECT id, author_id, title FROM articles WHERE author_id = 4;
 id | author_id |                                              title
----+-----------+--------------------------------------------------------------------------------------------------
  3 |         4 | Coding Bootcamps and Emotional Labor


Write a series of SQL queries to find out how many provinces are in Canada.
# HELPPP!!1
SELECT * FROM provinces;
 id |           name            | year_founded | country_id
----+---------------------------+--------------+------------
 14 | Ontario                   |         1867 |          1
 15 | Quebec                    |         1867 |          1
 16 | New Brunswick             |         1867 |          1
 17 | New Brunswick             |         1867 |          1
 18 | Nova Scotia               |         1867 |          1
 19 | Manitoba                  |         1870 |          1
 20 | Northwest Territories     |         1870 |          1
 21 | British Columbia          |         1871 |          1
 22 | Prince Edward Island      |         1873 |          1
 23 | Yukon Territory           |         1898 |          1
 24 | Alberta                   |         1905 |          1
 25 | Saskatchewan              |         1905 |          1
 26 | Newfoundland and Labrador |         1949 |          1
 27 | Nunavut                   |         1999 |          1
(14 rows)
HELP ' HELPP!'

How many people live at 4740 McDermott Street?

SELECT * FROM residences WHERE address = '4740 McDermott Street';
 id |        address        | year_built | city_id
----+-----------------------+------------+---------
  9 | 4740 McDermott Street |       1923 |      11
(1 row)

SELECT COUNT(id) FROM PERSONS WHERE residence_id = 9 ;
 count
-------
     2
(1 row)

What city is 4740 McDermott Street in?

SELECT

What province is 4740 McDermott Street in?
SELECT * FROM cities WHERE id = 11;
 id |  name  | year_founded | province_id
----+--------+--------------+-------------
 11 | Ottawa |         1826 |          14
(1 row)


What country is 4740 McDermott Street in?
SELECT * FROM countries;
 id |  name  | year_founded | national_animal
----+--------+--------------+-----------------
  1 | Canada |         1867 | beaver
(1 row)


SELECT * FROM provinces;
 id |           name            | year_founded | country_id
----+---------------------------+--------------+------------
 14 | Ontario                   |         1867 |          1
 15 | Quebec                    |         1867 |          1
 16 | New Brunswick             |         1867 |          1
 17 | New Brunswick             |         1867 |          1
 18 | Nova Scotia               |         1867 |          1
 19 | Manitoba                  |         1870 |          1
 20 | Northwest Territories     |         1870 |          1
 21 | British Columbia          |         1871 |          1
 22 | Prince Edward Island      |         1873 |          1
 23 | Yukon Territory           |         1898 |          1
 24 | Alberta                   |         1905 |          1
 25 | Saskatchewan              |         1905 |          1
 26 | Newfoundland and Labrador |         1949 |          1
 27 | Nunavut                   |         1999 |          1
(14 rows)

SELECT * FROM provinces WHERE id = 14;
 id |  name   | year_founded | country_id
----+---------+--------------+------------
 14 | Ontario |         1867 |          1
(1 row)


Find the person named 'Destini Davis' and then use a series of SQL queries to find what country they live in.
SELECT * FROM PERSONS WHERE name ='Destini Davis';
 id |     name      | age | residence_id
----+---------------+-----+--------------
  3 | Destini Davis |  37 |            2
(1 row)

SELECT * FROM residences WHERE id = 2;
 id |      address      | year_built | city_id
----+-------------------+------------+---------
  2 | 537 Wyman Harbors |       1975 |       8
(1 row)

SELECT * FROM cities WHERE id = 8;
 id |  name   | year_founded | province_id
----+---------+--------------+-------------
  8 | Toronto |         1793 |          14
(1 row)

SELECT * FROM provinces WHERE id = 14;
 id |  name   | year_founded | country_id
----+---------+--------------+------------
 14 | Ontario |         1867 |          1
(1 row)

SELECT * FROM countries;
 id |  name  | year_founded | national_animal
----+--------+--------------+-----------------
  1 | Canada |         1867 | beaver
(1 row)



How many articles has Aditya Mukerjee written?

SELECT id, author_id, title FROM articles;
 id | author_id |                                              title
----+-----------+--------------------------------------------------------------------------------------------------
  1 |         2 | I Can Text You A Pile of Poo, But I Can’t Write My Name
  2 |         3 | The Hidden Dangers of AI for Queer and Trans People
  3 |         4 | Coding Bootcamps and Emotional Labor
  4 |         5 | The Problem With the Zuckerberg Analogy for Youth of Color
  5 |         5 | It is Bigger Than Microaggressions
  6 |         6 | Side Project Culture: Opportunities and Obstacles for Marginalized People in Tech
  7 |         7 | Technology Colonialism
  8 |         7 | Making Tech Spaces Safe for Diverse Faces
  9 |         8 | How Tech Business Models Come From Marginalized Communities, But Startups Are Still Mostly White
 10 |         8 | Confronting the Assumption of Whiteness in Virtual Spaces
(10 rows)

SELECT id, name FROM authors WHERE name = 'Aditya Mukerjee';
 id |      name
----+-----------------
  2 | Aditya Mukerjee
(1 row)

SELECT id, author_id, title FROM articles WHERE author_id = 2;
 id | author_id |                          title
----+-----------+---------------------------------------------------------
  1 |         2 | I Can Text You A Pile of Poo, But I Can’t Write My Name
(1 row)
