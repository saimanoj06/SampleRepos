DROP TABLE Employee


CREATE TABLE Employee
(
	EmployeeId int
	, EmployeeFirstName varchar(100)
	, EmployeeLastName varchar(100)
	, Employee_Salary int
	, [Address] varchar(100)
)

INSERT INTO Employee
(
	EmployeeId
	, EmployeeFirstName
	, EmployeeLastName
	, Employee_Salary
	, [Address]
)
VALUES (343,'Sai','Manoj',48500,'INDIA')
, (415,'Rahul','Tripathi',67000,'INDIA')
, (674,'Krishna','Kumar',87999,'US')
, (835,'John','Cena',83933,'CANADA')
SELECT * FROM Employee

INSERT INTO Employee
(
	EmployeeId
	, EmployeeFirstName
	, EmployeeLastName
	, Employee_Salary
	, [Address]
)

SELECT 478,'Virat','Kohli',98000,'INDIA' UNION
SELECT 372,'Krishna','Kumar',94309,'INDIA' UNION
SELECT 397,'Mohammad','Ali',24732,'BANGLADESH' UNION
SELECT 756,'Krishna','Vamsi',75000,'INDIA' 

DELETE Employee
SELECT *
FROM Employee AS emp
WHERE EmployeeId=756

SELECT *
INTO Employee_backup
FROM Employee

SELECT * FROM Employee_backup

UPDATE emp
SET emp.EmployeeFirstName='Naresh'
--SELECT *
FROM employee AS emp
WHERE EmployeeId=372

INSERT INTO Employee
(
	EmployeeID
	, EmployeeFirstName
	, EmployeeLastName
	, Employee_Salary
	, Address
)
SELECT EmployeeID
	, EmployeeFirstName
	, EmployeeLastName
	, Employee_Salary
	, Address
FROM Employee_Backup

SELECT * FROM Location_Backup
SELECT * FROM LOCATION
SELECT * FROM DEPARTMENT_1
SELECT * FROM Department_Backup

SELECT * INTO Department_Backup
FROM DEPARTMENT_1

UPDATE loc
SET loc.City = 'Los Angeles'
FROM LOCATION AS loc
WHERE Location_ID = 124

DELETE dep
FROM DEPARTMENT_1 AS dep
WHERE Department_ID = 50

INSERT INTO DEPARTMENT_1 (Department_ID,Name,Location_ID)
SELECT Department_ID,Name,Location_ID
FROM  Department_Backup

CREATE TABLE DEPARTMENT_1 (Department_ID int,Name varchar(100),Location_ID int)

CREATE TABLE NotNULLTest
(
	Id int NOT NULL
	, Name varchar(100)
)
INSERT INTO NotNULLTest(ID,Name)
SELECT 1,'Dinesh'

INSERT INTO NotNULLTest(ID,Name)
SELECT 2,'John'

INSERT INTO NotNULLTest(ID,Name)
SELECT 3,NULL

SELECT *FROM Employee

INSERT INTO Employee
	(
		EmployeeId
		, EmployeeFirstName
		, EmployeeLastName
		, Employee_Salary
		, Address
	)
	VALUES (1,'Dinesh','Kumar', 1000, 'India')
	, (2,'John','Smith', 2000, 'US')
	, (3,'Santosh','Kumar', 3000, 'India')
	, (4,'Steve','Smith', 5000, 'Aus')

	INSERT INTO Employee
	(
		EmployeeId
		, EmployeeFirstName
		, EmployeeLastName
		, Employee_Salary
		, Address
	)
	SELECT 5,'Kumar','Sanu',3000,'India' UNION ALL
	SELECT 6,'Ravi','Kumar',5000,'India' UNION ALL
	SELECT 7,'John','Cena',3500,'US' UNION ALL
	SELECT 8,'John','Wright',3200,'US' 

	CREATE TABLE DefaultTest
(
	Id int
	, Name varchar(100) DEFAULT('NoNameProvided')
)
ALTER TABLE DefaultTest
ADD Salary int NOT NULL Default(0)

SELECT *FROM DefaultTest

ALTER TABLE DefaultTest
DROP COLUMN Salary 

ALTER TABLE DefaultTest
--DROP CONSTRAINT DF__DefaultTe__Salar__14270015
DROP CONSTRAINT DF__DefaultTes__Name__05D8E0BE

CREATE TABLE #LocalTempTable (Employee_ID int,Employee_Name varchar(100))
--FUNCTIONS
SELECT GETDATE()

SELECT *

--PNAME DOB DOJ GENDER PROF1 PROF2 SALARY ANAND 12-Apr-66 21-Apr-92 M PASCAL BASIC 3200 ALTAF 02-Jul-64 13-Nov-90 M CLIPPER COBOL 2800 JULIANA 31-Jan-60 21-Apr-90 F COBOL DBASE 3000 KAMALA 30-Oct-68 02-Jan-92 F C DBASE 2900 MARY 24-Jun-70 01-Feb-91 F CPP ORACLE 4500 NELSON 11-Sep-85 11-Oct-89 M COBOL DBASE 2500 PATTRICK 10-Nov-65 21-Apr-90 M PASCAL CLIPPER 2800 QADIR 31-Aug-65 21-Apr-91 M ASSEMBLY C 3000 RAMESH 03-May-67 28-Feb-91 M PASCAL DBASE 3200 REBECCA 01-Jan-67 01-Dec-90 F BASIC COBOL 2500 REMITHA 19-Apr-70 20-Apr-93 F C ASSEMBLY 3600 REVATHI 02-Dec-69 02-Jan-92 F PASCAL BASIC 3700 VIJAYA 14-Dec-65 02-May-92 F FOXPRO C 3500

--PNAME TITLE DEVELOPIN SCOST DCOST SOLD MARY README CPP 300 1200 84 ANAND PARACHUTES BASIC 399.95 6000 43 ANAND VIDEO TITLING PASCAL 7500 16000 9 JULIANA INVENTORY COBOL 3000 3500 0 KAMALA PAYROLL PKG. DBASE 9000 20000 7 MARY FINANCIAL ACCT. ORACLE 18000 85000 4 MARY CODE GENERATOR C 4500 20000 23 PATTRICK README CPP 300 1200 84 QADIR BOMBS AWAY ASSEMBLY 750 3000 11 QADIR VACCINES C 1900 3100 21 RAMESH HOTEL MGMT. DBASE 13000 35000 4 RAMESH DEAD LEE PASCAL 599.95 4500 73 REMITHA PC UTILITIES C 725 5000 51 REMITHA TSR HELP PKG. ASSEMBLY 2500 6000 7 REVATHI HOSPITAL MGMT. PASCAL 1100 75000 2 VIJAYA TSR EDITOR C 900 700 6 

--PNAME INSTITUTE COURSE COURSE FEE ANAND SABHARI PGDCA 4500 ALTAF COIT DCA 7200 JULIANA BDPS MCA 22000 KAMALA PRAGATHI DCA 5000 MARY SABHARI PGDCA 4500 NELSON PRAGATHI DAP 6200 PATRICK PRAGATHI DCAP 5200 QADIR APPLE HDCA 14000 RAMESH SABHARI PGDCA 4500 REBECCA BRILLIANT DCAP 11000 REMITHA BDPS DCS 6000 REVATHI SABHARI DAP 5000 VIJAYA BDPS DCA 48000 

--create integer variable
DECLARE @id int
SET @id = 5
SELECT @id AS ID

--create varchar variable
DECLARE @Name varchar(100)
SET @Name = 'Manoj' 
SELECT @Name AS Name

--create table variable
DECLARE @Employee TABLE
(ID int,Name varchar(100))
INSERT INTO @Employee
SELECT 1,'Sai' UNION ALL
SELECT 2,'Manoj'
SELECT * FROM @Employee AS Employee

--FUNCTIONS
SELECT ISNULL(NULL,'THE VALUE IS NULL')
SELECT emp.*,edob.*
FROM Employee AS emp, EmployeeDOB AS edob

--USD(User Defined Functions)
--1. Scalar Valued Functions
CREATE OR ALTER FUNCTION fn_join_firstandlastname
(@firstname varchar(50),@lastname varchar(55))
RETURNS varchar(105)
AS
BEGIN
RETURN(SELECT (TRIM(@firstname) + ' ' + TRIM(@lastname)))
END
SELECT dbo.fn_join_firstandlastname('sai','manoj') AS FullName
--2. Table Valued Functions
--i) Single Lined Table Valued Functions
CREATE OR ALTER FUNCTION fn_gettabledetailsby_EmployeeID
(@EmployeeID int)
RETURNS TABLE
AS
RETURN (SELECT dbo.fn_join_firstandlastname(EmployeeFirstName,EmployeeLastName) AS FullName 
				, Employee_Salary
				, Address
			FROM Employee 
			WHERE EmployeeId = @EmployeeId)

SELECT *FROM fn_gettabledetailsby_EmployeeID(1)

--CASE
SELECT *,
CASE WHEN EmployeeFirstName=REVERSE(EmployeeFirstName) THEN 'pallindrome'
     ELSE 'Not Pallindrome' END AS IsPallindromeOrNot
	 FROM Employee
     
--IIF
SELECT *
	, IIF(EmployeeID <=5,'EID is less than or equal to 5','EID is greater than 5') AS IIFCondition
FROM Employee