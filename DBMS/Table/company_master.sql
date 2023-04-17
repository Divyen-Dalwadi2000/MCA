CREATE TABLE COMPANY_MASTER (
	COMPANY_ID VARCHAR(6) PRIMARY KEY,
    	NAME VARCHAR(25),
    	ADDRESS VARCHAR(75),
    	CONTACT_PERSON VARCHAR(25),
    	PAYMENT_TERMS VARCHAR(25)
);

INSERT INTO COMPANY_MASTER VALUES('CMP001', 'Godrej', 'Pirjsjaj Nagar, Vikhroli', 'Sharanam Shah', 'Cash or Cheque');
INSERT INTO COMPANY_MASTER VALUES('CMP002', 'Samsung', 'B1, Near Onida House, Phase 3, Mahakali Caves Road, Andheri(E)', 'Neha Deshmukh', 'Cash or Cheque');
INSERT INTO COMPANY_MASTER VALUES('CMP003', 'Sony', 'S1, Near Opera House, SandHurst Bridge, Charni Road', 'Rahul Raj', '100% Advanced Payment');
INSERT INTO COMPANY_MASTER VALUES('CMP004', 'Phillips', 'A3, Sitara Chambers, Near MIG Club, Bandra(E)', 'John Candy', 'Only Cheque');