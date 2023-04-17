CREATE TABLE candidateQualifications(
	id VARCHAR(6) PRIMARY KEY,
    candidateId VARCHAR(6) NOT NULL,
	qualType VARCHAR(15) NOT NULL,
    examName VARCHAR(50) NOT NULL,
    institutionName VARCHAR(50) NOT NULL,
    boardName VARCHAR(50) NOT NULL,
    yearOfPassing INTEGER(10) NOT NULL,
    class VARCHAR(20) NOT NULL,
    remarks VARCHAR(255),
    CHECK (id LIKE 'QUA%'),
    CHECK (LOWER(class) IN ('distinction','first','second','pass')),
	FOREIGN KEY (candidateId) REFERENCES candidates(id)
);  

INSERT INTO candidateQualifications (id,candidateId,qualType,examName,institutionName,boardName,yearOfPassing,class)
VALUES 	('QUA001','CAN001','Academic','Master of Commerce','Board of Public Examinations','Kerala',1998,'First'),
		('QUA002','CAN002','Academic','S.S.L.C','Board of Public Examinations','Kerala',1997,'Second'),
        ('QUA003','CAN003','Professional','B.A','Mumbai University','Maharastra',1990,'Second'),
        ('QUA004','CAN004','Acdemic','Bachelor of Commerce','Ambedkar College','Mumbai University',2001,'Pass'),
        ('QUA005','CAN005','Professional','B.Sc','D.Y.Patile College','Pune University',2003,'First'),
        ('QUA006','CAN006','Technical','PGDCA','Govt.Engineering College','Trichur',1988,'Distinction');
 
 SELECT * FROM candidateQualifications;