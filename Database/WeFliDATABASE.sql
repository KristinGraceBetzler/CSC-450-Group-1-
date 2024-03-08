-- Create the WeFli database
CREATE DATABASE IF NOT EXISTS WeFli;
USE WeFli;

-- Create User Table
CREATE TABLE IF NOT EXISTS user (
    user_id INT PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    phone_number VARCHAR(100),
    email VARCHAR(100),
    address VARCHAR(100),
    user_name VARCHAR(100),
    password VARCHAR(100),
    verification_code INT,
    verified TINYINT(1) NOT NULL
);

-- Create Comments Table
CREATE TABLE IF NOT EXISTS comments (
    comment_id INT PRIMARY KEY,
    user_id INT,
    comment VARCHAR(100),
    FOREIGN KEY (user_id) REFERENCES user(user_id)
);

-- Create User_Content Table
CREATE TABLE IF NOT EXISTS user_content (
    user_content_id INT PRIMARY KEY,
    user_id INT,
    user_post VARCHAR(100),
    comment_id INT,
    FOREIGN KEY (user_id) REFERENCES User(user_id),
    FOREIGN KEY (comment_id) REFERENCES comments(comment_id)
);

-- Create Quiz Table
CREATE TABLE IF NOT EXISTS quiz (
    quiz_id INT PRIMARY KEY,
    quiz_question VARCHAR(100),
    quiz_option_1 VARCHAR(100),
    quiz_option_2 VARCHAR(100)
);

-- Create Hotels Table
CREATE TABLE IF NOT EXISTS hotels (
    hotel_id INT PRIMARY KEY,
    hotel_name VARCHAR(100),
    check_in_date DATETIME,
    check_out_date DATETIME,
    check_in_time VARCHAR(100),
    check_out_time VARCHAR(100),
    room_type VARCHAR(100),
    hotel_type VARCHAR(100)
);

-- Create Flight Table
CREATE TABLE IF NOT EXISTS flight (
    flight_id INT PRIMARY KEY,
    departure_airport VARCHAR(100),
    destination_airport VARCHAR(100),
    departure_date DATETIME,
    arrival_date DATETIME,
    departure_time VARCHAR(100),
    arrival_time VARCHAR(100),
    airline_name VARCHAR(100),
    flight_time VARCHAR(100)
);

-- Create Destinations Table
CREATE TABLE IF NOT EXISTS destinations (
    destination_id INT PRIMARY KEY,
    destination_state VARCHAR(100),
    destination_city VARCHAR(100),
    destination_climate VARCHAR(100)
);

-- Create Trip Table
CREATE TABLE IF NOT EXISTS trip (
    trip_id INT PRIMARY KEY,
    user_id INT,
    flight_id INT,
    hotel_id INT,
    destination_id INT,
    FOREIGN KEY (user_id) REFERENCES user(user_id),
    FOREIGN KEY (flight_id) REFERENCES flight(flight_id),
    FOREIGN KEY (hotel_id) REFERENCES hotels(hotel_id),
    FOREIGN KEY (destination_id) REFERENCES destinations(destination_id),
    FOREIGN KEY (comment_id) REFERENCES comments(comment_id)
);

-- Create Excursions Table 
CREATE TABLE IF NOT EXISTS excursions(
    excursion_id INT PRIMARY KEY,
    excursion_title VARCHAR(100),
    excursion_description VARCHAR(100),
    type_of_excursion VARCHAR(100),
    destination_id INT,
    FOREIGN KEY (destination_id) REFERENCES destinations(destination_id)
);
    
    
