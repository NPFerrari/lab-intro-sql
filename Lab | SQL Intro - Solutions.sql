USE sakila;

-- Review the tables in the database.
-- actor table highlight a list of first, last name of actors
SELECT *
FROM actor;

-- address table highlight a list of addresses, districts, phone nr, postal code
SELECT *
FROM address;

-- actor table 
SELECT *
FROM category;

-- Done for all tables

-- Explore tables by selecting all columns from each table or using the in built review features for your client.
SELECT * 
FROM information_schema.columns
where table_schema = 'sakila'
order by table_name,ordinal_position

-- Select one column from a table. Get film titles.
SELECT title
FROM film;

-- Select one column from a table and alias it. Get unique list of film languages under the alias language. Note that we are not asking you to obtain the language per each film, but this is a good time to think about how you might get that information in the future.
SELECT *
FROM language;

SELECT name AS languages
FROM language;

-- Using the select statements and reviewing how many records are returned, can you find out how many stores and staff does the company have? 
-- From counting it seems 16049, but the variable counts 1 and 2 only so my guess will be 2 people?
SELECT *
FROM payment;

SELECT count(staff_id)
FROM payment

SELECT *
FROM staff

SELECT count(last_name)
FROM staff
-- Can you return a list of employee first names only?
SELECT last_name
FROM staff;

-- Bonus: How many unique days did customers rent movies in this dataset?