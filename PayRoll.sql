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
--UC3-Inserting the data into the table
INSERT INTO PayRollTable VALUES('JEBA',10000,'2021-07-30')
INSERT INTO PayRollTable VALUES('aabc',10000,'2020-07-17')
INSERT INTO PayRollTable VALUES('xyz',10000,'2021-07-30')
INSERT INTO PayRollTable VALUES('aaa',15293,'2021-07-30')

--UC4-Retriving the data from the table
SELECT * FROM PayRollTable

--UC5-Retriving data Based on condition
SELECT salary FROM PayRollTable where name='xyz'
SELECT salary FROM PayRollTable where startDate between CAST('2021-01-01' as date) and GETDATE()

--UC6-Alter and Update the table
ALTER TABLE PayRollTable ADD gender varchar(10)
UPDATE PayRollTable set gender ='Male' where name='xyz' or name='aaa'
