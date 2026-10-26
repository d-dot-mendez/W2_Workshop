DROP SCHEMA IF EXISTS lana_dog_walking;
CREATE SCHEMA lana_dog_walking;
USE lana_dog_walking;


CREATE TABLE Customer (
    Customer_ID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Email_Address VARCHAR(255),
    Phone_Number VARCHAR(20),
    Home_Address VARCHAR(255)
); 

 
 CREATE TABLE Dog (
    Dog_ID INT AUTO_INCREMENT PRIMARY KEY,
    Customer_ID INT NOT NULL,
    Dog_Name VARCHAR(100) NOT NULL,
    Dog_Age INT,
    Breed VARCHAR(100),

    CONSTRAINT FK_Dog_Customer
        FOREIGN KEY (Customer_ID)
        REFERENCES Customer(Customer_ID)
); 

CREATE TABLE Appointment (
    Appointment_ID INT AUTO_INCREMENT PRIMARY KEY,
    Customer_ID INT NOT NULL,
    Dog_ID INT NOT NULL,
    Date DATE NOT NULL,
    Time TIME NOT NULL,
    Duration INT NOT NULL,

    FOREIGN KEY (Customer_ID) REFERENCES Customer(Customer_ID),
    FOREIGN KEY (Dog_ID) REFERENCES Dog(Dog_ID)
);

CREATE TABLE Dog_Appointment (
    Appointment_ID INT NOT NULL,
    Dog_ID INT NOT NULL,

    PRIMARY KEY (Appointment_ID, Dog_ID),

    CONSTRAINT FK_DogAppointment_Appointment
        FOREIGN KEY (Appointment_ID)
        REFERENCES Appointment(Appointment_ID),

    CONSTRAINT FK_DogAppointment_Dog
        FOREIGN KEY (Dog_ID)
        REFERENCES Dog(Dog_ID)
);



