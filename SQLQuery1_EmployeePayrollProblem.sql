/* UC1-Create DataBase */
Create database EmpPayroll_Service;

use EmpPayroll_Service;


/* UC2 create a employee payroll table in the payroll service database*/
create table employee_payroll
(
Id int identity(1,1) primary key,
Name varchar(25),
Salary int,
StartDate varchar(15)
);

/* UC3 create employee payroll data */
insert into employee_payroll(Name, Salary, StartDate) values ('Sumit','55000','19/01/2020'),
('Virat','30000','01/01/2022'),
('Sachin','40000','15/09/2019'),
('Disha','50000','09/08/2020'),
('Viraj','60000','20/01/2022'),
('Rohit','70000','25/01/2020'),
('Raj','80000','05/07/2017');

/* UC4 retrieve all the employee payroll data */
select * from employee_payroll;

/*UC5 retrieve salary data on a condition */
SELECT Salary,Name FROM employee_payroll WHERE Name = 'Sumit';
Select Salary,Name from employee_payroll where StartDate between ('01/01/2017') and ('19/01/2020');


/* UC6 add Gender to Employee Payroll Table and Update the Rows */
ALTER TABLE employee_payroll ADD Gender varchar(6);
UPDATE employee_payroll set Gender = 'M' where  Name='Sumit' or Name = 'Virat' or Name='Sachin' or Name='Viraj' or Name='Rohit' or Name='Raj'
UPDATE employee_payroll set Gender = 'F' where  Name='Disha'

/*UC-7-SUM(),MAX(),MIN(),AVG(),COUNT()*/
Select SUM(Salary) FROM employee_payroll WHERE Gender ='M'
Select MAX(Salary) FROM employee_payroll WHERE Gender ='M'
Select AVG(Salary) FROM employee_payroll  WHERE Gender ='M'
Select COUNT(Salary) FROM employee_payroll  WHERE gender ='M'

Select SUM(Salary) FROM employee_payroll WHERE Gender ='F'
Select MAX(Salary) FROM employee_payroll WHERE Gender ='F'
Select AVG(Salary) FROM employee_payroll  WHERE Gender ='F'
Select COUNT(Salary) FROM employee_payroll  WHERE gender ='F'


/* UC8 extend employee_payroll data and save more details */
ALTER TABLE employee_payroll ADD Phone varchar(16), Address varchar(32) DEFAULT 'Empty' WITH VALUES, Department varchar(16) NOT NULL DEFAULT 'Developer';
select * from employee_payroll


/* UC9 extend employee_payroll table to have Basic Pay, Deductions, Taxable Pay, Income Tax, Net Pay*/
ALTER TABLE employee_payroll ADD BasicPay Float Not Null default 0, 
Deductions Float Not Null default 0, TaxablePay Float Not Null default 0,
IncomeTax Float Not Null default 0, NetPay Float Not Null default 0;
UPDATE employee_payroll set BasicPay=30000.50 where Name='Sumit';
UPDATE employee_payroll set BasicPay=40000 where Name='Virat';
UPDATE employee_payroll set BasicPay=50000 where Name='Sachin';
UPDATE employee_payroll set BasicPay=25000 where Name='Disha';
UPDATE employee_payroll set BasicPay=15000.75 where Name='Viraj';
UPDATE employee_payroll set BasicPay=25000 where Name='Rohit';
UPDATE employee_payroll set BasicPay=15000 where Name='Raj';


select * from employee_payroll
/*UC10 Adding Department of Terisa as Sales & Marketing Both*/
ALTER TABLE employee_payroll DROP COLUMN Salary
UPDATE employee_Payroll SET Department = 'Sales' WHERE NAME = 'Viraj';
INSERT INTO employee_Payroll 
VALUES
('Viraj','24/05/2019','F','9730975685','Akola','Marketing',35200,0,0,0,0);
SELECT * FROM employee_Payroll

 Update employee_payroll set 
 Phone=9999888877 ,Address='Agra', Department='FrontEnd', Deductions=2000, TaxablePay=1000, IncomeTax=2000, NetPay=25000 where name='Sumit'
 Update employee_payroll set 
 Phone=9988558899 ,Address='Delhi', Department='Accounts', Deductions=3000, TaxablePay=1000, IncomeTax=3000, NetPay=33000 where name='Virat'
 Update employee_payroll set 
 Phone=8877995544 ,Address='Pune', Department='Backend', Deductions=2000, TaxablePay=1000, IncomeTax=4000, NetPay=43000 where name='Sachin'
 Update employee_payroll set 
 Phone=7744112233 ,Address='Chennai', Department='Testing', Deductions=1500, TaxablePay=1000, IncomeTax=1000, NetPay=21500 where name='Disha'
 Update employee_payroll set 
 Phone=7775553330 ,Address='Kolkata', Deductions=1000, TaxablePay=500, IncomeTax=0, NetPay=13500 where id=5
 Update employee_payroll set 
 Phone=9080706050 ,Address='Delhi', Department='Accounts', Deductions=1500, TaxablePay=500, IncomeTax=1000, NetPay=22000 where name='Rohit'
 Update employee_payroll set 
 Phone=8090603020 ,Address='Chennai', Department='Backend', Deductions=1000, TaxablePay=500, IncomeTax=0, NetPay=13500 where name='Raj'

