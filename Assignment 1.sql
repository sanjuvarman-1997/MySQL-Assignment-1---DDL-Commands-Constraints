create database Employee;

use Employee;

create table Departments(
department_id int,
department_name varchar (100)
);

create table Location(
location_id int,
location varchar(30)
);

create table Employees(
employee_id int,
employee_name varchar(50),
gender enum('Male','Female'),
age int,
hire_date date,
designation varchar(100),
department_id int,
location_id int,
salary decimal(10.2)
);

alter table Employees add email varchar(50);

alter table Employees change column designation designation int;

alter table Employees drop column age;

alter table Employees rename column hire_date to date_of_joining;

rename table Departments to Departmnets_info;

rename table Location to Locations;

truncate table Employees;

drop table Employees;

drop database Employee;

create database Employee;

use Employee;

create table Departments(
department_id int primary key unique,
department_name varchar (50) unique not null
);

select * from Departments;

create table Location(
location_id int auto_increment primary key,
location varchar(100) not null unique
);

create table Employees(
employee_id int primary key auto_increment,
employee_name varchar (50) not null,
gender enum('Male','Female'),
age int check (age >= 18),
hire_date date default (current_date()),
department_id int,
location_id int
);

drop table Employees;

create table Employees(
employee_id int primary key auto_increment,
employee_name varchar (50) not null,
gender enum('Male','Female'),
age int check (age >= 18),
hire_date date default (current_date()),
department_id int,
location_id int,
foreign key (department_id) references Departments(department_id),
foreign key (location_id) references Location (location_id)
);

select * from Departments;
select * from Location;
select * from Employees;