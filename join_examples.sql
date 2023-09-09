CREATE TABLE customer (
	id integer PRIMARY KEY NOT NULL,
    name varchar NOT NULL,
    surname varchar NOT NULL,
    age integer NOT NULL,
    budget double NOT NULL
);

CREATE TABLE orders (
	id integer PRIMARY KEY NOT NULL,
    content varchar NOT NULL,
    size varchar NOT NULL,
    price double NOT NULL,
    customer_id integer,
    FOREIGN KEY(customer_id) REFERENCES customer(id)
);

INSERT into customer VALUES (1, 'Serenay', 'UZUN', 23, 1000.90);
INSERT into customer VALUES (2, 'Lorem', 'Ipsum', 28, 10000.90);
INSERT into customer VALUES (3, 'Dolor', 'Sit Amet', 38, 1000.90);

INSERT INTO orders VALUES(1, 'Pancake', 'Venti', 95, 1);
INSERT INTO orders VALUES(2, 'Pizza with Mozarella', 'Large', 150, 2);
INSERT INTO orders VALUES(3, 'Chicken', 'Small', 120, 1);

SELECT * from customer;
SELECT * from orders;

SELECT * from customer c left JOIN orders o on c.id = o.customer_id ;
SELECT * from customer c left JOIN orders o on c.id = o.customer_id WHERE o.customer_id ISNULL;
SELECT * from customer c RIGHT JOIN orders o on c.id = o.customer_id;
SELECT * from customer c INNER JOIN orders o on c.id = o.customer_id;
SELECT * from customer c FULL OUTER JOIN orders o ON c.id = o.customer_id where o.customer_id ISNULL;