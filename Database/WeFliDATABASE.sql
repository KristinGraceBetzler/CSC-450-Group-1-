-- Create the WeFli database
CREATE DATABASE IF NOT EXISTS WeFli;
USE WeFli;

-- Create User Table
CREATE TABLE IF NOT EXISTS User (
    User_ID INT PRIMARY KEY,
    First_Name VARCHAR(100),
    Last_Name VARCHAR(100),
    Phone_Number VARCHAR(100),
    Email VARCHAR(100),
    Address VARCHAR(100),
    User_Name VARCHAR(100),
    Password VARCHAR(100),
    Verification_Code INT,
    Verified TINYINT(1) NOT NULL
);

-- Create Comments Table
CREATE TABLE IF NOT EXISTS Comments (
    Comment_ID INT PRIMARY KEY,
    User_ID INT,
    Comment VARCHAR(100),
    FOREIGN KEY (User_ID) REFERENCES User(User_ID)
);

-- Create User_Content Table
CREATE TABLE IF NOT EXISTS User_Content (
    User_Content_ID INT PRIMARY KEY,
    User_ID INT,
    User_Post VARCHAR(100),
    Comment_ID INT,
    FOREIGN KEY (User_ID) REFERENCES User(User_ID),
    FOREIGN KEY (Comment_ID) REFERENCES Comments(Comment_ID)
);

-- Create Quiz Table
CREATE TABLE IF NOT EXISTS Quiz (
    Quiz_ID INT PRIMARY KEY,
    Quiz_Question VARCHAR(100),
    Quiz_Option_1 VARCHAR(100),
    Quiz_Option_2 VARCHAR(100)
);

-- Create Hotels Table
CREATE TABLE IF NOT EXISTS Hotels (
    Hotel_ID INT PRIMARY KEY,
    Hotel_Name VARCHAR(100),
    Check_In_Date DATETIME,
    Check_Out_Date DATETIME,
    Check_In_Time VARCHAR(100),
    Check_Out_Time VARCHAR(100),
    Room_Type VARCHAR(100),
    Hotel_Type VARCHAR(100)
);

-- Create Flight Table
CREATE TABLE IF NOT EXISTS Flight (
    Flight_ID INT PRIMARY KEY,
    Departure_Airport VARCHAR(100),
    Destination_Airport VARCHAR(100),
    Departure_Date DATETIME,
    Arrival_Date DATETIME,
    Departure_Time VARCHAR(100),
    Arrival_Time VARCHAR(100),
    Airline_Name VARCHAR(100),
    Flight_Time VARCHAR(100)
);

-- Create Destinations Table
CREATE TABLE IF NOT EXISTS Destinations (
    Destination_ID INT PRIMARY KEY,
    Destination_State VARCHAR(100),
    Destination_City VARCHAR(100),
    DestinationClimate VARCHAR(100)
);

-- Create Trip Table
CREATE TABLE IF NOT EXISTS Trip (
    Trip_ID INT PRIMARY KEY,
    User_ID INT,
    Flight_ID INT,
    Hotel_ID INT,
    Destination_ID INT,
    Comment_ID INT,
    FOREIGN KEY (User_ID) REFERENCES User(User_ID),
    FOREIGN KEY (Flight_ID) REFERENCES Flight(Flight_ID),
    FOREIGN KEY (Hotel_ID) REFERENCES Hotels(Hotel_ID),
    FOREIGN KEY (Destination_ID) REFERENCES Destinations(Destination_ID),
    FOREIGN KEY (Comment_ID) REFERENCES Comments(Comment_ID)
);

-- Create Excursions Table 
CREATE TABLE IF NOT EXISTS Excursions(
	Excursion_ID INT PRIMARY KEY,
    Excursion_Title VARCHAR(100),
    Excursion_Description VARCHAR(100),
    Destination_ID INT,
    FOREIGN KEY (Destination_ID) REFERENCES Destinations(Destination_ID)
);
    
    
