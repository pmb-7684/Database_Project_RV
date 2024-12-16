CREATE TABLE Employee(
SSN1	INT PRIMARY KEY,
frst_name	VARCHAR(20),
last_name	VARCHAR(20),
address		VARCHAR(35),
city		VARCHAR(35),
state		CHAR(2),
ZIP			char(5),
phone		VARCHAR(10),
email		VARCHAR(50),
job_title   VARCHAR(20),
salary      DECIMAL(9,0)
);

INSERT INTO Employee values
(242567812,'Bob','Bailey','12 Pine ST', 'Mountainville','NC','28227','7045553121','bbailey@email.com', 'maechanic',50000),
(124568703,'Carl','Winter','7800 Fall View', 'Mountainville','NC','28227','7045178432','cwinter@email.com','manager',75000),
(090157881,'Billy','Winter','453 Pine way', 'Mountainville','NC','28227','7047851049','bwintery@email.com','mechanic intern',35000),
(098714832,'Robert','Butler','1923 West Strawberry ct','Mountainville','NC','61701','3095543121','bbutler@email.com','pt wait staff',20000),
(352147899,'Chip','Carey','754 Maple Lane','Mountainville','NC','27609','7049853121','chip@email.com','pt kitchen',20000),
(999999999,'Peter','Gunn','8000 Spring View', 'Mountainville','NC','28227','7044518723','pgunn@email.com','sous chek',55000),
(987777774,'Tom','Woods','2458 Beach Cove', 'Mountainville','NC','28401','7047851049','twoods@email.com','Head chef',55000),
(032418788,'Amanda','Butler','1923 West Turnip','Mountainville','NC','61701','3095543121','abutler@email.com','HR manager',75000),
(471598265,'Richard','Brown','One church lane','Mountainville','NC','37011','6155543121','rb@email.com','cs clerk', 40000),
(052147899,'Dawn','Carey','754 Honey Lane','Mountainville','NC','27609','7049853121','chip@email.com','cs clerk', 40000),
(048714832,'Carrie','Butler','1923 West Rose ct','Mountainville','NC','61701','3095543121','bbutler@email.com','pt wait staff',20000),
(247567812,'Charlie','Bailey','12 Oak ST', 'Mountainville','NC','28227','7045553121','bbailey@email.com', 'groundskeeper',50000),
(624568703,'Buck','Winter','7800 Summer View', 'Mountainville','NC','28227','7045178432','cwinter@email.com','groundskeeper',50000);

SELECT * FROM employee;

CREATE TABLE Dependents(
SSN2	INT PRIMARY KEY,
frst_name	VARCHAR(20),
last_name	VARCHAR(20),
phone		VARCHAR(10),
email		VARCHAR(50),
relationship  VARCHAR(20),
SSN1        INT,
FOREIGN KEY (SSN1) REFERENCES Employee(SSN1)
);

INSERT INTO Dependents values
(790157881,'Betty','Winter','7045178432','cwinter@email.com', 'spouse',124568703);
