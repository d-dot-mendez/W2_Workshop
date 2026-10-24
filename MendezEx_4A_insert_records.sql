
USE lana_dog_walking;
 
 CREATE TABLE Customer (
    Customer_ID INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Email_Address VARCHAR(100) NOT NULL,
    Phone_Number VARCHAR(15) NOT NULL,
    Home_Address VARCHAR(255) NOT NULL
);  
 
 INSERT INTO Customer
(Customer_ID, Name, Email_Address, Phone_Number, Home_Address)
VALUES
(1234, 'John Smith', 'john.smith@email.com', '3025551001', '101 Main St'),
(1235, 'Jane Doe', 'jane.doe@email.com', '3025551002', '102 Oak Ave'),
(1236, 'Michael Johnson', 'michael.j@email.com', '3025551003', '103 Pine Rd'),
(1237, 'Sarah Brown', 'sarah.b@email.com', '3025551004', '104 Maple Dr'),
(1238, 'David Wilson', 'david.w@email.com', '3025551005', '105 Cedar Ln'),
(1239, 'Emily Davis', 'emily.d@email.com', '3025551006', '106 Birch Ct'),
(1240, 'Christopher Miller', 'chris.m@email.com', '3025551007', '107 Elm St'),
(1241, 'Jessica Taylor', 'jessica.t@email.com', '3025551008', '108 Walnut Ave'),
(1242, 'Matthew Anderson', 'matt.a@email.com', '3025551009', '109 Cherry Rd'),
(1243, 'Ashley Thomas', 'ashley.t@email.com', '3025551010', '110 Spruce Dr'); 


CREATE TABLE Dog (
Dog_ID INT PRIMARY KEY,
Customer_ID INT NOT NULL,
Dog_Name VARCHAR(50) NOT NULL,
Dog_Age INT NOT NULL,
Breed VARCHAR(50) NOT NULL,
FOREIGN KEY (Customer_ID) REFERENCES Customer(Customer_ID)
); 

INSERT INTO Dog
(Dog_ID, Customer_ID, Dog_Name, Dog_Age, Breed)
VALUES
(1111, 1234, 'Buddy', 4, 'Golden Retriever'),
(1112, 1235, 'Max', 2, 'Labrador Retriever'),
(1113, 1236, 'Bella', 6, 'Beagle'),
(1114, 1237, 'Charlie', 3, 'Poodle'),
(1115, 1238, 'Lucy', 5, 'German Shepherd'),
(1116, 1239, 'Daisy', 1, 'Cocker Spaniel'),
(1117, 1240, 'Rocky', 7, 'Boxer'),
(1118, 1241, 'Luna', 2, 'Siberian Husky'),
(1119, 1242, 'Cooper', 4, 'Australian Shepherd'),
(1120, 1243, 'Molly', 3, 'Dachshund'); 

CREATE TABLE Appointment (
    Appointment_ID INT PRIMARY KEY,
    Customer_ID INT NOT NULL,
    Dog_ID INT NOT NULL,
    Date DATE NOT NULL,
    Time TIME NOT NULL,
    Duration INT NOT NULL,
    FOREIGN KEY (Customer_ID) REFERENCES Customer(Customer_ID),
    FOREIGN KEY (Dog_ID) REFERENCES Dog(Dog_ID)
); 

INSERT INTO Appointment
(Appointment_ID, Customer_ID, Dog_ID, Date, Time, Duration)
VALUES
(2001, 1234, 1111, '2026-10-31', '08:00:00', 30),
(2002, 1235, 1112, '2026-11-01', '09:00:00', 30),
(2003, 1236, 1113, '2026-11-02', '10:00:00', 45),
(2004, 1237, 1114, '2026-11-03', '11:00:00', 30),
(2005, 1238, 1115, '2026-11-04', '12:00:00', 60),
(2006, 1239, 1116, '2026-11-05', '13:00:00', 30),
(2007, 1240, 1117, '2026-11-06', '14:00:00', 45),
(2008, 1241, 1118, '2026-11-07', '15:00:00', 30),
(2009, 1242, 1119, '2026-11-08', '16:00:00', 60),
(2010, 1243, 1120, '2026-11-09', '17:00:00', 30); 

CREATE TABLE Dog_Appointment (
    Appointment_ID INT,
    Dog_ID INT,
    PRIMARY KEY (Appointment_ID, Dog_ID),
    FOREIGN KEY (Appointment_ID) REFERENCES Appointment(Appointment_ID),
    FOREIGN KEY (Dog_ID) REFERENCES Dog(Dog_ID)
); 

INSERT INTO Dog_Appointment
(Appointment_ID, Dog_ID)
VALUES
(2001, 1111),
(2002, 1112),
(2003, 1113),
(2004, 1114),
(2005, 1115),
(2006, 1116),
(2007, 1117),
(2008, 1118),
(2009, 1119),
(2010, 1120);


