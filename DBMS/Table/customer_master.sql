CREATE TABLE CUSTOMER_MASTER(
	CUSTOMER_ID VARCHAR(6) PRIMARY KEY,
    NAME VARCHAR(25),
    COMPANY_NAME VARCHAR(25),
    ADDRESS VARCHAR(100),
    TELEPHONE INTEGER(20)
); 

INSERT INTO CUSTOMER_MASTER VALUES('CUS001','Smita Vane', NULL, 'B6. Rane Nagar, Near Nalasopara Police Station, Nalasopara(W)', 28888888),
('CUS002',NULL, 'Silicon Chip Tech', 'A5, Jay Chambers Nanda patkar Road, VileParle(E)', 26124533),
('CUS003','Chhaya Bankar', NULL, 'A55, Bose Road, Thane', 28675590),
('CUS004','Anil Sahu', NULL, 'C3, Pooja Buildig, Near Nand Patkar Road, VileParle(E)', 28001188),
('CUS005','Sanjyot Kurmure', NULL, 'A4, Sector 17, Vashi', 28907669),
('CUS006','Vaishali Shah', NULL, '7, Makanji Mansion, Balgovinddas Road, Shivaji Park', 28907669),
('CUS007',NULL, 'Puru Hsg.Soc', '34, Shahnaz Building, Near Station, Kurla(W)', 28904523),
('CUS008',NULL, 'Uttam Stores', 'Near Shreyas Cinema, Ghatkopar(W)', 23900059),
('CUS009',NULL, 'Sun Pvt.Ltd', '235, Parel Village, Lower Parel', 26490675),
('CUS010','Manisha Palaskar', NULL, 'C/O SST Hostel, Subjash Nagar, Bandra(E)', 25677177),
('CUS011',NULL, 'Ghar Karobar', '55, Bharat Nagar, Bandra(E)', 28906785),
('CUS012','Ivan Bayross', NULL, 'A5, Jay Chambers Nanda patkar Road, VileParle(E)', 26124533);