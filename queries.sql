-- a JOIN creates a new table by combining columns from two tables
--   syntax (<left table> JOIN <right table> ON <matching criteria>)

SELECT * FROM (
    hotels
        JOIN
    rooms
        ON hotels.id = rooms.hotel_id
);


 
-- Let's use a join table to answer a question:
--    What is the name of the hotel that room 5 belongs to?

SELECT hotels.name FROM
(
    hotels
        JOIN
    rooms
        ON hotels.id = rooms.hotel_id
) WHERE rooms.id = 5;


-- By default, JOIN performs an INNER JOIN.
--  This means that only rows that match in both tables will be included in the result.
--  For example:
--    Grand Budapest Hotel doesn't have any rooms in the rooms table, so it doesn't end up in the resulting table.
--    room number 16 doesn't have a matchign hotel, so it also doesn't end up in the resulting table.

SELECT * FROM (
    hotels
        INNER JOIN
    rooms
        ON hotels.id = rooms.hotel_id
);

-- If we want to make sure Grand Budapest Hotel is represented in our JOIN table, we can use a LEFT OUTER JOIN:

SELECT * FROM (
    hotels
        LEFT JOIN
    rooms
        ON hotels.id = rooms.hotel_id
);


-- If we want to make sure room 16 is represented in our JOIN table, we can use a RIGHT OUTER JOIN:

SELECT * FROM (
    hotels
        RIGHT JOIN
    rooms
        ON hotels.id = rooms.hotel_id
);

-- If we want to make sure both the Grand Budapest Hotel and room 16 are represented in our JOIN table, we can use a FULL OUTER JOIN:

SELECT * FROM (
    hotels
        FULL OUTER JOIN
    rooms
        ON hotels.id = rooms.hotel_id
);