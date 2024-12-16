CREATE DATABASE RV_Park;
USE RV_Park;

CREATE TABLE Customer(
customer_id	INT PRIMARY KEY,
frst_name	VARCHAR(20),
last_name	VARCHAR(20),
address		VARCHAR(35),
city		VARCHAR(35),
state		CHAR(2),
ZIP			char(5),
phone		VARCHAR(10),
email		VARCHAR(50)
);

CREATE TABLE Vehicle(
VIN		INT PRIMARY KEY,
make	VARCHAR(20),
model	VARCHAR(20),
Year	INT,
customer_id INT,
FOREIGN KEY (customer_id) REFERENCES Customer(customer_id)
);

CREATE TABLE Maintenance(
record_id	INT PRIMARY KEY,
VIN			INT,
Maintenance_date	DATE,
details	TEXT,
cost DECIMAL(7,2),
FOREIGN KEY (VIN) REFERENCES Vehicle(VIN)
);

ALTER TABLE Maintenance MODIFY COLUMN cost DECIMAL(10,2);

CREATE TABLE Invoice(
invoice_id	INT PRIMARY KEY,
invoice_date	DATE,
total_cost	DECIMAL(10,2),
customer_id INT,
FOREIGN KEY (customer_id) REFERENCES Customer(customer_id)
);

ALTER TABLE Invoice MODIFY COLUMN total_cost DECIMAL(10,2);

CREATE TABLE InvoiceMaintenance(
invoice_id	INT,
record_id	INT,
PRIMARY KEY (invoice_id, record_id),
FOREIGN KEY (invoice_id) REFERENCES Invoice(invoice_id),
FOREIGN KEY (record_id) REFERENCES Maintenance(record_id)
);

CREATE TABLE Reservation(
reservation_id 	INT PRIMARY KEY,
customer_id		INT,
VIN				INT,
arrival_date	DATE,
departure_date	DATE,
parking_cost 	DECIMAL(5,2),
FOREIGN KEY (customer_id) REFERENCES Customer(customer_id),
FOREIGN KEY (VIN) REFERENCES Vehicle(VIN)
);

ALTER TABLE Reservation MODIFY COLUMN parking_cost DECIMAL(10,2);

CREATE TABLE RentalOptions(
option_id 	INT PRIMARY KEY,
option_type VARCHAR(15),
cost	DECIMAL(5,2)
);

ALTER TABLE RentalOptions MODIFY COLUMN cost DECIMAL(10,2);
 
CREATE TABLE ReservationOptions(
reservation_id	INT,
option_id		INT,
PRIMARY KEY (reservation_id, option_id),
FOREIGN KEY (reservation_id) REFERENCES Reservation(reservation_id),
FOREIGN KEY (option_id) REFERENCES RentalOptions(option_id)
);


INSERT INTO Customer values
(1001,'Paula','Bailey','12 Pine ST', 'Charlotte','NC','28227','7045553121','pbailey@email.com'),
(1002,'Bill','Winter','7800 Spring View', 'Charlotte','NC','28227','7045178432','bwinter@email.com'),
(1003,'Steve','Winter','453 Pine way', 'Charlotte','NC','28227','7047851049','swintery@email.com'),
(1004,'Mary','Butler','1923 West Peach ct','Normal','NC','61701','3095543121','mbutler@email.com'),
(1005,'Jerry','Carey','754 Lost Lane apt T','Raleigh','NC','27609','7049853121','jerry@email.com'),
(1006,'Peter','Hummer','8000 Spring View', 'Charlotte','NC','28227','7044518723','hummmer@email.com'),
(1007,'Krystal','Woods','100458 Pear Cove', 'Wilmington','NC','28401','7047851049','kwoods@email.com'),
(1008,'Mary','Butler','1923 West Peach','Normal','IL','61701','3095543121','mbutler@email.com'),
(1009,'Sister','Sarah','One way church lane','Nashville','TN','37011','6155543121','sister@email.com');

SELECT * FROM Customer;

INSERT INTO Vehicle values
(131442382, 'American Coach','dream', 2025, 1001),
(631447432, 'Winnebago','Solis Pocket', 2025, 1002),
(231442672, 'Winnebago','Solis NPF', 2025, 1003),
(975642890, 'Jayco','fifthWheel', 2025,1004),
(521442007, 'Winnebago','Winnebago', 1998,1005),
(431444567, 'Winnebago','Revel Sport', 2025,1006),
(135446132, 'American Coach','dream', 2025,1007),
(055489120, 'Dreamliner','dream', 2005,1008),
(231476129, 'VW','Bus', 1966, 1009);

SELECT * FROM Vehicle
WhERE make = 'American Coach';

INSERT INTO Reservation values
(201,1001,131442382, '2024-12-02','2024-12-27', 800.00),
(202,1002,631447432, '2024-11-20','2024-12-15', 1600.00),
(203,1003,231442672, '2024-11-20','2024-12-15', 1600.00),
(204,1004,975642890, '2024-12-31','2025-01-01', 200.00),
(205,1005,521442007, '2024-12-31','2025-01-02', 600.00),
(206,1006,431444567, '2024-11-20','2024-12-15', 1600.00),
(207,1007,135446132, '2024-12-01','2024-12-03', 300.00),
(208,1008,055489120, '2024-11-26','2024-11-30', 500.00),
(209,1009,231476129, '2024-12-01','2025-01-31', 6200.00);

INSERT INTO Maintenance values
(305,521442007, '2024-12-31','oil change', 200.00),
(309,231476129, '2024-12-21','transmission', 4000.00);

 SELECT frst_name, last_name, parking_cost FROM Customer C LEFT JOIN Reservation R ON C.Customer_ID = R.Customer_ID;