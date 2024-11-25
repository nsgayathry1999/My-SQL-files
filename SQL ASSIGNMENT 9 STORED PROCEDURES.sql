create table workers(worker_id int primary key, First_name char(25),Last_name char(25),Salary int,Joining_date datetime,department char(25));

insert into workers(worker_id,First_name,Last_name,salary,joining_date,Department)values
     (1,"Karthy","Menon",30000,"2023-05-05","IT"),
     (2,"joe","Kurian",47000,"2023-06-07","Finance"),
     (3,"Sreeja","Menon",50000,"2022-02-01","IT"),
     (4,"Varun","Davan",78000,"2021-03-04","HR"),
     (5,"Surya","Kanth",66000,"2020-05-09","IT"),
     (6,"Manju","Rani",23000,"2023-07-01","Marketing"),
     (7,"Seetha","Lakshmi",21000,"2021-08-12","IT"),
     (8,"Arjun","Sooraj",46000,"2020-02-09","HR"),
     (9,"Ajay","Avarachan",85000,"1999-02-01","Accounts"),
     (10,"Pavithra","Kanth",42300,"1998-04-07","IT");
     
     select * from workers;
     
-- Create a stored procedure that takes in IN parameters for all the columns in the Worker table and adds a new record to the table and then invokes the procedure call
delimiter $$
create procedure workers(IN p_worker_id int,in p_first_name char(25),
                           in p_last_name char(25),in p_salary int,
                           in p_joining_date datetime,in p_department char(25))
begin
insert into workers(worker_id,first_name,last_name,salary,joining_date,department) values
( p_worker_id,p_first_name,p_last_name,p_salary, p_joining_date,p_department);
end $$
delimiter ;
call workers(11,"Mariya","Ammu",500000,"2023-12-01","IT");

-- Write stored procedure takes in an IN parameter for WORKER_ID and an OUT parameter for SALARY.
--  It should retrieve the salary of the worker with the given ID and returns it in the p_salary parameter. Then make the procedure call.

delimiter $$
create procedure worker_salary(IN p_worker_id int,out p_salary int)
begin
select salary into p_salary from workers where worker_id=p_worker_id;
end $$
delimiter ;

call worker_salary(1,@salary);
select @salary as workers_salary;

-- Create a stored procedure that takes in IN parameters for WORKER_ID and DEPARTMENT. 
-- It should update the department of the worker with the given ID. Then make a procedure call

delimiter $$
create procedure update_department(in p_worker_id int,in p_department char(25))
begin
update workers 
set department =p_department where worker_id = p_worker_id;
end $$
delimiter ;

call update_department(1,"IT");
call update_department(2,"HR");

 -- 4 Write a stored procedure that takes in an IN parameter for DEPARTMENT and an OUT parameter for p_workerCount
-- It should retrieve the number of workers in the given department and returns it in the p_workerCount parameter. Make procedure call. 

Delimiter $$
create procedure get_workers_department(in p_department char(25),
									   out p_count int)
begin
select count(*) into p_count from workers where department = p_department;
end $$
delimiter ;

call get_workers_department("IT",@count);
select @count as workerscount;

-- 5 Write a stored procedure that takes in an IN parameter for DEPARTMENT and an OUT parameter for p_avgSalary.
-- It should retrieve the average salary of all workers in the given department and returns it in the p_avgSalary parameter and call the procedure.

delimiter $$
create procedure get_avg_salary_department(in p_department char(25),out p_avg_salary float)
begin 
select avg(salary)into p_avg_salary from workers where department=p_department;
end $$
delimiter ;

call get_avg_salary_department("IT",@avg_salary);
select @avg_salary as Average_salary;
