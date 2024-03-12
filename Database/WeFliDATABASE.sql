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

INSERT INTO user (user_id, first_name, last_name, phone_number, email, address, user_name, password, verification_code, verified) VALUES
    (111111110, 'John', 'Smith', '123-456-7890', 'john.smith@gmail.com', '123 Main St, New York, NY', 'ohn.smith_123', 'HnG47sKp3R', 123456, 1),
    (111111111, 'Mary', 'Johnson','234-567-8901', 'mary.johnson@yahoo.com', '456 Elm St, Los Angeles, CA', 'mary.johnson_456', 'QpN92eRs6W', 123457, 1),
    (111111112,	'James', 'Williams', '345-678-9012', 'james.williams@hotmail.com', '789 Oak St, Chicago, IL', 'james.williams_789', 'LxGf84Rp1Q', 123458,	1),
    (111111113,	'Patricia', 'Jones', '456-789-0123', 'patricia.jones@outlook.com', '321 Pine St, Houston, TX',	'patricia.jones_321', 'VwPq65Tu9Z',	123459,	1),
    (111111114,	'Michael', 'Brown', '567-890-1234', 'michael.brown@gmail.com', '123 Main St, New York, NY', 'michael.brown_123', 'KsNt73Wx5A',	123460,	1),
    (111111115,	'Jennifer', 'Davis', '678-901-2345', 'jennifer.davis@yahoo.com', '456 Elm St, Los Angeles, CA', 'jennifer.davis_456', 'RdMw28Gc7E', 123461, 1),
    (111111116,	'David', 'Miller', '789-012-3456',	'david.miller@hotmail.com', '789 Oak St, Chicago, IL', 'david.miller_789', 'FpKu36As4D', 123462,	1),
    (111111117,	'Linda',  'Wilson', '890-123-4567', 'linda.wilson@outlook.com', '321 Pine St, Houston, TX', 'linda.wilson_321', 'NrYv59Px8T', 123463,	1),
    (111111118,	'William', 'Moore','901-234-5678', 'william.moore@gmail.com', '123 Main St, New York, NY', 'william.moore_123', 'HgBs82Mn6P',	123464,	1),
    (111111119,	'Elizabeth', 'Taylor', '012-345-6789', 'elizabeth.taylor@yahoo.com', '456 Elm St, Los Angeles, CA', 'elizabeth.taylor_456', 'QwZr74Gv2L', 123465, 1),
    (111111120,	'Richard', 'Anderson', '102-345-6789',	'richard.anderson@hotmail.com', '789 Oak St, Chicago, IL', 'richard.anderson_789', 'TnLm93Vx1C', 123466,	1),
    (111111121,	'Barbara', 'Thomas', '213-456-7890', 'barbara.thomas@outlook.com', '321 Pine St, Houston, TX', 'barbara.thomas_321', 'VrJs62Gh4B',	123467, 1),
    (111111122,	'Josep', 'Jackson', '324-567-8901', 'joseph.jackson@gmail.com', '123 Main St, New York, NY', 'joseph.jackson_123', 'LpYt84Sq9R', 123468, 1),
    (111111123,	'Jessica', 'White', '435-678-9012', 'jessica.white@yahoo.com', '456 Elm St, Los Angeles, CA', 'jessica.white_456', 'WpBt75Xz8N', 123469, 1),
    (111111124,	'Thomas', 'Harris', '546-789-0123', 'thomas.harris@hotmail.com', '789 Oak St, Chicago, IL', 'thomas.harris_789', 'FgQw86Hr5Z',	123470, 1),
    (111111125,	'Sarah', 'Martin', '657-890-1234',	'sarah.martin@outlook.com', '321 Pine St, Houston, TX', 'sarah.martin_321', 'YmRs47Nx3L', 123471, 1),
    (111111126,	'Charles', 'Thompson', '768-901-2345',	'charles.thompson@gmail.com', '123 Main St, New York, NY', 'charles.thompson_123', 'UyBz59Rq7T', 123472,	1),
    (111111127,	'Karen', 'Garcia', '879-012-3456',	'karen.garcia@yahoo.com', '456 Elm St, Los Angeles, CA', 'karen.garcia_456', 'HjFn63Ts8A', 123473, 1),
    (111111128,	'Daniel', 'Martinez', '980-123-4567', 'daniel.martinez@hotmail.com', '789 Oak St, Chicago, IL', 'daniel.martinez_789', 'LpGr93Vx7C', 123474, 1),
    (111111129,	'Melissa', 'Robinson', '091-234-5678',	'melissa.robinson@outlook.com', '321 Pine St, Houston, TX', 'melissa.robinson_321', 'QwKt52Gv3P', 123475, 1),
    (111111130,	'Nancy', 'Clark', '210-345-6789', 'nancy.clark@gmail.com', '123 Main St, New York, NY', 'nancy.clark_123',	'FgTs86Zx5Q', 123476, 1),
    (111111131,	'Paul', 'Rodriguez', '321-456-7890', 'paul.rodriguez@yahoo.com', '456 Elm St, Los Angeles, CA', 'paul.rodriguez_456', 'HrUs74Nw9V', 123477, 1),
    (111111132,	'Karen', 'Lewis', '432-567-8901', 'karen.lewis@hotmail.com', '789 Oak St, Chicago, IL', 'karen.lewis_789', 'JiDf29Xp6L', 123478, 1),
    (111111133,	'Jose', 'Lee', '543-678-9012',	'jose.lee@outlook.com', '321 Pine St, Houston, TX', 'jose.lee_321', 'PmSg86Wq4R', 123479, 1),
    (111111134,	'Emily', 'Walker', '654-789-0123',	'emily.walker@gmail.com', '123 Main St, New York, NY', 'emily.walker_123', 'VnQm57Zx8L', 123480,	1),
    (111111135,	'Michelle', 'Hall', '765-890-1234', 'michelle.hall@yahoo.com', '456 Elm St, Los Angeles, CA', 'michelle.hall_456', 'HtKj73Nr6S', 123481, 1),
    (111111136,	'David', 'Young', '876-901-2345', 'david.young@hotmail.com', '789 Oak St, Chicago, IL', 'david.young_789', 'PnJt64Sq9W', 123482, 1),
    (111111137,	'Ashley', 'Allen', '987-012-3456',	'ashley.allen@outlook.com', '321 Pine St, Houston, TX', 'ashley.allen_321', 'FvYb93Qs8Z', 123483, 1),
    (111111138,	'Jason', 'Hernandez', '098-123-4567', 'jason.hernandez@gmail.com', '123 Main St, New York, NY', 'jason.hernandez_123', 'NmBw46Gq9V', 123484, 1),
    (111111139,	'Ruth', 'King', '109-234-5678', 'ruth.king@yahoo.com', '456 Elm St, Los Angeles, CA', 'ruth.king_456', 'LjFg95Ms7R', 123485, 1),
    (111111140,	'Margaret', 'Wright', '210-345-6789', 'margaret.wright@hotmail.com', '789 Oak St, Chicago, IL', 'margaret.wright_789', 'RmBs83Qw6P', 123486, 1),
    (111111141,	'Ryan', 'Lopez', '321-456-7890', 'ryan.lopez@outlook.com', '321 Pine St, Houston, TX', 'ryan.lopez_321', 'NkTs64Zx8H',	123487, 1),
    (111111142,	'Shirley', 'Hill', '432-567-8901',	'shirley.hill@gmail.com', '123 Main St, New York, NY', 'shirley.hill_123', 'JgPr94Wq5L', 123488, 1),
    (111111143,	'Cynthia', 'Scott', '543-678-9012', 'cynthia.scott@yahoo.com', '456 Elm St, Los Angeles, CA', 'cynthia.scott_456', 'LbRs73Nw2G', 123489, 1),
    (111111144,	'Kevin', 'Green', '654-789-0123', 'kevin.green@hotmail.com', '789 Oak St, Chicago, IL', 'kevin.green_789', 'NfRg37Mp9W', 123490, 1),
    (111111145,	'Amanda', 'Adams', '765-890-1234',	'amanda.adams@outlook.com', '321 Pine St, Houston, TX', 'amanda.adams_321', 'QlBr52Gs7P', 123491, 1),
    (111111146,	'Cynthia', 'Baker', '876-901-2345', 'cynthia.baker@gmail.com', '123 Main St, New York, NY', 'cynthia.baker_123', 'TjPq68Vs9N',	123492,	1),
    (111111147,	'Gerald', 'Gonzalez', '987-012-3456', 'gerald.gonzalez@yahoo.com', '456 Elm St, Los Angeles, CA', 'gerald.gonzalez_456', 'HsMn84Pr6G', 123493,	1),
    (111111148,	'Maria', 'Nelson', '098-123-4567',	'maria.nelson@hotmail.com', '789 Oak St, Chicago, IL', 'maria.nelson_789', 'DfBs73Qt6P', 123494, 1),
    (111111149,	'Laura', 'Carter', '109-234-5678',	'laura.carter@outlook.com', '321 Pine St, Houston, TX', 'laura.carter_321', 'NtBr49Ms6V', 123495, 1),
    (111111150,	'Joseph', 'Mitchell', '210-345-6789', 'joseph.mitchell@gmail.com', '123 Main St, New York, NY', 'joseph.mitchell_123', 'JhRq37Ts9P', 123496, 1);

    
-- Create Comments Table
CREATE TABLE IF NOT EXISTS comments (
    comment_id INT PRIMARY KEY,
    user_id INT,
    comment VARCHAR(100),
    FOREIGN KEY (user_id) REFERENCES user(user_id)
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
    
    
