#create database organization;
use organization;
create table department(dept_no int primary key,dept_name varchar(20),location varchar(20));
create table employee(emp_no int primary key,emp_name varchar(20) not null,DOB date,address varchar(30),date_of_join date,mobile_no bigint,dept_no int,foreign key(dept_no) references department(dept_no),salary float);
insert into department values(101,"nourin","calicut");
insert into department values(102,"Aisa","Kannur");
insert into department values(103,"ameena","Kochi");
select * from department;

insert into employee values(1,"anila",'1996-04-20'," house12",'2020-01-10',9785439910,101,10000);
insert into employee values(2,"rasika",'2000-05-23',"house23",'2020-02-11',7012349019,102,8000);
insert into employee values(3,"riya",'1995-06-29'," house85",'2021-01-14',9912120010,103,10000);
select * from employee;
show tables;
alter table employee add column designation varchar(20);
alter table department drop column location;
drop table department,employee;
drop database Organization;