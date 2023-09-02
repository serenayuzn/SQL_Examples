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

INSERT INTO orders VALUES(1, 'Pancake', 'Venti', 95, 1);
INSERT INTO orders VALUES(2, 'Pizza with Mozarella', 'Large', 150, 2);
INSERT INTO orders VALUES(3, 'Chicken', 'Small', 120, 1);

SELECT o.* from orders o, customer c WHERE c.name = 'Serenay' and o.customer_id = c.id;
SELECT * FROM orders o INNER JOIN customer c ON o.customer_id = c.id where c.name = 'Serenay';