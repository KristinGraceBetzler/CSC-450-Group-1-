-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 23, 2024 at 10:54 PM
-- Server version: 8.0.36
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wefli`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `commentID` int NOT NULL,
  `usersID` int DEFAULT NULL,
  `tripID` int DEFAULT NULL,
  `comment` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `destinations`
--

CREATE TABLE `destinations` (
  `destinationID` int NOT NULL,
  `destination_state` varchar(100) DEFAULT NULL,
  `destination_city` varchar(100) DEFAULT NULL,
  `image_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `destinations`
--

INSERT INTO `destinations` (`destinationID`, `destination_state`, `destination_city`, `image_name`) VALUES
(1, 'Alabama', 'Huntsville', 'Alabama, Hunstsville.jpg'),
(2, 'Alaska', 'Fairbanks', 'Alaska, Fairbanks.jpg'),
(3, 'Arizona', 'Phoenix', 'Arizona, Phoenix.jpg'),
(4, 'Arkansas', 'Little Rock', 'Arkansas, Little Rock.jpg'),
(5, 'California', 'Los Angeles', 'California, Los Angelas.jpg'),
(6, 'California', 'San Francisco', 'California, San Francisco.jpg'),
(7, 'Colorado', 'Denver', 'Colorado, Denver.jpg'),
(8, 'Connecticut', 'New Haven', 'Conneticut, New Haven.jpg'),
(9, 'Delaware', 'Wilmington', 'Delaware, Wilmington.jpg'),
(10, 'Florida', 'Miami', 'Florida, Miami.jpg'),
(11, 'Florida', 'Orlando', 'Florida, Orlando.jpg'),
(12, 'Georgia', 'Atlanta', 'Georgia, Atlanta.jpg'),
(13, 'Hawaii', 'Honolulu', 'Hawaii, Honolulu.jpg'),
(14, 'Hawaii', 'Maui', 'Hawaii, Maui.jpg'),
(15, 'Idaho', 'Boise', 'Idaho, Boise.jpg'),
(16, 'Illinois', 'Chicago', 'Illinois, Chicago.jpg'),
(17, 'Indiana', 'Indianapolis', 'Indiana, Indianapolis.jpg'),
(18, 'Iowa', 'Des Moines', 'Iowa, Des Moines.jpg'),
(19, 'Kansas', 'Kansas City', 'Kansas, Kansas City.jpg'),
(20, 'Kentucky', 'Louisville', 'Kentucky, Louisville.jpg'),
(21, 'Louisiana', 'New Orleans', 'Louisiana, New Orleans.jpg'),
(22, 'Maine', 'Portland', 'Maine, Portland.jpg'),
(23, 'Maryland', 'Washington D.C.', 'Washington DC.jpg'),
(24, 'Massachusetts', 'Boston', 'Massachusetts, Boston.jpg'),
(25, 'Michigan', 'Detroit', 'Michigan, Detroit.jpg'),
(26, 'Minnesota', 'Minneapolis', 'Minnesota, Minneapolis.jpg'),
(27, 'Mississippi', 'Jackson', 'Mississippi, Jackson.jpg'),
(28, 'Missouri', 'St. Louis', 'Mossouri, St Louis.jpg'),
(29, 'Montana', 'Bozeman', 'Montana, Bozeman.jpg'),
(30, 'Nebraska', 'Omaha', 'Nebraska, Omaha.jpg'),
(31, 'Nevada', 'Las Vegas', 'Nevada, Las Vegas.jpg'),
(32, 'New Hampshire', 'Portsmouth', 'New Hamshire, Portsmouth.jpg'),
(33, 'New Jersey', 'Atlantic City', 'New Jersey, Atlantic City.jpg'),
(34, 'New Mexico', 'Albuquerque', 'New Mexico, Albuquerque.jpg'),
(35, 'New York', 'New York City', 'New York, New York.jpg'),
(36, 'North Carolina', 'Charlotte', 'North Carolina, Charlotte.jpg'),
(37, 'North Dakota', 'Bismarck', 'North Dakota, Bismarck.jpg'),
(38, 'Ohio', 'Cincinnati', 'Ohio, Cincinnati.jpg'),
(39, 'Oklahoma', 'Oklahoma City', 'Oklahoma, Oklahoma City.jpg'),
(40, 'Oregon', 'Portland', 'Oregon, Portland.jpg'),
(41, 'Pennsylvania', 'Philadelphia', 'Pennsylvania, Philadelphia.jpg'),
(42, 'Rhode Island', 'Providence', 'Rhode Island, Providence.jpg'),
(43, 'South Carolina', 'Charleston', 'South Carolina, Charleston.jpg'),
(44, 'South Dakota', 'Rapid City', 'South Dakota, Rapid City.jpg'),
(45, 'Tennessee', 'Nashville', 'Tennessee, Nashville.jpg'),
(46, 'Texas', 'Houston', 'Texas, Houston.jpg'),
(47, 'Utah', 'Salt Lake City', 'Utah, Salt Lake City.jpg'),
(48, 'Vermont', 'Burlington', 'Vermont, Burlington.jpg'),
(49, 'Virginia', 'Newport News', 'Virginia, Newport News.jpg'),
(50, 'Washington', 'Seattle', 'Washington, Seattle.jpg'),
(51, 'West Virginia', 'Bridgeport', 'West Virginia, Bridgeport.jpg'),
(52, 'Wisconsin', 'Madison', 'Wisconsin, Madison.jpg'),
(53, 'Wyoming', 'Cheyenne', 'Wyoming, Cheyenne.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `excursions`
--

CREATE TABLE `excursions` (
  `excursionID` int NOT NULL,
  `excursion_title` varchar(100) DEFAULT NULL,
  `excursion_description` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `type_of_excursion_tag` varchar(100) DEFAULT NULL,
  `destinationID` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `excursions`
--

INSERT INTO `excursions` (`excursionID`, `excursion_title`, `excursion_description`, `type_of_excursion_tag`, `destinationID`) VALUES
(1, 'Unclaimed Baggage Center', 'The Unclaimed Baggage Center, a treasure trove of lost and found goods, is tucked away in a small Alabama town and offers both thrifty and inquisitive shoppers a unique shopping experience.', 'Obscure', 1),
(2, 'Cotton Cow Restaurant', 'Savor modernized takes on Southern comfort food at the Cotton Cow Restaurant, where every bite reveals a tale of culinary creativity and heritage.', 'Food', 1),
(3, 'Hiking at Monte Sano State Park', 'Experience the breathtaking views and rugged trails of Monte Sano State Park on an exciting journey where the beauty of nature is revealed at every turn.', 'Adventureous', 1),
(4, 'Picnic at Big Spring Park', 'Take a peaceful picnic in Big Spring Park\'s verdant surroundings to get away from the bustle of the city, where peace and relaxation are the order of the day.', 'Relaxing Outdoors', 1),
(5, 'Huntsville Museum of Art', 'Visit the Huntsville Museum of Art to enter a world of artistic tranquility where global masterpieces beckon visitors to immerse themselves in culture and creativity.', 'Relaxing Indoors', 1),
(6, 'U.S. Space & Rocket Center', 'Immerse yourself in history at this site where breathtaking exhibits and hands-on activities tell the grand story of humanity\'s journey to the stars.', 'Historical', 1),
(7, 'Sci-Quest Hands-on Science Center', 'Families can participate in interactive science adventures at the Sci-Quest Hands-on Science Center, a haven of learning and exploration that will pique curiosity and ignite imagination.', 'Family-Friendly', 1),
(8, 'Von Braun Center', 'Discover a whirlwind of entertainment at the Von Braun Center, where top-notch shows, concerts, and gatherings guarantee a memorable evening filled with thrills and happiness.', 'Entertainment', 1),
(9, 'Moose Antler Arch', 'The Moose Antler Arch, a singular representation of Alaska\'s wilderness, entices inquisitive visitors to experience the wild splendor and untamed spirit of the Last Frontier.', 'Obscure', 2),
(10, 'Pikes Landing', 'Savor a culinary adventure through Alaskan flavors at Pikes Landing, where mouthwatering cuisine and fresh fish are served amid picturesque riverfront views, guaranteeing a dining experience as unforgettable as the surrounding scenery.', 'Food', 2),
(11, 'Aurora Borealis Viewing', 'Set out on a thrilling journey to see the captivating dance of the Aurora Borealis in Alaska\'s pitch-black, starry skies, where the most amazing light show produced by nature unfolds in a spectacle of color and wonder.', 'Adventureous', 2),
(12, 'Chena Hot Springs', 'Chena Hot Springs, tucked away in a pristine wilderness, is a refuge of rest and renewal where the tranquil surroundings and calming mineral waters offer the ideal diversion from the stresses of daily life.', 'Relaxing Outdoors', 2),
(13, 'Fairbanks Ice Museum', 'Visitors are taken to a realm of frosty delight and Arctic magic by the carefully sculpted ice creations and frosty wonders at the Fairbanks Ice Museum. Step into an icy world of enchantment.', 'Relaxing Indoors', 2),
(14, 'Pioneer Park', 'Experience the rich history of Alaska at Pioneer Park, where reconstructed structures and displays provide a window into the hardy frontier lifestyle and pioneer spirit of bygone eras.', 'Historical', 2),
(15, 'Running Reindeer Ranch', 'Families are invited to take a whimsical journey through Alaska\'s winter wonderland at the Running Reindeer Ranch, where friendly reindeer and picturesque trails invite them to experience the magic of the North.', 'Family-Friendly', 2),
(16, 'Fairbanks Concert Association', 'Enrich your senses with world-class entertainment at the Fairbanks Concert Association, where captivating performances and cultural events promise an unforgettable experience for music lovers and theater enthusiasts alike.', 'Entertainment', 2),
(17, 'Mystery Castle', 'Mystery Castle, which is tucked away in the Arizona desert and provides visitors with a glimpse into a whimsical world of hidden passageways and vibrant tales, is a testament to one man\'s eccentric vision.', 'Obscure', 3),
(18, 'Food Tour in Downtown Phoenix', 'Take a culinary tour through the center of Phoenix, where foodies can discover lively neighborhoods and neighborhood restaurants while savoring the many flavors of the Southwest.', 'Food', 3),
(19, 'Hot Air Balloon Ride', 'Take an exhilarating hot air balloon ride over Arizona\'s stunning scenery; the expansive views and unending horizons make for the ultimate adrenaline-pumping experience.', 'Adventureous', 3),
(20, 'Desert Botanical Garden', 'Find serenity amidst the arid beauty of the desert at the Desert Botanical Garden, where tranquil pathways and exotic flora offer a peaceful escape into nature\'s oasis.', 'Relaxing Outdoors', 3),
(21, 'Hear Museum', 'Immerse yourself in the rich tapestry of Native American culture at the Heard Museum, where captivating exhibits and immersive experiences celebrate the artistry and heritage of Indigenous peoples.', 'Relaxing Indoors', 3),
(22, 'Taliesin West', 'Journey back in time to the architectural masterpiece of Taliesin West, where the legacy of Frank Lloyd Wright unfolds in a captivating blend of innovation and design amidst the Arizona desert.', 'Historical', 3),
(23, 'Phoenix Zoo', 'Delight in a day of family-friendly fun at the Phoenix Zoo, where exotic creatures from around the globe beckon visitors to embark on a wild adventure through habitats teeming with life and wonder.', 'Family-Friendly', 3),
(24, 'Musical Instrument Museum', 'Explore the harmonious world of music at the Musical Instrument Museum, where interactive exhibits and awe-inspiring collections showcase the cultural richness and diversity of musical traditions from every corner of the globe.', 'Entertainment', 3),
(25, 'Billy Bass Adoption Center', 'Dive into the quirky world of the Billy Bass Adoption Center in Arkansas, where discarded singing fish find new homes and delight visitors with their whimsical tunes in an offbeat museum experience.', 'Obscure', 4),
(26, 'Sims Bar-B-Que', 'Savor the smoky flavors of authentic Southern barbecue at Sims Bar-B-Que, where generations of tradition infuse each mouthwatering bite with the rich essence of Arkansas\' culinary heritage.', 'Food', 4),
(27, 'Pinnacle Mountain State Park', 'Embark on an exhilarating outdoor adventure at Pinnacle Mountain State Park, where rugged trails and panoramic vistas await eager hikers seeking the thrill of conquering Arkansas\' natural beauty.', 'Adventureous', 4),
(28, 'Riverfront Park', 'Unwind amidst the tranquil beauty of Riverfront Park in Arkansas, where scenic pathways and riverside views offer the perfect setting for a leisurely stroll or a peaceful afternoon picnic by the water.', 'Relaxing Outdoors', 4),
(29, 'Clinton Presidential Library', 'Delve into the pages of history at the Clinton Presidential Library, where immersive exhibits and archival treasures provide a fascinating glimpse into the life and legacy of one of America\'s most influential leaders.', 'Relaxing Indoors', 4),
(30, 'Historic Arkansas Museum', 'Step back in time at the Historic Arkansas Museum, where meticulously preserved buildings and artifacts offer a window into the state\'s storied past, bringing to life the rich tapestry of its cultural heritage.', 'Historical', 4),
(31, 'Little Rock Zoo', 'Treat the whole family to a wild day of fun and learning at the Little Rock Zoo, where exotic creatures and interactive exhibits promise an unforgettable adventure through the animal kingdom.', 'Family-Friendly', 4),
(32, 'The Joint Theater & Coffeehouse', 'Immerse yourself in the vibrant arts scene of Arkansas at The Joint Theater & Coffeehouse, where live performances and cozy ambiance create the perfect setting for an evening of entertainment and community.', 'Entertainment', 4),
(33, 'California Institute of Abnormalarts', 'Delve into the eccentric and mysterious world of the California Institute of Abnormalarts in Los Angeles, where curiosity meets the bizarre in a one-of-a-kind venue featuring eclectic performances and oddities.', 'Obscure', 5),
(34, 'Food Truck Tour', 'Embark on a culinary journey through the vibrant streets of Los Angeles with a Food Truck Tour, where diverse flavors and innovative cuisine await eager foodies at every stop.', 'Food', 5),
(35, 'Surfing at Venice Beach', 'Ride the waves and embrace the spirit of adventure at Venice Beach, where sun, sand, and surf converge to create the ultimate playground for thrill-seekers and beach lovers alike.', 'Adventureous', 5),
(36, 'Griffith Park', 'Find peace and tranquility amidst the urban hustle at Griffith Park, where sprawling green spaces and scenic hiking trails offer a serene escape into nature\'s embrace right in the heart of Los Angeles.', 'Relaxing Outdoors', 5),
(37, 'Getty Center', 'Immerse yourself in art and culture at the Getty Center, where stunning architecture and world-class collections invite visitors to explore the beauty of human creativity in a peaceful and inspiring setting.', 'Relaxing Indoors', 5),
(38, 'The Hollywood Walk of Fame', 'Walk in the footsteps of legends along the iconic Hollywood Walk of Fame, where the glitz and glamour of Tinseltown\'s past and present come alive amidst the star-studded sidewalks of Los Angeles.', 'Historical', 5),
(39, 'Disneyland Resort', 'Create unforgettable memories with the whole family at the Disneyland Resort, where magical adventures and beloved characters await at every turn in the happiest place on earth.', 'Family-Friendly', 5),
(40, 'Sunset Boulevard', 'Experience the epitome of entertainment along Sunset Boulevard, where dazzling nightlife, iconic landmarks, and celebrity sightings make every moment an unforgettable experience in the heart of Los Angeles.', 'Entertainment', 5),
(41, 'Musee Mecanique', 'Step into a world of nostalgia and wonder at the Musee Mecanique in San Francisco, where vintage arcade games and mechanical marvels captivate visitors with their timeless charm and whimsical allure.', 'Obscure', 6),
(42, 'Ferry Building Marketplace', 'Indulge in epicurean delights and artisanal treasures at the Ferry Building Marketplace, where local flavors and culinary craftsmanship take center stage against the backdrop of San Francisco\'s scenic waterfront.', 'Food', 6),
(43, 'Bike Across Golden Gate Bridge', 'Embark on an exhilarating adventure across the iconic Golden Gate Bridge, where breathtaking views and invigorating breezes await cyclists eager to explore the beauty of San Francisco\'s coastline.', 'Adventureous', 6),
(44, 'Golden Gate Park', 'Lose yourself in the natural beauty and cultural richness of Golden Gate Park, where lush gardens, scenic trails, and world-class attractions offer endless opportunities for relaxation and exploration amidst the urban bustle of San Francisco.', 'Relaxing Outdoors', 6),
(45, 'San Francisco Museum of Modern Art', 'Immerse yourself in the vibrant world of contemporary art at the San Francisco Museum of Modern Art, where innovative exhibitions and groundbreaking works inspire creativity and provoke thought in an atmosphere of intellectual curiosity.', 'Relaxing Indoors', 6),
(46, 'Alcatraz Island Tour', 'Uncover the mysteries of America\'s most infamous prison with an Alcatraz Island Tour, where history comes alive amidst the stark beauty of the San Francisco Bay, offering a glimpse into the darker chapters of the city\'s past.', 'Historical', 6),
(47, 'Exploratorium', 'Ignite your curiosity and embark on a journey of discovery at the Exploratorium, where interactive exhibits and hands-on experiments invite visitors of all ages to engage with the wonders of science, art, and perception in a playful and educational environment.', 'Family-Friendly', 6),
(48, 'Fisherman\'s Wharf', 'Delight in the sights, sounds, and flavors of San Francisco\'s iconic Fisherman\'s Wharf, where bustling markets, scenic waterfront views, and lively attractions create a vibrant tapestry of entertainment and excitement for visitors from near and far.', 'Entertainment', 6),
(49, 'Blue Mustang', 'Encounter the striking and enigmatic Blue Mustang sculpture in Denver, where its imposing presence and vibrant hue captivate passersby, shrouding the landmark in an aura of mystery and intrigue.', 'Obscure', 7),
(50, 'Denver Central Market', 'Embark on a culinary adventure through Denver\'s vibrant food scene at the Denver Central Market, where artisanal delights and gourmet treats await eager foodies amidst the bustling atmosphere of this culinary hub.', 'Food', 7),
(51, 'Rocky Mountain National Park', 'Dive into the heart of adventure at Rocky Mountain National Park, where rugged landscapes and majestic peaks beckon outdoor enthusiasts to explore the untamed beauty of Colorado\'s wilderness.', 'Adventureous', 7),
(52, 'Denver Botanic Gardens', 'Find solace amidst the serene beauty of the Denver Botanic Gardens, where lush gardens, tranquil ponds, and colorful blooms create a peaceful oasis for visitors seeking respite from the urban bustle.', 'Relaxing Outdoors', 7),
(53, 'Denver Art Museum', 'Immerse yourself in a world of artistic wonder at the Denver Art Museum, where diverse collections and innovative exhibitions showcase the creative spirit of humanity in a welcoming and inspiring environment.', 'Relaxing Indoors', 7),
(54, 'Capitol Hill Walking Tour', 'Journey through Denver\'s storied past with a Capitol Hill Walking Tour, where historic landmarks and architectural marvels offer a glimpse into the city\'s rich heritage and cultural legacy.', 'Historical', 7),
(55, 'Denver Zoo', 'Treat the whole family to a wild adventure at the Denver Zoo, where exotic animals and immersive exhibits promise an unforgettable experience filled with discovery, education, and fun.', 'Family-Friendly', 7),
(56, 'Water World Water Park', 'Beat the summer heat and make a splash at Water World Water Park in Denver, where thrilling rides, lazy rivers, and aquatic attractions offer endless excitement and entertainment for visitors of all ages.', 'Entertainment', 7),
(57, 'Cushing Brain Collection', 'Delve into the curious world of neuroscience at the Cushing Brain Collection in Connecticut, where an extraordinary array of brain specimens offers a unique and thought-provoking glimpse into the mysteries of the mind.', 'Obscure', 8),
(58, 'Louis\' Lunch', 'Savor a taste of culinary history at Louis\' Lunch in Connecticut, where the iconic hamburger was born over a century ago, delighting visitors with its timeless flavors and nostalgic charm.', 'Food', 8),
(59, 'City Climb Gym', 'Reach new heights of adventure at City Climb Gym in Connecticut, where towering walls and challenging routes beckon climbers of all skill levels to push their limits and conquer the vertical world.', 'Adventureous', 8),
(60, 'Edgerton Park', 'Find serenity amidst the lush greenery of Edgerton Park in Connecticut, where tranquil gardens, scenic pathways, and historic landmarks offer a peaceful retreat from the hustle and bustle of everyday life.', 'Relaxing Outdoors', 8),
(61, 'Yale University Art Gallery', 'Immerse yourself in the world of art and culture at the Yale University Art Gallery in Connecticut, where an exceptional collection of masterpieces spans centuries and continents, inviting visitors to explore the beauty and diversity of human creativity.', 'Relaxing Indoors', 8),
(62, 'Yale Peabody Museum of Natural History', 'Embark on a journey through time and space at the Yale Peabody Museum of Natural History in Connecticut, where dinosaur skeletons, ancient artifacts, and interactive exhibits illuminate the wonders of the natural world and the history of life on Earth.', 'Historical', 8),
(63, 'Art Plus Studio', 'Unleash your creativity and bond with family at Art Plus Studio in Connecticut, where guided painting sessions and hands-on art activities offer a fun and interactive experience for artists of all ages and skill levels.', 'Family-Friendly', 8),
(64, 'Jazzy\'s Cabaret', 'Immerse yourself in the vibrant world of entertainment at Jazzy\'s Cabaret in Connecticut, where live performances, music, and laughter create an unforgettable night out on the town for patrons seeking excitement and laughter.', 'Entertainment', 8),
(65, 'Oddity Bar', 'Step into the intriguing realm of the Oddity Bar in Delaware, where eclectic decor and offbeat charm create a unique atmosphere for patrons to enjoy live music, quirky events, and a memorable night out.', 'Obscure', 9),
(66, 'Snuff Mill', ' Indulge in culinary delights and historic ambiance at the Snuff Mill in Delaware, where a charming setting and delectable dishes offer a taste of local flavors and hospitality.', 'Food', 9),
(67, 'AQuatic Safaris SCUBA Center', 'Dive into adventure with Aquatic Safaris SCUBA Center in Delaware, where certified instructors and thrilling underwater excursions await enthusiasts eager to explore the depths of the ocean.', 'Adventureous', 9),
(68, 'Brandywine Valley Private tour', 'Unwind amidst the scenic beauty of Delaware\'s countryside with a Brandywine Valley Private Tour, where idyllic landscapes and historic estates provide the perfect backdrop for a leisurely and immersive outdoor experience.', 'Relaxing Outdoors', 9),
(69, 'Longwood Gardens', 'Discover a world of botanical wonder at Longwood Gardens in Delaware, where lush conservatories, stunning displays, and tranquil pathways invite visitors to escape into a paradise of natural beauty and serenity.', 'Relaxing Indoors', 9),
(70, 'Bellevue State Park', 'Step back in time at Bellevue State Park in Delaware, where stately mansions, manicured gardens, and historic landmarks offer a glimpse into the state\'s rich heritage and cultural legacy.', 'Historical', 9),
(71, 'Delaware Children\'s Museum', 'Spark curiosity and inspire creativity at the Delaware Children\'s Museum, where interactive exhibits and hands-on activities ignite young minds and foster a love of learning through play.', 'Family-Friendly', 9),
(72, 'Delaware Theatre Company', 'Immerse yourself in the magic of live theater at the Delaware Theatre Company, where captivating performances and compelling storytelling bring joy and entertainment to audiences of all ages.', 'Entertainment', 9),
(73, 'Stiltsville', 'Explore the hidden gem of Stiltsville in Miami, where a cluster of colorful stilt houses in the midst of Biscayne Bay offers a glimpse into the city\'s vibrant past and present.', 'Obscure', 10),
(74, 'The Surf Club Restaurant', 'Indulge in culinary excellence at The Surf Club Restaurant in Miami, where exquisite dishes and oceanfront views combine to create a dining experience worthy of the city\'s sophisticated palate.', 'Food', 10),
(75, 'Wing Foiling with Miami Watersports', 'Ride the waves and soar above the water with Wing Foiling, an exhilarating adventure offered by Miami Watersports that combines surfing and flying for an unforgettable aquatic experience.', 'Adventureous', 10),
(76, 'The Venetian Pool', 'Unwind in paradise at The Venetian Pool in Miami, where cascading waterfalls and lush landscaping create a tranquil oasis for visitors seeking relaxation and rejuvenation amidst the city\'s hustle and bustle.', 'Relaxing Outdoors', 10),
(77, 'Superblue Miami', 'Immerse yourself in the realm of immersive art at Superblue Miami, where cutting-edge installations and interactive experiences blur the lines between reality and imagination, inviting visitors to explore the boundaries of creativity and perception.', 'Relaxing Indoors', 10),
(78, 'Vizcaya Museum and Gardens', 'Step into the opulent past of Miami at the Vizcaya Museum and Gardens, where a historic mansion and sprawling Italianate gardens offer a glimpse into the lavish lifestyle of the city\'s early elite.', 'Historical', 10),
(79, 'Miami Zoo', 'Embark on a wild adventure at the Miami Zoo, where exotic animals and immersive habitats promise an unforgettable experience for families and animal lovers alike.', 'Family-Friendly', 10),
(80, 'Tortuga Music Festival', 'Dance to the rhythm of the ocean breeze at the Tortuga Music Festival in Miami, where world-class musicians and stunning seaside views come together to create a beachfront celebration of music and culture.', 'Entertainment', 10),
(81, 'Randall Knife Museum', 'Discover the artistry and craftsmanship of Randall knives at the Randall Knife Museum in Orlando, where a vast collection of meticulously crafted blades showcases the legacy of a renowned American knife maker.', 'Obscure', 11),
(82, 'Bacan', 'Savor the flavors of Peru at Bacan in Orlando, where authentic cuisine and vibrant atmosphere transport diners to the streets of Lima, promising a culinary journey filled with exotic spices and bold flavors.', 'Food', 11),
(83, 'Tree Trek Adventure Park', 'Embrace the thrill of adventure at Tree Trek Adventure Park in Orlando, where treetop obstacle courses and ziplines offer adrenaline-pumping excitement amidst the natural beauty of Florida\'s forests.', 'Adventureous', 11),
(84, 'Wekiva Island', 'Relax and unwind at Wekiva Island in Orlando, where crystal-clear springs and lush landscapes provide the perfect backdrop for a day of leisurely activities and outdoor enjoyment.', 'Relaxing Outdoors', 11),
(85, 'SEA Live Orlando Aquarium', 'Dive into an underwater wonderland at SEA Life Orlando Aquarium, where immersive exhibits and interactive displays showcase the mesmerizing beauty and diversity of marine life from around the globe.', 'Relaxing Indoors', 11),
(86, 'L.B. Brown House Museum', 'Journey into the past at the L.B. Brown House Museum in Orlando, where a historic home and museum preserve the legacy of Eatonville\'s African American community and its contributions to Florida\'s history and culture.', 'Historical', 11),
(87, 'Kennedy Space Center', 'Explore the wonders of space exploration at the Kennedy Space Center in Orlando, where interactive exhibits and awe-inspiring artifacts offer a captivating glimpse into NASA\'s storied past and future endeavors.', 'Family-Friendly', 11),
(88, 'The Social Live Music Venue', 'Immerse yourself in the vibrant music scene of Orlando at The Social Live Music Venue, where intimate concerts and electrifying performances make every night an unforgettable experience for music lovers and concert-goers.', 'Entertainment', 11),
(89, 'Crypt of Civilization', 'Step into a time capsule of human history at the Crypt of Civilization in Georgia, where a meticulously curated collection of artifacts and documents is sealed away, waiting to be opened by future generations.', 'Obscure', 12),
(90, 'Pelicana Chicken', 'Indulge in the tantalizing flavors of Korean fried chicken at Pelicana Chicken in Georgia, where crispy skin and juicy meat come together to create a culinary experience that\'s both satisfying and addictive.', 'Food', 12),
(91, 'Bad Axe Throwing Atlanta', 'Unleash your inner lumberjack and test your skills at Bad Axe Throwing Atlanta, where axe-throwing lanes and friendly competitions provide a thrilling and adrenaline-fueled adventure for participants of all levels.', 'Adventureous', 12),
(92, 'Atlanta Botanical Garden', 'Find serenity amidst the beauty of nature at the Atlanta Botanical Garden in Georgia, where lush greenery, colorful blooms, and tranquil pathways offer a peaceful escape from the urban bustle.', 'Relaxing Outdoors', 12),
(93, 'Java Cats Cafe', 'Relax and recharge at Java Cats Cafe in Georgia, where aromatic coffee and playful feline companions create a cozy and inviting atmosphere for cat lovers and coffee enthusiasts alike.', 'Relaxing Indoors', 12),
(94, 'Atlanta History Center', 'Immerse yourself in the rich tapestry of Georgia\'s past at the Atlanta History Center, where immersive exhibits, historic homes, and captivating artifacts offer a fascinating journey through the state\'s cultural heritage.', 'Historical', 12),
(95, 'Center for Puppetry Arts', 'Delight the whole family with a visit to the Center for Puppetry Arts in Georgia, where captivating performances and interactive exhibits bring the magic of puppetry to life in a fun and educational environment.', 'Family-Friendly', 12),
(96, 'Tabernacle', 'Experience the excitement of live entertainment at the Tabernacle in Georgia, where top-notch concerts and electrifying performances make every night an unforgettable experience for music lovers and concert-goers.', 'Entertainment', 12),
(97, 'Lolani Palace', 'Discover a piece of Hawaiian royalty at the Lolani Palace, where opulent architecture and rich history converge to offer visitors a glimpse into the kingdom\'s past.', 'Obscure', 13),
(98, 'Diamond Head Grill & Market', 'Savor the flavors of Hawaii at Diamond Head Grill & Market, where local cuisine and fresh ingredients come together to create a culinary experience that\'s as vibrant as the islands themselves.', 'Food', 13),
(99, 'Corsair Plane Wreck Dive Site', 'Dive into adventure at the Corsair Plane Wreck Dive Site, where underwater exploration reveals the remnants of a World War II-era aircraft, now a haven for marine life and divers alike.', 'Adventureous', 13),
(100, 'Hanauma Bay Nature Preserve', 'Immerse yourself in the natural beauty of Hawaii at Hanauma Bay Nature Preserve, where crystal-clear waters and vibrant coral reefs provide the perfect setting for snorkeling and relaxation.', 'Relaxing Outdoors', 13),
(101, 'Bishop Museum', 'Delve into Hawaiian culture and heritage at the Bishop Museum, where immersive exhibits and interactive displays offer a captivating journey through the islands\' past, present, and future.', 'Relaxing Indoors', 13),
(102, 'Pearl Harbor', 'Pay homage to history at Pearl Harbor, where solemn memorials and historic sites commemorate the events of December 7, 1941, and honor the lives lost during the attack.', 'Historical', 13),
(103, 'Ho\'omaluhia Botanical Garden', 'Escape into tranquility at Ho\'omaluhia Botanical Garden, where lush landscapes and scenic vistas invite families to explore and reconnect with nature amidst the beauty of Hawaii.', 'Family-Friendly', 13),
(104, 'Paradise Cove Luau', 'Experience the spirit of aloha at the Paradise Cove Luau, where traditional music, dance, and cuisine come together to celebrate Hawaiian culture in a captivating evening of entertainment and hospitality.', 'Entertainment', 13),
(105, 'Maui Honey Bee Sanctuary', 'Delve into the fascinating world of bees at the Maui Honey Bee Sanctuary, where educational tours and hands-on experiences offer a glimpse into the vital role these pollinators play in Hawaii\'s ecosystem.', 'Obscure', 14),
(106, 'Fond', 'Indulge in a culinary delight at Fond in Hawaii, where innovative cuisine and artistic presentation create a dining experience that\'s as memorable as it is delicious.', 'Food', 14),
(107, 'Mau Zipline Eco Tour', 'Soar through the treetops on a Maui Zipline Eco Tour, where adrenaline-pumping thrills and breathtaking views combine to create an unforgettable adventure in the heart of nature.', 'Adventureous', 14),
(108, 'Whale Watching', 'Witness the majesty of humpback whales as they migrate through Hawaii\'s waters on a whale-watching excursion, where awe-inspiring encounters with these gentle giants leave a lasting impression.', 'Relaxing Outdoors', 14),
(109, 'Haiku Mill', 'Step into a fairytale setting at Haiku Mill, where lush gardens and historic architecture provide a picturesque backdrop for weddings, events, and romantic escapes in Hawaii.', 'Relaxing Indoors', 14),
(110, 'Lahaina Jodo Mission', 'Explore the cultural heritage of Hawaii at the Lahaina Jodo Mission, where a serene temple and beautiful grounds offer a peaceful retreat and a glimpse into Buddhist traditions.', 'Historical', 14),
(111, 'Maui Ocean Center', 'Dive beneath the waves at the Maui Ocean Center, where immersive exhibits and interactive displays showcase the wonders of Hawaii\'s marine life and ecosystems, inspiring conservation and appreciation for the ocean.', 'Family-Friendly', 14),
(112, 'Aumakua Kava Lounge', 'Unwind and relax at the Aumakua Kava Lounge in Hawaii, where traditional kava ceremonies and laid-back vibes create a welcoming atmosphere for locals and visitors alike to socialize and connect.', 'Entertainment', 14),
(113, 'Big Idaho Potato Hotel', 'Experience quirky accommodation like no other at the Big Idaho Potato Hotel, where a giant potato-shaped structure offers a truly unique and memorable stay in the heart of Idaho.', 'Obscure', 15),
(114, 'The Melting Pot Of Boise', 'Indulge in a dining experience like no other at The Melting Pot of Boise, where fondue aficionados gather to savor rich flavors and intimate conversation in a cozy and communal atmosphere.', 'Food', 15),
(115, 'Float the Boise', 'Embark on an adventurous journey down the Boise River with Float the Boise, where lazy river tubing offers a refreshing escape amidst scenic landscapes and gentle currents.', 'Adventureous', 15),
(116, 'Kathryn Albertson Park', 'Find tranquility amidst the beauty of nature at Kathryn Albertson Park, where serene ponds, lush greenery, and winding pathways provide the perfect setting for a leisurely stroll or peaceful picnic.', 'Relaxing Outdoors', 15),
(117, 'Boise Art Museum', 'Immerse yourself in the world of art at the Boise Art Museum, where captivating exhibitions and inspiring collections celebrate creativity and culture in the heart of Idaho.', 'Relaxing Indoors', 15),
(118, 'Idaho Anne Frank Human Rights Memorial', 'Pay tribute to human rights and tolerance at the Idaho Anne Frank Human Rights Memorial, where poignant installations and reflective spaces honor the legacy of Anne Frank and promote peace and understanding.', 'Historical', 15),
(119, 'The Discovery Center Science Museum', 'Ignite curiosity and spark imagination at The Discovery Center Science Museum, where hands-on exhibits and interactive displays offer engaging educational experiences for families and visitors of all ages.', 'Family-Friendly', 15),
(120, 'Pengilly\'s Saloon', 'Immerse yourself in the vibrant nightlife of Idaho at Pengilly\'s Saloon, where live music, lively crowds, and friendly vibes make every night an unforgettable adventure in entertainment and camaraderie.', 'Entertainment', 15),
(121, 'Woolly Mammoth Antiques and Oddities', 'Explore the curious and eclectic at Woolly Mammoth Antiques and Oddities in Illinois, where vintage treasures and oddities await discovery, offering visitors a glimpse into the whimsical and bizarre.', 'Obscure', 16),
(122, 'Smoque BBQ', 'Treat your taste buds to authentic barbecue flavors at Smoque BBQ in Illinois, where slow-smoked meats and savory sides create a mouthwatering feast for barbecue enthusiasts and food lovers alike.', 'Food', 16),
(123, 'Urban Kayaks', 'Embark on an urban adventure with Urban Kayaks in Illinois, where paddling through the city\'s waterways offers a unique perspective of Chicago\'s skyline and landmarks, blending adventure with urban exploration.', 'Adventureous', 16),
(124, 'Chicago Botanic Garden', 'Find serenity amidst the beauty of nature at the Chicago Botanic Garden, where lush gardens, tranquil ponds, and vibrant blooms provide a peaceful escape from the hustle and bustle of city life.', 'Relaxing Outdoors', 16),
(125, 'Allyu Spa', 'Indulge in relaxation and rejuvenation at Allyu Spa in Illinois, where luxurious treatments and serene ambiance create a sanctuary for self-care and pampering amidst the urban landscape.', 'Relaxing Indoors', 16),
(126, 'Pullman Historic District', 'Step back in time at the Pullman Historic District in Illinois, where meticulously preserved buildings and landmarks offer a glimpse into the industrial history and social heritage of America\'s past.', 'Historical', 16),
(127, 'Lincoln Park Zoo', 'Delight in a day of family-friendly fun at the Lincoln Park Zoo in Illinois, where exotic animals, educational exhibits, and interactive experiences promise an unforgettable adventure for visitors of all ages.', 'Family-Friendly', 16),
(128, 'House of Blues', 'Delight in a day of family-friendly fun at the Lincoln Park Zoo in Illinois, where exotic animals, educational exhibits, and interactive experiences promise an unforgettable adventure for visitors of all ages.', 'Entertainment', 16),
(129, 'Market Street Catacombs', 'Uncover the hidden history of Indiana at the Market Street Catacombs, where underground tunnels and historic artifacts offer a glimpse into the city\'s past in an offbeat and intriguing setting.', 'Obscure', 17),
(130, 'High Velocity', 'Satisfy your hunger for both food and sports at High Velocity in Indiana, where delicious cuisine and thrilling sports action combine for an unforgettable dining experience.', 'Food', 17),
(131, 'Indy Racing Experience', 'Feel the adrenaline rush of high-speed racing at the Indy Racing Experience in Indiana, where participants can ride along or even drive race cars on the legendary Indianapolis Motor Speedway.', 'Adventureous', 17),
(132, 'Indianapolis Cultural Trail', 'Explore the vibrant culture and scenic beauty of Indiana on the Indianapolis Cultural Trail, where biking or walking along this urban pathway connects visitors to art, history, and green spaces throughout the city.', 'Relaxing Outdoors', 17),
(133, 'SoChatti', 'Indulge in the rich and creamy flavors of artisanal chocolate at SoChatti in Indiana, where chocolate lovers can savor the finest cocoa beans transformed into pure liquid chocolate for a decadent and immersive tasting experience.', 'Relaxing Indoors', 17),
(134, 'Monument Circle', 'Stand in awe of history at Monument Circle in Indiana, where the towering Soldiers and Sailors Monument commemorates the state\'s military heritage and serves as a focal point for cultural events and gatherings.', 'Historical', 17),
(135, 'Children\'s Museum of Indanapolis', 'Spark imagination and curiosity at the Children\'s Museum of Indianapolis, where interactive exhibits and hands-on activities inspire learning and play for children and families of all ages.', 'Family-Friendly', 17),
(136, 'Indy 500', 'Spark imagination and curiosity at the Children\'s Museum of Indianapolis, where interactive exhibits and hands-on activities inspire learning and play for children and families of all ages.', 'Entertainment', 17),
(137, 'West End Architectural Salvage', 'Discover hidden treasures and unique finds at West End Architectural Salvage in Iowa, where vintage pieces and salvaged materials await to be repurposed and admired in an eclectic and fascinating environment.', 'Obscure', 18),
(138, 'Bubba', 'Savor the flavors of comfort food at Bubba in Iowa, where hearty dishes and Southern hospitality create a dining experience that\'s as satisfying as it is welcoming.', 'Food', 18),
(139, 'Des Moines City Scavenger Hunt', 'Embark on an adventure-filled scavenger hunt through the streets of Des Moines, Iowa, where clues and challenges lead participants on a quest to discover the city\'s hidden gems and local landmarks.', 'Adventureous', 18),
(140, 'Downtown Farmers Market', 'Immerse yourself in the vibrant sights and sounds of Iowa\'s agricultural bounty at the Downtown Farmers Market, where fresh produce, artisanal goods, and lively atmosphere make every visit a feast for the senses.', 'Relaxing Outdoors', 18),
(141, 'Des Moines Art Center', 'Find tranquility and inspiration amidst the art at the Des Moines Art Center, where world-class collections and serene galleries offer a peaceful retreat for art lovers and culture enthusiasts.', 'Relaxing Indoors', 18),
(142, 'Capitol Building', 'Step into history at the Capitol Building in Iowa, where majestic architecture and storied halls tell the tale of the state\'s governance and political heritage, inviting visitors to explore and learn about Iowa\'s past and present.', 'Historical', 18),
(143, 'Iowa State Fairgrounds', 'Delight in a day of family-friendly fun at the Iowa State Fairgrounds, where agricultural exhibits, carnival rides, and live entertainment promise an unforgettable experience for fairgoers of all ages.', 'Family-Friendly', 18),
(144, 'Lefty\'s Live Music', 'Immerse yourself in the lively music scene of Iowa at Lefty\'s Live Music, where talented musicians and energetic performances create an electrifying atmosphere for music lovers and concert-goers alike.', 'Entertainment', 18),
(145, 'Jones Bar-BQ Vending Machine', 'Experience a unique barbecue encounter at the Jones Bar-BQ Vending Machine in Kansas, where patrons can satisfy their cravings for smoked meats and savory sauces any time of day or night with the convenience of a vending machine.', 'Obscure', 19),
(146, 'Cafe Provence', 'Delight in the flavors of France at Cafe Provence in Kansas, where classic dishes and elegant ambiance transport diners to the heart of Provence for a culinary experience that\'s both refined and delightful.', 'Food', 19),
(147, 'Go Ape Zipline & Adventure Park', 'Soar through the treetops and conquer thrilling obstacles at Go Ape Zipline & Adventure Park in Kansas, where adrenaline-pumping adventures await those seeking an outdoor challenge amidst the natural beauty of the state.', 'Adventureous', 19),
(148, 'Ewing and Muriel Kauffman Memorial Garden', 'Find serenity amidst the beauty of nature at the Ewing and Muriel Kauffman Memorial Garden in Kansas, where tranquil pathways, lush foliage, and vibrant blooms offer a peaceful escape from the urban bustle.', 'Relaxing Outdoors', 19),
(149, 'Legoland Discovery Center', 'Unleash creativity and imagination at the Legoland Discovery Center in Kansas, where colorful bricks and interactive exhibits inspire playful learning and endless fun for families and Lego enthusiasts of all ages.', 'Relaxing Indoors', 19),
(150, 'Amelia Earhart Hangar Museum', 'Journey into aviation history at the Amelia Earhart Hangar Museum in Kansas, where artifacts and exhibits celebrate the legacy of the pioneering aviator and her groundbreaking achievements in flight.', 'Historical', 19),
(151, 'Kaleidoscope Art Center', 'Ignite creativity and spark imagination at the Kaleidoscope Art Center in Kansas, where hands-on activities and interactive art installations provide a vibrant and engaging experience for families and young artists.', 'Family-Friendly', 19),
(152, 'The Ship', 'Immerse yourself in the lively atmosphere of The Ship in Kansas, where live music, craft cocktails, and friendly vibes create a dynamic and entertaining destination for nightlife enthusiasts and music lovers alike.', 'Entertainment', 19),
(153, 'Pope Lick Trestle Bridge', 'Explore the eerie allure of the Pope Lick Trestle Bridge in Kentucky, where an abandoned railroad bridge shrouded in urban legends and folklore beckons brave adventurers to uncover its mysteries.', 'Obscure', 20),
(154, 'Gus\'s World Famous Fried Chicken', 'Indulge in a taste of Southern comfort at Gus\'s World Famous Fried Chicken in Kentucky, where crispy, golden-brown chicken and mouthwatering sides have earned a reputation for excellence and flavor.', 'Food', 20),
(155, 'Louisville Mega Cavern', 'Dive into underground adventure at the Louisville Mega Cavern in Kentucky, where ziplines, ropes courses, and underground bike trails offer adrenaline-pumping thrills in a subterranean world of excitement.', 'Adventureous', 20),
(156, 'Cherokee Park', 'Find tranquility amidst the natural beauty of Cherokee Park in Kentucky, where scenic trails, rolling hills, and picturesque landscapes provide the perfect setting for outdoor recreation and relaxation.', 'Relaxing Outdoors', 20),
(157, 'Evan Williams Bourbon Experience', 'Immerse yourself in the rich history and flavors of Kentucky bourbon at the Evan Williams Bourbon Experience, where guided tours and tastings offer a journey through the distilling process and the heritage of America\'s native spirit.', 'Relaxing Indoors', 20),
(158, 'Conrad-Caldwell House Museum', 'Step back in time at the Conrad-Caldwell House Museum in Kentucky, where Victorian elegance and architectural splendor provide a glimpse into the opulent lifestyle of Louisville\'s Gilded Age elite.', 'Historical', 20),
(159, 'Louisville Slugger Museum', 'Celebrate the iconic baseball bat at the Louisville Slugger Museum in Kentucky, where interactive exhibits, historic artifacts, and behind-the-scenes tours pay homage to the legendary Louisville Slugger bat and its place in American sports history.', 'Family-Friendly', 20),
(160, 'Headliners Music Hall', 'Immerse yourself in the vibrant music scene of Kentucky at Headliners Music Hall, where live concerts and performances by local and touring artists make every night an unforgettable experience for music lovers and concert-goers.', 'Entertainment', 20),
(161, 'Museum of Death', 'Explore the macabre and mysterious at the Museum of Death in Louisiana, where exhibits on death-related artifacts and macabre curiosities offer a unique and thought-provoking experience.', 'Obscure', 21),
(162, 'Lufu Nola', 'Indulge in the rich flavors of Louisiana at Lufu Nola, where mouthwatering dishes celebrate the culinary heritage of the region with a modern twist.', 'Food', 21),
(163, 'French Quarter Ghost Tour', 'Embark on a spine-tingling adventure through Louisiana\'s historic streets with the French Quarter Ghost Tour, where tales of haunted history and spectral sightings await brave souls.', 'Adventureous', 21),
(164, 'City Park', 'Find tranquility amidst the beauty of nature at City Park in Louisiana, where lush greenery, serene ponds, and scenic pathways offer a peaceful escape from the urban bustle.', 'Relaxing Outdoors', 21),
(165, 'New Orleans Museum of Art', 'Immerse yourself in culture and creativity at the New Orleans Museum of Art, where world-class collections and stunning exhibitions showcase the vibrant arts scene of Louisiana.', 'Relaxing Indoors', 21),
(166, 'Lafitte\'s Blacksmith Shop Bar', 'Step into history at Lafitte\'s Blacksmith Shop Bar in Louisiana, where the oldest continuously operating bar in the United States invites visitors to sip cocktails amidst the ambiance of a historic French Quarter landmark.', 'Historical', 21),
(167, 'Audubon Zoo', 'Delight in a day of family-friendly fun at the Audubon Zoo in Louisiana, where exotic animals, interactive exhibits, and engaging attractions promise an unforgettable adventure for visitors of all ages.', 'Family-Friendly', 21),
(168, 'Spotted Cat Music Club', 'Immerse yourself in the lively sounds of New Orleans at the Spotted Cat Music Club, where jazz, blues, and eclectic performances create an electrifying atmosphere for music lovers and revelers.', 'Entertainment', 21),
(169, 'International Cryptozoology Museum', 'Explore the world of hidden creatures and mythical beasts at the International Cryptozoology Museum in Maine, where exhibits on cryptids and unknown animals offer a fascinating glimpse into the realm of the unexplained.', 'Obscure', 22),
(170, 'Bar Futo', 'Savor the flavors of Japan at Bar Futo in Maine, where authentic cuisine and Japanese-inspired cocktails create a dining experience that\'s both delicious and delightful.', 'Food', 22),
(171, 'Portland Paddle stand-up paddleboard tour', 'Discover the scenic beauty of Maine\'s waterways with a stand-up paddleboard tour from Portland Paddle, where paddlers can explore coastal landscapes and wildlife habitats from a unique perspective.', 'Adventureous', 22),
(172, 'Lincoln Park', 'Find serenity amidst the beauty of nature at Lincoln Park in Maine, where scenic trails, tranquil ponds, and lush greenery provide the perfect setting for outdoor recreation and relaxation.', 'Relaxing Outdoors', 22),
(173, 'Soakology', 'Unwind and rejuvenate at Soakology in Maine, where luxurious foot soaks and spa treatments offer a blissful escape from the stresses of daily life in a tranquil and serene environment.', 'Relaxing Indoors', 22),
(174, 'Portland Head Light', 'Step into history at Portland Head Light in Maine, where a historic lighthouse and scenic coastal views provide a picturesque backdrop for exploration and sightseeing.', 'Historical', 22),
(175, 'Portland Museum of Art', 'Immerse yourself in the world of art at the Portland Museum of Art in Maine, where diverse collections and captivating exhibitions celebrate the creativity and cultural heritage of the region.', 'Family-Friendly', 22),
(176, 'Portland House of Music and Events', 'Experience the vibrant music scene of Maine at the Portland House of Music and Events, where live concerts, performances, and entertainment make every night an unforgettable experience for music lovers and concert-goers.', 'Entertainment', 22),
(177, 'Catacombs of Washington D.C.', 'Delve into the mysterious underground tunnels beneath Washington D.C. with a visit to the Catacombs, where hidden passageways and historic remnants offer a glimpse into the capital\'s intriguing past.', 'Obscure', 23),
(178, 'J. Hollinger\'s Waterman\'s Chophouse', 'Indulge in a culinary journey through Maryland\'s seafood heritage at J. Hollinger\'s Waterman\'s Chophouse, where fresh catch and coastal flavors take center stage in an elegant dining setting.', 'Food', 23),
(179, 'Kick Axe Throwing DC', 'Unleash your inner lumberjack with a thrilling axe-throwing experience at Kick Axe Throwing DC, where precision, skill, and a competitive spirit combine for an adventurous outing with friends and family.', 'Adventureous', 23),
(180, 'Enid A. Haupt Garden', 'Find tranquility amidst the lush greenery and scenic beauty of the Enid A. Haupt Garden, where peaceful pathways, vibrant blooms, and sculptural accents provide a serene escape in the heart of Washington D.C.', 'Relaxing Outdoors', 23),
(181, 'National Gallery of Art', 'Immerse yourself in the world of art and culture at the National Gallery of Art, where renowned masterpieces and captivating exhibitions showcase the richness and diversity of human creativity.', 'Relaxing Indoors', 23),
(182, 'The Smithsonian', 'Explore the vast collections and fascinating exhibits of the Smithsonian museums, where history, science, art, and culture converge to educate, inspire, and delight visitors of all ages.', 'Historical', 23),
(183, 'International Spy Museum', 'Embark on a thrilling espionage adventure at the International Spy Museum, where interactive exhibits and immersive experiences offer insight into the shadowy world of spies and secret agents.', 'Family-Friendly', 23),
(184, '9:30 Club', 'Experience the vibrant music scene of Washington D.C. at the legendary 9:30 Club, where live concerts and performances by local and touring artists make every night an unforgettable experience for music lovers and concert-goers.', 'Entertainment', 23),
(185, 'Bodega', 'Discover hidden treasures and unique finds at Bodega, a unique retail concept blending fashion, art, and streetwear in an unexpected and unconventional setting.', 'Obscure', 24),
(186, 'JianNan Boston', 'Savor the flavors of authentic Chinese cuisine at JianNan Boston, where traditional dishes and regional specialties delight diners with bold flavors and culinary craftsmanship.', 'Food', 24),
(187, 'Key to Amaze Game & Entertainment Center', 'Unleash your sense of adventure and challenge your wits with an escape room experience at Key to Amaze, where immersive puzzles and thrilling scenarios promise an unforgettable adventure for friends and family.', 'Adventureous', 24),
(188, 'Freedom Trail', 'Step into history and explore Boston\'s rich heritage with a walk along the Freedom Trail, where iconic landmarks and historic sites tell the story of America\'s struggle for independence.', 'Relaxing Outdoors', 24),
(189, 'Museum of Fine Arts', 'Immerse yourself in the world of art at the Museum of Fine Arts, where diverse collections and captivating exhibitions celebrate the creativity and cultural heritage of humanity.', 'Relaxing Indoors', 24),
(190, 'Boston Tea Party Ships & Museum', 'Relive a pivotal moment in American history at the Boston Tea Party Ships & Museum, where immersive exhibits and interactive reenactments bring the events of 1773 to life.', 'Historical', 24),
(191, 'Boston Children\'s Museum', 'Ignite curiosity and inspire learning at the Boston Children\'s Museum, where hands-on exhibits and interactive experiences engage young minds and spark imagination.', 'Family-Friendly', 24),
(192, 'Citizens House of Blues Boston', 'Immerse yourself in the vibrant music scene of Boston at Citizens House of Blues, where live concerts and performances by local and touring artists make every night an unforgettable experience for music lovers and concert-goers.', 'Entertainment', 24),
(193, 'Hamtramck Disneyland', 'Step into a whimsical world of folk art and creativity at Hamtramck Disneyland, where a backyard adorned with colorful sculptures and installations offers a fascinating glimpse into the mind of an eccentric artist.', 'Obscure', 25),
(194, 'Sweet Potato Sensations', 'Indulge in the soulful flavors of Southern cuisine at Sweet Potato Sensations, where homemade sweet potato pies and other delectable treats provide a taste of comfort and tradition.', 'Food', 25),
(195, 'Outdoor Adventure Center', 'Embark on thrilling outdoor escapades at the Outdoor Adventure Center, where immersive exhibits and hands-on activities celebrate Michigan\'s natural beauty and outdoor recreation opportunities.', 'Adventureous', 25),
(196, 'Belle Isle Park', 'Find tranquility amidst the scenic beauty of Belle Isle Park, where lush greenery, serene waterways, and recreational amenities offer the perfect setting for outdoor relaxation and leisure.', 'Relaxing Outdoors', 25),
(197, 'Motown Museum', 'Relive the glory days of Motown at the Motown Museum, where iconic artifacts and memorabilia celebrate the legendary record label and its impact on music history.', 'Relaxing Indoors', 25),
(198, 'Ford Piquette Avenue Plant', 'Explore the birthplace of the Model T at the Ford Piquette Avenue Plant, where historic automobiles and industrial heritage tell the story of Detroit\'s automotive legacy.', 'Historical', 25),
(199, 'Detroit Kid City', 'Spark imagination and play at Detroit Kid City, where interactive exhibits and pretend play areas provide endless entertainment for young children and families.', 'Family-Friendly', 25);
INSERT INTO `excursions` (`excursionID`, `excursion_title`, `excursion_description`, `type_of_excursion_tag`, `destinationID`) VALUES
(200, 'Aretha\'s Jazz Cafe', 'Immerse yourself in the smooth sounds of jazz at Aretha\'s Jazz Cafe, where live performances by talented musicians create an intimate and vibrant atmosphere for music lovers and aficionados.', 'Entertainment', 25),
(201, 'Orfield Labs Quiet Chamber', 'Experience silence like never before in the Orfield Labs Quiet Chamber, where visitors can immerse themselves in an environment designed to minimize sound and provide a unique sensory experience.', 'Obscure', 26),
(202, 'Soul Bowl', 'Savor the flavors of Southern comfort food at Soul Bowl, where hearty dishes and soulful flavors bring a taste of the South to Minnesota.', 'Food', 26),
(203, 'Pedal Pub', 'Explore the city in a fun and unique way with a Pedal Pub adventure, where pedal-powered vehicles take groups on guided tours of Minneapolis while stopping at local pubs and breweries.', 'Adventureous', 26),
(204, 'Minnehaha Park', 'Discover natural beauty and scenic landscapes at Minnehaha Park, where majestic waterfalls, lush greenery, and scenic trails provide a peaceful retreat in the heart of the city.', 'Relaxing Outdoors', 26),
(205, 'Minneapolis Institute of Art', 'Immerse yourself in art and culture at the Minneapolis Institute of Art, where diverse collections and world-class exhibitions showcase the creativity and heritage of humanity.', 'Relaxing Indoors', 26),
(206, 'Mill City Museum', 'Step back in time at the Mill City Museum, where interactive exhibits and historic artifacts tell the story of Minneapolis\'s flour milling industry and its impact on the city\'s development.', 'Historical', 26),
(207, 'Mall of America', 'Shop, dine, and play at the Mall of America, where endless retail options, entertainment venues, and attractions provide an unforgettable shopping experience for visitors of all ages.', 'Family-Friendly', 26),
(208, 'First Avenue', 'Experience the vibrant music scene of Minneapolis at First Avenue, where live concerts and performances by local and touring artists make every night an unforgettable experience for music lovers and concert-goers.', 'Entertainment', 26),
(209, 'Mississippi Writer\'s Room', 'Delve into the literary history of Mississippi at the Mississippi Writer\'s Room, where exhibits and artifacts celebrate the state\'s rich literary heritage and the writers who have shaped its culture.', 'Obscure', 27),
(210, 'The Manship Wood Fired Kitchen', 'Indulge in delectable cuisine at The Manship Wood Fired Kitchen, where wood-fired cooking techniques and locally sourced ingredients create dishes bursting with flavor and creativity.', 'Food', 27),
(211, 'Urban Air Trampoline and Adventure Park', 'Embark on thrilling adventures at Urban Air Trampoline and Adventure Park, where trampolines, obstacle courses, and adrenaline-pumping attractions offer excitement for visitors of all ages.', 'Adventureous', 27),
(212, 'Mississippi Petrified Forest', 'Explore ancient wonders at the Mississippi Petrified Forest, where fossilized trees and prehistoric landscapes provide a fascinating glimpse into the geological history of the region.', 'Relaxing Outdoors', 27),
(213, 'Mississippi Sports Hall of Fame', 'Celebrate the legends of Mississippi sports at the Mississippi Sports Hall of Fame, where exhibits and memorabilia honor athletes who have made significant contributions to the state\'s athletic legacy.', 'Relaxing Indoors', 27),
(214, 'Mississippi Civil Rights Museum', 'Journey through the struggles and triumphs of the Civil Rights Movement at the Mississippi Civil Rights Museum, where powerful exhibits and interactive displays illuminate the fight for equality and justice.', 'Historical', 27),
(215, 'Museum of Natural Science', 'Discover the wonders of the natural world at the Museum of Natural Science, where immersive exhibits and hands-on activities engage visitors with the diverse ecosystems and wildlife of Mississippi and beyond.', 'Family-Friendly', 27),
(216, 'Martin\'s Downtown', 'Immerse yourself in the vibrant nightlife of Mississippi at Martin\'s Downtown, where live music, cold drinks, and friendly vibes create a lively atmosphere for locals and visitors alike.', 'Entertainment', 27),
(217, 'Lemp Mansion', 'Explore the haunted history of the Lemp Mansion, where ghostly legends and eerie tales add a spooky twist to this historic landmark in Missouri.', 'Obscure', 28),
(218, 'Mainlander', 'Indulge in delicious cuisine at Mainlander, where classic dishes and contemporary flavors come together to create a memorable dining experience in Missouri.', 'Food', 28),
(219, 'Adventure Valley', 'Embark on outdoor escapades at Adventure Valley, where ziplines, ropes courses, and outdoor challenges provide thrills and excitement for adventurers of all ages.', 'Adventureous', 28),
(220, 'Forest Park', 'Relax and unwind in the natural beauty of Forest Park, where sprawling green spaces, scenic trails, and recreational amenities offer a peaceful retreat in the heart of Missouri.', 'Relaxing Outdoors', 28),
(221, 'Cathedral Basillica of Saint Louis', 'Marvel at the breathtaking beauty of the Cathedral Basilica of Saint Louis, where stunning architecture and intricate mosaics create a serene atmosphere for reflection and contemplation.', 'Relaxing Indoors', 28),
(222, 'Grant\'s Farm', 'Visit Grant\'s Farm, where family-friendly attractions, exotic animals, and historic landmarks make for an unforgettable day of fun and exploration in Missouri.', 'Historical', 28),
(223, 'The Gateway Arch', 'Soar to new heights at The Gateway Arch, where panoramic views of St. Louis and the Mississippi River await atop this iconic symbol of American history and ingenuity.', 'Family-Friendly', 28),
(224, 'Off Broadway', 'Experience the vibrant music scene of Missouri at Off Broadway, where live concerts and performances by local and touring artists make every night an unforgettable experience for music lovers and concert-goers.', 'Entertainment', 28),
(225, 'American Computer and Robotics Museum', 'Explore the fascinating world of technology and innovation at the American Computer and Robotics Museum, where exhibits and artifacts showcase the evolution of computing and robotics throughout history.', 'Obscure', 29),
(226, 'Tanglewood Grill & Tap', 'Satisfy your appetite with delicious cuisine at Tanglewood Grill & Tap, where hearty meals and refreshing beverages provide the perfect fuel for your Montana adventures.', 'Food', 29),
(227, 'Gallatin River Whitewater Rafting', 'Experience the thrill of whitewater rafting on the Gallatin River, where rushing rapids and stunning scenery create an adrenaline-pumping adventure in the heart of Montana.', 'Adventureous', 29),
(228, 'Yellowstone Park Guided Safari', 'Discover the wonders of Yellowstone National Park on a guided safari tour, where knowledgeable guides lead you through the park\'s iconic landscapes and wildlife habitats.', 'Relaxing Outdoors', 29),
(229, 'Museum of the Rockies', 'Delve into the natural and cultural history of the Rocky Mountain region at the Museum of the Rockies, where engaging exhibits and interactive displays offer insight into the geology, paleontology, and Native American heritage of Montana.', 'Relaxing Indoors', 29),
(230, 'Samuel Lewis House', 'Step back in time at the Samuel Lewis House, where historic architecture and period furnishings transport visitors to the early days of settlement in Montana.', 'Historical', 29),
(231, 'Madison River Tubing', 'Float down the Madison River on a tubing adventure, where leisurely currents and scenic views make for a relaxing and enjoyable experience for the whole family.', 'Family-Friendly', 29),
(232, 'Live from the Divide', 'Immerse yourself in the vibrant music scene of Montana at Live from the Divide, where intimate concerts and live performances by local and touring artists create an unforgettable experience for music lovers.', 'Entertainment', 29),
(233, 'William Thompson\'s Scalped Scalp', 'Explore the curious and macabre at William Thompson\'s Scalped Scalp, where a bizarre artifact from Nebraska\'s past offers a glimpse into the darker side of frontier history.', 'Obscure', 30),
(234, 'The Corner Kitchen', 'Indulge in delicious cuisine at The Corner Kitchen, where locally sourced ingredients and creative flavors come together to create memorable dishes in Nebraska.', 'Food', 30),
(235, 'Zipline Treetop Adventure', 'Soar through the treetops on a thrilling zipline adventure, where aerial courses and scenic views provide an exhilarating outdoor experience in Nebraska.', 'Adventureous', 30),
(236, 'Henry Doorly Zoo', 'Spend a day with the animals at the Henry Doorly Zoo, where diverse habitats and interactive exhibits make for a fun and educational outing for visitors of all ages.', 'Relaxing Outdoors', 30),
(237, 'Bemis Center for Contemporary Arts', 'Immerse yourself in the world of contemporary art at the Bemis Center, where innovative exhibitions and artist residencies push the boundaries of creativity and expression.', 'Relaxing Indoors', 30),
(238, 'Mormon Trail Center at Historic Winter Quarters', 'Learn about the Mormon pioneer experience at the Mormon Trail Center, where exhibits and historic sites commemorate the journey westward to Nebraska.', 'Historical', 30),
(239, 'Lauritzen Gardens', 'Explore the beauty of nature at Lauritzen Gardens, where botanical collections, tranquil pathways, and seasonal displays offer a peaceful retreat in the heart of Nebraska.', 'Family-Friendly', 30),
(240, 'Omaha Performing Arts', 'Experience the magic of live theater and performance at Omaha Performing Arts, where Broadway shows, concerts, and cultural events entertain audiences throughout the year.', 'Entertainment', 30),
(241, 'Omega Mart', 'Step into the surreal world of Omega Mart, where ordinary shopping experiences are turned upside down in a mind-bending journey through art, imagination, and absurdity.', 'Obscure', 31),
(242, 'Mother Wolf', 'Indulge in culinary delights at Mother Wolf, where innovative dishes and bold flavors take center stage in a dining experience that\'s as adventurous as it is delicious.', 'Food', 31),
(243, 'Las Vegas Helicopter Night Flight', 'Soar above the glittering lights of Las Vegas on a thrilling helicopter night flight, where breathtaking aerial views and adrenaline-pumping excitement combine for an unforgettable adventure.', 'Adventureous', 31),
(244, 'Lower Antelope Canyon and Horseshoe Bend Day Tour', 'Discover the natural wonders of Nevada on a day tour to Lower Antelope Canyon and Horseshoe Bend, where stunning rock formations and scenic vistas provide a peaceful escape into the beauty of the outdoors.', 'Relaxing Outdoors', 31),
(245, 'Wreck Room', 'Release stress and let off steam at the Wreck Room, where smashing and breaking objects in a controlled environment offers a unique and cathartic indoor activity.', 'Relaxing Indoors', 31),
(246, 'The Mob Museum', 'Dive into the fascinating history of organized crime at The Mob Museum, where interactive exhibits and immersive experiences explore the rise and fall of mobsters and their impact on Las Vegas and beyond.', 'Historical', 31),
(247, 'Lion Habitat Ranch', 'Get up close and personal with majestic lions at the Lion Habitat Ranch, where educational tours and encounters provide a safe and enriching experience for visitors of all ages.', 'Family-Friendly', 31),
(248, 'Double Down Saloon', 'Experience the eclectic atmosphere of the Double Down Saloon, where quirky decor, live music, and signature drinks make for a memorable night of entertainment and camaraderie.', 'Entertainment', 31),
(249, 'Museum of Dumb Guy Stuff', 'Explore a collection of quirky and humorous artifacts at the Museum of Dumb Guy Stuff, where laughter and absurdity reign supreme in this offbeat attraction.', 'Obscure', 32),
(250, 'Street', 'Treat your taste buds to delicious street food at Street, where international flavors and creative dishes served in a casual setting make for a culinary adventure in New Hampshire.', 'Food', 32),
(251, 'Hybrid bike rental Portsmouth', 'Embark on outdoor adventures with a hybrid bike rental in Portsmouth, where scenic trails and coastal paths offer endless opportunities for exploration and discovery.', 'Adventureous', 32),
(252, 'Gardens of Portsmouth Walking Tour', 'Stroll through the picturesque Gardens of Portsmouth on a guided walking tour, where lush landscapes and blooming flowers provide a tranquil escape into nature.', 'Relaxing Outdoors', 32),
(253, 'USS Albacore Museum', 'Step aboard the USS Albacore submarine at its museum in New Hampshire, where immersive exhibits and guided tours offer a glimpse into the life of submariners and naval history.', 'Relaxing Indoors', 32),
(254, 'Market Square', 'Immerse yourself in the charm of Market Square, where historic architecture, bustling shops, and lively street performers create a vibrant atmosphere in the heart of Portsmouth.', 'Historical', 32),
(255, 'Vent Activity Rooms', 'Unleash your creativity and have fun at Vent Activity Rooms, where interactive games, challenges, and puzzles provide entertainment for the whole family.', 'Family-Friendly', 32),
(256, 'The Music Hall', 'Enjoy live performances and cultural events at The Music Hall, where world-class concerts, theater productions, and film screenings delight audiences year-round.', 'Entertainment', 32),
(257, 'Atlantic City\'s First Slot Machine', 'Discover a piece of gaming history at Atlantic City\'s First Slot Machine, where visitors can learn about the origins of slot machines and their impact on the city\'s entertainment scene.', 'Obscure', 33),
(258, 'Chef Vola\'s', 'Indulge in a culinary journey at Chef Vola\'s, where traditional Italian dishes and warm hospitality create an unforgettable dining experience in New Jersey.', 'Food', 33),
(259, 'Speed boat tour', 'Feel the rush of adrenaline on a speed boat tour, where thrilling rides along the coast offer breathtaking views and exciting adventures on the water.', 'Adventureous', 33),
(260, 'Absecon Lighthouse', 'Climb to new heights at Absecon Lighthouse, where panoramic views of the Atlantic Ocean and historic surroundings provide a serene escape from the hustle and bustle of Atlantic City.', 'Relaxing Outdoors', 33),
(261, 'Atlantic City Aquarium', 'Immerse yourself in the wonders of the sea at the Atlantic City Aquarium, where interactive exhibits and marine life encounters offer entertainment and education for visitors of all ages.', 'Relaxing Indoors', 33),
(262, 'Kennedy Plaza', 'Step back in time at Kennedy Plaza, where historic landmarks and monuments commemorate significant events and figures in New Jersey\'s history.', 'Historical', 33),
(263, 'ISLAND Waterpark', 'Make a splash at ISLAND Waterpark, where water slides, pools, and family-friendly attractions provide hours of fun and excitement for visitors seeking adventure and relaxation.', 'Family-Friendly', 33),
(264, 'Atlantic City Comedy Club', 'Laugh the night away at the Atlantic City Comedy Club, where top comedians and hilarious performances entertain audiences with laughter and joy.', 'Entertainment', 33),
(265, 'ATLAS-I', 'Explore a hidden gem of Cold War history at ATLAS-I, where visitors can tour a decommissioned nuclear test reactor and learn about its role in nuclear weapons development.', 'Obscure', 34),
(266, 'Tasty Noodles & Dumplings', 'Delight your taste buds with authentic Asian cuisine at Tasty Noodles & Dumplings, where flavorful dishes and handmade dumplings satisfy cravings for delicious food in New Mexico.', 'Food', 34),
(267, 'Hot Air Balloon Ride', 'Soar above the breathtaking landscapes of New Mexico on a hot air balloon ride, where panoramic views and gentle breezes create an unforgettable aerial adventure.', 'Adventureous', 34),
(268, 'La Luz Trail', 'Take a leisurely hike along the scenic La Luz Trail, where picturesque vistas and tranquil surroundings offer a peaceful escape into the beauty of the Sandia Mountains.', 'Relaxing Outdoors', 34),
(269, 'Betty\'s Day Spa', 'Relax and rejuvenate at Betty\'s Day Spa, where luxurious treatments and pampering services provide a blissful retreat from the stresses of everyday life in New Mexico.', 'Relaxing Indoors', 34),
(270, 'Indian Pueblo Cultural Center', 'Immerse yourself in Native American culture at the Indian Pueblo Cultural Center, where exhibits, performances, and workshops celebrate the rich heritage and traditions of New Mexico\'s Pueblo communities.', 'Historical', 34),
(271, 'ABQ BioPark Zoo', 'Embark on a wild adventure at the ABQ BioPark Zoo, where exotic animals and immersive habitats provide entertainment and education for visitors of all ages.', 'Family-Friendly', 34),
(272, 'Kimo Theatre', 'Experience the magic of live entertainment at the Kimo Theatre, where historic architecture and vibrant performances make every show a memorable experience in New Mexico.', 'Entertainment', 34),
(273, 'Mmuseumm', 'Explore the offbeat and eclectic collections at Mmuseumm, where quirky exhibits and unusual artifacts offer a unique perspective on everyday life and culture.', 'Obscure', 35),
(274, 'C as in Charlie', 'Treat yourself to a culinary adventure at C as in Charlie, where inventive dishes and creative flavors showcase the vibrant food scene of New York.', 'Food', 35),
(275, 'New York Media Boat Sightseeing Tour', 'Embark on an exhilarating adventure with a New York Media Boat Sightseeing Tour, where high-speed rides and breathtaking views of the city skyline create unforgettable memories.', 'Adventureous', 35),
(276, 'Central Park', 'Escape the hustle and bustle of the city and relax in the serene beauty of Central Park, where lush greenery, scenic trails, and iconic landmarks provide the perfect setting for outdoor recreation and leisure.', 'Relaxing Outdoors', 35),
(277, 'Aire Ancient Baths', 'Indulge in relaxation and rejuvenation at Aire Ancient Baths, where luxurious spa treatments and ancient bathing rituals offer a tranquil oasis in the heart of New York.', 'Relaxing Indoors', 35),
(278, 'Empire State Building', 'Experience the iconic skyline views from the top of the Empire State Building, where historic architecture and panoramic vistas showcase the rich history and grandeur of New York City.', 'Historical', 35),
(279, 'Victorian Gardens Amusement Park', 'Enjoy family-friendly fun at Victorian Gardens Amusement Park, where classic rides, games, and attractions provide entertainment for visitors of all ages in the heart of Central Park.', 'Family-Friendly', 35),
(280, 'Rockwood Music Hall', 'Immerse yourself in the vibrant music scene of New York City at Rockwood Music Hall, where live performances by emerging and established artists captivate audiences in an intimate setting.', 'Entertainment', 35),
(281, 'Musical Parking Garage', 'Discover the hidden gem of Musical Parking Garage, where innovative architecture and interactive installations transform everyday spaces into musical experiences.', 'Obscure', 36),
(282, 'Anju', 'Delight your taste buds with Korean cuisine at Anju, where bold flavors and traditional dishes offer a delicious culinary journey in North Carolina.', 'Food', 36),
(283, 'Carowinds Amusement Park', 'Get your adrenaline pumping at Carowinds Amusement Park, where thrilling rides, water slides, and family-friendly attractions provide excitement and entertainment for all ages.', 'Adventureous', 36),
(284, 'Freedom Park', 'Relax and unwind in the natural beauty of Freedom Park, where scenic trails, open spaces, and recreational amenities offer a peaceful retreat from the bustle of city life in North Carolina.', 'Relaxing Outdoors', 36),
(285, 'NASCAR Hall of Fame', 'Explore the history and excitement of NASCAR racing at the NASCAR Hall of Fame, where interactive exhibits and immersive experiences celebrate the sport\'s legendary drivers and iconic moments.', 'Relaxing Indoors', 36),
(286, 'Levine Museum of the New South', 'Journey through the history of the American South at the Levine Museum of the New South, where exhibits, artifacts, and multimedia presentations explore the region\'s diverse cultural heritage and social change.', 'Historical', 36),
(287, 'Discovery Place Science', 'Spark your curiosity and imagination at Discovery Place Science, where hands-on exhibits, interactive demonstrations, and educational programs inspire a love of science and learning for visitors of all ages.', 'Family-Friendly', 36),
(288, 'The Music Yard', 'Enjoy live music and entertainment at The Music Yard, where outdoor concerts, performances, and events bring the community together for fun and festivities in North Carolina.', 'Entertainment', 36),
(289, 'Keelboat Park', 'Discover the hidden gem of Keelboat Park, where tranquil surroundings and scenic views offer a peaceful escape along the Missouri River in North Dakota.', 'Obscure', 37),
(290, 'The Jousting Lemur', 'Delight your taste buds at The Jousting Lemur, where delicious dishes and unique flavors create a memorable dining experience in North Dakota.', 'Food', 37),
(291, 'Raging Rivers Water Park', 'Make a splash at Raging Rivers Water Park, where thrilling water slides, wave pools, and lazy rivers provide endless fun and excitement for visitors of all ages.', 'Adventureous', 37),
(292, 'Kimble Bottoms', 'Unwind in the natural beauty of Kimble Bottoms, where lush forests, meandering trails, and serene lakes offer a perfect setting for outdoor relaxation and recreation in North Dakota.', 'Relaxing Outdoors', 37),
(293, 'Railroad Museum', 'Step back in time at the Railroad Museum, where historic locomotives, artifacts, and exhibits celebrate the rich heritage and impact of railroads in North Dakota.', 'Relaxing Indoors', 37),
(294, 'Bismarck Heritage Center', 'Explore the history and culture of Bismarck at the Bismarck Heritage Center, where exhibits, artifacts, and interactive displays showcase the city\'s fascinating past and vibrant community.', 'Historical', 37),
(295, 'Gateway to Science', 'Ignite your curiosity and creativity at Gateway to Science, where hands-on exhibits, experiments, and educational programs inspire a love of science and learning for visitors of all ages in North Dakota.', 'Family-Friendly', 37),
(296, 'Laughing Sun Brewing', 'Enjoy live music and craft brews at Laughing Sun Brewing, where lively atmosphere and local entertainment make every visit a memorable experience in North Dakota.', 'Entertainment', 37),
(297, 'Cincinnati Mushroom House', 'Discover the whimsical architecture of the Cincinnati Mushroom House, where unique design and natural surroundings create a magical retreat in Ohio.', 'Obscure', 38),
(298, 'Factory 52', 'Indulge in delicious cuisine at Factory 52, where innovative dishes and culinary creations satisfy cravings for great food and dining experiences in Ohio.', 'Food', 38),
(299, 'Zipline Ozone Adventures', 'Soar through the treetops on a thrilling zipline adventure with Zipline Ozone Adventures, where adrenaline-pumping rides and stunning views provide an unforgettable outdoor experience in Ohio.', 'Adventureous', 38),
(300, 'Findlay Market', 'Explore the vibrant atmosphere of Findlay Market, where local vendors, artisans, and fresh produce create a bustling hub of activity and community in Ohio.', 'Relaxing Outdoors', 38),
(301, 'EnterTRAINment Junction', 'Immerse yourself in the world of trains at EnterTRAINment Junction, where model displays, interactive exhibits, and train rides delight visitors of all ages in Ohio.', 'Relaxing Indoors', 38),
(302, 'American Legacy Tours', 'Journey through Ohio\'s history and hauntings with American Legacy Tours, where guided tours and immersive experiences uncover the secrets and stories of the past.', 'Historical', 38),
(303, 'Dig \'N Play', 'Let your imagination run wild at Dig \'N Play, where indoor playgrounds, climbing structures, and interactive games provide hours of fun and excitement for families in Ohio.', 'Family-Friendly', 38),
(304, 'Blind Lemon', 'Unwind with live music and laid-back vibes at Blind Lemon, where cozy atmosphere and local talent make it a favorite spot for entertainment and relaxation in Ohio.', 'Entertainment', 38),
(305, 'American Pigeon Museum', 'Explore the fascinating world of pigeons at the American Pigeon Museum, where exhibits and displays highlight the history, breeds, and importance of these birds in Oklahoma.', 'Obscure', 39),
(306, 'Formosa Street Food & Bar', 'Indulge in authentic flavors at Formosa Street Food & Bar, where traditional dishes and unique creations offer a culinary journey through Oklahoma\'s diverse food scene.', 'Food', 39),
(307, 'Little Sahara State Park', 'Experience the thrill of adventure at Little Sahara State Park, where vast sand dunes and off-road trails provide endless excitement for outdoor enthusiasts in Oklahoma.', 'Adventureous', 39),
(308, 'Robbers Cave State Park', 'Escape to the tranquility of nature at Robbers Cave State Park, where scenic landscapes, hiking trails, and recreational activities offer relaxation and rejuvenation in Oklahoma.', 'Relaxing Outdoors', 39),
(309, 'Myriad Botanical Gardens', 'Immerse yourself in beauty and serenity at Myriad Botanical Gardens, where lush gardens, water features, and indoor conservatories provide a peaceful oasis in the heart of Oklahoma City.', 'Relaxing Indoors', 39),
(310, 'Museum of Osteology', 'Delve into the study of bones and skeletons at the Museum of Osteology, where exhibits and collections showcase the diversity and evolution of vertebrate anatomy in Oklahoma.', 'Historical', 39),
(311, 'Tiger Safari Zoological Park', 'Enjoy a wild adventure at Tiger Safari Zoological Park, where exotic animals, interactive experiences, and educational programs provide fun for the whole family in Oklahoma.', 'Family-Friendly', 39),
(312, 'JJ\'s Alley', 'Unwind with live music and good vibes at JJ\'s Alley, where cozy atmosphere and local talent make it a favorite spot for entertainment and relaxation in Oklahoma.', 'Entertainment', 39),
(313, 'The Freakybuttrue Pecularium', 'Step into the weird and wonderful world of The Freakybuttrue Peculiarium, where oddities, exhibits, and interactive displays offer a unique and unforgettable experience in Oregon.', 'Obscure', 40),
(314, 'Luc Lac', 'Savor the flavors of Vietnam at Luc Lac, where bold and authentic dishes bring the taste of Southeast Asia to Oregon\'s culinary scene.', 'Food', 40),
(315, 'Rare Earth Climbing Tour', 'Embark on a thrilling adventure with a Rare Earth Climbing Tour, where expert guides lead you through Oregon\'s stunning landscapes and challenging rock formations.', 'Adventureous', 40),
(316, 'Columbia River Gorge Waterfalls Tour', 'Discover the natural beauty of Oregon on a Columbia River Gorge Waterfalls Tour, where majestic waterfalls, scenic viewpoints, and lush forests create breathtaking landscapes.', 'Relaxing Outdoors', 40),
(317, 'Townshend\'s Tea', 'Relax and recharge at Townshend\'s Tea, where a wide selection of teas, cozy atmosphere, and friendly staff provide the perfect environment for tea lovers in Oregon.', 'Relaxing Indoors', 40),
(318, 'Pittock Mansion', 'Step back in time at Pittock Mansion, where elegant architecture, lush gardens, and panoramic views offer a glimpse into Oregon\'s history and heritage.', 'Historical', 40),
(319, 'The Grotto', 'Explore the serene beauty of The Grotto, where tranquil gardens, peaceful paths, and spiritual sanctuary provide a place for reflection and contemplation in Oregon.', 'Family-Friendly', 40),
(320, 'The Big Legrowlski', 'Unwind with craft beer and laid-back vibes at The Big Legrowlski, where rotating taps, local brews, and friendly ambiance make it a must-visit destination for beer enthusiasts in Oregon.', 'Entertainment', 40),
(321, 'Mutter Museum', 'Explore the curious and macabre at the Mutter Museum, where medical oddities, anatomical specimens, and historical artifacts provide a unique glimpse into the world of science and medicine.', 'Obscure', 41),
(322, 'Nam Chon', 'Indulge in authentic Korean cuisine at Nam Chon, where bold flavors and traditional dishes take center stage in Pennsylvania\'s vibrant food scene.', 'Food', 41),
(323, 'Eastern State Penitentiary Haunted House Tour', 'Brace yourself for a spine-chilling adventure at the Eastern State Penitentiary Haunted House Tour, where ghostly encounters and eerie tales await brave souls in Pennsylvania.', 'Adventureous', 41),
(324, 'Fairmont Park', 'Escape to nature at Fairmont Park, where sprawling green spaces, scenic trails, and recreational activities offer a peaceful retreat amidst the hustle and bustle of Pennsylvania\'s urban landscape.', 'Relaxing Outdoors', 41),
(325, 'Reading Terminal Market', 'Immerse yourself in culinary delights at Reading Terminal Market, where bustling aisles, diverse vendors, and delicious fare create a food lover\'s paradise in Pennsylvania.', 'Relaxing Indoors', 41),
(326, 'Liberty Bell Center', 'Discover the iconic symbol of American independence at the Liberty Bell Center, where exhibits, displays, and historical artifacts commemorate the legacy of liberty in Pennsylvania.', 'Historical', 41),
(327, 'Philadelphia Museum of Art', 'Spark creativity and imagination at the Philadelphia Museum of Art, where world-class collections, renowned exhibits, and family-friendly programs inspire visitors of all ages in Pennsylvania.', 'Family-Friendly', 41),
(328, 'Raven Lounge', 'Unwind with live music and vibrant atmosphere at Raven Lounge, where eclectic performances and lively entertainment make every night memorable in Pennsylvania.', 'Entertainment', 41),
(329, 'Providence Biltmore', 'Step into elegance and luxury at the Providence Biltmore, where historic charm, modern amenities, and impeccable service create an unforgettable stay in Rhode Island.', 'Obscure', 42),
(330, 'There There', 'Indulge in delectable dishes at There There, where innovative cuisine and culinary creativity satisfy cravings and tantalize taste buds in Rhode Island.', 'Food', 42),
(331, 'Rail Explorers Rhode Island', 'Embark on a scenic journey with Rail Explorers Rhode Island, where pedal-powered rail bikes offer a unique and unforgettable adventure through Rhode Island\'s picturesque landscapes.', 'Adventureous', 42),
(332, 'Benefit Street', 'Stroll through history on Benefit Street, where charming architecture, historic landmarks, and tree-lined sidewalks create a serene and picturesque setting in Rhode Island.', 'Relaxing Outdoors', 42),
(333, 'Rhode Island School of Design Museum of Art', 'Immerse yourself in artistic wonders at the Rhode Island School of Design Museum of Art, where diverse collections, inspiring exhibits, and educational programs celebrate creativity and innovation in Rhode Island.', 'Relaxing Indoors', 42),
(334, 'John Brown House Museum', 'Explore the legacy of Rhode Island\'s history at the John Brown House Museum, where period furnishings, interactive displays, and guided tours offer insight into the state\'s rich cultural heritage.', 'Historical', 42),
(335, 'Providence Children\'s Museum', 'Ignite curiosity and imagination at the Providence Children\'s Museum, where hands-on exhibits, interactive activities, and creative play inspire learning and discovery for young visitors in Rhode Island.', 'Family-Friendly', 42),
(336, 'The Blue Room', 'Unwind with live music and lively ambiance at The Blue Room, where local bands, DJs, and performers create a vibrant nightlife scene in Rhode Island.', 'Entertainment', 42),
(337, 'Stede Bonnet Hanging Site', 'Delve into history at the Stede Bonnet Hanging Site, where a lesser-known chapter of South Carolina\'s past comes to life amidst the backdrop of historical significance.', 'Obscure', 43),
(338, 'The Darling', 'Indulge in culinary delights at The Darling, where exquisite dishes and charming ambiance create a memorable dining experience in South Carolina.', 'Food', 43),
(339, 'Wild Blue Ropes Adventure Park', 'Embrace the spirit of adventure at Wild Blue Ropes Adventure Park, where thrilling challenges and adrenaline-pumping activities await daring souls in South Carolina.', 'Adventureous', 43),
(340, 'Middleton Place', 'Find tranquility and beauty at Middleton Place, where lush gardens, historic landmarks, and serene landscapes offer a peaceful escape from the bustle of everyday life in South Carolina.', 'Relaxing Outdoors', 43),
(341, 'Charleston City Market', 'Discover local treasures and artisanal crafts at Charleston City Market, where bustling stalls, unique finds, and Southern charm make shopping an adventure in South Carolina.', 'Relaxing Indoors', 43),
(342, 'Fort Sumter National Monument', 'Step back in time at Fort Sumter National Monument, where echoes of the past resonate amidst the remnants of a pivotal moment in South Carolina\'s history.', 'Historical', 43),
(343, 'Charleston Pirate Tours', 'Set sail on a swashbuckling adventure with Charleston Pirate Tours, where tales of piracy, treasure hunts, and high-sea escapades entertain visitors of all ages in South Carolina.', 'Family-Friendly', 43),
(344, '82 Queen', 'Immerse yourself in the vibrant nightlife at 82 Queen, where live music, delicious cocktails, and lively atmosphere ensure a memorable evening of entertainment in South Carolina.', 'Entertainment', 43),
(345, 'Cosmos Mystery Area', 'Unravel the mysteries of the universe at Cosmos Mystery Area, where gravitational anomalies and optical illusions spark wonder and curiosity in South Dakota.', 'Obscure', 44),
(346, 'Gold Bison Grill', 'Savor the flavors of the West at Gold Bison Grill, where hearty meals and South Dakota hospitality create a dining experience to remember.', 'Food', 44),
(347, 'Black Hills Adventure Tours', 'Embark on an epic journey through the Black Hills with Black Hills Adventure Tours, where rugged landscapes, scenic vistas, and thrilling excursions await in South Dakota.', 'Adventureous', 44),
(348, 'Badlands National Park', 'Explore the rugged beauty of nature at Badlands National Park, where towering rock formations, expansive vistas, and unique wildlife offer a breathtaking outdoor experience in South Dakota.', 'Relaxing Outdoors', 44),
(349, 'Chapel In the HIlls', 'Find serenity and spirituality at Chapel In the Hills, where Scandinavian architecture and tranquil surroundings provide a peaceful retreat in South Dakota.', 'Relaxing Indoors', 44),
(350, 'Mount Rushmore National Memorial', 'Marvel at one of America\'s most iconic landmarks, Mount Rushmore National Memorial, where the sculpted faces of presidents stand as a testament to national pride in South Dakota.', 'Historical', 44),
(351, 'Dinosaur Park', 'Travel back in time to the age of dinosaurs at Dinosaur Park, where towering statues, fossil displays, and interactive exhibits delight visitors of all ages in South Dakota.', 'Family-Friendly', 44),
(352, 'Aby\'s Rapid City', 'Immerse yourself in the vibrant arts and culture scene at Aby\'s Rapid City, where live performances, art exhibitions, and creative expression abound in South Dakota.', 'Entertainment', 44),
(353, 'Hermitage Hotel Men\'s Bathroom', 'Explore an unexpected gem of architectural history at the Hermitage Hotel Men\'s Bathroom, where stunning Art Deco design and opulent features create a unique experience in Tennessee.', 'Obscure', 45),
(354, 'The Stillery', 'Indulge in Southern comfort cuisine at The Stillery, where mouthwatering dishes and lively atmosphere make it a go-to spot for foodies in Tennessee.', 'Food', 45),
(355, 'Adventureworks Zipline Forest', 'Seek thrills and adrenaline rushes at Adventureworks Zipline Forest, where soaring through the treetops offers an exhilarating adventure in Tennessee\'s great outdoors.', 'Adventureous', 45),
(356, 'The Warner Parks', 'Reconnect with nature and unwind amidst scenic beauty at The Warner Parks, where lush landscapes and peaceful trails provide a serene escape in Tennessee.', 'Relaxing Outdoors', 45),
(357, 'Paint Along wine and paint', 'Tap into your creativity and unwind with a glass of wine at Paint Along wine and paint, where guided art sessions offer a relaxing indoor activity in Tennessee.', 'Relaxing Indoors', 45),
(358, 'Andrew Jackson\'s Hermitage', 'Step into history at Andrew Jackson\'s Hermitage, where preserved grounds and historic buildings offer insight into the life and times of a former U.S. president in Tennessee.', 'Historical', 45),
(359, 'Lane Motor Museum', 'Delight in a family-friendly outing at Lane Motor Museum, where rare and unusual vehicles ignite curiosity and fascination in Tennessee.', 'Family-Friendly', 45),
(360, 'Grand Ole Opry', 'Immerse yourself in the rich musical heritage of Tennessee at the Grand Ole Opry, where legendary performances and unforgettable experiences await in the heart of Nashville.', 'Entertainment', 45),
(361, 'Buffalo Bayou Park Cistern', 'Discover a hidden architectural marvel at the Buffalo Bayou Park Cistern, where underground chambers and captivating exhibits unveil a unique perspective on Houston\'s history in Texas.', 'Obscure', 46),
(362, 'La Calle Tacos', 'Indulge in authentic Tex-Mex flavors at La Calle Tacos, where bold and flavorful dishes satisfy cravings and ignite culinary adventures in Texas.', 'Food', 46),
(363, 'Sailplane over Houston', 'Soar above the skyline and experience breathtaking views with a Sailplane over Houston adventure, where adrenaline-pumping flights offer a unique perspective on the cityscape in Texas.', 'Adventureous', 46),
(364, 'Discovery Green', 'Relax and unwind amidst urban greenery at Discovery Green, where vibrant events, scenic landscapes, and recreational activities create a dynamic outdoor space in the heart of Houston, Texas.', 'Relaxing Outdoors', 46),
(365, 'Downtown Aquarium', 'Dive into a world of aquatic wonders at the Downtown Aquarium, where immersive exhibits, thrilling rides, and marine life encounters offer entertainment for visitors of all ages in Texas.', 'Relaxing Indoors', 46),
(366, 'Holocaust Museum Houston', 'Pay tribute to history and honor the memory of Holocaust victims at the Holocaust Museum Houston, where powerful exhibits and educational programs promote awareness and understanding in Texas.', 'Historical', 46),
(367, 'Smither Park', 'Marvel at the creativity and ingenuity on display at Smither Park, where vibrant mosaic sculptures and community art projects ignite inspiration and appreciation in Texas.', 'Family-Friendly', 46),
(368, '713 Music Hall', 'Immerse yourself in the vibrant music scene of Houston at 713 Music Hall, where live performances and cultural events showcase the diverse talents of local and international artists in Texas.', 'Entertainment', 46),
(369, 'Summum Pyramid', 'Explore the enigmatic Summum Pyramid, where ancient philosophies and modern practices converge to offer a unique spiritual experience in Salt Lake City.', 'Obscure', 47),
(370, 'Arempa\'s', 'Delight your taste buds with authentic Venezuelan cuisine at Arempa\'s, where savory arepas and flavorful dishes transport diners to the heart of South America in Salt Lake City.', 'Food', 47),
(371, 'Private Wild Horse Photo Safari', 'Embark on a thrilling adventure through Utah\'s rugged landscapes with a Private Wild Horse Photo Safari, where encounters with majestic wild horses offer unforgettable moments in nature near Salt Lake City.', 'Adventureous', 47),
(372, 'Great Salt Lake Wildlife and Sunset Experience', 'Unwind and soak in the breathtaking views of the Great Salt Lake during a tranquil sunset experience, where sightings of diverse wildlife and stunning vistas create a memorable outdoor escape in Salt Lake City.', 'Relaxing Outdoors', 47),
(373, 'French Breakfast at Eva\'s Bakery', 'Indulge in a delightful French breakfast experience at Eva\'s Bakery, where freshly baked pastries, aromatic coffee, and charming ambiance set the stage for a relaxing morning in Salt Lake City.', 'Relaxing Indoors', 47),
(374, 'Gardner Village', 'Step back in time and explore the historic charm of Gardner Village, where quaint shops, artisan crafts, and picturesque surroundings offer a glimpse into Utah\'s past in Salt Lake City.', 'Historical', 47),
(375, 'Lagoon Amusement Park', 'Thrill-seekers and families alike will love the excitement of Lagoon Amusement Park, where thrilling rides, entertaining shows, and fun-filled attractions provide endless entertainment in Salt Lake City.', 'Family-Friendly', 47),
(376, 'The State Room', 'Immerse yourself in the vibrant music scene of Salt Lake City at The State Room, where live performances by local and touring artists offer unforgettable experiences and unforgettable entertainment.', 'Entertainment', 47),
(377, 'Tallest Filing Cabinet on Earth', 'Discover a quirky landmark in Burlington, Vermont, with the Tallest Filing Cabinet on Earth, where an unconventional art installation captivates visitors with its towering presence and whimsical charm.', 'Obscure', 48),
(378, 'The Farmhouse Tap & Grill', 'Savor farm-to-table delights and craft brews at The Farmhouse Tap & Grill, where locally sourced ingredients and cozy ambiance create a memorable dining experience in Burlington, Vermont.', 'Food', 48),
(379, 'Summit Camel\'s Hump - Green Mountains', 'Embark on an exhilarating adventure to summit Camel\'s Hump in Vermont\'s Green Mountains, where stunning views and rugged trails offer outdoor enthusiasts an unforgettable hiking experience near Burlington.', 'Adventureous', 48),
(380, 'Church Street Marketplace', 'Stroll along the vibrant Church Street Marketplace, where charming boutiques, eclectic shops, and lively street performers create a bustling atmosphere in the heart of Burlington, Vermont.', 'Relaxing Outdoors', 48),
(381, 'Frog Hollow Vermont State Craft Center', 'Explore the rich craftsmanship and artistic heritage of Vermont at Frog Hollow Vermont State Craft Center, where locally made crafts, artworks, and gifts showcase the talent and creativity of local artisans in Burlington.', 'Relaxing Indoors', 48),
(382, 'Robert Hull Fleming Museum', 'Immerse yourself in art, culture, and history at the Robert Hull Fleming Museum, where diverse collections and engaging exhibitions offer insight into Vermont\'s past and present in Burlington.', 'Historical', 48),
(383, 'Lake Champlain Chocolates', 'Indulge your sweet tooth with gourmet chocolates and confections at Lake Champlain Chocolates, where artisanal treats and decadent flavors delight visitors of all ages in Burlington, Vermont.', 'Family-Friendly', 48),
(384, 'Flynn Center for the Performing Arts', 'Experience the magic of live theater, music, and dance at the Flynn Center for the Performing Arts, where world-class performances and cultural events enrich the vibrant arts scene of Burlington, Vermont.', 'Entertainment', 48),
(385, 'Nike Missile Contol Site N-85', 'Explore the intriguing history of the Cold War era at the Nike Missile Control Site N-85, where visitors can learn about the role of this site in national defense and its significance during the Cold War period.', 'Obscure', 49),
(386, 'Bob-Bob Korean Grill & Kitchen', 'Indulge in the bold flavors of Korean cuisine at Bob-Bob Korean Grill & Kitchen, where sizzling barbecue, savory stews, and traditional dishes offer a delicious culinary experience in Newport News.', 'Food', 49),
(387, 'Busch Gardens Williamsburg', 'Embark on an adrenaline-fueled adventure at Busch Gardens Williamsburg, where thrilling rides, entertaining shows, and immersive attractions await visitors seeking excitement and fun in Newport News.', 'Adventureous', 49),
(388, 'Virginia Living Museum', 'Immerse yourself in nature and wildlife at the Virginia Living Museum, where interactive exhibits, outdoor habitats, and educational programs showcase the rich biodiversity of Virginia in Newport News.', 'Relaxing Outdoors', 49),
(389, 'USS Monitor Center', 'Delve into maritime history at the USS Monitor Center, where artifacts, exhibits, and multimedia displays commemorate the legacy of the famous Civil War ironclad and its impact on naval technology in Newport News.', 'Relaxing Indoors', 49),
(390, 'Virginia War Museum', 'Pay tribute to the bravery and sacrifice of veterans at the Virginia War Museum, where extensive collections, military artifacts, and engaging exhibits offer insight into the military history of Virginia and beyond in Newport News.', 'Historical', 49),
(391, 'The Noland Trail', 'Enjoy a leisurely stroll or bike ride along The Noland Trail, where scenic views, serene landscapes, and tranquil waters create a picturesque outdoor retreat for families and nature enthusiasts in Newport News.', 'Family-Friendly', 49),
(392, 'Port Warwick Concert Series', 'Experience the vibrant music scene of Newport News at the Port Warwick Concert Series, where live performances by local and touring artists entertain audiences with a diverse range of musical genres and styles.', 'Entertainment', 49),
(393, 'Seattle Pinball Museum', 'Step into a world of nostalgia and fun at the Seattle Pinball Museum, where vintage pinball machines and classic arcade games offer retro entertainment and interactive experiences for visitors of all ages in Seattle.', 'Obscure', 50),
(394, 'Biang Biang Noodles', 'Delight your taste buds with authentic Chinese cuisine at Biang Biang Noodles, where hand-pulled noodles, savory dumplings, and flavorful dishes highlight the culinary traditions of Xi\'an in Seattle.', 'Food', 50),
(395, 'Day-Tour from Seattle to Mt. Rainer', 'Embark on a scenic journey from Seattle to the majestic Mt. Rainier, where breathtaking landscapes, alpine meadows, and cascading waterfalls await outdoor enthusiasts and nature lovers.', 'Adventureous', 50),
(396, 'Olympic National Park', 'Immerse yourself in the natural beauty of Olympic National Park, where lush rainforests, rugged coastlines, and snow-capped peaks offer endless opportunities for hiking, wildlife viewing, and outdoor adventures near Seattle.', 'Relaxing Outdoors', 50),
(397, 'Seattle Aquarium', 'Dive into the fascinating world of marine life at the Seattle Aquarium, where interactive exhibits, educational programs, and underwater habitats showcase the diverse ecosystems of the Pacific Northwest and beyond.', 'Relaxing Indoors', 50),
(398, 'Museum of Pop Culture', 'Explore the intersection of music, science fiction, and pop culture at the Museum of Pop Culture, where immersive exhibits, iconic artifacts, and multimedia installations celebrate the creativity and innovation of contemporary popular culture in Seattle.', 'Historical', 50),
(399, 'Chihjuly Garden and Glass', 'Marvel at the dazzling glass artistry of Dale Chihuly at the Chihuly Garden and Glass, where vibrant sculptures, stunning installations, and lush gardens create a magical and immersive experience for visitors in Seattle.', 'Family-Friendly', 50),
(400, 'Paramount Theatre', 'Experience the magic of live entertainment at the historic Paramount Theatre, where world-class performances, Broadway shows, and musical concerts captivate audiences with unforgettable experiences and unforgettable memories in Seattle.', 'Entertainment', 50),
(401, 'Trans-Allegheny Lunatic Asylum', 'Explore the eerie history of the Trans-Allegheny Lunatic Asylum, where guided tours offer insight into the treatment of mental illness and the lives of patients at this historic psychiatric hospital in Bridgeport.', 'Obscure', 51),
(402, 'Cody\'s', 'Indulge in delicious comfort food at Cody\'s, where hearty meals, savory dishes, and homestyle cooking create a welcoming dining experience for locals and visitors alike in Bridgeport.', 'Food', 51),
(403, 'WVU Zipline Canopy Tour', 'Soar through the treetops on the WVU Zipline Canopy Tour, where thrilling zip lines, scenic views, and outdoor adventures await adrenaline-seeking participants in Bridgeport.', 'Adventureous', 51),
(404, 'Coopers Rock State Forest', 'Immerse yourself in nature at Coopers Rock State Forest, where hiking trails, scenic overlooks, and outdoor recreation opportunities provide a tranquil escape into the wilderness near Bridgeport.', 'Relaxing Outdoors', 51),
(405, 'Leaseburg Art', 'Unwind and get creative at Leaseburg Art, where art classes, workshops, and studio sessions offer opportunities for artistic expression and relaxation in Bridgeport.', 'Relaxing Indoors', 51),
(406, 'Prickett\'s Forst State Park', 'Step back in time at Prickett\'s Fort State Park, where living history demonstrations, historic reenactments, and interpretive programs showcase frontier life in West Virginia at this reconstructed fort in Bridgeport.', 'Historical', 51),
(407, 'Simpson Creek Covered Bridge', 'Take a scenic drive or leisurely stroll to Simpson Creek Covered Bridge, where the historic charm and picturesque setting of this iconic bridge provide a perfect backdrop for family-friendly outings and photo opportunities in Bridgeport.', 'Family-Friendly', 51),
(408, 'Music On Main', 'Enjoy live music and entertainment at Music On Main, where local bands, performers, and artists showcase their talent in outdoor concerts and community events for residents and visitors to enjoy in Bridgeport.', 'Entertainment', 51),
(409, 'Dapper Cadaver', 'Explore the macabre and mysterious at Dapper Cadaver, where oddities, curiosities, and creepy artifacts create a unique shopping experience for those with a taste for the unusual in Madison.', 'Obscure', 52),
(410, 'Fairchild', 'Indulge in farm-to-table cuisine at Fairchild, where fresh ingredients, innovative dishes, and seasonal flavors highlight the culinary offerings of this cozy restaurant in Madison.', 'Food', 52),
(411, 'Paddle Lake Mendota', 'Embark on a scenic adventure on Lake Mendota, where paddleboarding, kayaking, and water sports offer outdoor recreation and breathtaking views of the Madison skyline and surrounding landscapes.', 'Adventureous', 52),
(412, 'Allen Centennial Gardens', 'Stroll through the serene landscapes of Allen Centennial Gardens, where vibrant flowers, lush greenery, and tranquil paths provide a peaceful retreat and botanical oasis in the heart of Madison.', 'Relaxing Outdoors', 52);
INSERT INTO `excursions` (`excursionID`, `excursion_title`, `excursion_description`, `type_of_excursion_tag`, `destinationID`) VALUES
(413, 'Olbrich Botanical Gardens', 'Discover the beauty of Olbrich Botanical Gardens, where stunning landscapes, colorful blooms, and themed gardens showcase the diverse flora and fauna of Wisconsin in Madison.', 'Relaxing Indoors', 52),
(414, 'Wisconsing Veterans Museum', 'Honor the service and sacrifice of veterans at the Wisconsin Veterans Museum, where exhibits, artifacts, and memorials preserve the stories and history of Wisconsin\'s military heroes in Madison.', 'Historical', 52),
(415, 'Cave of the Mounds', 'Journey underground to Cave of the Mounds, where guided tours, stunning rock formations, and underground wonders offer an unforgettable experience of natural beauty and geological wonders near Madison.', 'Family-Friendly', 52),
(416, 'High Noon Saloon', 'Experience the vibrant nightlife of Madison at High Noon Saloon, where live music, entertainment, and lively atmosphere make it a popular spot for locals and visitors to enjoy drinks, dancing, and good times.', 'Entertainment', 52),
(417, 'Cheyenne Big Boots', 'Explore the unique and quirky Cheyenne Big Boots, oversized cowboy boots sculptures scattered throughout the city, each with its own artistic design and character, offering a fun and memorable photo opportunity.', 'Obscure', 53),
(418, 'Rib & Chop House', 'Indulge in mouthwatering steaks, ribs, and hearty American fare at Rib & Chop House, a popular restaurant in Cheyenne known for its delicious food, cozy atmosphere, and Western hospitality.', 'Food', 53),
(419, 'Cheyenne Chauffeur ATV Off-Road Tours', 'Embark on an exhilarating adventure with Cheyenne Chauffeur ATV Off-Road Tours, where guided ATV tours through rugged landscapes, scenic trails, and off-road terrain provide adrenaline-pumping excitement and outdoor exploration.', 'Adventureous', 53),
(420, 'Curt Gowdy State Park', 'Relax and unwind in the natural beauty of Curt Gowdy State Park, where pristine lakes, hiking trails, and panoramic vistas offer opportunities for outdoor recreation, picnicking, and wildlife viewing near Cheyenne.', 'Relaxing Outdoors', 53),
(421, 'Cheyenne Frontier Days Old West Museum', 'Step back in time at the Cheyenne Frontier Days Old West Museum, where exhibits, artifacts, and memorabilia celebrate the rich history and heritage of the American West, including rodeo culture, cowboy life, and frontier traditions in Cheyenne.', 'Relaxing Indoors', 53),
(422, 'Natural History Museum', 'Discover the wonders of Wyoming\'s natural history at the Natural History Museum, where interactive exhibits, fossils, and geological specimens showcase the diverse landscapes, ecosystems, and prehistoric creatures that shaped the region and its inhabitants in Cheyenne.', 'Historical', 53),
(423, 'Big Boy Steam Engine', 'Marvel at the impressive Big Boy Steam Engine, a historic locomotive and engineering marvel on display at the Cheyenne Depot Museum, offering a fascinating glimpse into the golden age of railroads and transportation in Cheyenne.', 'Family-Friendly', 53),
(424, 'Cheyenne Civic Center', 'Experience the vibrant arts and entertainment scene at the Cheyenne Civic Center, where live performances, concerts, and cultural events entertain audiences of all ages and interests, making it a hub for community engagement and creativity in Cheyenne.', 'Entertainment', 53);

-- --------------------------------------------------------

--
-- Table structure for table `trip`
--

CREATE TABLE `trip` (
  `tripID` int NOT NULL,
  `usersID` int DEFAULT NULL,
  `destinationID` int DEFAULT NULL,
  `likes` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `trip_excursions`
--

CREATE TABLE `trip_excursions` (
  `tripID` int DEFAULT NULL,
  `excursionID` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `usersID` int NOT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `phone_number` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `user_name` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `verification_code` int DEFAULT NULL,
  `verified` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`usersID`, `first_name`, `last_name`, `phone_number`, `email`, `address`, `user_name`, `password`, `verification_code`, `verified`) VALUES
(1, 'John', 'Smith', '123-456-7890', 'john.smith@gmail.com', '123 Main St, New York, NY', 'ohn.smith_123', 'HnG47sKp3R', 123456, 1),
(2, 'Mary', 'Johnson', '234-567-8901', 'mary.johnson@yahoo.com', '456 Elm St, Los Angeles, CA', 'mary.johnson_456', 'QpN92eRs6W', 123457, 1),
(3, 'James', 'Williams', '345-678-9012', 'james.williams@hotmail.com', '789 Oak St, Chicago, IL', 'james.williams_789', 'LxGf84Rp1Q', 123458, 1),
(6, 'Jennifer', 'Davis', '678-901-2345', 'jennifer.davis@yahoo.com', '456 Elm St, Los Angeles, CA', 'jennifer.davis_456', 'RdMw28Gc7E', 123461, 1),
(7, 'David', 'Miller', '789-012-3456', 'david.miller@hotmail.com', '789 Oak St, Chicago, IL', 'david.miller_789', 'FpKu36As4D', 123462, 1),
(8, 'Linda', 'Wilson', '890-123-4567', 'linda.wilson@outlook.com', '321 Pine St, Houston, TX', 'linda.wilson_321', 'NrYv59Px8T', 123463, 1),
(10, 'Elizabeth', 'Taylor', '012-345-6789', 'elizabeth.taylor@yahoo.com', '456 Elm St, Los Angeles, CA', 'elizabeth.taylor_456', 'QwZr74Gv2L', 123465, 1),
(12, 'Barbara', 'Thomas', '213-456-7890', 'barbara.thomas@outlook.com', '321 Pine St, Houston, TX', 'barbara.thomas_321', 'VrJs62Gh4B', 123467, 1),
(13, 'Josep', 'Jackson', '324-567-8901', 'joseph.jackson@gmail.com', '123 Main St, New York, NY', 'joseph.jackson_123', 'LpYt84Sq9R', 123468, 1),
(14, 'Jessica', 'White', '435-678-9012', 'jessica.white@yahoo.com', '456 Elm St, Los Angeles, CA', 'jessica.white_456', 'WpBt75Xz8N', 123469, 1),
(17, 'Charles', 'Thompson', '768-901-2345', 'charles.thompson@gmail.com', '123 Main St, New York, NY', 'charles.thompson_123', 'UyBz59Rq7T', 123472, 1),
(18, 'Karen', 'Garcia', '879-012-3456', 'karen.garcia@yahoo.com', '456 Elm St, Los Angeles, CA', 'karen.garcia_456', 'HjFn63Ts8A', 123473, 1),
(19, 'Daniel', 'Martinez', '980-123-4567', 'daniel.martinez@hotmail.com', '789 Oak St, Chicago, IL', 'daniel.martinez_789', 'LpGr93Vx7C', 123474, 1),
(23, 'Karen', 'Lewis', '432-567-8901', 'karen.lewis@hotmail.com', '789 Oak St, Chicago, IL', 'karen.lewis_789', 'JiDf29Xp6L', 123478, 1),
(24, 'Jose', 'Lee', '543-678-9012', 'jose.lee@outlook.com', '321 Pine St, Houston, TX', 'jose.lee_321', 'PmSg86Wq4R', 123479, 1),
(25, 'Emily', 'Walker', '654-789-0123', 'emily.walker@gmail.com', '123 Main St, New York, NY', 'emily.walker_123', 'VnQm57Zx8L', 123480, 1),
(27, 'David', 'Young', '876-901-2345', 'david.young@hotmail.com', '789 Oak St, Chicago, IL', 'david.young_789', 'PnJt64Sq9W', 123482, 1),
(28, 'Ashley', 'Allen', '987-012-3456', 'ashley.allen@outlook.com', '321 Pine St, Houston, TX', 'ashley.allen_321', 'FvYb93Qs8Z', 123483, 1),
(29, 'Jason', 'Hernandez', '098-123-4567', 'jason.hernandez@gmail.com', '123 Main St, New York, NY', 'jason.hernandez_123', 'NmBw46Gq9V', 123484, 1),
(31, 'Margaret', 'Wright', '210-345-6789', 'margaret.wright@hotmail.com', '789 Oak St, Chicago, IL', 'margaret.wright_789', 'RmBs83Qw6P', 123486, 1),
(34, 'Cynthia', 'Scott', '543-678-9012', 'cynthia.scott@yahoo.com', '456 Elm St, Los Angeles, CA', 'cynthia.scott_456', 'LbRs73Nw2G', 123489, 1),
(35, 'Kevin', 'Green', '654-789-0123', 'kevin.green@hotmail.com', '789 Oak St, Chicago, IL', 'kevin.green_789', 'NfRg37Mp9W', 123490, 1),
(36, 'Amanda', 'Adams', '765-890-1234', 'amanda.adams@outlook.com', '321 Pine St, Houston, TX', 'amanda.adams_321', 'QlBr52Gs7P', 123491, 1),
(37, 'Cynthia', 'Baker', '876-901-2345', 'cynthia.baker@gmail.com', '123 Main St, New York, NY', 'cynthia.baker_123', 'TjPq68Vs9N', 123492, 1),
(38, 'Gerald', 'Gonzalez', '987-012-3456', 'gerald.gonzalez@yahoo.com', '456 Elm St, Los Angeles, CA', 'gerald.gonzalez_456', 'HsMn84Pr6G', 123493, 1),
(39, 'Maria', 'Nelson', '098-123-4567', 'maria.nelson@hotmail.com', '789 Oak St, Chicago, IL', 'maria.nelson_789', 'DfBs73Qt6P', 123494, 1),
(40, 'Laura', 'Carter', '109-234-5678', 'laura.carter@outlook.com', '321 Pine St, Houston, TX', 'laura.carter_321', 'NtBr49Ms6V', 123495, 1),
(41, 'Joseph', 'Mitchell', '210-345-6789', 'joseph.mitchell@gmail.com', '123 Main St, New York, NY', 'joseph.mitchell_123', 'JhRq37Ts9P', 123496, 1),
(42, 'John', 'Smith', '123-456-7890', 'john.smith@gmail.com', '123 Main St, New York, NY', 'ohn.smith_123', 'HnG47sKp3R', 123456, 1),
(43, 'Mary', 'Johnson', '234-567-8901', 'mary.johnson@yahoo.com', '456 Elm St, Los Angeles, CA', 'mary.johnson_456', 'QpN92eRs6W', 123457, 1),
(44, 'James', 'Williams', '345-678-9012', 'james.williams@hotmail.com', '789 Oak St, Chicago, IL', 'james.williams_789', 'LxGf84Rp1Q', 123458, 1),
(47, 'Jennifer', 'Davis', '678-901-2345', 'jennifer.davis@yahoo.com', '456 Elm St, Los Angeles, CA', 'jennifer.davis_456', 'RdMw28Gc7E', 123461, 1),
(48, 'David', 'Miller', '789-012-3456', 'david.miller@hotmail.com', '789 Oak St, Chicago, IL', 'david.miller_789', 'FpKu36As4D', 123462, 1),
(49, 'Linda', 'Wilson', '890-123-4567', 'linda.wilson@outlook.com', '321 Pine St, Houston, TX', 'linda.wilson_321', 'NrYv59Px8T', 123463, 1),
(51, 'Elizabeth', 'Taylor', '012-345-6789', 'elizabeth.taylor@yahoo.com', '456 Elm St, Los Angeles, CA', 'elizabeth.taylor_456', 'QwZr74Gv2L', 123465, 1),
(53, 'Barbara', 'Thomas', '213-456-7890', 'barbara.thomas@outlook.com', '321 Pine St, Houston, TX', 'barbara.thomas_321', 'VrJs62Gh4B', 123467, 1),
(54, 'Josep', 'Jackson', '324-567-8901', 'joseph.jackson@gmail.com', '123 Main St, New York, NY', 'joseph.jackson_123', 'LpYt84Sq9R', 123468, 1),
(55, 'Jessica', 'White', '435-678-9012', 'jessica.white@yahoo.com', '456 Elm St, Los Angeles, CA', 'jessica.white_456', 'WpBt75Xz8N', 123469, 1),
(58, 'Charles', 'Thompson', '768-901-2345', 'charles.thompson@gmail.com', '123 Main St, New York, NY', 'charles.thompson_123', 'UyBz59Rq7T', 123472, 1),
(59, 'Karen', 'Garcia', '879-012-3456', 'karen.garcia@yahoo.com', '456 Elm St, Los Angeles, CA', 'karen.garcia_456', 'HjFn63Ts8A', 123473, 1),
(60, 'Daniel', 'Martinez', '980-123-4567', 'daniel.martinez@hotmail.com', '789 Oak St, Chicago, IL', 'daniel.martinez_789', 'LpGr93Vx7C', 123474, 1),
(64, 'Karen', 'Lewis', '432-567-8901', 'karen.lewis@hotmail.com', '789 Oak St, Chicago, IL', 'karen.lewis_789', 'JiDf29Xp6L', 123478, 1),
(65, 'Jose', 'Lee', '543-678-9012', 'jose.lee@outlook.com', '321 Pine St, Houston, TX', 'jose.lee_321', 'PmSg86Wq4R', 123479, 1),
(66, 'Emily', 'Walker', '654-789-0123', 'emily.walker@gmail.com', '123 Main St, New York, NY', 'emily.walker_123', 'VnQm57Zx8L', 123480, 1),
(68, 'David', 'Young', '876-901-2345', 'david.young@hotmail.com', '789 Oak St, Chicago, IL', 'david.young_789', 'PnJt64Sq9W', 123482, 1),
(69, 'Ashley', 'Allen', '987-012-3456', 'ashley.allen@outlook.com', '321 Pine St, Houston, TX', 'ashley.allen_321', 'FvYb93Qs8Z', 123483, 1),
(70, 'Jason', 'Hernandez', '098-123-4567', 'jason.hernandez@gmail.com', '123 Main St, New York, NY', 'jason.hernandez_123', 'NmBw46Gq9V', 123484, 1),
(72, 'Margaret', 'Wright', '210-345-6789', 'margaret.wright@hotmail.com', '789 Oak St, Chicago, IL', 'margaret.wright_789', 'RmBs83Qw6P', 123486, 1),
(75, 'Cynthia', 'Scott', '543-678-9012', 'cynthia.scott@yahoo.com', '456 Elm St, Los Angeles, CA', 'cynthia.scott_456', 'LbRs73Nw2G', 123489, 1),
(76, 'Kevin', 'Green', '654-789-0123', 'kevin.green@hotmail.com', '789 Oak St, Chicago, IL', 'kevin.green_789', 'NfRg37Mp9W', 123490, 1),
(77, 'Amanda', 'Adams', '765-890-1234', 'amanda.adams@outlook.com', '321 Pine St, Houston, TX', 'amanda.adams_321', 'QlBr52Gs7P', 123491, 1),
(78, 'Cynthia', 'Baker', '876-901-2345', 'cynthia.baker@gmail.com', '123 Main St, New York, NY', 'cynthia.baker_123', 'TjPq68Vs9N', 123492, 1),
(79, 'Gerald', 'Gonzalez', '987-012-3456', 'gerald.gonzalez@yahoo.com', '456 Elm St, Los Angeles, CA', 'gerald.gonzalez_456', 'HsMn84Pr6G', 123493, 1),
(80, 'Maria', 'Nelson', '098-123-4567', 'maria.nelson@hotmail.com', '789 Oak St, Chicago, IL', 'maria.nelson_789', 'DfBs73Qt6P', 123494, 1),
(81, 'Laura', 'Carter', '109-234-5678', 'laura.carter@outlook.com', '321 Pine St, Houston, TX', 'laura.carter_321', 'NtBr49Ms6V', 123495, 1),
(82, 'Joseph', 'Mitchell', '210-345-6789', 'joseph.mitchell@gmail.com', '123 Main St, New York, NY', 'joseph.mitchell_123', 'JhRq37Ts9P', 123496, 1),
(83, 'John', 'Smith', '123-456-7890', 'john.smith@gmail.com', '123 Main St, New York, NY', 'ohn.smith_123', 'HnG47sKp3R', 123456, 1),
(84, 'Mary', 'Johnson', '234-567-8901', 'mary.johnson@yahoo.com', '456 Elm St, Los Angeles, CA', 'mary.johnson_456', 'QpN92eRs6W', 123457, 1),
(85, 'James', 'Williams', '345-678-9012', 'james.williams@hotmail.com', '789 Oak St, Chicago, IL', 'james.williams_789', 'LxGf84Rp1Q', 123458, 1),
(86, 'Patricia', 'Jones', '456-789-0123', 'patricia.jones@outlook.com', '321 Pine St, Houston, TX', 'patricia.jones_321', 'VwPq65Tu9Z', 123459, 1),
(87, 'Michael', 'Brown', '567-890-1234', 'michael.brown@gmail.com', '123 Main St, New York, NY', 'michael.brown_123', 'KsNt73Wx5A', 123460, 1),
(88, 'Jennifer', 'Davis', '678-901-2345', 'jennifer.davis@yahoo.com', '456 Elm St, Los Angeles, CA', 'jennifer.davis_456', 'RdMw28Gc7E', 123461, 1),
(89, 'David', 'Miller', '789-012-3456', 'david.miller@hotmail.com', '789 Oak St, Chicago, IL', 'david.miller_789', 'FpKu36As4D', 123462, 1),
(90, 'Linda', 'Wilson', '890-123-4567', 'linda.wilson@outlook.com', '321 Pine St, Houston, TX', 'linda.wilson_321', 'NrYv59Px8T', 123463, 1),
(91, 'William', 'Moore', '901-234-5678', 'william.moore@gmail.com', '123 Main St, New York, NY', 'william.moore_123', 'HgBs82Mn6P', 123464, 1),
(92, 'Elizabeth', 'Taylor', '012-345-6789', 'elizabeth.taylor@yahoo.com', '456 Elm St, Los Angeles, CA', 'elizabeth.taylor_456', 'QwZr74Gv2L', 123465, 1),
(93, 'Richard', 'Anderson', '102-345-6789', 'richard.anderson@hotmail.com', '789 Oak St, Chicago, IL', 'richard.anderson_789', 'TnLm93Vx1C', 123466, 1),
(94, 'Barbara', 'Thomas', '213-456-7890', 'barbara.thomas@outlook.com', '321 Pine St, Houston, TX', 'barbara.thomas_321', 'VrJs62Gh4B', 123467, 1),
(95, 'Josep', 'Jackson', '324-567-8901', 'joseph.jackson@gmail.com', '123 Main St, New York, NY', 'joseph.jackson_123', 'LpYt84Sq9R', 123468, 1),
(96, 'Jessica', 'White', '435-678-9012', 'jessica.white@yahoo.com', '456 Elm St, Los Angeles, CA', 'jessica.white_456', 'WpBt75Xz8N', 123469, 1),
(97, 'Thomas', 'Harris', '546-789-0123', 'thomas.harris@hotmail.com', '789 Oak St, Chicago, IL', 'thomas.harris_789', 'FgQw86Hr5Z', 123470, 1),
(98, 'Sarah', 'Martin', '657-890-1234', 'sarah.martin@outlook.com', '321 Pine St, Houston, TX', 'sarah.martin_321', 'YmRs47Nx3L', 123471, 1),
(99, 'Charles', 'Thompson', '768-901-2345', 'charles.thompson@gmail.com', '123 Main St, New York, NY', 'charles.thompson_123', 'UyBz59Rq7T', 123472, 1),
(100, 'Karen', 'Garcia', '879-012-3456', 'karen.garcia@yahoo.com', '456 Elm St, Los Angeles, CA', 'karen.garcia_456', 'HjFn63Ts8A', 123473, 1),
(101, 'Daniel', 'Martinez', '980-123-4567', 'daniel.martinez@hotmail.com', '789 Oak St, Chicago, IL', 'daniel.martinez_789', 'LpGr93Vx7C', 123474, 1),
(102, 'Melissa', 'Robinson', '091-234-5678', 'melissa.robinson@outlook.com', '321 Pine St, Houston, TX', 'melissa.robinson_321', 'QwKt52Gv3P', 123475, 1),
(103, 'Nancy', 'Clark', '210-345-6789', 'nancy.clark@gmail.com', '123 Main St, New York, NY', 'nancy.clark_123', 'FgTs86Zx5Q', 123476, 1),
(104, 'Paul', 'Rodriguez', '321-456-7890', 'paul.rodriguez@yahoo.com', '456 Elm St, Los Angeles, CA', 'paul.rodriguez_456', 'HrUs74Nw9V', 123477, 1),
(105, 'Karen', 'Lewis', '432-567-8901', 'karen.lewis@hotmail.com', '789 Oak St, Chicago, IL', 'karen.lewis_789', 'JiDf29Xp6L', 123478, 1),
(106, 'Jose', 'Lee', '543-678-9012', 'jose.lee@outlook.com', '321 Pine St, Houston, TX', 'jose.lee_321', 'PmSg86Wq4R', 123479, 1),
(107, 'Emily', 'Walker', '654-789-0123', 'emily.walker@gmail.com', '123 Main St, New York, NY', 'emily.walker_123', 'VnQm57Zx8L', 123480, 1),
(108, 'Michelle', 'Hall', '765-890-1234', 'michelle.hall@yahoo.com', '456 Elm St, Los Angeles, CA', 'michelle.hall_456', 'HtKj73Nr6S', 123481, 1),
(109, 'David', 'Young', '876-901-2345', 'david.young@hotmail.com', '789 Oak St, Chicago, IL', 'david.young_789', 'PnJt64Sq9W', 123482, 1),
(110, 'Ashley', 'Allen', '987-012-3456', 'ashley.allen@outlook.com', '321 Pine St, Houston, TX', 'ashley.allen_321', 'FvYb93Qs8Z', 123483, 1),
(111, 'Jason', 'Hernandez', '098-123-4567', 'jason.hernandez@gmail.com', '123 Main St, New York, NY', 'jason.hernandez_123', 'NmBw46Gq9V', 123484, 1),
(112, 'Ruth', 'King', '109-234-5678', 'ruth.king@yahoo.com', '456 Elm St, Los Angeles, CA', 'ruth.king_456', 'LjFg95Ms7R', 123485, 1),
(113, 'Margaret', 'Wright', '210-345-6789', 'margaret.wright@hotmail.com', '789 Oak St, Chicago, IL', 'margaret.wright_789', 'RmBs83Qw6P', 123486, 1),
(114, 'Ryan', 'Lopez', '321-456-7890', 'ryan.lopez@outlook.com', '321 Pine St, Houston, TX', 'ryan.lopez_321', 'NkTs64Zx8H', 123487, 1),
(115, 'Shirley', 'Hill', '432-567-8901', 'shirley.hill@gmail.com', '123 Main St, New York, NY', 'shirley.hill_123', 'JgPr94Wq5L', 123488, 1),
(116, 'Cynthia', 'Scott', '543-678-9012', 'cynthia.scott@yahoo.com', '456 Elm St, Los Angeles, CA', 'cynthia.scott_456', 'LbRs73Nw2G', 123489, 1),
(117, 'Kevin', 'Green', '654-789-0123', 'kevin.green@hotmail.com', '789 Oak St, Chicago, IL', 'kevin.green_789', 'NfRg37Mp9W', 123490, 1),
(118, 'Amanda', 'Adams', '765-890-1234', 'amanda.adams@outlook.com', '321 Pine St, Houston, TX', 'amanda.adams_321', 'QlBr52Gs7P', 123491, 1),
(119, 'Cynthia', 'Baker', '876-901-2345', 'cynthia.baker@gmail.com', '123 Main St, New York, NY', 'cynthia.baker_123', 'TjPq68Vs9N', 123492, 1),
(120, 'Gerald', 'Gonzalez', '987-012-3456', 'gerald.gonzalez@yahoo.com', '456 Elm St, Los Angeles, CA', 'gerald.gonzalez_456', 'HsMn84Pr6G', 123493, 1),
(121, 'Maria', 'Nelson', '098-123-4567', 'maria.nelson@hotmail.com', '789 Oak St, Chicago, IL', 'maria.nelson_789', 'DfBs73Qt6P', 123494, 1),
(122, 'Laura', 'Carter', '109-234-5678', 'laura.carter@outlook.com', '321 Pine St, Houston, TX', 'laura.carter_321', 'NtBr49Ms6V', 123495, 1),
(123, 'Joseph', 'Mitchell', '210-345-6789', 'joseph.mitchell@gmail.com', '123 Main St, New York, NY', 'joseph.mitchell_123', 'JhRq37Ts9P', 123496, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`commentID`),
  ADD KEY `usersID` (`usersID`),
  ADD KEY `tripID` (`tripID`);

--
-- Indexes for table `destinations`
--
ALTER TABLE `destinations`
  ADD PRIMARY KEY (`destinationID`);

--
-- Indexes for table `excursions`
--
ALTER TABLE `excursions`
  ADD PRIMARY KEY (`excursionID`),
  ADD KEY `destinationID` (`destinationID`);

--
-- Indexes for table `trip`
--
ALTER TABLE `trip`
  ADD PRIMARY KEY (`tripID`),
  ADD KEY `usersID` (`usersID`),
  ADD KEY `destinationID` (`destinationID`);

--
-- Indexes for table `trip_excursions`
--
ALTER TABLE `trip_excursions`
  ADD KEY `tripID` (`tripID`),
  ADD KEY `excursionID` (`excursionID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`usersID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `commentID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `destinations`
--
ALTER TABLE `destinations`
  MODIFY `destinationID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `excursions`
--
ALTER TABLE `excursions`
  MODIFY `excursionID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=425;

--
-- AUTO_INCREMENT for table `trip`
--
ALTER TABLE `trip`
  MODIFY `tripID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=167;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `usersID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`usersID`) REFERENCES `users` (`usersID`),
  ADD CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`tripID`) REFERENCES `trip` (`tripID`);

--
-- Constraints for table `excursions`
--
ALTER TABLE `excursions`
  ADD CONSTRAINT `excursions_ibfk_1` FOREIGN KEY (`destinationID`) REFERENCES `destinations` (`destinationID`);

--
-- Constraints for table `trip`
--
ALTER TABLE `trip`
  ADD CONSTRAINT `trip_ibfk_1` FOREIGN KEY (`usersID`) REFERENCES `users` (`usersID`),
  ADD CONSTRAINT `trip_ibfk_2` FOREIGN KEY (`destinationID`) REFERENCES `destinations` (`destinationID`);

--
-- Constraints for table `trip_excursions`
--
ALTER TABLE `trip_excursions`
  ADD CONSTRAINT `trip_excursions_ibfk_1` FOREIGN KEY (`tripID`) REFERENCES `trip` (`tripID`),
  ADD CONSTRAINT `trip_excursions_ibfk_2` FOREIGN KEY (`excursionID`) REFERENCES `excursions` (`excursionID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
