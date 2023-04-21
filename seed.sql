INSERT INTO hotels (name, city, state, rating, pets)
VALUES
('Hotel California', null, 'California', 4, true),
('The Great Northern', 'Twin Peaks', 'Washington', 3, true),
('Hilbert''s Hotel', null, null, 1, false),
('Hotelicopter', 'Somewhere in the sky', null, 3, false),
('Fawlty Towers', 'Torquay on the English Riviera','England', 2, true),
('Grand Budapest Hotel', 'Republic of Zubrowka', null, 1, true);

INSERT INTO rooms (hotel_id, name, price, room_num, vacant)
VALUES
(1, 'Queen', 1200, 202, true),
(1, 'Queen', 1200, 303, true),
(1, 'King', 1400, 404, true),
(1, 'Penthouse', 2200, 707, true),
(2, 'Queen', 400, 201, true),
(2, 'Queen', 400, 302, false),
(2, 'King', 600, 403, false),
(2, 'Penthouse', 1200, 605, false),
(3, 'Room', null, null, null),
(4, null, 4000, null, true),
(5, 'Queen', 1200, 111, false),
(5, 'Queen', 1200, 222, false),
(5, 'King', 1400, 333, false),
(7, 'Queen', 1200, 1111, false),
(7, 'Queen', 1200, 2222, false),
(7, 'King', 1400, 3333, false);