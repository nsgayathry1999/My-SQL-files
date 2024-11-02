create database managers;


create table Managers(Manager_id int primary key, First_name varchar(50),Last_name varchar(50),DOB date,Age int check (age > 0),
Last_update date,Gender char(1),Department varchar (50),Salary decimal (10,2) not null );

select * from managers;


insert into managers (Manager_id,First_name,Last_name,DOB,Age,Last_update,Gender,Department,Salary) values
     (1,"Karthy", "Menon","1999-01-15",25,"2024-11-12","M","IT",30000.00),
     (2,"joe","Kurian","2000-10-12",24,"2024-11-12","M","Finance",45000.00),
     (3,"Sreeja","Menon","1995-01-25",29,"2024-11-12","F","IT",50000.00),
     (4,"Varun","Davan","1999-08-25",25,"2024-11-12","M","HR",80000.00),
     (5,"Surya","Kanth","1996-07-29",26,"2024-11-12","F","IT",27000.00),
     (6,"Manju","Rani","1980-02-12",44,"2024-11-12","F","Marketing",56000.00),
     (7,"Seetha","Lakshmi","1998-12-12",26,"2024-11-12","F","IT",28000.00),
     (8,"Arjun","Sooraj","1997-05-22",28,"2024-11-12","M","HR",50000.00),
     (9,"Ajay","Avarachan","1998-10-10",26,"2024-11-12","M","Accounts",80000.00),
     (10,"Pavithra","Kanth","1991-12-08",33,"2024-11-12","F","IT",22000.00);
     
select * from managers;


select First_name,Last_name,DOB from Managers where Manager_id = 1 ;

insert into managers (Manager_id,First_name,Last_name,DOB,Age,Last_update,Gender,Department,Salary) values
         (11,"Aaliya","Bhat","2001-10-22",22,"2024-11-12","F","IT",26000.00);
 select * from managers;

select Manager_id,First_name,Last_name,(salary*12) as Annual_Income From Managers;

select* from Managers Where First_name <> "Aaliya";


select * from  Managers Where Department ="IT" and Salary > 25000.00;

select * from Managers Where Salary between 10000.00 and 35000.00;



