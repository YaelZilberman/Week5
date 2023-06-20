use sakila;
select * from rental;
CREATE TABLE IF NOT EXISTS rentals_may (
    customer_id SMALLINT UNSIGNED,
    inventory_id MEDIUMINT UNSIGNED, 
    last_update TIMESTAMP, 
    rental_date DATETIME, 
    rental_id INT, 
    return_date DATETIME, 
    staff_id TINYINT UNSIGNED)
        SELECT customer_id, inventory_id, last_update, rental_date, rental_id, return_date, staff_id 
        FROM rental
        WHERE MONTH(rental_date) = 5; -- here the creation of table 'rentals_may' with the values from table 'rental' for May
SELECT * FROM rentals_may;
CREATE TABLE IF NOT EXISTS rentals_june (
    customer_id SMALLINT UNSIGNED,
    inventory_id MEDIUMINT UNSIGNED, 
    last_update TIMESTAMP, 
    rental_date DATETIME, 
    rental_id INT, 
    return_date DATETIME, 
    staff_id TINYINT UNSIGNED) 
    SELECT customer_id, inventory_id, last_update, rental_date, rental_id, return_date, staff_id 
        FROM rental
        WHERE MONTH(rental_date) = 6; -- here the creation of table 'rentals_june' with the values from table 'rental' for June
SELECT * from rentals_june;