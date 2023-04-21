DROP DATABASE IF EXISTS learn_hotels;
CREATE DATABASE learn_hotels;
\c learn_hotels;

CREATE TABLE hotels (
    id SERIAL PRIMARY KEY,
    name TEXT,
    city TEXT,
    state TEXT,
    pets BOOLEAN,
    rating numeric DEFAULT 5,
    CHECK (rating >= 0 AND rating <= 5)
);

CREATE TABLE rooms (
    id SERIAL PRIMARY KEY, name TEXT,
    price numeric,
    vacant BOOLEAN,
    room_num INT,
    hotel_id INT -- In practice, you should add a foreign key constraint here
);

