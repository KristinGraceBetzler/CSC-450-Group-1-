
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


INSERT INTO comments (comment_id, user_id, comment) VALUES
    (555555550, 111111110, 'Wow, sounds like an incredible adventure awaits you!'),
    (555555551, 111111111, 'I hope your vacation brings you all the relaxation you deserve.'),
    (555555552, 111111112, 'Wishing you safe travels and unforgettable experiences.'),
    (555555553, 111111113, 'Bon voyage! Can''t wait to hear all about it.'),
    (555555554, 111111114, 'May your vacation be filled with sunshine and happiness.'),
    (555555555, 111111115, 'So jealous! Your trip sounds amazing.'),
    (555555556, 111111116, 'Sending good vibes your way for a fantastic vacation.'),
    (555555557, 111111117, 'Make sure to take lots of photos to share with us!'),
    (555555558, 111111118, 'Enjoy every moment and soak up the beauty around you.'),
    (555555559, 111111119, 'Escape the ordinary and embrace the extraordinary!'),
    (555555560, 111111120, 'Take a break and enjoy some well-deserved time off.'),
    (555555561, 111111121, 'Don''t forget to pack your sense of adventure!'),
    (555555562, 111111122, 'Here''s to new experiences and unforgettable memories.'),
    (555555563, 111111123, 'You''re about to embark on the trip of a lifetime!'),
    (555555564, 111111124, 'Have a blast and make the most of every opportunity.'),
    (555555565, 111111125, 'Wherever you''re going, I''m sure it''ll be amazing.'),
    (555555566, 111111126, 'Can''t wait to hear all about your vacation tales.'),
    (555555567, 111111127, 'Wishing you smooth flights and smooth sailing!'),
    (555555568, 111111128, 'Relax, recharge, and rejuvenate – you deserve it.'),
    (555555569, 111111129, 'Make memories that will last a lifetime.'),
    (555555570, 111111130, 'Take a deep breath and enjoy the journey.'),
    (555555571, 111111131, 'Adventure is out there, go and find it!'),
    (555555572, 111111132, 'Your vacation is the perfect chance to unwind and destress.'),
    (555555573, 111111133, 'I hope your vacation exceeds all your expectations.'),
    (555555574, 111111134, 'Explore, wander, and discover the beauty of the world.'),
    (555555575, 111111135, 'Sending you positive vibes for an incredible trip ahead.'),
    (555555576, 111111136, 'May your vacation be filled with joy, laughter, and love.'),
    (555555577, 111111137, 'Escape the hustle and bustle and embrace tranquility.'),
    (555555578, 111111138, 'Pack your bags and get ready for an epic adventure!'),
    (555555579, 111111139, 'The world is yours to explore – go and seize it!'),
    (555555580, 111111140, 'Vacations are the perfect remedy for a tired soul.'),
    (555555581, 111111141, 'Leave your worries behind and embrace the freedom of travel.'),
    (555555582, 111111142, 'Wishing you blue skies, sunny days, and endless fun.'),
    (555555583, 111111143, 'Here''s to new horizons and unforgettable experiences.'),
    (555555584, 111111144, 'Take the scenic route and enjoy the journey.'),
    (555555585, 111111145, 'Adventure awaits just around the corner – go and find it!'),
    (555555586, 111111146, 'Wherever you go, go with all your heart.'),
    (555555587, 111111147, 'May your vacation be everything you''ve ever dreamed of and more.'),
    (555555588, 111111148, 'Create memories that will warm your heart for years to come.'),
    (555555589, 111111149, 'Don''t be afraid to get lost – sometimes that''s where the magic happens.'),
    (555555590, 111111150, 'Pack light, but pack with purpose – you never know what adventures await.'),
    (555555591, 111111120, 'Here''s to stepping out of your comfort zone and embracing new cultures.'),
    (555555592, 111111121, 'Life is short, but the world is vast – go and explore every corner of it!'),
    (555555593, 111111122, 'Every journey starts with a single step – yours starts now.'),
    (555555594, 111111123, 'Wishing you moments of awe and wonder on your travels.'),
    (555555595, 111111124, 'Take a break from the ordinary and indulge in the extraordinary.'),
    (555555596, 111111125, 'Travel is the only thing you buy that makes you richer.'),
    (555555597, 111111126, 'Don''t just exist, live – and your vacation is the perfect opportunity to do so.'),
    (555555598, 111111127, 'Embrace the unknown and let it lead you to incredible adventures.'),
    (555555599, 111111128, 'Make memories in places you''ve never been before.'),
    (555555600, 111111129, 'Find beauty in the unexpected and joy in the little moments.'),
    (555555601, 111111130, 'Traveling – it leaves you speechless, then turns you into a storyteller.'),
    (555555602, 111111110, 'Here''s to unplanned detours and spontaneous adventures.'),
    (555555603, 111111111, 'May your vacation be filled with laughter, love, and unforgettable experiences.'),
    (555555604, 111111112, 'You''re about to embark on a journey that will change you in the best way possible.'),
    (555555605, 111111113, 'Travel far enough to meet yourself in new places.'),
    (555555606, 111111114, 'Collect moments, not things – and your vacation is the perfect time to do just that.'),
    (555555607, 111111115, 'Adventure awaits – go and chase it with all your heart.'),
    (555555608, 111111116, 'Traveling is not just about seeing new places, but about gaining new perspectives.'),
    (555555609, 111111117, 'In every walk with nature, one receives far more than he seeks.'),
    (555555610, 111111118, 'May your vacation be filled with moments that take your breath away.'),
    (555555611, 111111119, 'Wander often, wonder always.'),
    (555555612, 111111120, 'Adventure is out there, and it''s calling your name.'),
    (555555613, 111111121, 'Life is short, and the world is wide – go and explore it!'),
    (555555614, 111111122, 'Here''s to new beginnings, new experiences, and new adventures.'),
    (555555615, 111111123, 'May your vacation be a tapestry of beautiful moments.'),
    (555555616, 111111124, 'Travel is the best education one can receive.'),
    (555555617, 111111125, 'Let your curiosity guide you to incredible places.'),
    (555555618, 111111130, 'The journey is the destination – enjoy every step of it.'),
    (555555619, 111111131, 'You''re not just traveling, you''re creating a lifetime of memories.'),
    (555555620, 111111132, 'Don''t be afraid to wander off the beaten path – that''s where the real magic happens.'),
    (555555621, 111111133, 'Pack your sense of wonder – you''ll need it for the journey ahead.'),
    (555555622, 111111134, 'Every sunset is an opportunity to reset – and your vacation is full of them.'),
    (555555623, 111111135, 'Travel far and travel wide – there''s so much beauty in this world to see.'),
    (555555624, 111111136, 'May your passport be filled with stamps and your heart with memories.'),
    (555555625, 111111137, 'Adventure is worthwhile – go and seek it with all your heart.'),
    (555555626, 111111138, 'Don''t just visit a place, immerse yourself in it.'),
    (555555627, 111111139, 'The world is a book, and those who do not travel read only one page.'),
    (555555628, 111111140, 'Traveling – it''s the only thing you can spend money on that makes you richer in memories.'),
    (555555629, 111111141, 'Let your dreams take flight and soar to new heights.'),
    (555555630, 111111142, 'Traveling is not about the destination, but the journey itself.'),
    (555555631, 111111143, 'May your vacation be filled with laughter, love, and lots of sunscreen.'),
    (555555632, 111111144, 'Explore the world with open arms and an open heart.'),
    (555555633, 111111145, 'Pack your bags and leave your worries behind – adventure awaits!'),
    (555555634, 111111146, 'Here''s to chasing sunsets and dancing in the rain.'),
    (555555635, 111111147, 'May your vacation be as wild and wonderful as you are.'),
    (555555636, 111111148, 'Traveling is the only thing you can buy that makes you richer in memories.'),
    (555555637, 111111149, 'Adventure is calling – are you ready to answer?'),
    (555555638, 111111150, 'The world is yours to explore – go and make it your playground.'),
    (555555639, 111111135, 'Wanderlust: a strong desire to travel and explore the world – may yours be fulfilled.'),
    (555555640, 111111136, 'Wherever you go, go with all your heart and soul.'),
    (555555642, 111111138, 'Let your heart be your compass and your adventures be limitless.'),
    (555555643, 111111139, 'Travel far enough to meet yourself and discover your true passions.'),
    (555555644, 111111140, 'Embrace the journey, for it is where life truly happens.'),
    (555555645, 111111141, 'Adventure awaits just around the corner – go and chase it with all your might.'),
    (555555646, 111111142, 'Here''s to making memories that will last a lifetime.'),
    (555555647, 111111143, 'The world is full of wonders – go and explore them all!'),
    (555555648, 111111144, 'Wherever you go, may your heart find peace and your soul find joy.');

    
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
    
    
