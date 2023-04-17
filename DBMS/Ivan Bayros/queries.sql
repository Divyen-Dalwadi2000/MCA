SHOW DATABASES;
USE mca123;

-- SELECT QUERIES
-- Query 1:- Find out the candidates of birth of all the candidate
SELECT birthDate FROM candidates;

-- Query 2:- List the details of addresses of all candidates
SELECT * from candidateAddresses;

-- Query 3:- Retrieve the candidates's Qualification ID, name of the exam along with the name of board
SELECT id, examname, boardname FROM candidateQualifications;

-- Query 4:- Retrieve address details of all clients
SELECT * FROM clientAddress;

-- Query 5:- List all candidates who has passed the exam before 2001
SELECT yearofpassing FROM candidateQualifications
WHERE yearofpassing < 2001;

-- QUERY 6:- Display the clients who reside in mumbai
SELECT * FROM clientAddress
WHERE lower(city) = 'mumbai';

-- UPDATE QUERIES 
-- Query 1:- Update The Year Of Passing for candidate Sharanam to 2004.
UPDATE candidateQualifications
SET yearOfPassing = 2004
WHERE id = (
			SELECT id FROM candidates 
			WHERE firstName = 'Sharanam'
            );

-- Query 2:- Update all client's city Mumbai to Pune 
SET SQL_SAFE_UPDATES = 0;

UPDATE clientAddress
SET city = 'Pune'
WHERE city = 'Mumbai';
SELECT * FROM clientAddress;

SET SQL_SAFE_UPDATES = 1;

-- Query 3:- Change the country of all the clients to India
UPDATE clientAddress
SET country = 'India';

-- Query 4:- Update the class to First for the candidate Robert
SET SQL_SAFE_UPDATES = 0;

UPDATE candidateQualifications
SET class = 'First'
WHERE id = (
			SELECT id FROM candidates 
			WHERE firstName = 'Robert'
		   );

SET SQT_SAFE_UPDATES = 1;
SHOW TABLES;

-- DELETE QUERIES
-- Query 1:- Delete the Records of client's address where the state is maharashtra
SELECT * FROM candidates;
DELETE FROM clientAddress
WHERE state = 'Maharastra';

-- Query 2:- Delete the records of candidate whose salary exceptations is greater than 7000
DELETE FROM candidates 
WHERE salaryExpected > 7000;
SELECT * FROM candidates;

-- Query 3:- Delete the records of candidates who have passed the exam before the year 2004
DELETE FROM candidateQualifications
WHERE yearOfPassing < 2004;
SELECT * FROM candidateQualifications;

-- Query 4:- Delete the records of client contact mode where the contType is Mobile
DESC clientContact;
DELETE FROM clientContact
WHERE type = 'Mobile';
SELECT * FROM clientContact;

-- Query 5:- Delete all records from CandQual table
DELETE FROM candidateQualifications;
SELECT * FROM candidateQualifications;

-- ALTER QUERIES
-- Query 1:- Add a Column named CandAge of datatype integer and size 2 in the Candidate table
ALTER TABLE candidates
ADD COLUMN CandAge INT(2);

SHOW TABLES;
DESC clientAddress;

-- Query 2:- Add a Column named ClntPhone of datatype integer and size 8 in the ClntAddr table
ALTER TABLE clientAddress
ADD COLUMN ClntPhone INT(8);

-- Query 3:- Add Column named ClntEmail of datatype integer ans size 20 in the Client table immediately after the column ClntName
ALTER TABLE client
ADD COLUMN ClntEmail INT(20) 
AFTER name;
SELECT * FROM client;

-- Query 4:- Add a column named ClntEmail of datatype varchar and size 20 in the CandAddr table as the first column of the that table
ALTER TABLE candidateAddresses
ADD COLUMN ClntEmail VARCHAR(20)
FIRST;
SELECT * FROM candidateAddresses;

-- Query 5:- Drop the column ClntPhone from the ClntAddr table
ALTER TABLE clientAddress
DROP COLUMN ClntPhone; 
SELECT * FROM candidateAddresses;

-- Query 6:- Modify size of the column ExamName to 25 in CandQual Table
ALTER TABLE candidateQualifications
MODIFY COLUMN examName VARCHAR(25);

-- Query 7:- Modify the size of CandEmail column to 50 in the candidate table and also shift the column immediately after the column CandReligion
ALTER TABLE candidates 
MODIFY COLUMN email VARCHAR(50)
AFTER religion;

-- Query 8:- Modify the size of CandReligion column to 40 in the candidate table and also make the column as the first column of the Table
ALTER TABLE candidates
MODIFY COLUMN religion VARCHAR(40)
FIRST;

-- Query 9:-  Change the column name CandAge to CandCurrAge in the candidate table
ALTER TABLE candidates
CHANGE COLUMN CandAge CandCurrAge INT(2);

-- Query 10:- Change the column name clntCity to City in the ClntAddr table and shift it immediately after the column ClntCountry
ALTER TABLE clientAddress
CHANGE COLUMN ClntCity City VARCHAR(35)
AFTER country;

-- Query 11:- Change the column name ClntZip to Pincode in the ClntAddr table and also make that column as the first column of the table
ALTER TABLE clientAddress
CHANGE COLUMN zip Pincode VARCHAR(25)
FIRST;

-- CHANGE TABLE TYPE QUERY
-- Query :- check the TableType For candidate table and change it to INNODB
SHOW TABLE STATUS LIKE 'candidates';
ALTER TABLE candidates ENGINE = INNODB;

-- RENAME QUERY
-- Query :- Rename The table Client to ClientInfo
RENAME TABLE client TO ClientInfo;
	-- OR --
ALTER TABLE client
RENAME ClientInfo;

-- TRUNCATE QUERY
-- Query :- Truncate or empty the table Candidate
TRUNCATE TABLE candidates;

-- DROP QUERY
-- Query :- Drop the table Candidate
DROP TABLE IF EXISTS candidates;


-- Page No 174
-- 1. DISPLAY TABLE QUERIES
-- a. Display the tables created in HRMS database
SHOW TABLES;

-- b. Display the tables created in HRMS database without activating the database
SHOW TABLES FROM mca123;

-- 2. DISPLAY TABLE STRUCTURE QUERIES
-- a. Display the Columns along with their attributes of table Candidate
DESCRIBE candidates;

-- b. Display the Columns along with their attributes of the table ClntAddr
DESCRIBE clientAddress;

-- 3. DISPLAY TABLE STATUS QUERIES
-- a. Display the table status for the HRMS database
SHOW TABLE STATUS;

-- b. Display the table status for the HRMS database in vertical format
SHOW TABLE STATUS \G;

-- 4. DISPLAY TABLE PROPERTIES QUERIES
-- a. Obtain a Proeprties of the table Client in a vertical format
SHOW TABLE STATUS LIKE 'ClientInfo' \G;
SHOW TABLE;

-- b. Display the Properties of the table candidiate in a vertical format
SHOW TABLE STATUS LIKE 'Candidates' \G;

SHOW TABLES;
-- 5. DISPLAY CREATE TABLE QUERIES
-- a. Obtain the CREATE TABLE statement for the table CandAddr in vertical format
SHOW CREATE TABLE CandidateAddresses \G;

-- b. Obtain the CREATE TABLE statement for the table ClntContMod
SHOW CREATE TABLE ClientContact;

-- 6. DISPLAY CREATE TABLE USING MYSQLDUMP QUERIES
-- a. Using  the mysqldump utility obtain the CREATE TABLE statement for the table CandQual
mysqldump --user=root --password=Kuldip@007 --no-data mca123 candidatequalifiacations;
		-- OR
mysqldump --user=root --password=Kuldip@007 mca123.candidatequalifiacations;

-- b. Using the mysqldump Utility Obtain the CREATE TABLE Statement for the table CandAddr
mysqldump --user=root --password=Kuldip@007 --no-data mca123 CandidateAddresses;
		-- OR
mysqldump --user=root --password=Kuldip@007 mca123.CandidateAddresses;

-- PAGE 215
SELECT @ROWSUM := COUNT(*) FROM ClientAddress WHERE id = 'CLT003';
DESC ClientAddress;

-- PAGE 240-41
-- GROUP BY QUERIES
CREATE TABLE SalDetails (
	SalId INT(2) PRIMARY KEY,
    CandID VARCHAR(6),
    ClntID VARCHAR(6),
    Sal INT(5),
    FOREIGN KEY(CandID) REFERENCES candidates(id),
    FOREIGN KEY(ClntID) REFERENCES clientInfo(id)
);

INSERT INTO SalDetails 
VALUES  (11, 'CAN001', 'CLT001', 5000),
		(12, 'CAN001', 'CLT002', 5500),
		(13, 'CAN004', 'CLT003', 4500),
		(14, 'CAN002', 'CLT004', 7500),
		(15, 'CAN001', 'CLT005', 8500),
		(16, 'CAN002', 'CLT005', 6500),
		(17, 'CAN001', 'CLT004', 3500),
		(18, 'CAN002', 'CLT002', 5400);
		-- OR
INSERT INTO SalDetails(SalId, CandID, ClntID, Sal) 
VALUES 	(11, 'CAN001', 'CLT001', 5000),
		(12, 'CAN001', 'CLT002', 5500),
		(13, 'CAN004', 'CLT003', 4500),
		(14, 'CAN002', 'CLT004', 7500),
		(15, 'CAN001', 'CLT001', 8500),
		(16, 'CAN002', 'CLT003', 6500),
		(17, 'CAN001', 'CLT004', 3500),
		(18, 'CAN002', 'CLT002', 5400);

DESCRIBE ClientAddress;
SELECT * FROM ClientAddress;

-- QUERY 1:- List the Number of addresses Client has
SELECT ClientId, COUNT(id)
FROM ClientAddress 
GROUP BY ClientId;

-- QUERY 2:- List the total Number of Contacts a Client has on a per Address Basis
SELECT * FROM ClientContact;

SELECT ClientAddressId, COUNT(id)
FROM ClientContact
GROUP BY ClientAddressId;

-- QUERY 3:- List the total Number of addresses Candidate has
SELECT * FROM CandidateAddresses;

SELECT CandidateId, COUNT(id)
FROM CandidateAddresses
GROUP BY CandidateId;

-- QUERY 4:- Show the Number of addresses(More Than Two)a Candidate has
SELECT CandidateId, COUNT(id)
FROM CandidateAddresses
GROUP BY CandidateId
HAVING COUNT(id ) > 2; 

-- QUERY 5:- Show the Number of Contact(More Than One and Less Than 3)a Client has on a per Address Basis
SELECT * FROM ClientContact;

SELECT ClientAddressId, COUNT(id) 
FROM ClientContact
GROUP BY ClientAddressId
HAVING COUNT(id) > 1 AND COUNT(id) < 3;

-- QUERY 6:- Display The Total Number of Addresses Associated to each candidate and group them by Column Number 1
SELECT * FROM CandidateAddresses;

SELECT CandidateId, COUNT(*)
FROM CandidateAddresses
GROUP BY 1;

-- QUERY 7:- Display The Details of salaries paid to the candidates by the clients, Also Display the Aggregate Salary Paid by all the clients.(USE ROLLUP)
DESC SalDetails;

SELECT * FROM SalDetails;

SELECT ClntId, CandId, SUM(Sal) 
FROM SalDetails 
GROUP BY ClntId, CandId WITH ROLLUP;
