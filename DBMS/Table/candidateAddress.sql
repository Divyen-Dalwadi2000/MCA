CREATE TABLE candidateAddresses(
	id VARCHAR(6) PRIMARY KEY NOT NULL,
    candidateId VARCHAR(6),
    address1 VARCHAR(50) NOT NULL,
    address2 VARCHAR(50),
    city VARCHAR(35) NOT NULL,
    state VARCHAR(35) NOT NULL,
    country VARCHAR(25) NOT NULL,
    zip INT(25) NOT NULL,
    telephoneNo INT(25),
    mobileNo INT(25),
    FOREIGN KEY (candidateId) REFERENCES candidates(id)
);

INSERT INTO candidateAddresses 
VALUES ('CNA001','CAN001','Tirupati Udyog','Goregaon','Mumbai','Maharastra','India','400067','28233498','985643634');

INSERT INTO candidateQualifications
VALUES ('QUA001','CAN001','Academic','Master of Commerce','Board of Public Examinations','Kerala',1998,'First');


class IN ('Pass','First','Distinction','Second','Third')