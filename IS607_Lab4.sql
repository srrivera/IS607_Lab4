--Section #1 Create Table
--employeeID>> Unique number for each employer
--pay_grade>> Level in the corporate hierarchy
--department>> Section within the company employee works
--name_last>> Last Name of employee
--name_first>> First Name of employee
--job_title>> Employee's position within the company
--supervisor_title>> Employee's direct superior

CREATE TABLE XYZ_Inc
(
employeeID varchar (7),
pay_grade integer,
department varchar(24),
name_last varchar(25),
name_first varchar(25),
job_title varchar(25),
supervisor_title varchar(25)
)



--Section #2 Insert Data
INSERT INTO XYZ_Inc
(employeeID, pay_grade, department, name_last, name_first, job_title, supervisor_title)
VALUES
('1','1','Chief','Smith','Greg','CEO','Investors'),
('2','2','Finance','Kane','Brad','CFO','CEO'),
('3','3','Finance','Franklin','Lisa','VP Finance','CFO'),
('4','4','Finance','Moore','Joe','Director Finance','VP Finance'),
('5','10','Finance','Napp','Cliff','Intern','Director Finance'),
('6','2','Marketing','Rogers','Amanda','CMO','CEO'),
('7','3','Marketing','Washington','John','VP Marketing','CMO'),
('8','4','Marketing','Reynolds','Chris','Director Marketing','VP Marketing'),
('9','10','Marketing','Swanson','Zac','Intern','Director Marketing')



--Section #3 Select Employees
SELECT department, job_title, supervisor_title, name_last, name_first
FROM XYZ_Inc
GROUP BY pay_grade, department, name_last, name_first, supervisor_title, pay_grade, job_title
ORDER BY department, pay_grade ASC
