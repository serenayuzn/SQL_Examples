# Create person table with id, name, surname, age, height, weight
# SQL Category: DDL (Data Definition Language)
CREATE TABLE person (
  id integer PRIMARY KEY NOT NULL,
  name varchar(255) NOT NULL,
  surname varchar(255) NOT NULL,
  age integer,
  height float,
  weight double
 );
 
 # Insert sample records to person table
 # SQL Category: DML (Data Manipulation Language)
 INSERT INTO person(id, name, surname, age, height, weight) VALUES (1, 'Serenay', 'Uzun', 23, 1.68, 53.35);
 INSERT INTO person(id, name, surname, age, height, weight) VALUES (2, 'Lorem', 'Ipsum', 28, 1.85, 91.32);
 
 # Query samples from person table
 # SQL Category: DML (Data Manipulation Language)
 SELECT * FROM person WHERE id = 1;
 SELECT * FROM person WHERE id = 2;
 
 # Update person table with new values
 # SQL Category: DML (Data Manipulation Language)
 UPDATE person SET height = 1.7, weight = 54.35 WHERE id = 1;
 UPDATE person SET age = 29 WHERE id = 2;
 
 # Query samples from person table
 # SQL Category: DML (Data Manipulation Language)
 SELECT * FROM person;

 # Delete sample record from person table
 # SQL Category: DML (Data Manipulation Language)
 DELETE FROM person WHERE id = 2;
 
 # Add phone_number column to person table
 # SQL Category: DDL (Data Definition Language)
 ALTER TABLE person ADD COLUMN phone_number varchar(13);
 
 # Update sample record's phone_number value
 # SQL Category: DML (Data Manipulation Language)
 UPDATE person SET phone_number = '+905555555555' WHERE id = 1;
 
 # Insert sample records to person table with different column placement
 # SQL Category: DML (Data Manipulation Language)
 INSERT INTO person(id, name, phone_number, surname, weight, height, age) VALUES (2, 'Dolor', '+905555555555', 'Sit Amet', 91.32, 1.85, 28);
 
 # Drop person table
 # SQL Category: DDL (Data Definition Language)
 DROP TABLE person;