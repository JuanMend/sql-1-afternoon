

-- TABLE PERSON

CREATE TABLE person(id SERIAL PRIMARY KEY, 
                    name VARCHAR(255), age INTEGER, heigth INTEGER, 
                    city VARCHAR(255), favorite_color VARCHAR(255)); 


INSERT INTO person(name, age, heigth, city, favorite_color)
VALUES
('Bill',23, 152,'Alabama','Red'),
('Mark', 12, 154,'Alaska','Green'),
('Will', 34, 165, 'Arizona', 'Blue'),
('Steve', 54, 180, 'Colorado', 'Yellow'),
('Anand', 25, 170,'Delaware', 'Orange');


SELECT heigth FROM person ORDER BY heigth DESC;

SELECT heigth FROM person ORDER BY heigth ASC;

SELECT age FROM person ORDER BY age DESC;


SELECT age FROM person WHERE age > 20;

SELECT age FROM person WHERE age IN(18) ORDER BY age;


SELECT age FROM person WHERE age < 20 AND age > 30;


SELECT age FROM person WHERE age != 27;

SELECT favorite_color FROM person WHERE favorite_color != 'Red';

SELECT favorite_color FROM person WHERE favorite_color != 'Red' AND favorite_color != 'Blue';

SELECT favorite_color FROM person WHERE favorite_color = 'Orange' OR favorite_color = 'Green';

SELECT favorite_color FROM person WHERE favorite_color = 'Orange' OR favorite_color = 'Green' OR favorite_color = 'Blue';

SELECT favorite_color FROM person WHERE favorite_color = 'Yellow' OR favorite_color = 'Purple';


-- TABLE ORDERS


CREATE TABLE orders(person_id SERIAL PRIMARY KEY, 
                    product_name VARCHAR(255),
                    product_price INTEGER,
                    quantity INTEGER);

INSERT INTO orders(product_name, product_price, quantity) 
VALUES 
('Butter',5,7),
('Cheese',2,12),
('Ice Cream',10,23),
('Yogurt',6,655),
('Sour Cream',4,500);

SELECT * FROM orders;

SELECT sum(quantity) FROM orders;

SELECT sum(product_price) FROM orders;

SELECT SUM(product_price * quantity) FROM orders WHERE person_id = 0;

-- TABLE ARTIST 

INSERT INTO artist(name)
VALUES('Drake'),('Imagine Dragons'),('Lil Pump');

SELECT name FROM artist ORDER BY name DESC LIMIT 10;

SELECT name FROM artist ORDER BY name ASC LIMIT 5;

SELECT name FROM artist WHERE name LIKE 'Black%';

SELECT name FROM artist WHERE name LIKE '%Black%';

-- TABLE EMPLOYEE

SELECT first_name, last_name FROM employee WHERE city = 'Calgary';

SELECT max(birth_date) FROM employee;

SELECT min(birth_date) FROM employee;

SELECT reports_to FROM employee WHERE reports_to = 2;

SELECT count(*) FROM employee WHERE city = 'Lethbridge';



    --  TABLE INVOICE

    SELECT count(*) FROM invoice WHERE billing_country = 'USA'

    SELECT max(total) FROM invoice;

    SELECT min(total) FROM invoice;

    SELECT total FROM invoice WHERE total > 5;

    SELECT count(total) FROM invoice WHERE total < 5;

    SELECT count(billing_state) FROM invoice WHERE billing_state IN('CA','TX','AZ');

    SELECT avg(total) FROM invoice;

    SELECT sum(total) FROM invoice;
