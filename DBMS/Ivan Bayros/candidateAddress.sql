SHOW DATABASES;
USE mca123;
SHOW TABLES;

CREATE TABLE candidateAddresses(
	id VARCHAR(6) PRIMARY KEY,
    candidateId VARCHAR(6),
    address1 VARCHAR(50) NOT NULL,
    address2 VARCHAR(50),
    city VARCHAR(35) NOT NULL,
    state VARCHAR(35) NOT NULL,
    country VARCHAR(25) NOT NULL,
    zip INT(25) NOT NULL,
    telephoneNo INT(25),
    mobileNo INT(25),
    FOREIGN KEY (candidateId) REFERENCES candidates(id),
    CHECK (id LIKE 'CNA%')
);

INSERT INTO candidateAddresses 
VALUES ('CNA001','CAN001','Tirupati Udyog','Goregaon','Mumbai','Maharastra','India','400067','28233498','985643634'),
		('CNA002','CAN002','Tulip Housing','Great Creake Road','Ching','Beijing','China','400058','28231156','981943634'),
        ('CNA003','CAN003','Raw House No. 74','Mandella Road','Nairobi','Kenya','Africa','400055','288883498','989043634'),
        ('CNA004','CAN004','Joyee Chambers','Viasonala','Tokiza','Tokya','Japan','400077','28873498','988943631'),
        ('CNA005','CAN001','Navass','Peroorkada','Thiruvananthapuram','Kerala','India','400059','28563498','989343634'),
        ('CNA006','CAN002','Chan Lee','Gaun Road','Chinow','Beijing','China','400086','28213498','983343634'),
        ('CNA007','CAN003','New Enterprice','Washington Road','Chicago','Chicago','America','400067','28232398','986543634'),
        ('CNA008','CAN004','Mittal Chambers','Kannali Road','Thiruvananthapuram','Kerala','India','400057','28236598','985688634'),
        ('CNA009','CAN004','SunTech Plaza','Orchid Road','Ruffles Place','Singapore','Singapore','7777057','34454598','956658634');

SELECT * FROM candidateAddresses;