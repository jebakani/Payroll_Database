--UC1-Creating database for the employee payroll  
create database Employee_Payroll_Database

--UC2-Creating table for employee payroll with attributes columns id,name, salary and start date
create table PayRollTable
(
id int identity(1,1) primary key,
name varchar(100) not null,
salary float,
startDate date
)
