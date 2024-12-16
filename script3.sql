CREATE TABLE Supplier(
company_id	INT PRIMARY KEY,
company_name	VARCHAR(30),
contact		VARCHAR(25),
address		VARCHAR(35),
city		VARCHAR(35),
state		CHAR(2),
ZIP			char(5),
phone		VARCHAR(10),
email		VARCHAR(50)
);


INSERT INTO Supplier VALUES
(100, 'Duke Energy','Barnaby Jones','525 S Tryon', 'Charotte', 'NC','28203','8007779898', 'duke-energy.com'),
(101, 'Piedmont Natl Gas','Barnaby Jones','4339 S Tryon', 'Charotte', 'NC','28203','8007527504', 'piedmontng.com'),
(102, 'Duke Energy','Baraby Jones','525 S Tryon', 'Charotte', 'NC','28203','8007779898', 'duke-energy.com'),
(103, 'City of Mountainville','Aunt Mary Woods','1457 Main St', 'Mountainville', 'NC','28227','7045128898', 'waterMountainville.com'),
(104, 'Mountainville Insurance','Uncle Bobby Woods','1459 Main St', 'Mountainville', 'NC','28227','7044518887', 'cheap_Insurnace.com'),
(105, 'Mountainville Meats','Ray Ray Woods','257 Rural Route 28', 'Mountainville', 'NC','28227','8006779898', 'CleanFood_Mountainville.com'),
(106, 'Mountainville Farm','Georgia Woods','257 Rural Route 28', 'Mountainville', 'NC','28227','8006779898', 'CleanFood_Mountainville.com');



CREATE TABLE Supplier_Record(
payment_id	INT PRIMARY KEY,
payment_date	DATE,
details	TEXT,
cost DECIMAL(10,2),
company_id	INT,
FOREIGN KEY (company_id) REFERENCES Supplier(company_id)
);

INSERT INTO Supplier_Record VALUES
(1,  '2024-10-20', 'September bill in full', 2000, 100),
(2,  '2024-11-20', 'october bill in full', 1700, 100),
(3,  '2024-10-15', 'sept bill in full', 500, 101),
(4,  '2024-11-16', 'october bill in full', 700, 101),
(5,  '2024-11-20', 'September/October bill in full', 100, 103),
(6,  '2024-11-20', 'September/October bill in full', 1200, 105),
(7,  '2024-11-20', 'September/October bill in full', 800, 106),
(8,  '2024-11-16', 'september premium in full', 1500, 104),
(9,  '2024-11-16', 'october premium in full', 1500, 104);


SELECT * FROM Supplier;

CREATE TABLE Government(
govt_id	INT PRIMARY KEY,
govt_name	VARCHAR(30),
contact		VARCHAR(25),
address		VARCHAR(35),
city		VARCHAR(35),
state		CHAR(2),
ZIP			char(5),
phone		VARCHAR(10),
email		VARCHAR(50)
);

INSERT INTO Government VALUES
(200, 'IRS','none','PO Box 1302', 'Charotte', 'NC','28201','8008291020', 'IRS.gov'),
(201, 'NC DOR','none','PO Box R', 'Raleigh', 'NC','27634','8007527504', 'ncdor.gov'),
(202, 'Dept of Revenue Moutainville','Ralph Potter','1559 Main St', 'Mountainville', 'NC','28227','7042158754', 'Mountainville.com');

CREATE TABLE Govt_Record(
payment_id	INT PRIMARY KEY,
payment_date	DATE,
details	TEXT,
cost DECIMAL(10,2),
govt_id	INT,
FOREIGN KEY (govt_id) REFERENCES Government(govt_id)
);


INSERT INTO Govt_Record VALUES
(1,  '2024-11-20', 'wk 11/17 IRS', 1000, 200),
(2,  '2024-11-13', 'wk 11/12 IRS', 700, 200),
(3,  '2024-11-17', 'wk 11/17 NC DOR', 2000, 201),
(4,  '2024-11-07', 'wk 11/12 NC DOR', 1700, 201),
(5,  '2024-11-20', 'payment towrdds DOR M''ville', 1700, 202);


DROP TABLE reservationoptions;
DROP TABLE RentalOptions;

CREATE TABLE RentalOptions(
option_id INT PRIMARY KEY,
option_type TEXT,
cost	DECIMAL(10,2)
);

INSERT INTO RentalOptions VALUES
(1,'GRILL', 75),
(2,'DINNER', 100),
(3,'DINNER', 100),
(4,'DINNER', 100),
(5,'DINNER', 100),
(6,'DINNER', 100),
(7,'GRILL', 75),
(8,'DINNER', 100),
(9,'DINNER', 100),
(10,'LAKESIDE', 500);

INSERT INTO Reservation_Options VALUES
(201, 1),
(202, 2),
(203, 3),
(204, 4),
(205, 5),
(206, 6),
(207, 7),
(207, 8),
(208, 9),
(208, 10);


CREATE TABLE Reservation_Options(
reservation_id	INT,
option_id		INT,
PRIMARY KEY (reservation_id, option_id),
FOREIGN KEY (reservation_id) REFERENCES Reservation(reservation_id),
FOREIGN KEY (option_id) REFERENCES RentalOptions(option_id)
);

INSERT INTO RentalOptions VALUES
(1,  '2024-11-20', 'wk 11/17 IRS', 1000, 200),
(2,  '2024-11-13', 'wk 11/12 IRS', 700, 200),
(3,  '2024-11-17', 'wk 11/17 NC DOR', 2000, 201),
(4,  '2024-11-07', 'wk 11/12 NC DOR', 1700, 201),
(5,  '2024-11-20', 'payment towrdds DOR M''ville', 1700, 202);

SELECT * FROM customer;
SELECT * FROM employee;
SELECT * FROM dependents;
SELECT * FROM vehicle;
SELECT * FROM maintenance;
SELECT * FROM reservation;
SELECT * FROM government;
SELECT * FROM supplier;
SELECT * FROM reservation;
SELECT * FROM Supplier_Record;
SELECT * FROM govt_record;

SELECT * FROM invoice;
SELECT * FROM rentaloptions;
SELECT * FROM reservationoptions;