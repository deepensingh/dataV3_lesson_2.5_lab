-- Select all the actors with the first name ‘Scarlett’.
USE sakila;

SELECT * 
FROM SAKILA.ACTOR;

SELECT first_name
FROM actor
WHERE first_name = 'Scarlett';

-- How many films (movies) are available for rent and how many films have been rented?
SELECT COUNT(*) 
FROM rental;
SELECT COUNT(*)
FROM film;


-- What are the shortest and longest movie duration? Name the values max_duration and min_duration.
SELECT MIN(length) AS min_duration, max(length) AS max_duration 
FROM film;

-- What's the average movie duration expressed in format (hours, minutes)?
SELECT sec_to_time(AVG(length))*60.0 AS 'DURATION_HOURS/Minutes'
from film;

-- How many distinct (different) actors' last names are there?

SELECT DISTINCT(last_name) AS D_Last_Name
FROM actor;

-- Since how many days has the company been operating (check DATEDIFF() function)?
SELECT DATEDIFF(MAX(rental_date), MIN(rental_date)) AS 'Company Operated' 
FROM rental;

-- Show rental info with additional columns month and weekday. Get 20 results.

SELECT rental_date
FROM rental;

-- Add an additional column day_type with values 'weekend' and 'workday' depending on the rental day of the week.


-- Get release years.
SELECT release_year AS 'Release_Years'
FROM film;

-- Get all films with ARMAGEDDON in the title.
SELECT * 
FROM film 
WHERE title LIKE '%ARMAGEDDON%';


SELECT * 
FROM film
WHERE title = 'ARMAGEDDON';

-- Get all films which title ends with APOLLO.

SELECT * 
FROM film
WHERE title LIKE '%Apollo';

-- Get 10 the longest films.
SELECT title, length
FROM film
ORDER BY length desc
limit 10;

-- How many films include Behind the Scenes content?