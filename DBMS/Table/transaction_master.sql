CREATE TABLE TRANSACTION_MASTER(
 	TRANSACTION_ID VARCHAR(6) PRIMARY KEY,
     CUSTOMER_ID VARCHAR(6),
     EMPLOYEE_ID VARCHAR(6),
     TRANSACTION_DATE DATE,
     DELIVERY_DATE DATE,
     AMOUNT DECIMAL(7,2),
     FOREIGN KEY (CUSTOMER_ID) REFERENCES CUSTOMER_MASTER(CUSTOMER_ID),
     FOREIGN KEY (EMPLOYEE_ID) REFERENCES EMPLOYEE_MASTER(EMPLOYEE_ID)
);

INSERT INTO TRANSACTION_MASTER VALUES 
('TRN001','CUS001','EMP006','2003-10-06','2003-10-10',38000),
('TRN002','CUS002','EMP004','2004-05-21','2005-06-01',47000),
('TRN003','CUS003','EMP004','2004-12-31','2005-01-02',17000),
('TRN004','CUS003','EMP005','2005-02-10','2005-02-13',34000),
('TRN005','CUS005','EMP006','2005-02-10','2005-02-11',15000),
('TRN006','CUS006','EMP005','2005-03-02','2005-03-10',16699);