CREATE TABLE EMPLOYEE_MASTER(
	EMPLOYEE_ID VARCHAR(6) PRIMARY KEY,
    NAME VARCHAR(25) NOT NULL,
    DESIGNATION VARCHAR(25),
    MANAGER_ID	VARCHAR(6)
);

INSERT INTO EMPLOYEE_MASTER VALUES
('EMP001','Jack Rickson','Salesman','EMP004'),
('EMP002','Primay Tendulkar','Receptioninst','EMP005'),
('EMP003','Mack Backson','Assistant Executive','EMP004'),
('EMP004','Asama Rahman','Sales Executive','EMP005'),
('EMP005','John Martin','Manager','EMP008'),
('EMP006','Ramesh Pillai','Accountant','EMP005'),
('EMP007','Shashank Bhinde','Salesman','EMP004'),
('EMP008','Jimmy Colaco','Managing Director',NULL);