use sakila;
-- Select all the actors with the first name ‘Scarlett’
select first_name
from actor
where first_name = 'Scarlett';
-- Select all the actors with the last name ‘Johansson’.
select last_name
from actor
where last_name = 'Johansson';
-- How many films (movies) are available for rent?
select rental_id
from rental
where return_date IS NULL;
-- How many films have been rented?
select rental_id
from rental 
where rental_date IS NOT NULL;
-- What is the shortest and longest rental period?
select MAX(rental_duration) as longest_rental
from film;
-- What are the shortest and longest movie duration? Name the values max_duration and min_duration
select MAX(rental_duration) as max_duration, MIN(rental_duration) as min_duration
from film;
-- What's the average movie duration?
select AVG(length) as average_duration
from film;
-- What's the average movie duration expressed in format (hours, minutes)?
select CONCAT('1', ':', AVG(length)-60) AS fixed_time
from film;
-- How many movies longer than 3 hours?
select length 
from film
where length > 180;
-- Get the name and email formatted. Example: Mary SMITH - mary.smith@sakilacustomer.org
select CONCAT(LEFT(first_name,1), ' ', upper(last_name), '-', lower(email)) as new_column
from customer;
-- What's the length of the longest film title?
select MAX(CHAR_LENGTH(title)) as Longest_title
from film;



