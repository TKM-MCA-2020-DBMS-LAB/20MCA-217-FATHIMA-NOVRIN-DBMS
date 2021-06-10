use work;
create table Employees(Name varchar(20) NOT NULL,Occupation varchar(20) NOT NULL,Working_date date,Working_hours varchar(10));
INSERT INTO employees VALUES    
('Robin', 'Scientist', '2020-10-04', 12),  
('Warner', 'Engineer', '2020-10-04', 10),  
('Peter', 'Actor', '2020-10-04', 13),  
('Marco', 'Doctor', '2020-10-04', 14),  
('Brayden', 'Teacher', '2020-10-04', 12),  
('Antonio', 'Business', '2020-10-04', 11);  
select*from employees
delimiter //
create Trigger before_insert_empworkinghours
BEFORE INSERT ON Employees FOR EACH ROW
BEGIN
IF NEW.Working_hours<0 THEN SET NEW.Working_hours=0;
END IF;
END //
insert into employees values('nourin','professor','2020-02-17',-10);
insert into employees values('fathima','nurse','2020-08-17',-6);
select *from employees;


