create database office;
use office;
create table managers (manager_id int primary key,
first_name varchar(50),
last_name varchar(50),
DOB varchar(50),
age int not null check (age>=18 and age<=65),
gender varchar(5) not null,
department varchar(10) not null,
salary varchar(10) not null);
desc managers;

insert into managers(manager_id, first_name, last_name, DOB,
age, gender, department, salary)
values(1, 'John', 'David', '14-05-1990', 34, 'M', 'Forensic', '12000'),
(2, 'Sree', 'Harshan', '21-05-1992', 32, 'M', 'Forensic', '11000'),
(3, 'Darshan', 'Govind', '4-07-1990', 34, 'M', 'Vigilence', '15000'),
(4, 'Maria', 'Mani', '05-06-1994', 30, 'F', 'Forensic', '11000'),
(5, 'Aaliya', 'Joshi', '30-09-1990', 34, 'F', 'Forensic', '14000'),
(6, 'Sandra', 'Thomas', '11-06-1989', 35, 'F', 'IT', '36000'),
(7, 'Hari', 'Naidu', '18-10-1995', 29, 'M', 'Forensic', '12000'),
(8, 'Leela', 'Suresh', '19-02-1990', 34, 'F', 'IT', '30000'),
(9, 'Anish', 'Mathew', '12-08-1990', 34, 'M', 'Forensic', '18000'),
(10, 'Neel', 'Giri', '09-01-1991', 33, 'M', 'IT', '32000');
select*from managers;

select first_name, last_name, DOB from managers where manager_id=1;

select first_name, last_name, salary from managers; 

select*from managers where department='IT' and salary>25000;

select*from managers where salary between 10000 and 35000;

select*from managers where first_name !='Aaliya';


