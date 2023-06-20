use sakila;
SELECT title, length, RANK() OVER (ORDER BY length) AS ranking
FROM film WHERE length IS NOT NULL AND length > 0; -- films ranked by length
SELECT title, length, rating, RANK() OVER(PARTITION BY rating ORDER BY length) AS ranking
FROM film WHERE length IS NOT NULL AND length >0; -- films ranked by rating category
SELECT c.category_id, c.name, count(*) AS film_amount
FROM category c JOIN film_category b ON c.category_id = b.category_id
GROUP by c.category_id, c.name; -- amount of films by category
SELECT f.actor_id, count(*) AS appearances, a.first_name, a.last_name
FROM sakila.film_actor f JOIN sakila.actor a ON f.actor_id = a.actor_id
GROUP BY f.actor_id ORDER BY appearances DESC; -- actor that has appeared in the most films. 
SELECT c.customer_id, count(r.rental_id) AS rented_movies
FROM sakila.customer c JOIN sakila.rental r ON c.customer_id = r.customer_id
GROUP BY c.customer_id ORDER BY rented_movies DESC;