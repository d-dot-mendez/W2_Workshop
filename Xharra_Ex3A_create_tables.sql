DROP SCHEMA IF EXISTS lana_dog_walking;
CREATE SCHEMA lana_dog_walking;
USE lana_dog_walking;


CREATE TABLE Customer (
    Customer_ID INT AUTO_INCREMENT PRIMARY KEY,
    Customer_Name VARCHAR(100),
    Customer_Phone VARCHAR(20),
    Customer_Email VARCHAR(100),
    Customer_Address VARCHAR(255)
);



CREATE TABLE Dog (
    Dog_ID INT AUTO_INCREMENT PRIMARY KEY,
    Customer_ID INT,
    Dog_Name VARCHAR(100),
    Dog_Breed VARCHAR(100),
    Dog_Age INT,
    FOREIGN KEY (Customer_ID) REFERENCES Customer(Customer_ID)
);



CREATE TABLE Appointment (
    Appointment_ID INT AUTO_INCREMENT PRIMARY KEY,
    Walk_Date DATE,
    Walk_Time TIME,
    Duration_Minutes INT
);



CREATE TABLE Appointment_Dog (
    Appointment_ID INT,
    Dog_ID INT,
    PRIMARY KEY (Appointment_ID, Dog_ID),
    FOREIGN KEY (Appointment_ID) REFERENCES Appointment(Appointment_ID),
    FOREIGN KEY (Dog_ID) REFERENCES Dog(Dog_ID)
);

