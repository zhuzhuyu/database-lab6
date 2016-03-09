
#1
SHOW DATABASES LIKE '%';

#2
USE sakila;
SELECT 
    *
FROM
    world.city;

#3
SELECT 
    r.customer_id, c.first_name, c.last_name, COUNT(*) AS rented
FROM
    customer c
        INNER JOIN
    rental r ON c.customer_id = r.customer_id
GROUP BY r.customer_id
ORDER BY rented DESC;
 
 #4
SELECT 
    r.customer_id, c.first_name, c.last_name, COUNT(*) AS rented
FROM
    customer c
        INNER JOIN
    rental r ON c.customer_id = r.customer_id
GROUP BY r.customer_id
HAVING COUNT(*) > 40;
 
 #5
SELECT 
    r.customer_id, c.first_name, c.last_name, COUNT(*) AS rented
FROM
    customer c
        INNER JOIN
    rental r ON c.customer_id = r.customer_id
GROUP BY r.customer_id
HAVING rented > 30 AND COUNT(*) < 40;

#6  
SELECT 
    c.customer_id,
    c.first_name AS `first name`,
    c.last_name AS `last name`,
    r.return_date AS `return date`
FROM
    film f
        INNER JOIN
    inventory i ON f.film_id = i.film_id
        INNER JOIN
    rental r ON r.inventory_id = i.inventory_id
        INNER JOIN
    customer c ON r.customer_id = c.customer_id
WHERE
    f.title = 'FROST HEAD';

#7 
SELECT 
    c.customer_id,
    c.first_name AS `first name`,
    c.last_name AS `last name`,
    f.title
FROM
    film f
        INNER JOIN
    inventory i ON f.film_id = i.film_id
        INNER JOIN
    rental r ON r.inventory_id = i.inventory_id
        INNER JOIN
    customer c ON r.customer_id = c.customer_id
WHERE
    r.return_date IS NULL;


#8
SELECT 
    *
FROM
    sakila.staff;

#9
SELECT 
    password
FROM
    staff;
    
    
#10
SELECT DISTINCT
    (language_id)
FROM
    sakila.film;

#11
SELECT 
    COUNT(active)
FROM
    sakila.customer
WHERE
    active = 1;

SELECT 
    COUNT(active)
FROM
    sakila.customer
WHERE
    active = 0;

#12
INSERT INTO `sakila`.`language`
(`name`)
VALUES
('Spanish');

INSERT INTO sakila.language (`name`)
VALUES
('Portuguese');

#13
INSERT INTO sakila.film 
(title, description, release_year, language_id, original_language_id,
rental_duration, rental_rate, length, replacement_cost, rating, special_features)
VALUES
('Biutiful', 'This is the story of Uxbal, a man living in this world, but able to see his death, which guides his every move.',
2010, 7, NULL, 6, 5.99, 148, 19.99,'R','Trailers');
                            
INSERT INTO sakila.film 
(title, description, release_year, language_id, original_language_id,
rental_duration, rental_rate, length, replacement_cost, rating, special_features)
VALUES
('Wild Tales', 'Six short stories that explore the extremities of human behavior involving people in distress.',
2014, 7, NULL, 7, 6.99, 122,20.99,'R', 'Behind the scenes');


INSERT INTO sakila.film 
(title, description, release_year, language_id, original_language_id,
rental_duration, rental_rate, length, replacement_cost, rating, special_features)
VALUES
('The Clan','The true story of the Puccio Clan, a family who kidnapped and killed people in the 80s.',
2015,7, NULL, 3, 7.99, 110, 21.99, 'R', 'Deleted Scenes');

INSERT INTO sakila.film 
(title, description, release_year, language_id, original_language_id,
rental_duration, rental_rate, length, replacement_cost, rating, special_features)
VALUES
('The Boy and the World', 'A little boy goes on an adventurous quest in search of his father.',
2013, 8, NULL, 7, 6.99, 80, 16.99, 'PG', 'Trailers');

INSERT INTO sakila.film 
(title, description, release_year, language_id, original_language_id,
rental_duration, rental_rate, length, replacement_cost, rating, special_features)
VALUES
('Seashore', 'Two boys on the edge of adulthood find themselves exploring their relationship.',
2015, 8, NULL, 7, 6.99, 83, 16.99, 'PG','Behind the scenes');
 

  
 

 
 
 
 






