USE lana_dog_walking;


INSERT INTO Customer
(Customer_Name, Customer_Phone, Customer_Email, Customer_Address)
VALUES
('John Smith', '555-123-4567', 'john.smith@example.com', '123 Main Street, New York, NY');
INSERT INTO Customer (Customer_Name, Customer_Phone, Customer_Email, Customer_Address)
VALUES
('Sarah Johnson', '555-010-1001', 'sarah.johnson@example.com', '45 Oak Street, New York, NY'),
('Michael Brown', '555-010-1002', 'michael.brown@example.com', '78 Pine Avenue, Queens, NY'),
('Emily Davis', '555-010-1003', 'emily.davis@example.com', '12 Maple Road, Brooklyn, NY'),
('Daniel Wilson', '555-010-1004', 'daniel.wilson@example.com', '90 Cedar Lane, Bronx, NY'),
('Jessica Martinez', '555-010-1005', 'jessica.martinez@example.com', '23 Elm Street, Queens, NY'),
('David Anderson', '555-010-1006', 'david.anderson@example.com', '56 Birch Road, Manhattan, NY'),
('Ashley Thomas', '555-010-1007', 'ashley.thomas@example.com', '34 Willow Avenue, Brooklyn, NY'),
('James Taylor', '555-010-1008', 'james.taylor@example.com', '67 Spruce Street, Bronx, NY'),
('Olivia White', '555-010-1009', 'olivia.white@example.com', '89 Cherry Lane, Queens, NY'),
('Christopher Lee', '555-010-1010', 'christopher.lee@example.com', '15 Walnut Road, Brooklyn, NY');



INSERT INTO Dog
(Customer_ID, Dog_Name, Dog_Breed, Dog_Age)
VALUES
(1, 'Max', 'Labrador', 3);



INSERT INTO Dog (Customer_ID, Dog_Name, Dog_Breed, Dog_Age)
VALUES
(2, 'Bella', 'Golden Retriever', 2),
(3, 'Charlie', 'Beagle', 4),
(4, 'Luna', 'German Shepherd', 3),
(5, 'Rocky', 'Bulldog', 5),
(6, 'Daisy', 'Poodle', 1),
(7, 'Cooper', 'Husky', 4),
(8, 'Lucy', 'Corgi', 2),
(9, 'Buddy', 'Boxer', 6),
(10, 'Milo', 'Chihuahua', 3),
(11, 'Coco', 'Shih Tzu', 2);

INSERT INTO Appointment
(Walk_Date, Walk_Time, Duration_Minutes)
VALUES
('2026-10-26', '10:00:00', 30);


INSERT INTO Appointment (Walk_Date, Walk_Time, Duration_Minutes)
VALUES
('2026-10-27', '09:00:00', 30),
('2026-10-27', '11:00:00', 45),
('2026-10-28', '10:00:00', 30),
('2026-10-28', '14:00:00', 60),
('2026-10-29', '08:30:00', 30),
('2026-10-29', '12:00:00', 45),
('2026-10-30', '09:30:00', 30),
('2026-10-30', '15:00:00', 60),
('2026-10-31', '10:30:00', 45),
('2026-11-01', '11:30:00', 30);

SELECT Appointment_ID, Walk_Date, Walk_Time, Duration_Minutes
FROM lana_dog_walking.Appointment;

INSERT INTO Appointment_Dog (Appointment_ID, Dog_ID)
VALUES (1, 1);

INSERT INTO Appointment_Dog (Appointment_ID, Dog_ID)
VALUES
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 11);

