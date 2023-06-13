use sakila;
SELECT last_name FROM actor 
GROUP BY last_name HAVING count(*) = 1; -- Here the last names that are not repeated
SELECT last_name FROM actor 
GROUP BY last_name HAVING count(*) > 1; -- Here the last names that are repeated
SELECT staff_id, count(*) AS processed FROM rental
GROUP BY staff_id; -- here how many rentals were processed by each staff member
SELECT release_year, count(*) AS released FROM film
GROUP BY release_year; -- here how many movies were released by year
SELECT rating, count(*) AS movies_amount FROM film
GROUP BY rating; -- how many movies with different ratings 
SELECT rating, ROUND(AVG(length), 2) AS average FROM film
GROUP BY rating; -- here the average length per rating
SELECT rating FROM film
GROUP BY rating HAVING avg(length) > 120; -- here the rating with an avg duration of more than 2 hours