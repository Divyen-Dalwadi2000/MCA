show databases;
use mca123;
show tables;

CREATE TABLE clientAddress(
	id VARCHAR(6) PRIMARY KEY NOT NULL,
	clientId VARCHAR(6) NOT NULL,
    addressType VARCHAR(20) NOT NULL,
    address1 VARCHAR(50) NOT NULL,
    address2 VARCHAR(50),
    city VARCHAR(35) NOT NULL,
    state VARCHAR(35) NOT NULL,
    country VARCHAR(25) NOT NULL,
    zip VARCHAR(25) NOT NULL,
    CHECK (id LIKE 'CLA%'),
    CHECK (addressType IN ('Official','Personal')),
    FOREIGN KEY (clientId) REFERENCES client(id)
);

INSERT INTO clientAddress
VALUES 	('CLA001','CLT001','Official','Jay Chambers','S.V. Road','Mumbai','Maharastra','India','400057'),
		('CLA002','CLT002','Official','Essenpross','Manchen Road','Chinow','Beijing','China','400058'),
        ('CLA003','CLT003','Personal','Arjuna Estate','Lankan Road','Colombo','Colombo','Shirlanka','400064'),
        ('CLA004','CLT004','Official','Laxmi Ind. Estate','L.S. Marg','Banglore','Karnataka','India','400017');

DESCRIBE clientAddress;

SELECT * FROM clientAddress;

