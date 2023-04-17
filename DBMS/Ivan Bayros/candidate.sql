SHOW DATABASES;
USE mca123;
SHOW TABLES;

CREATE TABLE candidates(
	id VARCHAR(6) PRIMARY KEY,
    firatName VARCHAR(35) NOT NULL,
    middleName VARCHAR(35),
    lastName VARCHAR(35) NOT NULL,
    fatherName VARCHAR(35) NOT NULL,
	maritalStatus VARCHAR(9) DEFAULT 'No',
    birthDate DATE NOT NULL,
    birthPlace VARCHAR(35) NOT NULL,
    religion VARCHAR(35) NOT NULL,
    salaryExpected DECIMAL(10,2) DEFAULT 0,
    email VARCHAR(50) NOT NULL,
    totalExperiance DECIMAL(8,2) DEFAULT 0,
    CHECK (maritalStatus IN  ('Yes','No')), 
    CHECK (id LIKE 'CAN%')
);


ALTER TABLE candidates 
CHANGE firatName firstName VARCHAR(35);

INSERT INTO candidates 
VALUES('CAN001','Sharanam','Chaitanya','Shah','Chaitanya','Yes','1981-01-03','Mumbai','Hindu',75000,'sharanams@hotmail.com',3),
		('CAN002','Robert','James','Dsilva','Chaitanya','No','1982-01-01','Banglore','Christian',7000,'robert@gmail.com',1),
        ('CAN003','Flora','Sam','Dcunha','Sam','Yes','1952-06-23','Kolkatta','Christian',25000,'flora@yahoo.com',1),
        ('CAN004','Neha','Sham','Mathur','Sham','NO','1976-06-22','Palakkad','Hindu',27000,'neha@mathur.com',4),
        ('CAN005','Ankit','Amar','Zaveri','Amar','Yes','1978-07-05','Chennai','Hindu',6000,'ankit@zaveri.com',3),
        ('CAN006','Ajay','Amay','Narvekar','Amay','Yes','1973-04-05','Mumbai','Hindu',10000,'ajay@narveker.com',7);

SELECT * FROM candidates;
