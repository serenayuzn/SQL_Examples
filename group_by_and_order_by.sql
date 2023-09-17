SELECT name, sum(age) total_age, count(1) customer_count, sum(age) / count(1) average_age from customer c GROUP by c.name;
SELECT * from customer c order by c.age;
SELECT * from customer c order by c.age ASC;
SELECT * from customer c order by c.age, c.id DESC;
SELECT * from customer c order by c.age DESC;