CREATE TABLE customer(
	customer_id SERIAL PRIMARY KEY,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	email_address VARCHAR(50) NOT NULL
);

SELECT*
FROM customer;

CREATE TABLE theater(
	theater_id SERIAL PRIMARY KEY,
	theater_name VARCHAR(50) NOT NULL,
	theater_address VARCHAR(50) NOT NULL, 
	phone_number INTEGER	
);

SELECT*
FROM theater;

CREATE TABLE ticket(
	ticket_id SERIAL PRIMARY KEY,
	ticket_date TIMESTAMP,
	ticket_time TIMESTAMP,
	movie VARCHAR(50),
	customer_id INTEGER,
	FOREIGN KEY(customer_id) REFERENCES customer(customer_id)
);

SELECT*
FROM ticket;

CREATE TABLE movie(
	movie_id SERIAL PRIMARY KEY,
	movie_name VARCHAR(50),
	movie_length INTEGER,
	theater_id INTEGER,
	FOREIGN KEY(theater_id) REFERENCES theater(theater_id)
);


SELECT*
FROM movie; 

CREATE TABLE ticket_movie(
	ticket_id INTEGER NOT NULL,
	FOREIGN KEY(ticket_id) REFERENCES ticket(ticket_id),
	movie_id INTEGER NOT NULL,
	FOREIGN KEY(movie_id) REFERENCES movie(movie_id)
);

SELECT*
FROM ticket_movie;

