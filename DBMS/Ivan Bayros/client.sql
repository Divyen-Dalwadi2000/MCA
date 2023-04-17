show databases;
use mca123;
show tables;

SHOW VARIABLES;

CREATE TABLE client(
	id VARCHAR(6) PRIMARY KEY NOT NULL,
    name VARCHAR(35) NOT NULL,
    url VARCHAR(50),
	description VARCHAR(255) NOT NULL,
    CHECK (id LIKE 'CLT%')
);

INSERT INTO client
VALUES	('CLT001','SCT India','http://sctindia.com','Software Package Firm'),
		('CLT002','ABCL Corp','http://abcl.com','Dealer in Kitchen Utensils'),
        ('CLT003','Dell Corp','http://dellcorp.com','Dealer in Computer Peripherals'),
        ('CLT004','Essenpross',NULL,'Dealer in Electronics');

DESCRIBE client;

SELECT * FROM client;

DROP TABLE client;





